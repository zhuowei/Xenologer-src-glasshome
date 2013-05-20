.class public Lcom/google/android/libraries/barhopper/Barcode$WiFi;
.super Ljava/lang/Object;
.source "Barcode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/barhopper/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WiFi"
.end annotation


# static fields
.field public static final OPEN:I = 0x1

.field public static final WEP:I = 0x3

.field public static final WPA:I = 0x2


# instance fields
.field public encryptionType:I

.field public password:Ljava/lang/String;

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
