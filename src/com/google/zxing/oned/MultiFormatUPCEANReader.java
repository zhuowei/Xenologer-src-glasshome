package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.common.BitArray;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public final class MultiFormatUPCEANReader extends OneDReader
{
  private final UPCEANReader[] readers;

  public MultiFormatUPCEANReader(Map<DecodeHintType, ?> paramMap)
  {
    Collection localCollection;
    ArrayList localArrayList;
    if (paramMap == null)
    {
      localCollection = null;
      localArrayList = new ArrayList();
      if (localCollection != null)
      {
        if (!localCollection.contains(BarcodeFormat.EAN_13))
          break label190;
        localArrayList.add(new EAN13Reader());
      }
    }
    while (true)
    {
      if (localCollection.contains(BarcodeFormat.EAN_8))
        localArrayList.add(new EAN8Reader());
      if (localCollection.contains(BarcodeFormat.UPC_E))
        localArrayList.add(new UPCEReader());
      if (localArrayList.isEmpty())
      {
        localArrayList.add(new EAN13Reader());
        localArrayList.add(new EAN8Reader());
        localArrayList.add(new UPCEReader());
      }
      this.readers = ((UPCEANReader[])localArrayList.toArray(new UPCEANReader[localArrayList.size()]));
      return;
      localCollection = (Collection)paramMap.get(DecodeHintType.POSSIBLE_FORMATS);
      break;
      label190: if (localCollection.contains(BarcodeFormat.UPC_A))
        localArrayList.add(new UPCAReader());
    }
  }

  public Result decodeRow(int paramInt, BitArray paramBitArray, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException
  {
    int[] arrayOfInt = UPCEANReader.findStartGuardPattern(paramBitArray);
    UPCEANReader[] arrayOfUPCEANReader = this.readers;
    int i = arrayOfUPCEANReader.length;
    int j = 0;
    if (j < i)
    {
      UPCEANReader localUPCEANReader = arrayOfUPCEANReader[j];
      Result localResult1;
      while (true)
      {
        try
        {
          localResult1 = localUPCEANReader.decodeRow(paramInt, paramBitArray, arrayOfInt, paramMap);
          if ((localResult1.getBarcodeFormat() != BarcodeFormat.EAN_13) || (localResult1.getText().charAt(0) != '0'))
            break label164;
          k = 1;
          if (paramMap != null)
            break label170;
          localCollection = null;
          if ((localCollection != null) && (!localCollection.contains(BarcodeFormat.UPC_A)))
            break label187;
          m = 1;
          if ((k == 0) || (m == 0))
            break label193;
          Result localResult2 = new Result(localResult1.getText().substring(1), localResult1.getRawBytes(), localResult1.getResultPoints(), BarcodeFormat.UPC_A);
          localResult2.putAllMetadata(localResult1.getResultMetadata());
          return localResult2;
        }
        catch (ReaderException localReaderException)
        {
          j++;
        }
        break;
        label164: int k = 0;
        continue;
        label170: Collection localCollection = (Collection)paramMap.get(DecodeHintType.POSSIBLE_FORMATS);
        continue;
        label187: int m = 0;
      }
      label193: return localResult1;
    }
    throw NotFoundException.getNotFoundInstance();
  }

  public void reset()
  {
    UPCEANReader[] arrayOfUPCEANReader = this.readers;
    int i = arrayOfUPCEANReader.length;
    for (int j = 0; j < i; j++)
      arrayOfUPCEANReader[j].reset();
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.MultiFormatUPCEANReader
 * JD-Core Version:    0.6.2
 */