package com.google.common.logging;

import com.google.protobuf.MessageOrBuilder;
import java.util.List;

public abstract interface GlassUserEventPerformanceStatsOrBuilder extends MessageOrBuilder
{
  public abstract int getBatteryChargeWhenFullMah();

  public abstract int getBatteryStateOfChargeMah();

  public abstract int getBatteryTemperatureMilliCentigrade();

  public abstract int getBoardTemperatureMilliCentigrade();

  public abstract GlassUserEventFrequencyStat getFrequencyStat(int paramInt);

  public abstract int getFrequencyStatCount();

  public abstract List<GlassUserEventFrequencyStat> getFrequencyStatList();

  public abstract GlassUserEventFrequencyStatOrBuilder getFrequencyStatOrBuilder(int paramInt);

  public abstract List<? extends GlassUserEventFrequencyStatOrBuilder> getFrequencyStatOrBuilderList();

  public abstract long getTotalBytesSent();

  public abstract long getTotalKernelMs();

  public abstract boolean hasBatteryChargeWhenFullMah();

  public abstract boolean hasBatteryStateOfChargeMah();

  public abstract boolean hasBatteryTemperatureMilliCentigrade();

  public abstract boolean hasBoardTemperatureMilliCentigrade();

  public abstract boolean hasTotalBytesSent();

  public abstract boolean hasTotalKernelMs();
}

/* Location:           classes-dex2jar.jar
 * Qualified Name:     com.google.common.logging.GlassUserEventPerformanceStatsOrBuilder
 * JD-Core Version:    0.6.2
 */