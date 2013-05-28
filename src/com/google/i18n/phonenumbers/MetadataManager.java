package com.google.i18n.phonenumbers;

import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

class MetadataManager
{
  private static final String ALTERNATE_FORMATS_FILE_PREFIX = "/com/google/i18n/phonenumbers/data/PhoneNumberAlternateFormatsProto";
  private static final Logger LOGGER = Logger.getLogger(MetadataManager.class.getName());
  private static final Map<Integer, Phonemetadata.PhoneMetadata> callingCodeToAlternateFormatsMap = Collections.synchronizedMap(new HashMap());
  private static final Set<Integer> countryCodeSet = AlternateFormatsCountryCodeSet.getCountryCodeSet();

  private static void close(InputStream paramInputStream)
  {
    if (paramInputStream != null);
    try
    {
      paramInputStream.close();
      return;
    }
    catch (IOException localIOException)
    {
      LOGGER.log(Level.WARNING, localIOException.toString());
    }
  }

  static Phonemetadata.PhoneMetadata getAlternateFormatsForCountry(int paramInt)
  {
    if (!countryCodeSet.contains(Integer.valueOf(paramInt)))
      return null;
    synchronized (callingCodeToAlternateFormatsMap)
    {
      if (!callingCodeToAlternateFormatsMap.containsKey(Integer.valueOf(paramInt)))
        loadMetadataFromFile(paramInt);
      return (Phonemetadata.PhoneMetadata)callingCodeToAlternateFormatsMap.get(Integer.valueOf(paramInt));
    }
  }

  // ERROR //
  private static void loadMetadataFromFile(int paramInt)
  {
    // Byte code:
    //   0: ldc 106
    //   2: new 108	java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial 109	java/lang/StringBuilder:<init>	()V
    //   9: ldc 111
    //   11: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   14: iload_0
    //   15: invokevirtual 118	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   18: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   21: invokevirtual 123	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   24: astore_1
    //   25: aconst_null
    //   26: astore_2
    //   27: new 125	java/io/ObjectInputStream
    //   30: dup
    //   31: aload_1
    //   32: invokespecial 127	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   35: astore_3
    //   36: new 129	com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection
    //   39: dup
    //   40: invokespecial 130	com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection:<init>	()V
    //   43: astore 4
    //   45: aload 4
    //   47: aload_3
    //   48: invokevirtual 134	com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection:readExternal	(Ljava/io/ObjectInput;)V
    //   51: aload 4
    //   53: invokevirtual 138	com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection:getMetadataList	()Ljava/util/List;
    //   56: invokeinterface 144 1 0
    //   61: astore 7
    //   63: aload 7
    //   65: invokeinterface 150 1 0
    //   70: ifeq +60 -> 130
    //   73: aload 7
    //   75: invokeinterface 154 1 0
    //   80: checkcast 104	com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata
    //   83: astore 8
    //   85: getstatic 45	com/google/i18n/phonenumbers/MetadataManager:callingCodeToAlternateFormatsMap	Ljava/util/Map;
    //   88: aload 8
    //   90: invokevirtual 158	com/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata:getCountryCode	()I
    //   93: invokestatic 83	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   96: aload 8
    //   98: invokeinterface 162 3 0
    //   103: pop
    //   104: goto -41 -> 63
    //   107: astore 6
    //   109: aload_3
    //   110: astore_2
    //   111: getstatic 32	com/google/i18n/phonenumbers/MetadataManager:LOGGER	Ljava/util/logging/Logger;
    //   114: getstatic 68	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   117: aload 6
    //   119: invokevirtual 71	java/io/IOException:toString	()Ljava/lang/String;
    //   122: invokevirtual 75	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;)V
    //   125: aload_2
    //   126: invokestatic 164	com/google/i18n/phonenumbers/MetadataManager:close	(Ljava/io/InputStream;)V
    //   129: return
    //   130: aload_3
    //   131: invokestatic 164	com/google/i18n/phonenumbers/MetadataManager:close	(Ljava/io/InputStream;)V
    //   134: return
    //   135: astore 5
    //   137: aload_2
    //   138: invokestatic 164	com/google/i18n/phonenumbers/MetadataManager:close	(Ljava/io/InputStream;)V
    //   141: aload 5
    //   143: athrow
    //   144: astore 5
    //   146: aload_3
    //   147: astore_2
    //   148: goto -11 -> 137
    //   151: astore 6
    //   153: aconst_null
    //   154: astore_2
    //   155: goto -44 -> 111
    //
    // Exception table:
    //   from	to	target	type
    //   36	63	107	java/io/IOException
    //   63	104	107	java/io/IOException
    //   27	36	135	finally
    //   111	125	135	finally
    //   36	63	144	finally
    //   63	104	144	finally
    //   27	36	151	java/io/IOException
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.i18n.phonenumbers.MetadataManager
 * JD-Core Version:    0.6.2
 */