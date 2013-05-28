package com.google.i18n.phonenumbers;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ShortNumberUtil
{
  private final PhoneNumberUtil phoneUtil;

  public ShortNumberUtil()
  {
    this.phoneUtil = PhoneNumberUtil.getInstance();
  }

  ShortNumberUtil(PhoneNumberUtil paramPhoneNumberUtil)
  {
    this.phoneUtil = paramPhoneNumberUtil;
  }

  private boolean matchesEmergencyNumberHelper(String paramString1, String paramString2, boolean paramBoolean)
  {
    String str1 = PhoneNumberUtil.extractPossibleNumber(paramString1);
    if (PhoneNumberUtil.PLUS_CHARS_PATTERN.matcher(str1).lookingAt());
    Phonemetadata.PhoneMetadata localPhoneMetadata;
    do
    {
      return false;
      localPhoneMetadata = this.phoneUtil.getMetadataForRegion(paramString2);
    }
    while ((localPhoneMetadata == null) || (!localPhoneMetadata.hasEmergency()));
    Pattern localPattern = Pattern.compile(localPhoneMetadata.getEmergency().getNationalNumberPattern());
    String str2 = PhoneNumberUtil.normalizeDigitsOnly(str1);
    if ((!paramBoolean) || (paramString2.equals("BR")))
      return localPattern.matcher(str2).matches();
    return localPattern.matcher(str2).lookingAt();
  }

  public boolean connectsToEmergencyNumber(String paramString1, String paramString2)
  {
    return matchesEmergencyNumberHelper(paramString1, paramString2, true);
  }

  public boolean isEmergencyNumber(String paramString1, String paramString2)
  {
    return matchesEmergencyNumberHelper(paramString1, paramString2, false);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.ShortNumberUtil
 * JD-Core Version:    0.6.2
 */