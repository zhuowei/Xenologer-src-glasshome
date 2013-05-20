.class public Lcom/google/glass/phone/PhoneCallListener$SimplePhoneCallListener;
.super Ljava/lang/Object;
.source "PhoneCallListener.java"

# interfaces
.implements Lcom/google/glass/phone/PhoneCallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/phone/PhoneCallListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimplePhoneCallListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallConnected(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 100
    return-void
.end method

.method public onCallConnecting(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 97
    return-void
.end method

.method public onCallDisconnected(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 106
    return-void
.end method

.method public onCallDisconnecting(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 103
    return-void
.end method

.method public onCallError(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 109
    return-void
.end method

.method public onCallerIdentified(Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 0
    .parameter "caller"

    .prologue
    .line 115
    return-void
.end method

.method public onIncomingCallInitiated(Lcom/google/glass/phone/PhoneCall;Z)V
    .locals 0
    .parameter "call"
    .parameter "localRingtone"

    .prologue
    .line 91
    return-void
.end method

.method public onListenerAdded(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 118
    return-void
.end method

.method public onOutgoingCallInitiated(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 94
    return-void
.end method

.method public onPhoneNumberSet(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneNumber"

    .prologue
    .line 112
    return-void
.end method
