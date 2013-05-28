package com.google.glass.net.upload;

import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.glass.net.HttpRequestDispatcher;
import com.google.glass.net.PendingHttpRequest;
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

public class UploadSession
{
  private static final String TAG = UploadSession.class.getSimpleName();
  private final AuthUtils authUtils;
  private PendingHttpRequest currentRequest;
  private final HttpRequestDispatcher dispatcher;
  private final File fileToUpload;
  private final String logTag;
  private final SessionManager manager;
  private final String mimeType;
  private final long offset;
  private final URI uploadUri;

  UploadSession(AuthUtils paramAuthUtils, HttpRequestDispatcher paramHttpRequestDispatcher, SessionManager paramSessionManager, URI paramURI, File paramFile, long paramLong, String paramString)
  {
    this.logTag = (TAG + "/" + paramFile.getName());
    this.authUtils = paramAuthUtils;
    this.dispatcher = paramHttpRequestDispatcher;
    this.manager = paramSessionManager;
    this.uploadUri = paramURI;
    this.fileToUpload = paramFile;
    this.mimeType = paramString;
    this.offset = paramLong;
  }

  public void cancel()
  {
    Log.v(this.logTag, "Cancel requested -- breaking upload.");
    this.currentRequest.cancel();
  }

  @VisibleForTesting
  long getOffset()
  {
    Assert.assertIsTest();
    return this.offset;
  }

  public void upload()
    throws IOException, InvalidCredentialsException
  {
    Assert.assertNotUiThread();
    Map localMap = ScottyHelper.makeBaseHeaders(this.authUtils, ResumableUploader.UploadCommand.UPLOAD, this.fileToUpload);
    HashMap localHashMap = Maps.newHashMap();
    localHashMap.put("X-Goog-Upload-Offset", String.valueOf(this.offset));
    localHashMap.putAll(localMap);
    Log.v(this.logTag, "Uploading file via PUT for session " + this.uploadUri);
    this.currentRequest = this.dispatcher.putWithFile(this.uploadUri.toString(), localHashMap, this.fileToUpload, this.mimeType, this.offset, this.fileToUpload.length() - this.offset);
    SimplifiedHttpResponse localSimplifiedHttpResponse = this.currentRequest.execute();
    if (this.currentRequest.isCancelled())
      throw new IOException("Upload was cancelled.");
    if (localSimplifiedHttpResponse == null)
      throw new ProtocolException("Connection failed or no response received from server!");
    if ((localSimplifiedHttpResponse.statusCode == 403) || (localSimplifiedHttpResponse.statusCode == 401))
      throw new InvalidCredentialsException("Bad credentials or credentials expired.");
    if (localSimplifiedHttpResponse.statusCode != 200)
      throw new ProtocolException("Scotty returned with an unexpected status code: " + localSimplifiedHttpResponse);
    if (!localSimplifiedHttpResponse.headers.containsKey("X-Goog-Upload-Status"))
      throw new ProtocolException("Scotty did not respond with an upload status: " + localSimplifiedHttpResponse);
    if (ScottyHelper.getSessionStatus(localSimplifiedHttpResponse) != ScottyHelper.SessionStatus.FINAL)
      throw new ProtocolException("Scotty did not finalize our upload session as requested: " + localSimplifiedHttpResponse);
    if ((localSimplifiedHttpResponse.body == null) || (localSimplifiedHttpResponse.body.length == 0))
      throw new ProtocolException("Client proxy did not respond with an upload id: " + localSimplifiedHttpResponse);
    this.manager.onUploadSuccess(localSimplifiedHttpResponse);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.net.upload.UploadSession
 * JD-Core Version:    0.6.2
 */