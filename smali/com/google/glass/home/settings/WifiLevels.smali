.class public Lcom/google/glass/home/settings/WifiLevels;
.super Ljava/lang/Object;
.source "WifiLevels.java"


# static fields
.field private static final WIFI_LEVELS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 11
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/glass/home/R$drawable;->ic_wifi0_big:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/google/glass/home/R$drawable;->ic_wifi1_big:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/google/glass/home/R$drawable;->ic_wifi2_big:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/google/glass/home/R$drawable;->ic_wifi3_big:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/google/glass/home/R$drawable;->ic_wifi4_big:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/google/glass/home/R$drawable;->ic_wifi1_warn_big:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/google/glass/home/R$drawable;->ic_wifi1_warn_big:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/google/glass/home/R$drawable;->ic_wifi2_warn_big:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/google/glass/home/R$drawable;->ic_wifi3_warn_big:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/google/glass/home/R$drawable;->ic_wifi4_warn_big:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/glass/home/settings/WifiLevels;->WIFI_LEVELS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public getImageResourceForStrength(I)I
    .locals 1
    .parameter "strength"

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/home/settings/WifiLevels;->WIFI_LEVELS:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNumWifiLevels()I
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/home/settings/WifiLevels;->WIFI_LEVELS:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method
