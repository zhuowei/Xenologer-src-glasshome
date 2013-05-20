.class public final Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ClientInfoProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ClientInfoProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClientInfo"
.end annotation


# static fields
.field public static final BROWSER_PARAMS_FIELD_NUMBER:I = 0xb

.field public static final CAPABILITIES_FIELD_NUMBER:I = 0x4

.field public static final CLIENT_ANDROID_AT_HOME:I = 0xd

.field public static final CLIENT_ANDROID_PHONE:I = 0x5

.field public static final CLIENT_ANDROID_TABLET:I = 0x2

.field public static final CLIENT_CLI:I = 0x3

.field public static final CLIENT_ECOUTEZ:I = 0xb

.field public static final CLIENT_FIELD_NUMBER:I = 0x1

.field public static final CLIENT_GCHAT:I = 0x1

.field public static final CLIENT_GLASS:I = 0xf

.field public static final CLIENT_GOGGLES:I = 0x7

.field public static final CLIENT_GOOGLE_TV:I = 0x6

.field public static final CLIENT_GRECO2:I = 0x9

.field public static final CLIENT_HANGOUTS:I = 0xa

.field public static final CLIENT_LOADTEST:I = 0xc

.field public static final CLIENT_MAJEL_UNIVERSAL:I = 0x8

.field public static final CLIENT_NAME_FIELD_NUMBER:I = 0x2

.field public static final CLIENT_PROBER:I = 0xe

.field public static final CLIENT_UNKNOWN:I = 0x0

.field public static final CLIENT_VERSION_FIELD_NUMBER:I = 0x3

.field public static final CLIENT_VERSION_NUMBER_FIELD_NUMBER:I = 0xe

.field public static final CLIENT_WEB:I = 0x4

.field public static final COUNTRY_CODE_FIELD_NUMBER:I = 0x6

.field public static final DEPRECATED_USER_AGENT_FIELD_NUMBER:I = 0x7

.field public static final GSERVICES_COUNTRY_CODE_FIELD_NUMBER:I = 0x10

.field public static final IP_ADDRESS_FIELD_NUMBER:I = 0xa

.field public static final LANGUAGE_CODE_FIELD_NUMBER:I = 0x5

.field public static final PREVIEW_PARAMS_FIELD_NUMBER:I = 0x9

.field public static final SAFESEARCH_LEVEL_FIELD_NUMBER:I = 0x8

.field public static final SAFESEARCH_LEVEL_MODERATE:I = 0x1

.field public static final SAFESEARCH_LEVEL_NONE:I = 0x0

.field public static final SAFESEARCH_LEVEL_STRICT:I = 0x2

.field public static final SCREEN_PARAMS_FIELD_NUMBER:I = 0xf

.field public static final SYSTEM_TIME_MS_FIELD_NUMBER:I = 0xc

.field public static final TIME_ZONE_FIELD_NUMBER:I = 0xd


# instance fields
.field private browserParams_:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

.field private cachedSize:I

.field private capabilities_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private clientName_:Ljava/lang/String;

.field private clientVersionNumber_:I

.field private clientVersion_:Ljava/lang/String;

.field private client_:I

.field private countryCode_:Ljava/lang/String;

.field private deprecatedUserAgent_:Ljava/lang/String;

.field private gservicesCountryCode_:Ljava/lang/String;

.field private hasBrowserParams:Z

.field private hasClient:Z

.field private hasClientName:Z

.field private hasClientVersion:Z

.field private hasClientVersionNumber:Z

.field private hasCountryCode:Z

.field private hasDeprecatedUserAgent:Z

.field private hasGservicesCountryCode:Z

.field private hasIpAddress:Z

.field private hasLanguageCode:Z

.field private hasPreviewParams:Z

.field private hasSafesearchLevel:Z

.field private hasScreenParams:Z

.field private hasSystemTimeMs:Z

.field private hasTimeZone:Z

.field private ipAddress_:Ljava/lang/String;

.field private languageCode_:Ljava/lang/String;

.field private previewParams_:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

.field private safesearchLevel_:I

.field private screenParams_:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

.field private systemTimeMs_:J

