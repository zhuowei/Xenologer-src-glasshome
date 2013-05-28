package com.google.zxing;

import java.util.List;

public enum DecodeHintType
{
  private final Class<?> valueType;

  static
  {
    POSSIBLE_FORMATS = new DecodeHintType("POSSIBLE_FORMATS", 2, List.class);
    TRY_HARDER = new DecodeHintType("TRY_HARDER", 3, Void.class);
    CHARACTER_SET = new DecodeHintType("CHARACTER_SET", 4, String.class);
    ALLOWED_LENGTHS = new DecodeHintType("ALLOWED_LENGTHS", 5, [I.class);
    ASSUME_CODE_39_CHECK_DIGIT = new DecodeHintType("ASSUME_CODE_39_CHECK_DIGIT", 6, Void.class);
    ASSUME_GS1 = new DecodeHintType("ASSUME_GS1", 7, Void.class);
    NEED_RESULT_POINT_CALLBACK = new DecodeHintType("NEED_RESULT_POINT_CALLBACK", 8, ResultPointCallback.class);
    DecodeHintType[] arrayOfDecodeHintType = new DecodeHintType[9];
    arrayOfDecodeHintType[0] = OTHER;
    arrayOfDecodeHintType[1] = PURE_BARCODE;
    arrayOfDecodeHintType[2] = POSSIBLE_FORMATS;
    arrayOfDecodeHintType[3] = TRY_HARDER;
    arrayOfDecodeHintType[4] = CHARACTER_SET;
    arrayOfDecodeHintType[5] = ALLOWED_LENGTHS;
    arrayOfDecodeHintType[6] = ASSUME_CODE_39_CHECK_DIGIT;
    arrayOfDecodeHintType[7] = ASSUME_GS1;
    arrayOfDecodeHintType[8] = NEED_RESULT_POINT_CALLBACK;
  }

  private DecodeHintType(Class<?> paramClass)
  {
    this.valueType = paramClass;
  }

  public Class<?> getValueType()
  {
    return this.valueType;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.DecodeHintType
 * JD-Core Version:    0.6.2
 */