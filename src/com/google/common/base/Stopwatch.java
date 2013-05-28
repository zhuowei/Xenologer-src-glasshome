package com.google.common.base;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import java.util.concurrent.TimeUnit;

@Beta
@GwtCompatible(emulated=true)
public final class Stopwatch
{
  private long elapsedNanos;
  private boolean isRunning;
  private long startTick;
  private final Ticker ticker;

  public Stopwatch()
  {
    this(Ticker.systemTicker());
  }

  public Stopwatch(Ticker paramTicker)
  {
    this.ticker = ((Ticker)Preconditions.checkNotNull(paramTicker));
  }

  private static String abbreviate(TimeUnit paramTimeUnit)
  {
    switch (1.$SwitchMap$java$util$concurrent$TimeUnit[paramTimeUnit.ordinal()])
    {
    default:
      throw new AssertionError();
    case 1:
      return "ns";
    case 2:
      return "μs";
    case 3:
      return "ms";
    case 4:
    }
    return "s";
  }

  private static TimeUnit chooseUnit(long paramLong)
  {
    if (TimeUnit.SECONDS.convert(paramLong, TimeUnit.NANOSECONDS) > 0L)
      return TimeUnit.SECONDS;
    if (TimeUnit.MILLISECONDS.convert(paramLong, TimeUnit.NANOSECONDS) > 0L)
      return TimeUnit.MILLISECONDS;
    if (TimeUnit.MICROSECONDS.convert(paramLong, TimeUnit.NANOSECONDS) > 0L)
      return TimeUnit.MICROSECONDS;
    return TimeUnit.NANOSECONDS;
  }

  private long elapsedNanos()
  {
    if (this.isRunning)
      return this.ticker.read() - this.startTick + this.elapsedNanos;
    return this.elapsedNanos;
  }

  public long elapsedMillis()
  {
    return elapsedTime(TimeUnit.MILLISECONDS);
  }

  public long elapsedTime(TimeUnit paramTimeUnit)
  {
    return paramTimeUnit.convert(elapsedNanos(), TimeUnit.NANOSECONDS);
  }

  public boolean isRunning()
  {
    return this.isRunning;
  }

  public Stopwatch reset()
  {
    this.elapsedNanos = 0L;
    this.isRunning = false;
    return this;
  }

  public Stopwatch start()
  {
    if (!this.isRunning);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkState(bool);
      this.isRunning = true;
      this.startTick = this.ticker.read();
      return this;
    }
  }

  public Stopwatch stop()
  {
    long l = this.ticker.read();
    Preconditions.checkState(this.isRunning);
    this.isRunning = false;
    this.elapsedNanos += l - this.startTick;
    return this;
  }

  @GwtIncompatible("String.format()")
  public String toString()
  {
    return toString(4);
  }

  @GwtIncompatible("String.format()")
  public String toString(int paramInt)
  {
    long l = elapsedNanos();
    TimeUnit localTimeUnit = chooseUnit(l);
    double d = l / TimeUnit.NANOSECONDS.convert(1L, localTimeUnit);
    String str = "%." + paramInt + "g %s";
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Double.valueOf(d);
    arrayOfObject[1] = abbreviate(localTimeUnit);
    return String.format(str, arrayOfObject);
  }
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.base.Stopwatch
 * JD-Core Version:    0.6.2
 */