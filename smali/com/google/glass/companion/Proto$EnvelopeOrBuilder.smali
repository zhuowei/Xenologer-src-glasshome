.class public interface abstract Lcom/google/glass/companion/Proto$EnvelopeOrBuilder;
.super Ljava/lang/Object;
.source "Proto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EnvelopeOrBuilder"
.end annotation


# virtual methods
.method public abstract getApiRequestC2G()Lcom/google/glass/companion/Proto$ApiRequest;
.end method

.method public abstract getApiResponseG2C()Lcom/google/glass/companion/Proto$ApiResponse;
.end method

.method public abstract getCommand()Lcom/google/glass/companion/Proto$Command;
.end method

.method public abstract getCompanionInfo()Lcom/google/glass/companion/Proto$CompanionInfo;
.end method

.method public abstract getError()Lcom/google/glass/companion/Proto$Error;
.end method

.method public abstract getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;
.end method

.method public abstract getLocationRequestG2C()Lcom/google/glass/companion/Proto$LocationRequest;
.end method

.method public abstract getMessageC2G()Ljava/lang/String;
.end method

.method public abstract getMessageC2GBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNavigationRequestC2G()Lcom/google/glass/companion/Proto$NavigationRequest;
.end method

.method public abstract getScreenshot()Lcom/google/glass/companion/Proto$ScreenShot;
.end method

.method public abstract getSerialNumber()I
.end method

.method public abstract getSetupWifiC2G()Ljava/lang/String;
.end method

.method public abstract getSetupWifiC2GBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getTimeMillis()J
.end method

.method public abstract getTimelineItem(I)Lcom/google/googlex/glass/common/proto/TimelineItem;
.end method

.method public abstract getTimelineItemCount()I
.end method

.method public abstract getTimelineItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimelineItemResponseC2G(I)Lcom/google/glass/companion/Proto$TimelineItemResponse;
.end method

.method public abstract getTimelineItemResponseC2GCount()I
.end method

.method public abstract getTimelineItemResponseC2GList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/companion/Proto$TimelineItemResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimezoneC2G()Ljava/lang/String;
.end method

.method public abstract getTimezoneC2GBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getUptimeMillis()J
.end method

.method public abstract getUrlG2C()Ljava/lang/String;
.end method

.method public abstract getUrlG2CBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getVersion()I
.end method

.method public abstract hasApiRequestC2G()Z
.end method

.method public abstract hasApiResponseG2C()Z
.end method

.method public abstract hasCommand()Z
.end method

.method public abstract hasCompanionInfo()Z
.end method

.method public abstract hasError()Z
.end method

.method public abstract hasLocationMessageC2G()Z
.end method

.method public abstract hasLocationRequestG2C()Z
.end method

.method public abstract hasMessageC2G()Z
.end method

.method public abstract hasNavigationRequestC2G()Z
.end method

.method public abstract hasScreenshot()Z
.end method

.method public abstract hasSerialNumber()Z
.end method

.method public abstract hasSetupWifiC2G()Z
.end method

.method public abstract hasTimeMillis()Z
.end method

.method public abstract hasTimezoneC2G()Z
.end method

.method public abstract hasUptimeMillis()Z
.end method

.method public abstract hasUrlG2C()Z
.end method

.method public abstract hasVersion()Z
.end method
