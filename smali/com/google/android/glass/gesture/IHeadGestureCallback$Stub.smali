.class public abstract Lcom/google/android/glass/gesture/IHeadGestureCallback$Stub;
.super Landroid/os/Binder;
.source "IHeadGestureCallback.java"

# interfaces
.implements Lcom/google/android/glass/gesture/IHeadGestureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/glass/gesture/IHeadGestureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/glass/gesture/IHeadGestureCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.glass.gesture.IHeadGestureCallback"

.field static final TRANSACTION_onGestureDetected:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.google.android.glass.gesture.IHeadGestureCallback"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/glass/gesture/IHeadGestureCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/glass/gesture/IHeadGestureCallback;
    .registers 3
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_4

    .line 31
    const/4 v0, 0x0

    .line 37
    :goto_3
    return-object v0

    .line 33
    :cond_4
    const-string v1, "com.google.android.glass.gesture.IHeadGestureCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/glass/gesture/IHeadGestureCallback;

    if-eqz v1, :cond_13

    .line 35
    check-cast v0, Lcom/google/android/glass/gesture/IHeadGestureCallback;

    goto :goto_3

    .line 37
    :cond_13
    new-instance v0, Lcom/google/android/glass/gesture/IHeadGestureCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/glass/gesture/IHeadGestureCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_20

    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    .line 49
    :sswitch_9
    const-string v2, "com.google.android.glass.gesture.IHeadGestureCallback"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 54
    :sswitch_f
    const-string v2, "com.google.android.glass.gesture.IHeadGestureCallback"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 57
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/google/android/glass/gesture/IHeadGestureCallback$Stub;->onGestureDetected(I)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 45
    nop

    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
