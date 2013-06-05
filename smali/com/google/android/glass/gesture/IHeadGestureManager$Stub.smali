.class public abstract Lcom/google/android/glass/gesture/IHeadGestureManager$Stub;
.super Landroid/os/Binder;
.source "IHeadGestureManager.java"

# interfaces
.implements Lcom/google/android/glass/gesture/IHeadGestureManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/glass/gesture/IHeadGestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/glass/gesture/IHeadGestureManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.glass.gesture.IHeadGestureManager"

.field static final TRANSACTION_register:I = 0x1

.field static final TRANSACTION_registerOneShot:I = 0x2

.field static final TRANSACTION_unregister:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.google.android.glass.gesture.IHeadGestureManager"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/glass/gesture/IHeadGestureManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/glass/gesture/IHeadGestureManager;
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
    const-string v1, "com.google.android.glass.gesture.IHeadGestureManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/glass/gesture/IHeadGestureManager;

    if-eqz v1, :cond_13

    .line 35
    check-cast v0, Lcom/google/android/glass/gesture/IHeadGestureManager;

    goto :goto_3

    .line 37
    :cond_13
    new-instance v0, Lcom/google/android/glass/gesture/IHeadGestureManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/glass/gesture/IHeadGestureManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 11
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 45
    sparse-switch p1, :sswitch_data_6e

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 49
    :sswitch_a
    const-string v3, "com.google.android.glass.gesture.IHeadGestureManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 54
    :sswitch_10
    const-string v5, "com.google.android.glass.gesture.IHeadGestureManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/glass/gesture/IHeadGestureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/glass/gesture/IHeadGestureCallback;

    move-result-object v1

    .line 59
    .local v1, _arg1:Lcom/google/android/glass/gesture/IHeadGestureCallback;
    invoke-virtual {p0, v0, v1}, Lcom/google/android/glass/gesture/IHeadGestureManager$Stub;->register(ILcom/google/android/glass/gesture/IHeadGestureCallback;)Z

    move-result v2

    .line 60
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v2, :cond_2b

    move v3, v4

    :cond_2b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 66
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lcom/google/android/glass/gesture/IHeadGestureCallback;
    .end local v2           #_result:Z
    :sswitch_2f
    const-string v5, "com.google.android.glass.gesture.IHeadGestureManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/glass/gesture/IHeadGestureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/glass/gesture/IHeadGestureCallback;

    move-result-object v1

    .line 71
    .restart local v1       #_arg1:Lcom/google/android/glass/gesture/IHeadGestureCallback;
    invoke-virtual {p0, v0, v1}, Lcom/google/android/glass/gesture/IHeadGestureManager$Stub;->registerOneShot(ILcom/google/android/glass/gesture/IHeadGestureCallback;)Z

    move-result v2

    .line 72
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v2, :cond_4a

    move v3, v4

    :cond_4a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 78
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lcom/google/android/glass/gesture/IHeadGestureCallback;
    .end local v2           #_result:Z
    :sswitch_4e
    const-string v5, "com.google.android.glass.gesture.IHeadGestureManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/glass/gesture/IHeadGestureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/glass/gesture/IHeadGestureCallback;

    move-result-object v1

    .line 83
    .restart local v1       #_arg1:Lcom/google/android/glass/gesture/IHeadGestureCallback;
    invoke-virtual {p0, v0, v1}, Lcom/google/android/glass/gesture/IHeadGestureManager$Stub;->unregister(ILcom/google/android/glass/gesture/IHeadGestureCallback;)Z

    move-result v2

    .line 84
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v2, :cond_69

    move v3, v4

    :cond_69
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 45
    nop

    :sswitch_data_6e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_4e
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
