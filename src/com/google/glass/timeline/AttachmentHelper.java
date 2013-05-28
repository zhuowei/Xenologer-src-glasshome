package com.google.glass.timeline;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Charsets;
import com.google.glass.app.GlassApplication;
import com.google.glass.logging.UserEventAction;
import com.google.glass.logging.UserEventHelper;
import com.google.glass.net.HttpRequestDispatcherManager;
import com.google.glass.net.ProtoRequestDispatcher;
import com.google.glass.net.ProtoResponse;
import com.google.glass.net.ServerConstants;
import com.google.glass.net.ServerConstants.Action;
import com.google.glass.net.SimplifiedHttpResponse;
import com.google.glass.net.upload.ResumableUploader;
import com.google.glass.net.upload.ResumableUploader.UploadProtocolException;
import com.google.glass.net.upload.SessionManager;
import com.google.glass.net.upload.SessionTracker;
import com.google.glass.net.upload.UploadSession;
import com.google.glass.util.Assert;
import com.google.glass.util.AuthUtils;
import com.google.glass.util.CachedFilesManager;
import com.google.glass.util.CachedFilesManager.ByteArrayLoader;
import com.google.glass.util.CachedFilesManager.Type;
import com.google.glass.util.FileSaver;
import com.google.glass.util.SettingsSecure;
import com.google.googlex.glass.common.proto.Attachment;
import com.google.googlex.glass.common.proto.Attachment.Builder;
import com.google.googlex.glass.common.proto.AttachmentGetRequest;
import com.google.googlex.glass.common.proto.AttachmentGetRequest.Builder;
import com.google.googlex.glass.common.proto.AttachmentGetRequest.ScreenDimensions;
import com.google.googlex.glass.common.proto.AttachmentGetRequest.ScreenDimensions.Builder;
import com.google.googlex.glass.common.proto.AttachmentGetResponse;
import com.google.googlex.glass.common.proto.AttachmentGetResponse.ResponseCode;
import com.google.googlex.glass.common.proto.AttachmentInsertRequest;
import com.google.googlex.glass.common.proto.AttachmentInsertRequest.Builder;
import com.google.googlex.glass.common.proto.AttachmentInsertResponse;
import com.google.googlex.glass.common.proto.AttachmentInsertResponse.ResponseCode;
import com.google.protobuf.ByteString;
import java.io.File;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.auth.InvalidCredentialsException;

public class AttachmentHelper
{
  public static final Attachment EMPTY_ATTACHMENT = Attachment.newBuilder().build();
  private static final String TAG = AttachmentHelper.class.getSimpleName();
  private final AuthUtils authUtils;
  private final Context context;
  private UploadSession uploadSession;
  private ResumableUploader uploader;

  public AttachmentHelper(Context paramContext)
  {
    this.context = paramContext;
    this.authUtils = new AuthUtils(paramContext);
  }

  @VisibleForTesting
  public AttachmentHelper(Context paramContext, AuthUtils paramAuthUtils)
  {
    Assert.assertIsTest();
    this.context = paramContext;
    this.authUtils = paramAuthUtils;
  }

  private UserEventHelper getUserEventHelper()
  {
    return GlassApplication.from(this.context).getUserEventHelper();
  }

  public void abortResumableInsert()
  {
    if (this.uploadSession != null)
      this.uploadSession.cancel();
    if (this.uploader != null)
      this.uploader.abortUpload();
  }

  public byte[] getAttachmentBytes(String paramString, CachedFilesManager.Type paramType, Attachment paramAttachment)
  {
    Assert.assertNotUiThread();
    if ((paramAttachment.hasClientCachePath()) && (new File(paramAttachment.getClientCachePath()).exists()));
    CachedFilesManager localCachedFilesManager;
    for (String str = paramAttachment.getClientCachePath(); ; str = localCachedFilesManager.getPath(paramType, paramAttachment.getId()))
    {
      boolean bool1 = TextUtils.isEmpty(str);
      byte[] arrayOfByte = null;
      if (!bool1)
        arrayOfByte = (byte[])CachedFilesManager.getSharedInstance().load(str, new CachedFilesManager.ByteArrayLoader());
      boolean bool2;
      do
      {
        return arrayOfByte;
        localCachedFilesManager = CachedFilesManager.getSharedInstance();
        if (localCachedFilesManager.contains(paramType, paramString))
          break;
        bool2 = TextUtils.isEmpty(paramAttachment.getId());
        arrayOfByte = null;
      }
      while (bool2);
      ByteString localByteString = getAttachmentFromServer(paramAttachment.getId());
      if ((localByteString == null) || (localByteString.isEmpty()))
        break;
      localCachedFilesManager.save(paramType, paramString, FileSaver.newSaver(localByteString));
    }
    Log.e(TAG, "Failed to get attachment from server: " + paramAttachment.getId());
    return null;
  }

