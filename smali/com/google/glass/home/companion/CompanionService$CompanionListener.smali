.class public interface abstract Lcom/google/glass/home/companion/CompanionService$CompanionListener;
.super Ljava/lang/Object;
.source "CompanionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/companion/CompanionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CompanionListener"
.end annotation


# virtual methods
.method public abstract onCompanionConnected(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onCompanionConnectionFailed()V
.end method

.method public abstract onCompanionDisconnected()V
.end method

.method public abstract onCompanionVersionMismatch(II)V
.end method
