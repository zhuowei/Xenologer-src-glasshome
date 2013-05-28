package com.google.zxing;

public enum EncodeHintType
{
  static
  {
    CHARACTER_SET = new EncodeHintType("CHARACTER_SET", 1);
    DATA_MATRIX_SHAPE = new EncodeHintType("DATA_MATRIX_SHAPE", 2);
    MIN_SIZE = new EncodeHintType("MIN_SIZE", 3);
    MAX_SIZE = new EncodeHintType("MAX_SIZE", 4);
    MARGIN = new EncodeHintType("MARGIN", 5);
    PDF417_COMPACT = new EncodeHintType("PDF417_COMPACT", 6);
    PDF417_COMPACTION = new EncodeHintType("PDF417_COMPACTION", 7);
    PDF417_DIMENSIONS = new EncodeHintType("PDF417_DIMENSIONS", 8);
    EncodeHintType[] arrayOfEncodeHintType = new EncodeHintType[9];
    arrayOfEncodeHintType[0] = ERROR_CORRECTION;
    arrayOfEncodeHintType[1] = CHARACTER_SET;
    arrayOfEncodeHintType[2] = DATA_MATRIX_SHAPE;
    arrayOfEncodeHintType[3] = MIN_SIZE;
    arrayOfEncodeHintType[4] = MAX_SIZE;
    arrayOfEncodeHintType[5] = MARGIN;
    arrayOfEncodeHintType[6] = PDF417_COMPACT;
    arrayOfEncodeHintType[7] = PDF417_COMPACTION;
    arrayOfEncodeHintType[8] = PDF417_DIMENSIONS;
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.EncodeHintType
 * JD-Core Version:    0.6.2
 */