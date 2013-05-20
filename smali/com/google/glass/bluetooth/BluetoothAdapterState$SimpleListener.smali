.class public abstract Lcom/google/glass/bluetooth/BluetoothAdapterState$SimpleListener;
.super Ljava/lang/Object;
.source "BluetoothAdapterState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/BluetoothAdapterState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "SimpleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/BluetoothAdapterState;


# direct methods
.method public constructor <init>(Lcom/google/glass/bluetooth/BluetoothAdapterState;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/bluetooth/BluetoothAdapterState$SimpleListener;->this$0:Lcom/google/glass/bluetooth/BluetoothAdapterState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothAdapterDisabled()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onBluetoothAdapterEnabled()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
