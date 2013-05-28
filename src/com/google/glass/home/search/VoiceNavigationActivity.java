package com.google.glass.home.search;

import android.text.TextUtils;
import com.google.common.annotations.VisibleForTesting;
import com.google.glass.home.R.string;
import com.google.glass.home.voice.BaseVoiceInputActivity;
import com.google.glass.maps.NavigationLauncher;
import com.google.glass.sound.SoundManager;
import com.google.glass.sound.SoundManager.SoundId;
import com.google.glass.voice.VoiceConfig;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class VoiceNavigationActivity extends BaseVoiceInputActivity
{
  private static final Pattern GET_DIRECTIONS_PREFIX_PATTERN = Pattern.compile("^(\\s?get\\s?)?(\\s?directions?\\s?)?(\\s?to\\s?)?", 2);

  @VisibleForTesting
  static CharSequence stripNavigationQueryPrefix(CharSequence paramCharSequence)
  {
    if (paramCharSequence != null)
      paramCharSequence = GET_DIRECTIONS_PREFIX_PATTERN.matcher(paramCharSequence).replaceAll("");
    return paramCharSequence;
  }

  public CharSequence cleanRecognitionResults(CharSequence paramCharSequence)
  {
    return stripNavigationQueryPrefix(paramCharSequence);
  }

  public VoiceConfig getInitialVoiceConfig()
  {
    if (isMessageShowing())
      return VoiceConfig.OFF;
    return VoiceConfig.NAVIGATION;
  }

  protected int getInputTypeResId()
  {
    return R.string.voice_menu_item_navigation_on;
  }

  protected VoiceConfig getRetryVoiceConfig()
  {
    return VoiceConfig.NAVIGATION;
  }

  protected int getSpeakNowPromptResId()
  {
    return R.string.voice_navigation_speak_now;
  }

  protected int getType()
  {
    return 1;
  }

  protected void onRecognitionResult(String paramString)
  {
    String str = stripNavigationQueryPrefix(paramString).toString();
    if (TextUtils.getTrimmedLength(str) == 0)
    {
      showNoSpeechDetected();
      return;
    }
    getSoundManager().playSound(SoundManager.SoundId.SUCCESS);
    NavigationLauncher.navigate(str, this, true);
    overridePendingTransition(0, 0);
    finish();
  }

  protected void onResume()
  {
    super.onResume();
    NavigationLauncher.wakeUpNavigation(this);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.search.VoiceNavigationActivity
 * JD-Core Version:    0.6.2
 */