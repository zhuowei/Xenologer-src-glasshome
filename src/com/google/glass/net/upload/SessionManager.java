package com.google.glass.net.upload;

import android.content.Context;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.glass.net.HttpRequestDispatcher;
import com.google.glass.net.SimplifiedHttpResponse;
import com.google.glass.util.Assert;
import com.google.glass.util.AuthUtils;
import java.io.File;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.auth.InvalidCredentialsException;

public class SessionManager
{
  private static final String TAG = SessionManager.class.getSimpleName();
  private final AuthUtils authUtils;
  private final URI baseUploadUri;
  private final Context context;
  private final HttpRequestDispatcher dispatcher;
  private final String fileMimeType;
  private final File fileToUpload;
  private long lastOffset;
  private final String logTag;
  private final SessionTracker sessionTracker;
  private URI sessionUri;
  private SimplifiedHttpResponse uploadResult;

  public SessionManager(HttpRequestDispatcher paramHttpRequestDispatcher, AuthUtils paramAuthUtils, SessionTracker paramSessionTracker, URI paramURI, File paramFile, String paramString, Context paramContext)
  {
    this.logTag = (TAG + "/" + paramFile.getName());
    this.dispatcher = paramHttpRequestDispatcher;
    this.authUtils = paramAuthUtils;
    this.sessionTracker = paramSessionTracker;
    this.baseUploadUri = paramURI;
    this.fileToUpload = paramFile;
    this.fileMimeType = paramString;
    this.context = paramContext;
  }

  @VisibleForTesting
  void establishNewSession()
    throws IOException, InvalidCredentialsException
  {
    this.sessionTracker.clearSessionUri(this.fileToUpload);
    this.sessionUri = null;
    this.lastOffset = 0L;
    Log.v(this.logTag, "Establishing new session.");
    SimplifiedHttpResponse localSimplifiedHttpResponse = makeRequest(ResumableUploader.UploadCommand.START);
    if (ScottyHelper.getSessionStatus(localSimplifiedHttpResponse) != ScottyHelper.SessionStatus.ACTIVE)
      throw new ProtocolException("Scotty didn't return a state of ACTIVE: " + localSimplifiedHttpResponse);
    if (!localSimplifiedHttpResponse.headers.containsKey("X-Goog-Upload-URL"))
      throw new ProtocolException("Scotty didn't tell us where to upload the file: " + localSimplifiedHttpResponse);
    this.sessionUri = URI.create((String)localSimplifiedHttpResponse.headers.get("X-Goog-Upload-URL"));
    Log.v(this.logTag, "Session established at URL " + this.sessionUri);
    this.sessionTracker.setSessionUri(this.fileToUpload, this.sessionUri);
  }

  public SimplifiedHttpResponse getUploadResult()
  {
    return this.uploadResult;
  }

  public UploadSession getUploadSession()
    throws IOException, InvalidCredentialsException
  {
    if (this.sessionUri == null)
      establishNewSession();
    return new UploadSession(this.authUtils, this.dispatcher, this, this.sessionUri, this.fileToUpload, this.lastOffset, this.fileMimeType);
  }