  public ByteString getAttachmentFromServer(String paramString)
  {
    Log.v(TAG, "Requesting attachment " + paramString + " from server.");
    AttachmentGetRequest.Builder localBuilder = AttachmentGetRequest.newBuilder().setAttachmentId(paramString);
    WindowManager localWindowManager = (WindowManager)this.context.getSystemService("window");
    if (localWindowManager != null)
    {
      Display localDisplay = localWindowManager.getDefaultDisplay();
      localBuilder.setScreenDimensions(AttachmentGetRequest.ScreenDimensions.newBuilder().setWidthPixels(localDisplay.getWidth()).setHeightPixels(localDisplay.getHeight()));
    }
    AttachmentGetRequest localAttachmentGetRequest = localBuilder.build();
    ProtoResponse localProtoResponse = getRequestDispatcher().blockingDispatch(ServerConstants.Action.ATTACHMENT_GET, localAttachmentGetRequest, AttachmentGetResponse.PARSER);
    if ((localProtoResponse == null) || (!localProtoResponse.isSuccess()));
    AttachmentGetResponse localAttachmentGetResponse;
    do
    {
      return null;
      localAttachmentGetResponse = (AttachmentGetResponse)localProtoResponse.getResponseProto();
    }
    while (AttachmentGetResponse.ResponseCode.SUCCESS != localAttachmentGetResponse.getResponseCode());
    ByteString localByteString = localAttachmentGetResponse.getContent();
    Log.w(TAG, "Successfully get attachment from server: " + paramString + ", " + localByteString.size() + " bytes.");
    return localByteString;
  }

  @VisibleForTesting
  ProtoRequestDispatcher getRequestDispatcher()
  {
    return GlassApplication.from(this.context).getRequestDispatcher();
  }

  public String insertAttachmentToServer(String paramString1, ByteString paramByteString, String paramString2, long paramLong)
  {
    Log.v(TAG, "Uploading attachment of " + paramByteString.size() + " bytes to server, mimeType: " + paramString1 + " filename: " + paramString2);
    AttachmentInsertRequest.Builder localBuilder = AttachmentInsertRequest.newBuilder().setMimeType(paramString1).setContent(paramByteString).setName(paramString2).setCreationTime(paramLong);
    if (!Assert.isTest())
      localBuilder.setDeviceId(new SettingsSecure(this.context.getContentResolver()).getString("android_id"));
    AttachmentInsertRequest localAttachmentInsertRequest = localBuilder.build();
    ProtoResponse localProtoResponse = getRequestDispatcher().blockingDispatch(ServerConstants.Action.ATTACHMENT_INSERT, localAttachmentInsertRequest, AttachmentInsertResponse.PARSER);
    if ((localProtoResponse == null) || (!localProtoResponse.isSuccess()));
    AttachmentInsertResponse localAttachmentInsertResponse;
    do
    {
      return null;
      localAttachmentInsertResponse = (AttachmentInsertResponse)localProtoResponse.getResponseProto();
    }
    while (AttachmentInsertResponse.ResponseCode.SUCCESS != localAttachmentInsertResponse.getResponseCode());
    String str = localAttachmentInsertResponse.getAttachmentId();
    Log.w(TAG, "Successfully inserted attachment to server: " + localAttachmentInsertResponse.getAttachmentId() + ", " + str);
    return str;
  }

