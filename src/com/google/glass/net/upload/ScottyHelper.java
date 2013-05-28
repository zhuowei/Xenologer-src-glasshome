package com.google.glass.net.upload;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.glass.net.SimplifiedHttpResponse;
import com.google.glass.util.AuthUtils;
import java.io.File;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.auth.InvalidCredentialsException;

class ScottyHelper
{
  static SessionStatus getSessionStatus(SimplifiedHttpResponse paramSimplifiedHttpResponse)
    throws ProtocolException
  {
    String str = (String)paramSimplifiedHttpResponse.headers.get("X-Goog-Upload-Status");
    if (str == null)
      throw new ProtocolException("No status header from Scotty: " + paramSimplifiedHttpResponse);
    try
    {
      SessionStatus localSessionStatus = (SessionStatus)SessionStatus.valueOf(SessionStatus.class, str.toUpperCase());
      return localSessionStatus;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
    }
    throw new ProtocolException("Upload server returned a status we didn't recognize: " + str);
  }

  static Map<String, String> makeBaseHeaders(AuthUtils paramAuthUtils, ResumableUploader.UploadCommand paramUploadCommand, File paramFile)
    throws IOException, InvalidCredentialsException
  {
    HashMap localHashMap = Maps.newHashMap();
    localHashMap.put("X-Goog-Upload-Command", paramUploadCommand.toCommandString());
    localHashMap.put("X-Goog-Last-Modified", String.valueOf(paramFile.lastModified()));
    localHashMap.put("X-Goog-Upload-File-Name", paramFile.getName());
    Map localMap = paramAuthUtils.createAuthHeaders();
    if (localMap == null)
      throw new InvalidCredentialsException("Unable to create auth headers.");
    localHashMap.putAll(localMap);
    return localHashMap;
  }

  static enum SessionStatus
  {
    static
    {
      CANCELLED = new SessionStatus("CANCELLED", 2);
      SessionStatus[] arrayOfSessionStatus = new SessionStatus[3];
      arrayOfSessionStatus[0] = ACTIVE;
      arrayOfSessionStatus[1] = FINAL;
      arrayOfSessionStatus[2] = CANCELLED;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.net.upload.ScottyHelper
 * JD-Core Version:    0.6.2
 */