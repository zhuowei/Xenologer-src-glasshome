package com.google.glass.voice.network.translate;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.net.Uri;
import android.net.Uri.Builder;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Maps;
import com.google.glass.net.HttpRequestDispatcher;
import com.google.glass.net.HttpRequestDispatcherManager;
import com.google.glass.net.SimplifiedHttpResponse;
import com.google.glass.util.Assert;
import com.google.glass.util.AsyncThreadExecutorManager;
import com.google.glass.util.CachedFilesManager;
import com.google.glass.util.CachedFilesManager.Loader;
import com.google.glass.util.CachedFilesManager.Type;
import com.google.glass.util.FileSaver;
import com.google.majel.proto.CommonStructuredResponse.TranslationResult;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

public class NetworkTts
  implements MediaPlayer.OnCompletionListener
{

  @VisibleForTesting
  static final CachedFilesManager.Type CACHE_FILE_TYPE;
  public static final String[] NETWORK_TTS_SUPPORTED_LANGUAGES;
  private static final String REQUEST_DEFAULT_QUERY_PARAMETERS = "ie=utf-8&client=android-translate&glass=1";
  public static final String REQUEST_HOST = "translate.google.com";
  public static final String REQUEST_PATH = "/translate_tts";
  private static final String REQUEST_SCHEME = "http";
  private static final String TAG = NetworkTts.class.getSimpleName();
  private static final String TARGET_LANG = "tl";
  private static final String TARGET_TEXT = "text";
  private static HashSet<String> networkTtsSupportedLanguages;
  private static MediaPlayer player;
  private static NetworkTts sharedInstance;
  private CachedFilesManager.Loader<Boolean> loader = new CachedFilesManager.Loader()
  {
    // ERROR //
    public Boolean load(String paramAnonymousString)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_2
      //   2: new 26	java/io/FileInputStream
      //   5: dup
      //   6: new 28	java/io/File
      //   9: dup
      //   10: aload_1
      //   11: invokespecial 31	java/io/File:<init>	(Ljava/lang/String;)V
      //   14: invokespecial 34	java/io/FileInputStream:<init>	(Ljava/io/File;)V
      //   17: astore_3
      //   18: aload_0
      //   19: getfield 15	com/google/glass/voice/network/translate/NetworkTts$1:this$0	Lcom/google/glass/voice/network/translate/NetworkTts;
      //   22: invokevirtual 37	com/google/glass/voice/network/translate/NetworkTts:stopSpeaking	()V
      //   25: new 39	android/media/MediaPlayer
      //   28: dup
      //   29: invokespecial 40	android/media/MediaPlayer:<init>	()V
      //   32: invokestatic 44	com/google/glass/voice/network/translate/NetworkTts:access$002	(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
      //   35: pop
      //   36: invokestatic 48	com/google/glass/voice/network/translate/NetworkTts:access$000	()Landroid/media/MediaPlayer;
      //   39: invokestatic 52	com/google/glass/voice/network/translate/NetworkTts:getSharedInstance	()Lcom/google/glass/voice/network/translate/NetworkTts;
      //   42: invokevirtual 56	android/media/MediaPlayer:setOnCompletionListener	(Landroid/media/MediaPlayer$OnCompletionListener;)V
      //   45: invokestatic 48	com/google/glass/voice/network/translate/NetworkTts:access$000	()Landroid/media/MediaPlayer;
      //   48: iconst_3
      //   49: invokevirtual 60	android/media/MediaPlayer:setAudioStreamType	(I)V
      //   52: invokestatic 48	com/google/glass/voice/network/translate/NetworkTts:access$000	()Landroid/media/MediaPlayer;
      //   55: aload_3
      //   56: invokevirtual 64	java/io/FileInputStream:getFD	()Ljava/io/FileDescriptor;
      //   59: invokevirtual 68	android/media/MediaPlayer:setDataSource	(Ljava/io/FileDescriptor;)V
      //   62: invokestatic 48	com/google/glass/voice/network/translate/NetworkTts:access$000	()Landroid/media/MediaPlayer;
      //   65: invokevirtual 71	android/media/MediaPlayer:prepare	()V
      //   68: invokestatic 48	com/google/glass/voice/network/translate/NetworkTts:access$000	()Landroid/media/MediaPlayer;
      //   71: invokevirtual 74	android/media/MediaPlayer:start	()V
      //   74: iconst_1
      //   75: invokestatic 80	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
      //   78: astore 13
      //   80: aload_3
      //   81: ifnull +7 -> 88
      //   84: aload_3
      //   85: invokevirtual 83	java/io/FileInputStream:close	()V
      //   88: aload 13
      //   90: areturn
      //   91: astore 4
      //   93: invokestatic 87	com/google/glass/voice/network/translate/NetworkTts:access$100	()Ljava/lang/String;
      //   96: new 89	java/lang/StringBuilder
      //   99: dup
      //   100: invokespecial 90	java/lang/StringBuilder:<init>	()V
      //   103: ldc 92
      //   105: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   108: aload_1
      //   109: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   112: ldc 98
      //   114: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   117: aload 4
      //   119: invokevirtual 101	java/io/IOException:getMessage	()Ljava/lang/String;
      //   122: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   125: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   128: invokestatic 110	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
      //   131: pop
      //   132: aload_2
      //   133: ifnull +7 -> 140
      //   136: aload_2
      //   137: invokevirtual 83	java/io/FileInputStream:close	()V
      //   140: iconst_0
      //   141: invokestatic 80	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
      //   144: areturn
      //   145: astore 9
      //   147: invokestatic 87	com/google/glass/voice/network/translate/NetworkTts:access$100	()Ljava/lang/String;
      //   150: new 89	java/lang/StringBuilder
      //   153: dup
      //   154: invokespecial 90	java/lang/StringBuilder:<init>	()V
      //   157: ldc 112
      //   159: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   162: aload_1
      //   163: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   166: ldc 98
      //   168: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   171: aload 9
      //   173: invokevirtual 113	java/lang/IllegalStateException:getMessage	()Ljava/lang/String;
      //   176: invokevirtual 96	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   179: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   182: invokestatic 110	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
      //   185: pop
      //   186: aload_2
      //   187: ifnull -47 -> 140
      //   190: aload_2
      //   191: invokevirtual 83	java/io/FileInputStream:close	()V
      //   194: goto -54 -> 140
      //   197: astore 11
      //   199: goto -59 -> 140
      //   202: astore 5
      //   204: aload_2
      //   205: ifnull +7 -> 212
      //   208: aload_2
      //   209: invokevirtual 83	java/io/FileInputStream:close	()V
      //   212: aload 5
      //   214: athrow
      //   215: astore 14
      //   217: goto -129 -> 88
      //   220: astore 8
      //   222: goto -82 -> 140
      //   225: astore 6
      //   227: goto -15 -> 212
      //   230: astore 5
      //   232: aload_3
      //   233: astore_2
      //   234: goto -30 -> 204
      //   237: astore 9
      //   239: aload_3
      //   240: astore_2
      //   241: goto -94 -> 147
      //   244: astore 4
      //   246: aload_3
      //   247: astore_2
      //   248: goto -155 -> 93
      //
      // Exception table:
      //   from	to	target	type
      //   2	18	91	java/io/IOException
      //   2	18	145	java/lang/IllegalStateException
      //   190	194	197	java/io/IOException
      //   2	18	202	finally
      //   93	132	202	finally
      //   147	186	202	finally
      //   84	88	215	java/io/IOException
      //   136	140	220	java/io/IOException
      //   208	212	225	java/io/IOException
      //   18	80	230	finally
      //   18	80	237	java/lang/IllegalStateException
      //   18	80	244	java/io/IOException
    }
  };

  static
  {
    CACHE_FILE_TYPE = CachedFilesManager.Type.AUDIO;
    NETWORK_TTS_SUPPORTED_LANGUAGES = new String[] { "af", "sq", "ar", "hy", "bs", "ca", "zh-CN", "zh-TW", "zh", "hr", "cs", "da", "nl", "en", "eo", "fi", "fr", "de", "el", "hi", "ht", "hu", "id", "is", "it", "ja", "ko", "ku", "la", "lv", "mk", "no", "pl", "pt", "ro", "ru", "sr", "sk", "es", "sw", "sv", "ta", "th", "tr", "vi", "cy" };
    networkTtsSupportedLanguages = new HashSet();
    Collections.addAll(networkTtsSupportedLanguages, NETWORK_TTS_SUPPORTED_LANGUAGES);
  }

  @VisibleForTesting
  static String formatCacheFileNameFromUri(String paramString)
  {
    return paramString.substring(1 + paramString.lastIndexOf(File.separator));
  }

  @VisibleForTesting
  static Map<String, String> getHeaders()
  {
    HashMap localHashMap = Maps.newHashMap();
    localHashMap.put("Accept-Charset", "UTF-8");
    localHashMap.put("Accept-Encoding", "gzip");
    return localHashMap;
  }

  public static String getNetworkTtsUri(CommonStructuredResponse.TranslationResult paramTranslationResult)
  {
    String str1 = paramTranslationResult.getTranslatedTextLanguageDisplay();
    String str2 = Languages.getLanguageShortName(str1);
    if ((str2 == null) || (!networkTtsSupportedLanguages.contains(str2)))
    {
      Log.w(TAG, "Network TTS not supported for \"" + str1 + "\"");
      return null;
    }
    String str3 = paramTranslationResult.getTranslatedText();
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme("http").authority("translate.google.com").path("/translate_tts").encodedQuery("ie=utf-8&client=android-translate&glass=1").appendQueryParameter("text", str3).appendQueryParameter("tl", str2);
    return localBuilder.build().toString();
  }

  public static NetworkTts getSharedInstance()
  {
    if (sharedInstance == null)
      sharedInstance = new NetworkTts();
    return sharedInstance;
  }

  public static boolean isTtsPlaying()
  {
    return player != null;
  }

  public static void setSharedInstance(NetworkTts paramNetworkTts)
  {
    sharedInstance = paramNetworkTts;
  }

  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    paramMediaPlayer.release();
    player = null;
  }

  public boolean requestTtsAndPlay(String paramString)
  {
    Assert.assertTrue(AsyncThreadExecutorManager.isOnSerialInstanceThread());
    boolean bool = streamFromCache(formatCacheFileNameFromUri(paramString));
    if ((!bool) && (paramString != null))
      bool = streamFromServer(paramString);
    if (!bool)
      Log.w(TAG, "Could not obtain TTS from either local cache or network");
    return bool;
  }

  public void stopSpeaking()
  {
    Assert.assertTrue(AsyncThreadExecutorManager.isOnSerialInstanceThread());
    if ((player != null) && (player.isPlaying()))
    {
      player.stop();
      player.release();
      player = null;
    }
  }

  @VisibleForTesting
  boolean streamFromCache(String paramString)
  {
    CachedFilesManager localCachedFilesManager = CachedFilesManager.getSharedInstance();
    String str = localCachedFilesManager.getPath(CACHE_FILE_TYPE, paramString);
    if (localCachedFilesManager.contains(CACHE_FILE_TYPE, paramString))
    {
      Log.v(TAG, "Streaming from cache file: " + str);
      return ((Boolean)CachedFilesManager.getSharedInstance().load(str, this.loader)).booleanValue();
    }
    return false;
  }

  @VisibleForTesting
  boolean streamFromServer(String paramString)
  {
    Log.v(TAG, "Streaming from the TTS server: " + paramString);
    SimplifiedHttpResponse localSimplifiedHttpResponse = HttpRequestDispatcherManager.getSharedDispatcher().postWithHeaders(paramString, getHeaders(), null);
    if (localSimplifiedHttpResponse == null)
      Log.w(TAG, "No results returned from TTS server");
    do
      while (true)
      {
        return false;
        if (localSimplifiedHttpResponse.statusCode == 404)
        {
          Log.w(TAG, "TTS not found");
        }
        else
        {
          if (localSimplifiedHttpResponse.statusCode == 200)
            break;
          Log.w(TAG, "TTS Server error code: " + localSimplifiedHttpResponse.statusCode);
        }
      }
    while ((localSimplifiedHttpResponse.body == null) || (localSimplifiedHttpResponse.body.length <= 0));
    String str = formatCacheFileNameFromUri(paramString);
    Log.v(TAG, "Write " + localSimplifiedHttpResponse.body.length + " bytes of audio data to file " + str);
    CachedFilesManager.getSharedInstance().save(CACHE_FILE_TYPE, str, FileSaver.newSaver(localSimplifiedHttpResponse.body));
    return streamFromCache(str);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.network.translate.NetworkTts
 * JD-Core Version:    0.6.2
 */