package com.google.glass.net;

import android.net.http.AndroidHttpClient;
import android.util.Log;
import android.util.Pair;
import com.google.glass.util.Assert;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.HttpEntity;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class AndroidHttpRequestDispatcher
  implements HttpRequestDispatcher
{
  private static final String TAG = AndroidHttpRequestDispatcher.class.getSimpleName();
  private static final int TIMEOUT_MS = 30000;
  private final AndroidHttpClient client = AndroidHttpClient.newInstance(ServerConstants.getUserAgent());

  public AndroidHttpRequestDispatcher()
  {
    HttpParams localHttpParams = this.client.getParams();
    HttpConnectionParams.setConnectionTimeout(localHttpParams, 30000);
    HttpConnectionParams.setSoTimeout(localHttpParams, 30000);
  }

  private HttpEntityEnclosingRequestBase prepareEntityRequest(HttpEntityEnclosingRequestBase paramHttpEntityEnclosingRequestBase, Map<String, String> paramMap, HttpEntity paramHttpEntity)
  {
    if (paramMap != null)
    {
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        paramHttpEntityEnclosingRequestBase.addHeader((String)localEntry.getKey(), (String)localEntry.getValue());
      }
    }
    if (paramHttpEntity != null)
      paramHttpEntityEnclosingRequestBase.setEntity(paramHttpEntity);
    return paramHttpEntityEnclosingRequestBase;
  }

  public void close()
  {
    this.client.close();
  }

  public Pair<Integer, byte[]> post(String paramString, Map<String, String> paramMap, byte[] paramArrayOfByte)
  {
    Assert.assertNotUiThread();
    NetworkUtil.checkNetwork();
    SimplifiedHttpResponse localSimplifiedHttpResponse = postWithHeaders(paramString, paramMap, paramArrayOfByte);
    if (localSimplifiedHttpResponse != null)
      return new Pair(Integer.valueOf(localSimplifiedHttpResponse.statusCode), localSimplifiedHttpResponse.body);
    return null;
  }

  public SimplifiedHttpResponse postWithHeaders(String paramString, Map<String, String> paramMap, byte[] paramArrayOfByte)
  {
    Assert.assertNotUiThread();
    NetworkUtil.checkNetwork();
    ByteArrayEntity localByteArrayEntity = null;
    if (paramArrayOfByte != null)
      localByteArrayEntity = new ByteArrayEntity(paramArrayOfByte);
    HttpPost localHttpPost = (HttpPost)prepareEntityRequest(new HttpPost(paramString), paramMap, localByteArrayEntity);
    PendingHttpRequest localPendingHttpRequest = new PendingHttpRequest(this.client, localHttpPost);
    try
    {
      SimplifiedHttpResponse localSimplifiedHttpResponse = localPendingHttpRequest.execute();
      return localSimplifiedHttpResponse;
    }
    catch (IOException localIOException)
    {
      Log.e(TAG, "Exception thrown while doing a post with headers -- returning null", localIOException);
    }
    return null;
  }

  public SimplifiedHttpResponse put(String paramString, Map<String, String> paramMap)
  {
    Assert.assertNotUiThread();
    NetworkUtil.checkNetwork();
    HttpPut localHttpPut = (HttpPut)prepareEntityRequest(new HttpPut(paramString), paramMap, null);
    PendingHttpRequest localPendingHttpRequest = new PendingHttpRequest(this.client, localHttpPut);
    try
    {
      SimplifiedHttpResponse localSimplifiedHttpResponse = localPendingHttpRequest.execute();
      return localSimplifiedHttpResponse;
    }
    catch (IOException localIOException)
    {
      Log.e(TAG, "Exception thrown while doing a put -- returning null.", localIOException);
    }
    return null;
  }

  public PendingHttpRequest putWithFile(String paramString1, Map<String, String> paramMap, File paramFile, String paramString2, long paramLong1, long paramLong2)
  {
    Assert.assertNotUiThread();
    NetworkUtil.checkNetwork();
    if ((paramFile == null) || (!paramFile.exists()))
    {
      Log.e(TAG, "Bad file: " + paramFile);
      return null;
    }
    boolean bool = paramLong2 < 0L;
    FileRangeEntity localFileRangeEntity = null;
    if (bool)
      localFileRangeEntity = new FileRangeEntity(paramFile, paramString2, paramLong1, paramLong1 + paramLong2 - 1L);
    HttpPut localHttpPut = (HttpPut)prepareEntityRequest(new HttpPut(paramString1), paramMap, localFileRangeEntity);
    return new PendingHttpRequest(this.client, localHttpPut);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.net.AndroidHttpRequestDispatcher
 * JD-Core Version:    0.6.2
 */