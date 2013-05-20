.class public interface abstract Lcom/google/common/logging/GlassUserEventPerformanceStatsOrBuilder;
.super Ljava/lang/Object;
.source "GlassUserEventPerformanceStatsOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getBatteryChargeWhenFullMah()I
.end method

.method public abstract getBatteryStateOfChargeMah()I
.end method

.method public abstract getBatteryTemperatureMilliCentigrade()I
.end method

.method public abstract getBoardTemperatureMilliCentigrade()I
.end method

.method public abstract getFrequencyStat(I)Lcom/google/common/logging/GlassUserEventFrequencyStat;
.end method

.method public abstract getFrequencyStatCount()I
.end method

.method public abstract getFrequencyStatList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassUserEventFrequencyStat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFrequencyStatOrBuilder(I)Lcom/google/common/logging/GlassUserEventFrequencyStatOrBuilder;
.end method

.method public abstract getFrequencyStatOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/common/logging/GlassUserEventFrequencyStatOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTotalBytesSent()J
.end method

.method public abstract getTotalKernelMs()J
.end method

.method public abstract hasBatteryChargeWhenFullMah()Z
.end method

.method public abstract hasBatteryStateOfChargeMah()Z
.end method

.method public abstract hasBatteryTemperatureMilliCentigrade()Z
.end method

.method public abstract hasBoardTemperatureMilliCentigrade()Z
.end method

.method public abstract hasTotalBytesSent()Z
.end method

.method public abstract hasTotalKernelMs()Z
.end method
