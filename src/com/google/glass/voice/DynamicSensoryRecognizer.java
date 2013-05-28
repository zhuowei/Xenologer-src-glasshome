package com.google.glass.voice;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.collect.Lists;
import com.google.glass.util.Assert;
import com.google.glass.util.LogHelper;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class DynamicSensoryRecognizer extends Sensory
{
  private static final String GRAMMAR_DISJUNCTION_OPERATOR = "|";
  public static final int MAX_GRAMMAR_PHRASES = 20;
  private static final int PARAM_A_DYNAMIC_PHRASESPOT = 25;
  public static final String SEMANTIC_TAG_PREFIX = "_tag_";
  private static final String TAG = DynamicSensoryRecognizer.class.getSimpleName();

  public DynamicSensoryRecognizer(Context paramContext, VoiceConfig paramVoiceConfig, String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    if (paramArrayOfString1.length > 20)
      throw new IllegalArgumentException("Too many phrases (" + paramArrayOfString1.length + ", max " + 20 + ")");
    long l1 = nativeInitPhrasespotDynamic();
    String[] arrayOfString1 = nativeNormalizeText(l1, getPath(paramContext, paramVoiceConfig.ltsFile), paramArrayOfString1);
    String[] arrayOfString2 = getValidPhrases(arrayOfString1);
    String[] arrayOfString3 = null;
    if (paramArrayOfString2 != null)
      arrayOfString3 = getValidTags(arrayOfString1, paramArrayOfString2);
    this.grammar = generateGrammar(arrayOfString2, arrayOfString3);
    String[] arrayOfString4 = generateGrammarWords(arrayOfString2);
    if ((TextUtils.isEmpty(this.grammar)) || (arrayOfString4 == null) || (arrayOfString4.length == 0))
      Log.e(TAG, "Error generating grammar, Sensory object not correctly initialized");
    for (long l2 = 0L; ; l2 = nativeCompileGrammar(l1, getPath(paramContext, paramVoiceConfig.recogFile), getPath(paramContext, paramVoiceConfig.ltsFile), this.grammar, arrayOfString4))
    {
      this.sensoryContext = l2;
      return;
    }
  }

  private String generateGrammar(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    if ((paramArrayOfString1 == null) || (paramArrayOfString1.length == 0))
    {
      Log.e(TAG, "Null or empty array of phrases provided for grammar, returning null grammar");
      return null;
    }
    if (paramArrayOfString1.length > 20)
    {
      Log.e(TAG, "Too many phrases (" + paramArrayOfString1.length + ", max " + 20 + "), returning null grammar");
      return null;
    }
    boolean bool;
    StringBuilder localStringBuilder;
    if ((paramArrayOfString2 == null) || (paramArrayOfString1.length == paramArrayOfString2.length))
    {
      bool = true;
      Assert.assertTrue(bool);
      localStringBuilder = new StringBuilder();
    }
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfString1.length)
        break label247;
      localStringBuilder.append("w").append(i + 1).append(" = ");
      String[] arrayOfString = paramArrayOfString1[i].split(" ");
      int m = 0;
      while (true)
        if (m < arrayOfString.length)
        {
          localStringBuilder.append(arrayOfString[m]);
          if ((paramArrayOfString2 != null) && (m == -1 + arrayOfString.length))
          {
            localStringBuilder.append("%");
            localStringBuilder.append(arrayOfString[m]);
            localStringBuilder.append("_tag_");
            localStringBuilder.append(paramArrayOfString2[i]);
          }
          localStringBuilder.append(" ");
          m++;
          continue;
          bool = false;
          break;
        }
      localStringBuilder.append("; ");
    }
    label247: localStringBuilder.append("g = ");
    int j = 1;
    if (j < 1 + paramArrayOfString1.length)
    {
      localStringBuilder.append("$w").append(j);
      if (j == paramArrayOfString1.length)
        localStringBuilder.append("; ");
      while (true)
      {
        j++;
        break;
        localStringBuilder.append(" ").append("|").append(" ");
      }
    }
    for (int k = 1; k < 1 + paramArrayOfString1.length; k++)
    {
      localStringBuilder.append("paramA: $w").append(k).append(" ").append(25).append("; ");
      localStringBuilder.append("paramB: $w").append(k).append(" -").append(k).append("; ");
    }
    Log.d(TAG, "Generated dynamic grammar");
    LogHelper.logPii(3, TAG, "Dynamic grammar: " + localStringBuilder);
    return localStringBuilder.toString();
  }

  private String[] generateGrammarWords(String[] paramArrayOfString)
  {
    String[] arrayOfString1;
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0))
    {
      Log.e(TAG, "Null or empty array of phrases provided for grammar words, returning null words");
      arrayOfString1 = null;
    }
    while (true)
    {
      return arrayOfString1;
      if (paramArrayOfString.length > 20)
      {
        Log.e(TAG, "Too many phrases (" + paramArrayOfString.length + ", max " + 20 + "), returning null grammar");
        return null;
      }
      ArrayList localArrayList = new ArrayList();
      int i = paramArrayOfString.length;
      for (int j = 0; j < i; j++)
      {
        String[] arrayOfString2 = paramArrayOfString[j].split(" ");
        int m = arrayOfString2.length;
        for (int n = 0; n < m; n++)
          localArrayList.add(arrayOfString2[n]);
      }
      arrayOfString1 = new String[localArrayList.size()];
      for (int k = 0; k < localArrayList.size(); k++)
        arrayOfString1[k] = ((String)localArrayList.get(k));
    }
  }

  private static String[] getValidPhrases(String[] paramArrayOfString)
  {
    return getValuesWithNonEmptyKeys(paramArrayOfString, paramArrayOfString);
  }

  private static String[] getValidTags(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    return getValuesWithNonEmptyKeys(paramArrayOfString1, paramArrayOfString2);
  }

  private static String[] getValuesWithNonEmptyKeys(String[] paramArrayOfString1, String[] paramArrayOfString2)
  {
    LinkedList localLinkedList = Lists.newLinkedList();
    int i = 0;
    if (i < paramArrayOfString1.length)
    {
      if (TextUtils.isEmpty(paramArrayOfString1[i].trim()));
      while (true)
      {
        i++;
        break;
        localLinkedList.add(paramArrayOfString2[i]);
      }
    }
    return (String[])localLinkedList.toArray(new String[localLinkedList.size()]);
  }

  @VisibleForTesting
  int getGrammarRuleCountForTests()
  {
    return TextUtils.split(this.grammar, "\\|").length;
  }

  VoiceCommand stringToCommand(String paramString)
  {
    return new VoiceCommand(paramString);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.voice.DynamicSensoryRecognizer
 * JD-Core Version:    0.6.2
 */