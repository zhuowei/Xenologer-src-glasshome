.class public abstract Lcom/google/glass/home/companion/CompanionService$SimpleCompanionListener;
.super Ljava/lang/Object;
.source "CompanionService.java"

# interfaces
.implements Lcom/google/glass/home/companion/CompanionService$CompanionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/companion/CompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCompanionListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompanionConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter "device"

    .prologue
    .line 160
    return-void
.end method

.method public onCompanionConnectionFailed()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public onCompanionDisconnected()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public onCompanionVersionMismatch(II)V
    .locals 0
    .parameter "glassVersion"
    .parameter "companionVersion"

    .prologue
    .line 164
    return-void
.end method
