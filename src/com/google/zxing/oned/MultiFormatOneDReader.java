package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.common.BitArray;
import com.google.zxing.oned.rss.RSS14Reader;
import com.google.zxing.oned.rss.expanded.RSSExpandedReader;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public final class MultiFormatOneDReader extends OneDReader
{
  private final OneDReader[] readers;

  public MultiFormatOneDReader(Map<DecodeHintType, ?> paramMap)
  {
    Collection localCollection;
    if (paramMap == null)
    {
      localCollection = null;
      if ((paramMap == null) || (paramMap.get(DecodeHintType.ASSUME_CODE_39_CHECK_DIGIT) == null))
        break label467;
    }
    label467: for (boolean bool = true; ; bool = false)
    {
      ArrayList localArrayList = new ArrayList();
      if (localCollection != null)
      {
        if ((localCollection.contains(BarcodeFormat.EAN_13)) || (localCollection.contains(BarcodeFormat.UPC_A)) || (localCollection.contains(BarcodeFormat.EAN_8)) || (localCollection.contains(BarcodeFormat.UPC_E)))
          localArrayList.add(new MultiFormatUPCEANReader(paramMap));
        if (localCollection.contains(BarcodeFormat.CODE_39))
          localArrayList.add(new Code39Reader(bool));
        if (localCollection.contains(BarcodeFormat.CODE_93))
          localArrayList.add(new Code93Reader());
        if (localCollection.contains(BarcodeFormat.CODE_128))
          localArrayList.add(new Code128Reader());
        if (localCollection.contains(BarcodeFormat.ITF))
          localArrayList.add(new ITFReader());
        if (localCollection.contains(BarcodeFormat.CODABAR))
          localArrayList.add(new CodaBarReader());
        if (localCollection.contains(BarcodeFormat.RSS_14))
          localArrayList.add(new RSS14Reader());
        if (localCollection.contains(BarcodeFormat.RSS_EXPANDED))
          localArrayList.add(new RSSExpandedReader());
      }
      if (localArrayList.isEmpty())
      {
        localArrayList.add(new MultiFormatUPCEANReader(paramMap));
        localArrayList.add(new Code39Reader());
        localArrayList.add(new CodaBarReader());
        localArrayList.add(new Code93Reader());
        localArrayList.add(new Code128Reader());
        localArrayList.add(new ITFReader());
        localArrayList.add(new RSS14Reader());
        localArrayList.add(new RSSExpandedReader());
      }
      this.readers = ((OneDReader[])localArrayList.toArray(new OneDReader[localArrayList.size()]));
      return;
      localCollection = (Collection)paramMap.get(DecodeHintType.POSSIBLE_FORMATS);
      break;
    }
  }

  public Result decodeRow(int paramInt, BitArray paramBitArray, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException
  {
    OneDReader[] arrayOfOneDReader = this.readers;
    int i = arrayOfOneDReader.length;
    int j = 0;
    while (j < i)
    {
      OneDReader localOneDReader = arrayOfOneDReader[j];
      try
      {
        Result localResult = localOneDReader.decodeRow(paramInt, paramBitArray, paramMap);
        return localResult;
      }
      catch (ReaderException localReaderException)
      {
        j++;
      }
    }
    throw NotFoundException.getNotFoundInstance();
  }

  public void reset()
  {
    OneDReader[] arrayOfOneDReader = this.readers;
    int i = arrayOfOneDReader.length;
    for (int j = 0; j < i; j++)
      arrayOfOneDReader[j].reset();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.MultiFormatOneDReader
 * JD-Core Version:    0.6.2
 */