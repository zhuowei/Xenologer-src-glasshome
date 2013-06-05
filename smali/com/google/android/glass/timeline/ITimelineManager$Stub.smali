.class public abstract Lcom/google/android/glass/timeline/ITimelineManager$Stub;
.super Landroid/os/Binder;
.source "ITimelineManager.java"

# interfaces
.implements Lcom/google/android/glass/timeline/ITimelineManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/glass/timeline/ITimelineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/glass/timeline/ITimelineManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.glass.timeline.ITimelineManager"

.field static final TRANSACTION_cancelLiveCard:I = 0x2

.field static final TRANSACTION_registerHost:I = 0x3

.field static final TRANSACTION_updateLiveCard:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.google.android.glass.timeline.ITimelineManager"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/glass/timeline/ITimelineManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/glass/timeline/ITimelineManager;
    .registers 3
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_3
    return-object v0

    .line 31
    :cond_4
    const-string v1, "com.google.android.glass.timeline.ITimelineManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/glass/timeline/ITimelineManager;

    if-eqz v1, :cond_13

    .line 33
    check-cast v0, Lcom/google/android/glass/timeline/ITimelineManager;

    goto :goto_3

    .line 35
    :cond_13
    new-instance v0, Lcom/google/android/glass/timeline/ITimelineManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/glass/timeline/ITimelineManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
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
    const/4 v2, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_54

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 47
    :sswitch_9
    const-string v3, "com.google.android.glass.timeline.ITimelineManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 52
    :sswitch_f
    const-string v3, "com.google.android.glass.timeline.ITimelineManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    .line 55
    sget-object v3, Lcom/google/android/glass/timeline/LiveCardDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/timeline/LiveCardDescriptor;

    .line 60
    .local v0, _arg0:Lcom/google/android/glass/timeline/LiveCardDescriptor;
    :goto_22
    invoke-virtual {p0, v0}, Lcom/google/android/glass/timeline/ITimelineManager$Stub;->updateLiveCard(Lcom/google/android/glass/timeline/LiveCardDescriptor;)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 58
    .end local v0           #_arg0:Lcom/google/android/glass/timeline/LiveCardDescriptor;
    :cond_29
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/android/glass/timeline/LiveCardDescriptor;
    goto :goto_22

    .line 66
    .end local v0           #_arg0:Lcom/google/android/glass/timeline/LiveCardDescriptor;
    :sswitch_2b
    const-string v3, "com.google.android.glass.timeline.ITimelineManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 71
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/google/android/glass/timeline/ITimelineManager$Stub;->cancelLiveCard(II)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 77
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_3f
    const-string v3, "com.google.android.glass.timeline.ITimelineManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/glass/timeline/ITimelineHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/glass/timeline/ITimelineHost;

    move-result-object v0

    .line 80
    .local v0, _arg0:Lcom/google/android/glass/timeline/ITimelineHost;
    invoke-virtual {p0, v0}, Lcom/google/android/glass/timeline/ITimelineManager$Stub;->registerHost(Lcom/google/android/glass/timeline/ITimelineHost;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    .line 43
    nop

    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_3f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
