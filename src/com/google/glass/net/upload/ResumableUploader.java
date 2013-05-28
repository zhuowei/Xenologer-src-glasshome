package com.google.glass.net.upload;

import android.content.Context;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.glass.app.GlassApplication;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.net.HttpRequestDispatcher;
import com.google.glass.net.PendingHttpRequest;
import com.google.glass.net.SimplifiedHttpResponse;
import com.google.glass.util.Assert;
import com.google.glass.util.AuthUtils;
import com.google.glass.util.SettingsSecure;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.ProtocolException;
import org.apache.http.auth.InvalidCredentialsException;
import org.apache.http.client.ClientProtocolException;

public class ResumableUploader
{
  static final String CX_GOOG_UPLOAD_COMMAND = "X-Goog-Upload-Command";
  static final String CX_GOOG_UPLOAD_CONTENT_LENGTH = "X-Goog-Upload-Content-Length";
  static final String CX_GOOG_UPLOAD_CONTENT_TYPE = "X-Goog-Upload-Content-Type";
  static final String CX_GOOG_UPLOAD_OFFSET = "X-Goog-Upload-Offset";
  static final String CX_GOOG_UPLOAD_PROTOCOL = "X-Goog-Upload-Protocol";
  static final long FINALIZED_SESSION = -2L;
  static final long INVALID_OR_MISSING_SESSION = -1L;
  static final String SX_GOOG_UPLOAD_SIZE_RECEIVED = "X-Goog-Upload-Size-Received";
  static final String SX_GOOG_UPLOAD_STATUS = "X-Goog-Upload-Status";
  static final String SX_GOOG_UPLOAD_URL = "X-Goog-Upload-URL";
  private static final String TAG = ResumableUploader.class.getSimpleName();
  private AuthUtils authUtils;
  private final URI baseUploadUri;
  private Context context;
  private PendingHttpRequest currentRequest;
  private String deviceId;
  private HttpRequestDispatcher dispatcher;
  private final String fileMimeType;
  private final File fileToUpload;
  private String lastAttachmentId;
  private URI sessionUri;

  public ResumableUploader(HttpRequestDispatcher paramHttpRequestDispatcher, URI paramURI1, File paramFile, String paramString, Context paramContext, URI paramURI2)
  {
    this.baseUploadUri = paramURI1;
    this.fileToUpload = paramFile;
    this.fileMimeType = paramString;
    this.sessionUri = paramURI2;
    this.context = paramContext;
    this.dispatcher = paramHttpRequestDispatcher;
    setAuthUtils(new AuthUtils(paramContext));
  }

  private Map<String, String> createHeaders(Map<String, String> paramMap, UploadCommand paramUploadCommand)
  {
    HashMap localHashMap = Maps.newHashMapWithExpectedSize(1 + paramMap.size());
    localHashMap.putAll(paramMap);
    localHashMap.put("X-Goog-Upload-Command", paramUploadCommand.toCommandString());
    localHashMap.put("X-Goog-Last-Modified", String.valueOf(this.fileToUpload.lastModified()));
    localHashMap.put("X-Goog-Upload-File-Name", this.fileToUpload.getName());
    if (paramUploadCommand == UploadCommand.START)
    {
      localHashMap.put("X-Goog-Upload-Protocol", "resumable");
      localHashMap.put("X-Goog-Upload-Content-Type", this.fileMimeType);
    }
    return localHashMap;
  }

