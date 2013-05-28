package com.google.common.io;

import com.google.common.annotations.Beta;
import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.List;

@Beta
public final class Resources
{
  public static void copy(URL paramURL, OutputStream paramOutputStream)
    throws IOException
  {
    ByteStreams.copy(newInputStreamSupplier(paramURL), paramOutputStream);
  }

  public static URL getResource(Class<?> paramClass, String paramString)
  {
    URL localURL = paramClass.getResource(paramString);
    if (localURL != null);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramString;
      arrayOfObject[1] = paramClass.getName();
      Preconditions.checkArgument(bool, "resource %s relative to %s not found.", arrayOfObject);
      return localURL;
    }
  }

  public static URL getResource(String paramString)
  {
    URL localURL = Resources.class.getClassLoader().getResource(paramString);
    if (localURL != null);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "resource %s not found.", new Object[] { paramString });
      return localURL;
    }
  }

  public static InputSupplier<InputStream> newInputStreamSupplier(URL paramURL)
  {
    Preconditions.checkNotNull(paramURL);
    return new InputSupplier()
    {
      public InputStream getInput()
        throws IOException
      {
        return this.val$url.openStream();
      }
    };
  }

  public static InputSupplier<InputStreamReader> newReaderSupplier(URL paramURL, Charset paramCharset)
  {
    return CharStreams.newReaderSupplier(newInputStreamSupplier(paramURL), paramCharset);
  }

  public static <T> T readLines(URL paramURL, Charset paramCharset, LineProcessor<T> paramLineProcessor)
    throws IOException
  {
    return CharStreams.readLines(newReaderSupplier(paramURL, paramCharset), paramLineProcessor);
  }

  public static List<String> readLines(URL paramURL, Charset paramCharset)
    throws IOException
  {
    return CharStreams.readLines(newReaderSupplier(paramURL, paramCharset));
  }

  public static byte[] toByteArray(URL paramURL)
    throws IOException
  {
    return ByteStreams.toByteArray(newInputStreamSupplier(paramURL));
  }

  public static String toString(URL paramURL, Charset paramCharset)
    throws IOException
  {
    return CharStreams.toString(newReaderSupplier(paramURL, paramCharset));
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.io.Resources
 * JD-Core Version:    0.6.2
 */