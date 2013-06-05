.class Lcom/google/glass/location/CompanionLocationProxy$1;
.super Landroid/os/Handler;
.source "CompanionLocationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/location/CompanionLocationProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/location/CompanionLocationProxy;


# direct methods
.method constructor <init>(Lcom/google/glass/location/CompanionLocationProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/glass/location/CompanionLocationProxy$1;->this$0:Lcom/google/glass/location/CompanionLocationProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 27
    invoke-static {p1}, Lcom/google/glass/companion/CompanionMessagingUtil;->getEnvelope(Landroid/os/Message;)Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v0

    .line 29
    .local v0, envelope:Lcom/google/glass/companion/Proto$Envelope;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->hasLocationMessageC2G()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Envelope;->getLocationMessageC2G()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v1

    .line 31
    .local v1, message:Lcom/google/glass/companion/Proto$LocationMessage;
    iget-object v2, p0, Lcom/google/glass/location/CompanionLocationProxy$1;->this$0:Lcom/google/glass/location/CompanionLocationProxy;

    #getter for: Lcom/google/glass/location/CompanionLocationProxy;->locationListener:Landroid/location/LocationListener;
    invoke-static {v2}, Lcom/google/glass/location/CompanionLocationProxy;->access$000(Lcom/google/glass/location/CompanionLocationProxy;)Landroid/location/LocationListener;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/location/LocationDelivery;->deliver(Lcom/google/glass/companion/Proto$LocationMessage;Landroid/location/LocationListener;)V

    .line 35
    .end local v1           #message:Lcom/google/glass/companion/Proto$LocationMessage;
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-static {}, Lcom/google/glass/location/CompanionLocationProxy;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can\'t handle envelope"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
