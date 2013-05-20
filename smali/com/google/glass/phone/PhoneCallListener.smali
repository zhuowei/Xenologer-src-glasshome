.class public interface abstract Lcom/google/glass/phone/PhoneCallListener;
.super Ljava/lang/Object;
.source "PhoneCallListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/phone/PhoneCallListener$SimplePhoneCallListener;
    }
.end annotation


# virtual methods
.method public abstract onCallConnected(Lcom/google/glass/phone/PhoneCall;)V
.end method

.method public abstract onCallConnecting(Lcom/google/glass/phone/PhoneCall;)V
.end method

.method public abstract onCallDisconnected(Lcom/google/glass/phone/PhoneCall;)V
.end method

.method public abstract onCallDisconnecting(Lcom/google/glass/phone/PhoneCall;)V
.end method

.method public abstract onCallError(Lcom/google/glass/phone/PhoneCall;)V
.end method

.method public abstract onCallerIdentified(Lcom/google/googlex/glass/common/proto/Entity;)V
.end method

.method public abstract onIncomingCallInitiated(Lcom/google/glass/phone/PhoneCall;Z)V
.end method

.method public abstract onListenerAdded(Lcom/google/glass/phone/PhoneCall;)V
.end method

.method public abstract onOutgoingCallInitiated(Lcom/google/glass/phone/PhoneCall;)V
.end method

.method public abstract onPhoneNumberSet(Ljava/lang/String;)V
.end method
