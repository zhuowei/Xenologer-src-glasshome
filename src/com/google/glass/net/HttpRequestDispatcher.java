package com.google.glass.net;

import android.util.Pair;
import java.io.File;
import java.util.Map;

public abstract interface HttpRequestDispatcher
{
  public abstract void close();

  public abstract Pair<Integer, byte[]> post(String paramString, Map<String, String> paramMap, byte[] paramArrayOfByte);

  public abstract SimplifiedHttpResponse postWithHeaders(String paramString, Map<String, String> paramMap, byte[] paramArrayOfByte);

  public abstract SimplifiedHttpResponse put(String paramString, Map<String, String> paramMap);

  public abstract PendingHttpRequest putWithFile(String paramString1, Map<String, String> paramMap, File paramFile, String paramString2, long paramLong1, long paramLong2);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.net.HttpRequestDispatcher
 * JD-Core Version:    0.6.2
 */