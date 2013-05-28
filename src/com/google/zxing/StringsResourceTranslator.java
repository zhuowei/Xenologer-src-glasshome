package com.google.zxing;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Reader;
import java.io.Writer;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class StringsResourceTranslator
{
  private static final String APACHE_2_LICENSE = "<!--\n Copyright (C) 2013 ZXing authors\n\n Licensed under the Apache License, Version 2.0 (the \"License\");\n you may not use this file except in compliance with the License.\n You may obtain a copy of the License at\n\n      http://www.apache.org/licenses/LICENSE-2.0\n\n Unless required by applicable law or agreed to in writing, software\n distributed under the License is distributed on an \"AS IS\" BASIS,\n WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n See the License for the specific language governing permissions and\n limitations under the License.\n -->\n";
  private static final String API_KEY = "INSERT-YOUR-KEY";
  private static final Pattern ENTRY_PATTERN;
  private static final Map<String, String> LANGUAGE_CODE_MASSAGINGS;
  private static final Pattern STRINGS_FILE_NAME_PATTERN;
  private static final Pattern TRANSLATE_RESPONSE_PATTERN;
  private static final Charset UTF8 = Charset.forName("UTF-8");
  private static final Pattern VALUES_DIR_PATTERN;

  static
  {
    ENTRY_PATTERN = Pattern.compile("<string name=\"([^\"]+)\".*>([^<]+)</string>");
    STRINGS_FILE_NAME_PATTERN = Pattern.compile("values-(.+)");
    TRANSLATE_RESPONSE_PATTERN = Pattern.compile("translatedText\":\\s*\"([^\"]+)\"");
    VALUES_DIR_PATTERN = Pattern.compile("values-[a-z]{2}(-[a-zA-Z]{2,3})?");
    LANGUAGE_CODE_MASSAGINGS = new HashMap(3);
    LANGUAGE_CODE_MASSAGINGS.put("zh-rCN", "zh-cn");
    LANGUAGE_CODE_MASSAGINGS.put("zh-rTW", "zh-tw");
  }

  private static CharSequence fetch(URL paramURL)
    throws IOException
  {
    URLConnection localURLConnection = paramURL.openConnection();
    localURLConnection.connect();
    StringBuilder localStringBuilder = new StringBuilder(200);
    try
    {
      BufferedReader localBufferedReader1 = new BufferedReader(new InputStreamReader(localURLConnection.getInputStream(), UTF8));
      try
      {
        char[] arrayOfChar = new char[1024];
        while (true)
        {
          int i = localBufferedReader1.read(arrayOfChar);
          if (i <= 0)
            break;
          localStringBuilder.append(arrayOfChar, 0, i);
        }
      }
      finally
      {
        localBufferedReader2 = localBufferedReader1;
      }
      quietClose(localBufferedReader2);
      throw localObject1;
      quietClose(localBufferedReader1);
      return localStringBuilder;
    }
    finally
    {
      while (true)
        BufferedReader localBufferedReader2 = null;
    }
  }

  public static void main(String[] paramArrayOfString)
    throws IOException
  {
    File localFile1 = new File(paramArrayOfString[0]);
    File localFile2 = new File(new File(localFile1, "values"), "strings.xml");
    List localList = Arrays.asList(paramArrayOfString).subList(1, paramArrayOfString.length);
    File[] arrayOfFile = localFile1.listFiles(new FileFilter()
    {
      public boolean accept(File paramAnonymousFile)
      {
        return (paramAnonymousFile.isDirectory()) && (StringsResourceTranslator.VALUES_DIR_PATTERN.matcher(paramAnonymousFile.getName()).matches());
      }
    });
    int i = arrayOfFile.length;
    for (int j = 0; j < i; j++)
      translate(localFile2, new File(arrayOfFile[j], "strings.xml"), localList);
  }

  private static void quietClose(Closeable paramCloseable)
  {
    if (paramCloseable != null);
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  private static SortedMap<String, String> readLines(File paramFile)
    throws IOException
  {
    TreeMap localTreeMap = new TreeMap();
    if (!paramFile.exists())
      return localTreeMap;
    try
    {
      BufferedReader localBufferedReader1 = new BufferedReader(new InputStreamReader(new FileInputStream(paramFile), UTF8));
      try
      {
        while (true)
        {
          String str = localBufferedReader1.readLine();
          if (str == null)
            break;
          Matcher localMatcher = ENTRY_PATTERN.matcher(str);
          if (localMatcher.find())
            localTreeMap.put(localMatcher.group(1), localMatcher.group(2));
        }
      }
      finally
      {
        localBufferedReader2 = localBufferedReader1;
      }
      quietClose(localBufferedReader2);
      throw localObject1;
      quietClose(localBufferedReader1);
      return localTreeMap;
    }
    finally
    {
      while (true)
        BufferedReader localBufferedReader2 = null;
    }
  }

  private static void translate(File paramFile1, File paramFile2, Collection<String> paramCollection)
    throws IOException
  {
    SortedMap localSortedMap1 = readLines(paramFile1);
    SortedMap localSortedMap2 = readLines(paramFile2);
    String str1 = paramFile2.getParentFile().getName();
    Matcher localMatcher = STRINGS_FILE_NAME_PATTERN.matcher(str1);
    localMatcher.find();
    Object localObject1 = localMatcher.group(1);
    String str2 = (String)LANGUAGE_CODE_MASSAGINGS.get(localObject1);
    if (str2 != null)
      localObject1 = str2;
    System.out.println("Translating " + (String)localObject1);
    File localFile = File.createTempFile(str1, ".xml");
    localFile.deleteOnExit();
    int i = 0;
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
      BufferedWriter localBufferedWriter1 = new BufferedWriter(new OutputStreamWriter(localFileOutputStream, UTF8));
      try
      {
        localBufferedWriter1.write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n");
        localBufferedWriter1.write("<!--\n Copyright (C) 2013 ZXing authors\n\n Licensed under the Apache License, Version 2.0 (the \"License\");\n you may not use this file except in compliance with the License.\n You may obtain a copy of the License at\n\n      http://www.apache.org/licenses/LICENSE-2.0\n\n Unless required by applicable law or agreed to in writing, software\n distributed under the License is distributed on an \"AS IS\" BASIS,\n WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n See the License for the specific language governing permissions and\n limitations under the License.\n -->\n");
        localBufferedWriter1.write("<resources>\n");
        Iterator localIterator = localSortedMap1.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          String str3 = (String)localEntry.getKey();
          String str4 = (String)localEntry.getValue();
          localBufferedWriter1.write("  <string name=\"");
          localBufferedWriter1.write(str3);
          localBufferedWriter1.write(34);
          if ((str4.contains("%s")) || (str4.contains("%f")))
            localBufferedWriter1.write(" formatted=\"false\"");
          localBufferedWriter1.write(62);
          String str5 = (String)localSortedMap2.get(str3);
          if ((str5 == null) || (paramCollection.contains(str3)))
          {
            i = 1;
            str5 = translateString(str4, (String)localObject1);
          }
          localBufferedWriter1.write(str5);
          localBufferedWriter1.write("</string>\n");
        }
      }
      finally
      {
        localBufferedWriter2 = localBufferedWriter1;
      }
      quietClose(localBufferedWriter2);
      throw localObject2;
      localBufferedWriter1.write("</resources>\n");
      localBufferedWriter1.flush();
      quietClose(localBufferedWriter1);
      if (i != 0)
      {
        System.out.println("  Writing translations");
        paramFile2.delete();
        localFile.renameTo(paramFile2);
        return;
      }
      localFile.delete();
      return;
    }
    finally
    {
      while (true)
        BufferedWriter localBufferedWriter2 = null;
    }
  }

  static String translateString(String paramString1, String paramString2)
    throws IOException
  {
    if ("en".equals(paramString2))
      return paramString1;
    String str1 = (String)LANGUAGE_CODE_MASSAGINGS.get(paramString2);
    if (str1 != null)
      paramString2 = str1;
    System.out.println("  Need translation for " + paramString1);
    CharSequence localCharSequence = fetch(new URL("https://www.googleapis.com/language/translate/v2?key=INSERT-YOUR-KEY&q=" + URLEncoder.encode(paramString1, "UTF-8") + "&source=en&target=" + paramString2));
    Matcher localMatcher = TRANSLATE_RESPONSE_PATTERN.matcher(localCharSequence);
    if (!localMatcher.find())
    {
      System.err.println("No translate result");
      System.err.println(localCharSequence);
      return paramString1;
    }
    String str2 = localMatcher.group(1);
    System.out.println("  Got translation " + str2);
    return str2.replaceAll("\\\\u0026quot;", "\"").replaceAll("\\\\u0026#39;", "'").replaceAll("\\\\u200b", "").replaceAll("&amp;quot;", "\"").replaceAll("&amp;#39;", "'");
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.StringsResourceTranslator
 * JD-Core Version:    0.6.2
 */