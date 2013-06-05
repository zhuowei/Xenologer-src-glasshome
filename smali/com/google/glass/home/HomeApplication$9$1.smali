.class Lcom/google/glass/home/HomeApplication$9$1;
.super Lcom/google/glass/net/SimpleProtoResponseHandler;
.source "HomeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/HomeApplication$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/net/SimpleProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/HomeApplication$9;

.field final synthetic val$registrationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/home/HomeApplication$9;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$9$1;->this$1:Lcom/google/glass/home/HomeApplication$9;

    iput-object p2, p0, Lcom/google/glass/home/HomeApplication$9$1;->val$registrationId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/glass/net/SimpleProtoResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$9$1;->this$1:Lcom/google/glass/home/HomeApplication$9;

    iget-object v0, v0, Lcom/google/glass/home/HomeApplication$9;->this$0:Lcom/google/glass/home/HomeApplication;

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$9$1;->val$registrationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/home/GCMIntentService;->registerWithGlassServer(Lcom/google/glass/home/HomeApplication;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;)V
    .locals 2
    .parameter "responseProto"

    .prologue
    .line 399
    sget-object v0, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->SUCCESS:Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->getResponseCode()Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse$ResponseCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$9$1;->this$1:Lcom/google/glass/home/HomeApplication$9;

    iget-object v0, v0, Lcom/google/glass/home/HomeApplication$9;->this$0:Lcom/google/glass/home/HomeApplication;

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$9$1;->val$registrationId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/home/GCMIntentService;->registerWithGlassServer(Lcom/google/glass/home/HomeApplication;Ljava/lang/String;)V

    .line 403
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 387
    check-cast p1, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/HomeApplication$9$1;->onSuccess(Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;)V

    return-void
.end method
