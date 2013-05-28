package com.google.glass.home.sync;

public class TimelineSyncWindow
{
  private final byte[] continuationToken;
  private final long startTime;

  public TimelineSyncWindow(long paramLong)
  {
    this(paramLong, null);
  }

  public TimelineSyncWindow(long paramLong, byte[] paramArrayOfByte)
  {
    this.startTime = paramLong;
    this.continuationToken = paramArrayOfByte;
  }

  public byte[] getContinuationToken()
  {
    return this.continuationToken;
  }

  public long getStartTime()
  {
    return this.startTime;
  }

  public String toString()
  {
    StringBuilder localStringBuilder1 = new StringBuilder().append("TimelineSyncWindow").append("{startTime=").append(this.startTime).append(", continuationToken=");
    if (this.continuationToken == null);
    StringBuilder localStringBuilder2;
    for (String str = "null"; ; str = "0x")
    {
      localStringBuilder2 = localStringBuilder1.append(str);
      for (int i = 0; (this.continuationToken != null) && (i < this.continuationToken.length); i++)
        localStringBuilder2.append(Integer.toHexString(0xFF & this.continuationToken[i]));
    }
    return "}";
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.glass.home.sync.TimelineSyncWindow
 * JD-Core Version:    0.6.2
 */