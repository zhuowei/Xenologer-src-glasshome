.class public interface abstract Lcom/google/common/logging/GlassUserEventPerformanceStatsOrBuilder;
.super Ljava/lang/Object;
.source "GlassUserEventPerformanceStatsOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# virtual methods
.method public abstract getBatteryChargeWhenFullUah()I
.end method

.method public abstract getBatteryStateOfChargeUah()I
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

.method public abstract getReportedSoc()I
.end method

.method public abstract getTotalBytesSent()J
.end method

.method public abstract getTotalKernelMs()J
.end method

.method public abstract hasBatteryChargeWhenFullUah()Z
.end method

.method public abstract hasBatteryStateOfChargeUah()Z
.end method

.method public abstract hasBatteryTemperatureMilliCentigrade()Z
.end method

.method public abstract hasBoardTemperatureMilliCentigrade()Z
.end method

.method public abstract hasReportedSoc()Z
.end method

.method public abstract hasTotalBytesSent()Z
.end method

.method public abstract hasTotalKernelMs()Z
.end method
