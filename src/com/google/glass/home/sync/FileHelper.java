package com.google.glass.home.sync;

import android.util.Log;
import com.google.protobuf.ByteString;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

public class FileHelper
{
  private static final String TAG = FileHelper.class.getSimpleName();
  private final StreamCreator streamCreator;

  FileHelper()
  {
    this(null);
  }

  FileHelper(StreamCreator paramStreamCreator)
  {
    this.streamCreator = paramStreamCreator;
  }

  public ByteString toByteString(File paramFile)
  {
    byte[] arrayOfByte = null;
    FileInputStream localFileInputStream = null;
    try
    {
      StreamCreator localStreamCreator = this.streamCreator;
      arrayOfByte = null;
      localFileInputStream = null;
      if (localStreamCreator == null)
        localFileInputStream = new FileInputStream(paramFile);
      while (true)
      {
        arrayOfByte = new byte[(int)paramFile.length()];
        int i = 0;
        label39: int j = arrayOfByte.length;
        if (i < j)
          try
          {
            int k = localFileInputStream.read(arrayOfByte);
            i += k;
            break label39;
            localFileInputStream = this.streamCreator.createFileInputStream(paramFile);
          }
          catch (IOException localIOException4)
          {
            Log.e(TAG, "Error reading bytes", localIOException4);
          }
      }
      while (true)
      {
        try
        {
          localFileInputStream.close();
          return null;
        }
        catch (IOException localIOException5)
        {
          Log.e(TAG, "Failed to close stream", localIOException5);
          return null;
        }
        if (localFileInputStream != null);
        try
        {
          localFileInputStream.close();
          return ByteString.copyFrom(arrayOfByte);
        }
        catch (IOException localIOException3)
        {
          while (true)
            Log.e(TAG, "Failed to close stream", localIOException3);
        }
      }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      while (true)
      {
        Log.e(TAG, "Can't convert file to byte[]", localFileNotFoundException);
        if (localFileInputStream != null)
          try
          {
            localFileInputStream.close();
          }
          catch (IOException localIOException2)
          {
            Log.e(TAG, "Failed to close stream", localIOException2);
          }
      }
    }
    finally
    {
      if (localFileInputStream == null);
    }
    try
    {
      localFileInputStream.close();
      throw localObject;
    }
    catch (IOException localIOException1)
    {
      while (true)
        Log.e(TAG, "Failed to close stream", localIOException1);
    }
  }

  static abstract interface StreamCreator
  {
    public abstract FileInputStream createFileInputStream(File paramFile)
      throws FileNotFoundException;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.FileHelper
 * JD-Core Version:    0.6.2
 */