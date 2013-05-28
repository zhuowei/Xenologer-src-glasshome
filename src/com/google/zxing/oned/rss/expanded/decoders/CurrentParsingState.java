package com.google.zxing.oned.rss.expanded.decoders;

final class CurrentParsingState
{
  private State encoding = State.NUMERIC;
  private int position = 0;

  int getPosition()
  {
    return this.position;
  }

  void incrementPosition(int paramInt)
  {
    this.position = (paramInt + this.position);
  }

  boolean isAlpha()
  {
    return this.encoding == State.ALPHA;
  }

  boolean isIsoIec646()
  {
    return this.encoding == State.ISO_IEC_646;
  }

  boolean isNumeric()
  {
    return this.encoding == State.NUMERIC;
  }

  void setAlpha()
  {
    this.encoding = State.ALPHA;
  }

  void setIsoIec646()
  {
    this.encoding = State.ISO_IEC_646;
  }

  void setNumeric()
  {
    this.encoding = State.NUMERIC;
  }

  void setPosition(int paramInt)
  {
    this.position = paramInt;
  }

  private static enum State
  {
    static
    {
      ALPHA = new State("ALPHA", 1);
      ISO_IEC_646 = new State("ISO_IEC_646", 2);
      State[] arrayOfState = new State[3];
      arrayOfState[0] = NUMERIC;
      arrayOfState[1] = ALPHA;
      arrayOfState[2] = ISO_IEC_646;
    }
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.rss.expanded.decoders.CurrentParsingState
 * JD-Core Version:    0.6.2
 */