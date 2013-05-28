package com.google.glass.home.search;

import android.app.Activity;
import android.content.Intent;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class VoiceSearchResultsDebugActivity extends Activity
{
  private static final String FILE_TO_LOAD = "file_to_load";
  private static final String TAG = VoiceSearchResultsDebugActivity.class.getSimpleName();

  private static File getMajelResponseFile(String paramString)
  {
    File localFile = new File(Environment.getExternalStorageDirectory() + "/vs/");
    if (!localFile.exists())
      localFile.mkdir();
    return new File(localFile, paramString);
  }

  private static byte[] loadMajelResponse(String paramString)
  {
    File localFile = getMajelResponseFile(paramString);
    int i = (int)localFile.length();
    byte[] arrayOfByte = new byte[i];
    try
    {
      new FileInputStream(localFile).read(arrayOfByte, 0, i);
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      Log.e(TAG, "Unable to load " + localFile.getAbsolutePath(), localIOException);
    }
    return arrayOfByte;
  }

  public static void saveMajelResponseProto(byte[] paramArrayOfByte, String paramString)
  {
    String str = paramString.toLowerCase().replace(" ", "_");
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(getMajelResponseFile(str));
      localFileOutputStream.write(paramArrayOfByte);
      localFileOutputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
      Log.e(TAG, "Unable to save " + str, localIOException);
    }
  }

  protected void onResume()
  {
    super.onResume();
    String str = getIntent().getStringExtra("file_to_load");
    byte[] arrayOfByte = loadMajelResponse(str);
    if (arrayOfByte.length == 0)
      throw new RuntimeException("Can't find the file /sdcard/vs/" + str);
    Intent localIntent = new Intent("com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT");
    localIntent.putExtra("recognitionResult", str.replace("_", " "));
    localIntent.putExtra("majelResponse", arrayOfByte);
    localIntent.putExtra("startTime", -1L);
    startActivity(localIntent);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.VoiceSearchResultsDebugActivity
 * JD-Core Version:    0.6.2
 */