  public String insertAttachmentViaResumableUpload(String paramString, File paramFile)
  {
    SessionTracker localSessionTracker = new SessionTracker(this.context);
    URI localURI1 = localSessionTracker.getSessionUri(paramFile);
    if (localURI1 == null)
      Log.v(TAG, "Starting upload of " + paramFile.length() + " bytes, mimeType: " + paramString + " filename: " + paramFile.getAbsolutePath());
    String str;
    while (true)
    {
      this.uploader = new ResumableUploader(HttpRequestDispatcherManager.getSharedDispatcher(), URI.create(ServerConstants.getResumableUploadUrl()), paramFile, paramString, this.context, localURI1);
      try
      {
        long l = this.uploader.upload();
        Log.v(TAG, "Successfully uploaded " + l + " bytes.");
        localSessionTracker.clearSessionUri(paramFile);
        str = this.uploader.getLastAttachmentId();
        if (str == null)
        {
          Log.e(TAG, "Missing attachment ID. Assuming failed upload session and starting over.");
          return null;
          Log.v(TAG, "Resuming upload of " + paramFile.length() + " bytes, " + "mimeType: " + paramString + " filename: " + paramFile.getAbsolutePath() + " session URI: " + localURI1);
        }
      }
      catch (ResumableUploader.UploadProtocolException localUploadProtocolException)
      {
        getUserEventHelper().log(UserEventAction.RESUMABLE_UPLOADER_UPLOAD_FATAL_ERROR);
        Log.e(TAG, "Unrecoverable exception while doing an upload -- clearing session URI", localUploadProtocolException);
        localSessionTracker.clearSessionUri(paramFile);
        return null;
      }
      catch (Exception localException)
      {
        Log.w(TAG, "Error while uploading", localException);
        URI localURI2 = this.uploader.getSessionUri();
        if (localURI2 == null)
          Log.e(TAG, "Failed to start session");
        while (true)
        {
          return null;
          getUserEventHelper().log(UserEventAction.RESUMABLE_UPLOADER_UPLOAD_RECOVERABLE_ERROR);
          Log.w(TAG, "Failed to upload attachment -- storing session URI");
          localSessionTracker.setSessionUri(paramFile, localURI2);
        }
        Log.v(TAG, "New attachment ID is " + str);
      }
    }
    return str;
  }

  public String insertAttachmentViaSessionManager(String paramString, File paramFile)
    throws IOException, InvalidCredentialsException
  {
    SessionTracker localSessionTracker = new SessionTracker(this.context);
    SessionManager localSessionManager = new SessionManager(HttpRequestDispatcherManager.getSharedDispatcher(), this.authUtils, localSessionTracker, URI.create(ServerConstants.getResumableUploadUrl()), paramFile, paramString, this.context);
    localSessionManager.init();
    if (!localSessionManager.isUploadSuccessful())
    {
      this.uploadSession = localSessionManager.getUploadSession();
      this.uploadSession.upload();
    }
    SimplifiedHttpResponse localSimplifiedHttpResponse = localSessionManager.getUploadResult();
    if (localSimplifiedHttpResponse == null)
      throw new ProtocolException("Somehow we completed the upload successfully and no response was returned! BUG!");
    if (localSimplifiedHttpResponse.body == null)
      throw new ProtocolException("Somehow we completed successfully, but the body is null! BUG!");
    return new String(localSimplifiedHttpResponse.body, Charsets.UTF_8);
  }

  public List<Attachment> mergeAttachments(List<Attachment> paramList1, List<Attachment> paramList2)
  {
    ArrayList localArrayList = new ArrayList(Math.max(paramList1.size(), paramList2.size()));
    int i = 0;
    while ((i < paramList1.size()) && (i < paramList2.size()))
    {
      Object localObject = (Attachment)paramList1.get(i);
      Attachment localAttachment = (Attachment)paramList2.get(i);
      if ((localObject == EMPTY_ATTACHMENT) || (localAttachment == EMPTY_ATTACHMENT))
      {
        i++;
      }
      else
      {
        if (((Attachment)localObject).hasId());
        while (true)
        {
          localArrayList.add(localObject);
          break;
          localObject = localAttachment;
        }
      }
    }
    if (paramList1.size() < paramList2.size())
      localArrayList.addAll(paramList2.subList(paramList1.size(), paramList2.size()));
    while (localArrayList.remove(EMPTY_ATTACHMENT))
    {
      Log.d(TAG, "Removed one instance of an empty attachment.");
      continue;
      if (paramList1.size() > paramList2.size())
        localArrayList.addAll(paramList1.subList(paramList2.size(), paramList1.size()));
    }
    return localArrayList;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.timeline.AttachmentHelper
 * JD-Core Version:    0.6.2
 */