.field private timeZone_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 692
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 720
    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->client_:I

    .line 737
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientName_:Ljava/lang/String;

    .line 754
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersion_:Ljava/lang/String;

    .line 771
    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersionNumber_:I

    .line 787
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities_:Ljava/util/List;

    .line 815
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->languageCode_:Ljava/lang/String;

    .line 832
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->countryCode_:Ljava/lang/String;

    .line 849
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    .line 866
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->systemTimeMs_:J

    .line 883
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->timeZone_:Ljava/lang/String;

    .line 900
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->deprecatedUserAgent_:Ljava/lang/String;

    .line 917
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->ipAddress_:Ljava/lang/String;

    .line 934
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->safesearchLevel_:I

    .line 951
    iput-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->previewParams_:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    .line 971
    iput-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->browserParams_:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 991
    iput-object v2, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->screenParams_:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    .line 1086
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->cachedSize:I

    .line 692
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1269
    new-instance v0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    invoke-direct {v0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1263
    new-instance v0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    invoke-direct {v0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    check-cast v0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    return-object v0
.end method


# virtual methods
.method public addCapabilities(I)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 2
    .parameter "value"

    .prologue
    .line 801
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities_:Ljava/util/List;

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clearClient()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 1010
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clearClientName()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 1011
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clearClientVersion()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 1012
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clearClientVersionNumber()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 1013
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clearCapabilities()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 1014
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clearLanguageCode()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 1015
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clearCountryCode()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 1016
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clearGservicesCountryCode()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 1017
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clearSystemTimeMs()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 1018
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clearTimeZone()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 1019
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clearDeprecatedUserAgent()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 1020
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clearIpAddress()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 1021
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clearSafesearchLevel()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 1022
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clearPreviewParams()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 1023
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clearBrowserParams()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 1024
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clearScreenParams()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    .line 1025
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->cachedSize:I

    .line 1026
    return-object p0
.end method

.method public clearBrowserParams()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 983
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasBrowserParams:Z

    .line 984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->browserParams_:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 985
    return-object p0
.end method

.method public clearCapabilities()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 808
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities_:Ljava/util/List;

    .line 809
    return-object p0
.end method

.method public clearClient()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 729
    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClient:Z

    .line 730
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->client_:I

    .line 731
    return-object p0
.end method

.method public clearClientName()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClientName:Z

    .line 747
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientName_:Ljava/lang/String;

    .line 748
    return-object p0
.end method

.method public clearClientVersion()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClientVersion:Z

    .line 764
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersion_:Ljava/lang/String;

    .line 765
    return-object p0
.end method

.method public clearClientVersionNumber()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 780
    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClientVersionNumber:Z

    .line 781
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersionNumber_:I

    .line 782
    return-object p0
.end method

.method public clearCountryCode()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasCountryCode:Z

    .line 842
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->countryCode_:Ljava/lang/String;

    .line 843
    return-object p0
.end method

.method public clearDeprecatedUserAgent()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 909
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasDeprecatedUserAgent:Z

    .line 910
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->deprecatedUserAgent_:Ljava/lang/String;

    .line 911
    return-object p0
.end method

.method public clearGservicesCountryCode()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 858
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasGservicesCountryCode:Z

    .line 859
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    .line 860
    return-object p0
.end method

.method public clearIpAddress()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 926
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasIpAddress:Z

    .line 927
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->ipAddress_:Ljava/lang/String;

    .line 928
    return-object p0
.end method

.method public clearLanguageCode()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 824
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasLanguageCode:Z

    .line 825
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->languageCode_:Ljava/lang/String;

    .line 826
    return-object p0
.end method

.method public clearPreviewParams()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 963
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasPreviewParams:Z

    .line 964
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->previewParams_:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    .line 965
    return-object p0
.end method

.method public clearSafesearchLevel()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 943
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasSafesearchLevel:Z

    .line 944
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->safesearchLevel_:I

    .line 945
    return-object p0
.end method

.method public clearScreenParams()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 1003
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasScreenParams:Z

    .line 1004
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->screenParams_:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    .line 1005
    return-object p0
.end method

.method public clearSystemTimeMs()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 2

    .prologue
    .line 875
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasSystemTimeMs:Z

    .line 876
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->systemTimeMs_:J

    .line 877
    return-object p0
.end method

.method public clearTimeZone()Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1

    .prologue
    .line 892
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasTimeZone:Z

    .line 893
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->timeZone_:Ljava/lang/String;

    .line 894
    return-object p0
.end method

.method public getBrowserParams()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->browserParams_:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1089
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 1091
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getSerializedSize()I

    .line 1093
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->cachedSize:I

    return v0
.end method

.method public getCapabilities(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 794
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCapabilitiesCount()I
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCapabilitiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities_:Ljava/util/List;

    return-object v0
.end method

.method public getClient()I
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->client_:I

    return v0
.end method

.method public getClientName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientName_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getClientVersionNumber()I
    .locals 1

    .prologue
    .line 772
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersionNumber_:I

    return v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->countryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeprecatedUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->deprecatedUserAgent_:Ljava/lang/String;

    return-object v0
.end method

.method public getGservicesCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->ipAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->languageCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewParams()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->previewParams_:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    return-object v0
.end method

.method public getSafesearchLevel()I
    .locals 1

    .prologue
    .line 935
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->safesearchLevel_:I

    return v0
.end method

.method public getScreenParams()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->screenParams_:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 1098
    const/4 v3, 0x0

    .line 1099
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClient()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1100
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getClient()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1103
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClientName()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1104
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getClientName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1107
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClientVersion()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1108
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getClientVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1112
    :cond_2
    const/4 v0, 0x0

    .line 1113
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getCapabilitiesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1114
    .local v1, element:I
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 1117
    .end local v1           #element:I
    :cond_3
    add-int/2addr v3, v0

    .line 1118
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getCapabilitiesList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1120
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasLanguageCode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1121
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1124
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasCountryCode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1125
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1128
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasDeprecatedUserAgent()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1129
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getDeprecatedUserAgent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1132
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasSafesearchLevel()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1133
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getSafesearchLevel()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1136
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasPreviewParams()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1137
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getPreviewParams()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1140
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasIpAddress()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1141
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1144
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasBrowserParams()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1145
    const/16 v4, 0xb

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getBrowserParams()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1148
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasSystemTimeMs()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1149
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getSystemTimeMs()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1152
    :cond_b
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasTimeZone()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1153
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1156
    :cond_c
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClientVersionNumber()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1157
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getClientVersionNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1160
    :cond_d
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasScreenParams()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1161
    const/16 v4, 0xf

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getScreenParams()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1164
    :cond_e
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasGservicesCountryCode()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1165
    const/16 v4, 0x10

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getGservicesCountryCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1168
    :cond_f
    iput v3, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->cachedSize:I

    .line 1169
    return v3
.end method

.method public getSystemTimeMs()J
    .locals 2

    .prologue
    .line 867
    iget-wide v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->systemTimeMs_:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->timeZone_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBrowserParams()Z
    .locals 1

    .prologue
    .line 972
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasBrowserParams:Z

    return v0
.end method

.method public hasClient()Z
    .locals 1

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClient:Z

    return v0
.end method

.method public hasClientName()Z
    .locals 1

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClientName:Z

    return v0
.end method

.method public hasClientVersion()Z
    .locals 1

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClientVersion:Z

    return v0
.end method

.method public hasClientVersionNumber()Z
    .locals 1

    .prologue
    .line 773
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClientVersionNumber:Z

    return v0
.end method

.method public hasCountryCode()Z
    .locals 1

    .prologue
    .line 834
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasCountryCode:Z

    return v0
.end method

.method public hasDeprecatedUserAgent()Z
    .locals 1

    .prologue
    .line 902
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasDeprecatedUserAgent:Z

    return v0
.end method

.method public hasGservicesCountryCode()Z
    .locals 1

    .prologue
    .line 851
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasGservicesCountryCode:Z

    return v0
.end method

.method public hasIpAddress()Z
    .locals 1

    .prologue
    .line 919
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasIpAddress:Z

    return v0
.end method

.method public hasLanguageCode()Z
    .locals 1

    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasLanguageCode:Z

    return v0
.end method

.method public hasPreviewParams()Z
    .locals 1

    .prologue
    .line 952
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasPreviewParams:Z

    return v0
.end method

.method public hasSafesearchLevel()Z
    .locals 1

    .prologue
    .line 936
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasSafesearchLevel:Z

    return v0
.end method

.method public hasScreenParams()Z
    .locals 1

    .prologue
    .line 992
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasScreenParams:Z

    return v0
.end method

.method public hasSystemTimeMs()Z
    .locals 1

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasSystemTimeMs:Z

    return v0
.end method

.method public hasTimeZone()Z
    .locals 1

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasTimeZone:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1030
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1177
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1178
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1182
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1183
    :sswitch_0
    return-object p0

    .line 1188
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->setClient(I)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    goto :goto_0

    .line 1192
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->setClientName(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    goto :goto_0

    .line 1196
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->setClientVersion(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    goto :goto_0

    .line 1200
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->addCapabilities(I)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    goto :goto_0

    .line 1204
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->setLanguageCode(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    goto :goto_0

    .line 1208
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->setCountryCode(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    goto :goto_0

    .line 1212
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->setDeprecatedUserAgent(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    goto :goto_0

    .line 1216
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->setSafesearchLevel(I)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    goto :goto_0

    .line 1220
    :sswitch_9
    new-instance v1, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    invoke-direct {v1}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;-><init>()V

    .line 1221
    .local v1, value:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1222
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->setPreviewParams(Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    goto :goto_0

    .line 1226
    .end local v1           #value:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->setIpAddress(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    goto :goto_0

    .line 1230
    :sswitch_b
    new-instance v1, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    invoke-direct {v1}, Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;-><init>()V

    .line 1231
    .local v1, value:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1232
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->setBrowserParams(Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    goto :goto_0

    .line 1236
    .end local v1           #value:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->setSystemTimeMs(J)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    goto :goto_0

    .line 1240
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->setTimeZone(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    goto :goto_0

    .line 1244
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->setClientVersionNumber(I)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    goto/16 :goto_0

    .line 1248
    :sswitch_f
    new-instance v1, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    invoke-direct {v1}, Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;-><init>()V

    .line 1249
    .local v1, value:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1250
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->setScreenParams(Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    goto/16 :goto_0

    .line 1254
    .end local v1           #value:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->setGservicesCountryCode(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    goto/16 :goto_0

    .line 1178
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x70 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 689
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public setBrowserParams(Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 975
    if-nez p1, :cond_0

    .line 976
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 978
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasBrowserParams:Z

    .line 979
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->browserParams_:Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    .line 980
    return-object p0
.end method

.method public setCapabilities(II)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 797
    iget-object v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->capabilities_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 798
    return-object p0
.end method

.method public setClient(I)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClient:Z

    .line 725
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->client_:I

    .line 726
    return-object p0
.end method

.method public setClientName(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClientName:Z

    .line 742
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientName_:Ljava/lang/String;

    .line 743
    return-object p0
.end method

.method public setClientVersion(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClientVersion:Z

    .line 759
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersion_:Ljava/lang/String;

    .line 760
    return-object p0
.end method

.method public setClientVersionNumber(I)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 775
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClientVersionNumber:Z

    .line 776
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->clientVersionNumber_:I

    .line 777
    return-object p0
.end method

.method public setCountryCode(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 836
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasCountryCode:Z

    .line 837
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->countryCode_:Ljava/lang/String;

    .line 838
    return-object p0
.end method

.method public setDeprecatedUserAgent(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasDeprecatedUserAgent:Z

    .line 905
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->deprecatedUserAgent_:Ljava/lang/String;

    .line 906
    return-object p0
.end method

.method public setGservicesCountryCode(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasGservicesCountryCode:Z

    .line 854
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->gservicesCountryCode_:Ljava/lang/String;

    .line 855
    return-object p0
.end method

.method public setIpAddress(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasIpAddress:Z

    .line 922
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->ipAddress_:Ljava/lang/String;

    .line 923
    return-object p0
.end method

.method public setLanguageCode(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 819
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasLanguageCode:Z

    .line 820
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->languageCode_:Ljava/lang/String;

    .line 821
    return-object p0
.end method

.method public setPreviewParams(Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 955
    if-nez p1, :cond_0

    .line 956
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 958
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasPreviewParams:Z

    .line 959
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->previewParams_:Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    .line 960
    return-object p0
.end method

.method public setSafesearchLevel(I)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 938
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasSafesearchLevel:Z

    .line 939
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->safesearchLevel_:I

    .line 940
    return-object p0
.end method

.method public setScreenParams(Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 995
    if-nez p1, :cond_0

    .line 996
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 998
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasScreenParams:Z

    .line 999
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->screenParams_:Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    .line 1000
    return-object p0
.end method

.method public setSystemTimeMs(J)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasSystemTimeMs:Z

    .line 871
    iput-wide p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->systemTimeMs_:J

    .line 872
    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 887
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasTimeZone:Z

    .line 888
    iput-object p1, p0, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->timeZone_:Ljava/lang/String;

    .line 889
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1036
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClient()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1037
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getClient()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1039
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClientName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1040
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getClientName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1042
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClientVersion()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1043
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getClientVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1045
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getCapabilitiesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1046
    .local v0, element:I
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_0

    .line 1048
    .end local v0           #element:I
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasLanguageCode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1049
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1051
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasCountryCode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1052
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1054
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasDeprecatedUserAgent()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1055
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getDeprecatedUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1057
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasSafesearchLevel()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1058
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getSafesearchLevel()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1060
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasPreviewParams()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1061
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getPreviewParams()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1063
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasIpAddress()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1064
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getIpAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1066
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasBrowserParams()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1067
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getBrowserParams()Lcom/google/majel/proto/ClientInfoProtos$BrowserParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1069
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasSystemTimeMs()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1070
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getSystemTimeMs()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 1072
    :cond_b
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasTimeZone()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1073
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1075
    :cond_c
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasClientVersionNumber()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1076
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getClientVersionNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1078
    :cond_d
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasScreenParams()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1079
    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getScreenParams()Lcom/google/majel/proto/ClientInfoProtos$ScreenParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1081
    :cond_e
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->hasGservicesCountryCode()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1082
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$ClientInfo;->getGservicesCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1084
    :cond_f
    return-void
.end method