  private UploadStatus getUploadStatus(SimplifiedHttpResponse paramSimplifiedHttpResponse)
    throws ResumableUploader.UploadProtocolException
  {
    String str = null;
    try
    {
      str = (String)paramSimplifiedHttpResponse.headers.get("X-Goog-Upload-Status");
      if (str == null)
      {
        Log.w(TAG, "Upload server didn't give us an upload status!");
        return null;
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.e(TAG, "PROTOCOL FAILURE! Upload server returned a status we don't recognize: " + str, localIllegalArgumentException);
      return null;
    }
    return (UploadStatus)UploadStatus.valueOf(UploadStatus.class, str.toUpperCase());
  }

  public void abortUpload()
  {
    if (this.currentRequest != null)
      this.currentRequest.cancel();
  }

  @VisibleForTesting
  boolean doUpload(Map<String, String> paramMap, long paramLong)
    throws IOException, ClientProtocolException, ResumableUploader.UploadProtocolException, InvalidCredentialsException
  {
    Log.v(TAG, "Doing upload via PUT to " + this.sessionUri);
    Map localMap = createHeaders(paramMap, UploadCommand.UPLOAD);
    localMap.put("X-Goog-Upload-Offset", String.valueOf(paramLong));
    this.currentRequest = this.dispatcher.putWithFile(this.sessionUri.toString(), localMap, this.fileToUpload, this.fileMimeType, paramLong, this.fileToUpload.length() - paramLong);
    SimplifiedHttpResponse localSimplifiedHttpResponse = this.currentRequest.execute();
    if (this.currentRequest.isCancelled())
      throw new ClientProtocolException("Upload was cancelled.");
    if (localSimplifiedHttpResponse == null)
      throw new UploadProtocolException("Connection failed or no response received from server!");
    int i = localSimplifiedHttpResponse.statusCode;
    if ((i >= 400) && (i < 500))
    {
      if ((i == 403) || (i == 401))
        throw new InvalidCredentialsException("Bad credentials or credentials expired. Last response was: " + localSimplifiedHttpResponse);
      throw new UploadProtocolException("Status returned was " + i + " instead of " + "200 OK. Last response was: " + localSimplifiedHttpResponse);
    }
    UploadStatus localUploadStatus = getUploadStatus(localSimplifiedHttpResponse);
    if ((UploadStatus.FINAL == localUploadStatus) && (localSimplifiedHttpResponse != null) && (localSimplifiedHttpResponse.body != null))
    {
      this.lastAttachmentId = new String(localSimplifiedHttpResponse.body);
      Log.v(TAG, "Upload completed successfully.");
      return true;
    }
    if ((UploadStatus.ACTIVE == localUploadStatus) && (200 == i))
      Log.v(TAG, "Upload did not complete, but uploaded bytes were received -- returning false.");
    return false;
  }

  public String getLastAttachmentId()
  {
    return this.lastAttachmentId;
  }

  public URI getSessionUri()
  {
    return this.sessionUri;
  }

  @VisibleForTesting
  long queryForSessionOffset(Map<String, String> paramMap)
    throws IOException, ClientProtocolException, ResumableUploader.UploadProtocolException, InvalidCredentialsException
  {
    if ((this.sessionUri == null) || (this.sessionUri.equals("")))
      return -1L;
    Map localMap = createHeaders(paramMap, UploadCommand.QUERY);
    SimplifiedHttpResponse localSimplifiedHttpResponse = this.dispatcher.put(this.sessionUri.toString(), localMap);
    if (localSimplifiedHttpResponse == null)
      throw new UploadProtocolException("Connection failed or no response received from server!");
    int i = localSimplifiedHttpResponse.statusCode;
    Log.v(TAG, "Query for session status returned " + localSimplifiedHttpResponse.statusCode);
    UploadStatus localUploadStatus = getUploadStatus(localSimplifiedHttpResponse);
    Log.v(TAG, "Session status is currently set to " + localUploadStatus);
    if ((i >= 400) && (i < 500))
    {
      if (localUploadStatus == UploadStatus.FINAL)
      {
        Log.w(TAG, "Received 'final' and a 400 series error when querying for session status.");
        return -1L;
      }
      if ((i == 403) || (i == 401))
        throw new InvalidCredentialsException("Bad credentials or credentials expired.");
      Log.v(TAG, "No previous session was established with the URL " + this.sessionUri);
      return -1L;
    }
    if (i == 200)
    {
      if (localUploadStatus == null)
      {
        Log.w(TAG, "Assuming no session with URL " + this.sessionUri + " exists since there's no " + "valid status.");
        return -1L;
      }
      if (localUploadStatus == UploadStatus.CANCELLED)
      {
        Log.w(TAG, "Session at URL " + this.sessionUri + " was previously cancelled.");
        return -1L;
      }
      if ((localUploadStatus == UploadStatus.FINAL) && (localSimplifiedHttpResponse != null) && (localSimplifiedHttpResponse.body != null))
      {
        this.lastAttachmentId = new String(localSimplifiedHttpResponse.body);
        Log.d(TAG, "Received 'final' when querying and found attachment ID " + this.lastAttachmentId);
        return -2L;
      }
      if (localSimplifiedHttpResponse.headers.containsKey("X-Goog-Upload-Size-Received"))
      {
        long l = Long.parseLong((String)localSimplifiedHttpResponse.headers.get("X-Goog-Upload-Size-Received"));
        Log.v(TAG, "Upstream server got " + l + " bytes from a previous session.");
        return l;
      }
      Log.v(TAG, "Upstream server never got any bytes -- assuming zero offset.");
      return 0L;
    }
    throw new IOException("Couldn't get session offset");
  }

  @VisibleForTesting
  void setAuthUtils(AuthUtils paramAuthUtils)
  {
    this.authUtils = paramAuthUtils;
  }

  @VisibleForTesting
  void setDeviceId(String paramString)
  {
    this.deviceId = paramString;
  }

  @VisibleForTesting
  URI startNewSession(Map<String, String> paramMap)
    throws InvalidCredentialsException, ClientProtocolException, ResumableUploader.UploadProtocolException, IOException
  {
    Map localMap = createHeaders(paramMap, UploadCommand.START);
    localMap.put("X-Goog-Upload-Content-Length", String.valueOf(this.fileToUpload.length()));
    String str = this.baseUploadUri + "/" + this.fileToUpload.getName();
    SimplifiedHttpResponse localSimplifiedHttpResponse = this.dispatcher.postWithHeaders(str, localMap, null);
    if (localSimplifiedHttpResponse == null)
      throw new UploadProtocolException("Connection failed or no response received from server!");
    int i = localSimplifiedHttpResponse.statusCode;
    UploadStatus localUploadStatus = getUploadStatus(localSimplifiedHttpResponse);
    Log.v(TAG, "Query to start new session returned " + localSimplifiedHttpResponse.statusCode);
    if (localUploadStatus == UploadStatus.FINAL)
      throw new UploadProtocolException("Attempted to start a new session, but server replied with a " + i + " response and with a session status of final!");
    if ((localUploadStatus == UploadStatus.ACTIVE) && (i == 200))
    {
      if (!localSimplifiedHttpResponse.headers.containsKey("X-Goog-Upload-URL"))
        throw new UploadProtocolException("No X-Goog-Upload-URL present in successful session start response!");
      try
      {
        this.sessionUri = new URI((String)localSimplifiedHttpResponse.headers.get("X-Goog-Upload-URL"));
        return this.sessionUri;
      }
      catch (URISyntaxException localURISyntaxException)
      {
        throw new UploadProtocolException("X-Goog-Upload-URL didn't contain a valid URI?! sessionUri contained " + (String)localSimplifiedHttpResponse.headers.get("X-Goog-Upload-URL"), localURISyntaxException);
      }
    }
    if ((i >= 400) && (i < 500))
    {
      if ((i == 403) || (i == 401))
        throw new InvalidCredentialsException("Bad credentials or credentials expired.");
      throw new UploadProtocolException("Got a 400 series error (" + i + ") and " + "can't retry since we don't know what to change!");
    }
    throw new IOException("Couldn't start new session");
  }

  public long upload()
    throws ClientProtocolException, ResumableUploader.UploadProtocolException, InvalidCredentialsException, IOException
  {
    Assert.assertNotUiThread();
    if (this.deviceId == null)
      setDeviceId(new SettingsSecure(this.context.getContentResolver()).getString("android_id"));
    Map localMap = this.authUtils.createAuthHeaders();
    if (localMap == null)
      throw new InvalidCredentialsException("Unable to create auth headers.");
    UserEventHelper localUserEventHelper = GlassApplication.from(this.context).getUserEventHelper();
    long l1 = queryForSessionOffset(localMap);
    if (l1 == -1L)
      l1 = 0L;
    long l2;
    while (true)
    {
      try
      {
        startNewSession(localMap);
        localUserEventHelper.log(UserEventAction.RESUMABLE_UPLOADER_UPLOAD_STARTED);
        boolean bool = doUpload(localMap, l1);
        l2 = queryForSessionOffset(localMap);
        if ((!bool) && (-2L != l2))
          break;
        localUserEventHelper.log(UserEventAction.RESUMABLE_UPLOADER_UPLOAD_FINISHED);
        Log.v(TAG, "Upload of " + this.fileToUpload + " completed -- uploaded " + l2 + " bytes.");
        return l2;
      }
      catch (InvalidCredentialsException localInvalidCredentialsException)
      {
        this.authUtils.invalidateAuthToken();
        localMap = this.authUtils.createAuthHeaders();
        startNewSession(localMap);
        continue;
      }
      if (l1 == -2L)
      {
        Log.w(TAG, "Trying to resume a finalize session");
        return -2L;
      }
      localUserEventHelper.log(UserEventAction.RESUMABLE_UPLOADER_UPLOAD_RESUMED);
    }
    if (l2 == -1L)
    {
      Log.e(TAG, "Upload session went invalid in the middle of an upload!");
      throw new UploadProtocolException("Upload session invalidated in the middle of upload!");
    }
    Log.v(TAG, "Upload did not finalize -- attempting to finish by retrying at " + l2);
    if (l1 == l2)
      Log.w(TAG, "Upload progress seems stalled -- stuck at " + l1);
    throw new IOException("Failed to perform upload");
  }

  static enum UploadCommand
  {
    private final String commandString;

    static
    {
      QUERY = new UploadCommand("QUERY", 2, "query");
      UploadCommand[] arrayOfUploadCommand = new UploadCommand[3];
      arrayOfUploadCommand[0] = START;
      arrayOfUploadCommand[1] = UPLOAD;
      arrayOfUploadCommand[2] = QUERY;
    }

    private UploadCommand(String paramString)
    {
      this.commandString = paramString;
    }

    public String toCommandString()
    {
      return this.commandString;
    }
  }

  public class UploadProtocolException extends ProtocolException
  {
    public UploadProtocolException(String arg2)
    {
      super();
    }

    public UploadProtocolException(String paramThrowable, Throwable arg3)
    {
      super(localThrowable);
    }
  }

  public static enum UploadStatus
  {
    static
    {
      CANCELLED = new UploadStatus("CANCELLED", 2);
      UploadStatus[] arrayOfUploadStatus = new UploadStatus[3];
      arrayOfUploadStatus[0] = ACTIVE;
      arrayOfUploadStatus[1] = FINAL;
      arrayOfUploadStatus[2] = CANCELLED;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.net.upload.ResumableUploader
 * JD-Core Version:    0.6.2
 */