package com.google.glass.net;

import android.net.http.AndroidHttpClient;
import android.util.Log;
import java.io.IOException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;

public class PendingHttpRequest
{
  private static final String TAG = PendingHttpRequest.class.getSimpleName();
  private final AndroidHttpClient client;
  private boolean isCancelled;
  private HttpEntityEnclosingRequestBase request;

  public PendingHttpRequest(AndroidHttpClient paramAndroidHttpClient, HttpEntityEnclosingRequestBase paramHttpEntityEnclosingRequestBase)
  {
    this.client = paramAndroidHttpClient;
    this.request = paramHttpEntityEnclosingRequestBase;
    this.isCancelled = false;
  }

  public void cancel()
  {
    this.request.abort();
    this.isCancelled = true;
  }

  public SimplifiedHttpResponse execute()
    throws IOException
  {
    HttpResponse localHttpResponse = null;
    try
    {
      localHttpResponse = this.client.execute(this.request);
      if (localHttpResponse == null)
      {
        Log.e(TAG, "Response from server was null!");
        localSimplifiedHttpResponse = null;
        return localSimplifiedHttpResponse;
      }
      SimplifiedHttpResponse localSimplifiedHttpResponse = new SimplifiedHttpResponse(localHttpResponse);
      return localSimplifiedHttpResponse;
    }
    finally
    {
      if (localHttpResponse != null)
        localHttpResponse.getEntity().consumeContent();
    }
  }

  public boolean isCancelled()
  {
    return this.isCancelled;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.net.PendingHttpRequest
 * JD-Core Version:    0.6.2
 */