  public void init()
    throws IOException, InvalidCredentialsException
  {
    this.lastOffset = 0L;
    this.uploadResult = null;
    this.sessionUri = this.sessionTracker.getSessionUri(this.fileToUpload);
    if (this.sessionUri == null)
    {
      Log.v(this.logTag, "Session not previously established for -- will establish a new session.");
      return;
    }
    SimplifiedHttpResponse localSimplifiedHttpResponse = makeRequest(ResumableUploader.UploadCommand.QUERY);
    if (localSimplifiedHttpResponse.statusCode == 404)
    {
      Log.v(this.logTag, "Scotty has no knowledge of session at URI " + this.sessionUri + " -- will establish a new session.");
      this.sessionUri = null;
      return;
    }
    ScottyHelper.SessionStatus localSessionStatus = ScottyHelper.getSessionStatus(localSimplifiedHttpResponse);
    if ((localSessionStatus == ScottyHelper.SessionStatus.FINAL) || (localSessionStatus == ScottyHelper.SessionStatus.CANCELLED))
    {
      if ((localSimplifiedHttpResponse.body != null) && (localSimplifiedHttpResponse.body.length > 0))
      {
        Log.v(this.logTag, "Previous session is in status " + localSessionStatus + " and the body is populated.");
        this.uploadResult = localSimplifiedHttpResponse;
        return;
      }
      Log.v(this.logTag, "Previous session is in status " + localSessionStatus + " and no body was received -- will establish a new session.");
      this.sessionUri = null;
      return;
    }
    if (!localSimplifiedHttpResponse.headers.containsKey("X-Goog-Upload-Size-Received"))
      throw new ProtocolException("Session is ACTIVE, but no bytes received header found: " + localSimplifiedHttpResponse);
    Log.v(this.logTag, "Previous session verified -- will re-use existing session.");
    this.lastOffset = Long.valueOf((String)localSimplifiedHttpResponse.headers.get("X-Goog-Upload-Size-Received")).longValue();
  }

  public boolean isUploadSuccessful()
  {
    return this.uploadResult != null;
  }

  @VisibleForTesting
  SimplifiedHttpResponse makeRequest(ResumableUploader.UploadCommand paramUploadCommand)
    throws IOException, InvalidCredentialsException
  {
    URI localURI = this.baseUploadUri;
    HashMap localHashMap = Maps.newHashMap();
    if (paramUploadCommand == ResumableUploader.UploadCommand.QUERY)
    {
      Assert.assertNotNull("Session URI is null for a QUERY command -- did you call SessionManager#init?", this.sessionUri);
      localURI = this.sessionUri;
    }
    SimplifiedHttpResponse localSimplifiedHttpResponse;
    while (true)
    {
      localHashMap.putAll(ScottyHelper.makeBaseHeaders(this.authUtils, paramUploadCommand, this.fileToUpload));
      localSimplifiedHttpResponse = this.dispatcher.postWithHeaders(localURI.toString(), localHashMap, null);
      if (localSimplifiedHttpResponse != null)
        break;
      throw new IOException("Connection failed or no response from server.");
      if (paramUploadCommand == ResumableUploader.UploadCommand.START)
      {
        localHashMap.put("X-Goog-Upload-Protocol", "resumable");
        localHashMap.put("X-Goog-Upload-Content-Type", this.fileMimeType);
        localHashMap.put("X-Goog-Upload-Content-Length", String.valueOf(this.fileToUpload.length()));
      }
    }
    if ((localSimplifiedHttpResponse.statusCode == 403) || (localSimplifiedHttpResponse.statusCode == 401))
    {
      this.authUtils.invalidateAuthToken();
      localHashMap.putAll(ScottyHelper.makeBaseHeaders(this.authUtils, paramUploadCommand, this.fileToUpload));
      localSimplifiedHttpResponse = this.dispatcher.postWithHeaders(localURI.toString(), localHashMap, null);
      if (localSimplifiedHttpResponse == null)
        throw new IOException("Connection failed or no response from server.");
      if ((localSimplifiedHttpResponse.statusCode == 403) || (localSimplifiedHttpResponse.statusCode == 401))
        throw new InvalidCredentialsException("Credentials are invalid even after refresh: " + localSimplifiedHttpResponse);
    }
    return localSimplifiedHttpResponse;
  }

  void onUploadSuccess(SimplifiedHttpResponse paramSimplifiedHttpResponse)
  {
    Log.v(this.logTag, "UploadSession reported upload completed.");
    this.uploadResult = paramSimplifiedHttpResponse;
    this.sessionTracker.clearSessionUri(this.fileToUpload);
  }

  @VisibleForTesting
  void setSessionUri(URI paramURI)
  {
    Assert.assertIsTest();
    this.sessionUri = paramURI;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.net.upload.SessionManager
 * JD-Core Version:    0.6.2
 */