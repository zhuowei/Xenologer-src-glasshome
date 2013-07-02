.class public Lcom/google/glass/phone/SimplePhoneCallListener;
.super Lcom/google/glass/phone/IPhoneCallListener$Stub;
.source "SimplePhoneCallListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/glass/phone/IPhoneCallListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallConnected(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 22
    return-void
.end method

.method public onCallConnecting(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 19
    return-void
.end method

.method public onCallDisconnected(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 28
    return-void
.end method

.method public onCallDisconnecting(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 25
    return-void
.end method

.method public onCallError(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 31
    return-void
.end method

.method public final onCallerIdentified(Lcom/google/glass/phone/PhoneCall;[B)V
    .locals 2
    .parameter "call"
    .parameter "caller"

    .prologue
    .line 40
    :try_start_0
    invoke-static {p2}, Lcom/google/googlex/glass/common/proto/Entity;->parseFrom([B)Lcom/google/googlex/glass/common/proto/Entity;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 44
    .local v1, entity:Lcom/google/googlex/glass/common/proto/Entity;
    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/glass/phone/SimplePhoneCallListener;->onCallerIdentified(Lcom/google/googlex/glass/common/proto/Entity;)V

    .line 45
    return-void

    .line 41
    .end local v1           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    const/4 v1, 0x0

    .restart local v1       #entity:Lcom/google/googlex/glass/common/proto/Entity;
    goto :goto_0
.end method

.method public onCallerIdentified(Lcom/google/googlex/glass/common/proto/Entity;)V
    .locals 0
    .parameter "caller"

    .prologue
    .line 47
    return-void
.end method

.method public onIncomingCallInitiated(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 13
    return-void
.end method

.method public onOutgoingCallInitiated(Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 16
    return-void
.end method

.method public onPhoneNumberSet(Lcom/google/glass/phone/PhoneCall;Ljava/lang/String;)V
    .locals 0
    .parameter "call"
    .parameter "phoneNumber"

    .prologue
    .line 34
    return-void
.end method
