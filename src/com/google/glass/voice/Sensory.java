package com.google.glass.voice;

import android.content.ContentResolver;
import android.content.Context;
import com.google.glass.common.R.raw;
import com.google.glass.util.FileHelper;
import com.google.googlex.glass.common.proto.Entity;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public abstract class Sensory
{
  public static final String LTS_RULES_FILE_GENERIC = "lts_en_us_9.3.raw";
  public static final String LTS_RULES_FILE_NAMES = "lts_en_us_cid_9.3.1.1.raw";
  public static final String RECOG_FILE_GENERIC = "nn_en_us_mfcc_16k_15_big_250_v4.7.raw";
  public static final String RECOG_FILE_GUARD = "google_glass_okglass_en_us_alpha_sfs_delivery08_am.raw";
  public static final String RECOG_FILE_MAIN_MENU = "google_glass_mainset_en_us_alpha_sfs_delivery21_am.raw";
  public static final String RECOG_FILE_NOTIFICATION = "google_notification_en_us_v3_net.raw";
  public static final String RECOG_FILE_NOTIFICATION_GUARD = "google_glass_okglass_en_us_alpha_sfs_delivery08_am.raw";
  public static final String RECOG_FILE_TAKE_A_NOTE = "google_glass_takeanote_en_us_alpha_sfs_delivery01_am.raw";
  public static final String SEARCH_FILE_GUARD = "google_glass_okglass_en_us_alpha_sfs_delivery08_search_10.raw";
  public static final String SEARCH_FILE_MAIN_MENU = "google_glass_mainset_en_us_alpha_sfs_delivery21_search_20.raw";
  public static final String SEARCH_FILE_NOTIFICATION = "google_notification_en_us_v3_5.raw";
  public static final String SEARCH_FILE_NOTIFICATION_GUARD = "google_glass_okglass_en_us_alpha_sfs_delivery08_search_1.raw";
  public static final String SEARCH_FILE_TAKE_A_NOTE = "google_glass_takeanote_en_us_alpha_sfs_delivery01_search_7.raw";
  private static final String TAG = Sensory.class.getSimpleName();
  private static final Map<Integer, String> resIdToFilename = new HashMap();
  private static ContentResolver resolver;
  protected String grammar;
  protected long sensoryContext;

  static
  {
    resIdToFilename.put(Integer.valueOf(R.raw.google_glass_okglass_en_us_alpha_sfs_delivery08_am), "google_glass_okglass_en_us_alpha_sfs_delivery08_am.raw");
    resIdToFilename.put(Integer.valueOf(R.raw.google_glass_okglass_en_us_alpha_sfs_delivery08_search_10), "google_glass_okglass_en_us_alpha_sfs_delivery08_search_10.raw");
    resIdToFilename.put(Integer.valueOf(R.raw.google_glass_okglass_en_us_alpha_sfs_delivery08_am), "google_glass_okglass_en_us_alpha_sfs_delivery08_am.raw");
    resIdToFilename.put(Integer.valueOf(R.raw.google_glass_okglass_en_us_alpha_sfs_delivery08_search_1), "google_glass_okglass_en_us_alpha_sfs_delivery08_search_1.raw");
    resIdToFilename.put(Integer.valueOf(R.raw.google_glass_mainset_en_us_alpha_sfs_delivery21_am), "google_glass_mainset_en_us_alpha_sfs_delivery21_am.raw");
    resIdToFilename.put(Integer.valueOf(R.raw.google_glass_mainset_en_us_alpha_sfs_delivery21_search_20), "google_glass_mainset_en_us_alpha_sfs_delivery21_search_20.raw");
    resIdToFilename.put(Integer.valueOf(R.raw.google_notification_en_us_v3_net), "google_notification_en_us_v3_net.raw");
    resIdToFilename.put(Integer.valueOf(R.raw.google_notification_en_us_v3_5), "google_notification_en_us_v3_5.raw");
    resIdToFilename.put(Integer.valueOf(R.raw.google_glass_takeanote_en_us_alpha_sfs_delivery01_am), "google_glass_takeanote_en_us_alpha_sfs_delivery01_am.raw");
    resIdToFilename.put(Integer.valueOf(R.raw.google_glass_takeanote_en_us_alpha_sfs_delivery01_search_7), "google_glass_takeanote_en_us_alpha_sfs_delivery01_search_7.raw");
    resIdToFilename.put(Integer.valueOf(R.raw.nn_en_us_mfcc_16k_15_big_250_v4_7), "nn_en_us_mfcc_16k_15_big_250_v4.7.raw");
    resIdToFilename.put(Integer.valueOf(R.raw.lts_en_us_9_3), "lts_en_us_9.3.raw");
    resIdToFilename.put(Integer.valueOf(R.raw.lts_en_us_cid_9_3_1_1), "lts_en_us_cid_9.3.1.1.raw");
    System.loadLibrary("fssdk");
  }

  private static String getBasePath(Context paramContext)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramContext.getPackageName();
    return String.format("/data/data/%s/files/", arrayOfObject);
  }

  protected static String getPath(Context paramContext, String paramString)
  {
    return getBasePath(paramContext) + paramString;
  }

  public static void initialize(Context paramContext)
  {
    FileHelper.copyResourcesToFiles(paramContext, getBasePath(paramContext), resIdToFilename);
    resolver = paramContext.getContentResolver();
  }

  private native void nativeClosePhrasespot(long paramLong);

  private native SensoryResult nativePipePhrasespot(long paramLong1, ByteBuffer paramByteBuffer, long paramLong2);

  private native void nativeResetPhrasespot(long paramLong);

  public static Sensory newEntityRecognizer(Context paramContext, VoiceConfig paramVoiceConfig, Collection<Entity> paramCollection)
  {
    String[] arrayOfString1 = new String[paramCollection.size()];
    String[] arrayOfString2 = new String[paramCollection.size()];
    Iterator localIterator = paramCollection.iterator();
    for (int i = 0; localIterator.hasNext(); i++)
    {
      Entity localEntity = (Entity)localIterator.next();
      arrayOfString1[i] = localEntity.getDisplayName();
      arrayOfString2[i] = localEntity.getId();
    }
    return new DynamicSensoryRecognizer(paramContext, paramVoiceConfig, arrayOfString1, arrayOfString2);
  }

  public void closePhrasespot()
  {
    nativeClosePhrasespot(this.sensoryContext);
  }

  protected native long nativeCompileGrammar(long paramLong, String paramString1, String paramString2, String paramString3, String[] paramArrayOfString);

  protected native long nativeInitPhrasespot(String paramString1, String paramString2);

  protected native long nativeInitPhrasespotDynamic();

  protected native String[] nativeNormalizeText(long paramLong, String paramString, String[] paramArrayOfString);

  public VoiceCommandRecognitionResult pipePhrasespot(ByteBuffer paramByteBuffer, long paramLong)
  {
    SensoryResult localSensoryResult = nativePipePhrasespot(this.sensoryContext, paramByteBuffer, paramLong);
    if (localSensoryResult != null)
      return new VoiceCommandRecognitionResult(stringToCommand(localSensoryResult.getLiteral()), localSensoryResult);
    return null;
  }

  void reinitialize()
  {
    resetPhrasespot();
  }

  protected void resetPhrasespot()
  {
    nativeResetPhrasespot(this.sensoryContext);
  }

  abstract VoiceCommand stringToCommand(String paramString);
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.Sensory
 * JD-Core Version:    0.6.2
 */