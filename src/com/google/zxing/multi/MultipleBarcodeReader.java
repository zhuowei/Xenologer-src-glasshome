package com.google.zxing.multi;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import java.util.Map;

public abstract interface MultipleBarcodeReader
{
  public abstract Result[] decodeMultiple(BinaryBitmap paramBinaryBitmap)
    throws NotFoundException;

  public abstract Result[] decodeMultiple(BinaryBitmap paramBinaryBitmap, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException;
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.multi.MultipleBarcodeReader
 * JD-Core Version:    0.6.2
 */