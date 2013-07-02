.class public abstract Lcom/google/glass/voice/IVoiceServiceListener$Stub;
.super Landroid/os/Binder;
.source "IVoiceServiceListener.java"

# interfaces
.implements Lcom/google/glass/voice/IVoiceServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/IVoiceServiceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/IVoiceServiceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.glass.voice.IVoiceServiceListener"

.field static final TRANSACTION_getTag:I = 0x6

.field static final TRANSACTION_onAudioData:I = 0x2

.field static final TRANSACTION_onResampledAudioData:I = 0x3

.field static final TRANSACTION_onVoiceAmplitudeChanged:I = 0x4

.field static final TRANSACTION_onVoiceCommand:I = 0x1

.field static final TRANSACTION_onVoiceConfigChanged:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 26
    const-string v0, "com.google.glass.voice.IVoiceServiceListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/glass/voice/IVoiceServiceListener;
    .locals 2
    .parameter "obj"

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 37
    :cond_0
    const-string v1, "com.google.glass.voice.IVoiceServiceListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 38
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/glass/voice/IVoiceServiceListener;

    if-eqz v1, :cond_1

    .line 39
    check-cast v0, Lcom/google/glass/voice/IVoiceServiceListener;

    goto :goto_0

    .line 41
    :cond_1
    new-instance v0, Lcom/google/glass/voice/IVoiceServiceListener$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/glass/voice/IVoiceServiceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 45
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v5, 0x1

    .line 49
    sparse-switch p1, :sswitch_data_0

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 53
    :sswitch_0
    const-string v6, "com.google.glass.voice.IVoiceServiceListener"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :sswitch_1
    const-string v6, "com.google.glass.voice.IVoiceServiceListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 61
    sget-object v6, Lcom/google/glass/voice/VoiceCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceCommand;

    .line 66
    .local v0, _arg0:Lcom/google/glass/voice/VoiceCommand;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 64
    .end local v0           #_arg0:Lcom/google/glass/voice/VoiceCommand;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/glass/voice/VoiceCommand;
    goto :goto_1

    .line 72
    .end local v0           #_arg0:Lcom/google/glass/voice/VoiceCommand;
    :sswitch_2
    const-string v6, "com.google.glass.voice.IVoiceServiceListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 76
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 79
    .local v3, _arg2:I
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;->onAudioData([BII)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 85
    .end local v0           #_arg0:[B
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_3
    const-string v6, "com.google.glass.voice.IVoiceServiceListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 89
    .restart local v0       #_arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 91
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 92
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;->onResampledAudioData([BII)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v0           #_arg0:[B
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_4
    const-string v6, "com.google.glass.voice.IVoiceServiceListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    .line 101
    .local v0, _arg0:D
    invoke-virtual {p0, v0, v1}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;->onVoiceAmplitudeChanged(D)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 107
    .end local v0           #_arg0:D
    :sswitch_5
    const-string v6, "com.google.glass.voice.IVoiceServiceListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 110
    sget-object v6, Lcom/google/glass/voice/VoiceConfigDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 115
    .local v0, _arg0:Lcom/google/glass/voice/VoiceConfigDescriptor;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;->onVoiceConfigChanged(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 113
    .end local v0           #_arg0:Lcom/google/glass/voice/VoiceConfigDescriptor;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/google/glass/voice/VoiceConfigDescriptor;
    goto :goto_2

    .line 121
    .end local v0           #_arg0:Lcom/google/glass/voice/VoiceConfigDescriptor;
    :sswitch_6
    const-string v6, "com.google.glass.voice.IVoiceServiceListener"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/google/glass/voice/IVoiceServiceListener$Stub;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 49
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
