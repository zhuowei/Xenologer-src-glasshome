.class Lcom/google/glass/home/GCMIntentService$1$1;
.super Lcom/google/glass/net/SimpleProtoResponseHandler;
.source "GCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/GCMIntentService$1;->onPostExecute(Landroid/util/Pair;)V
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
.field final synthetic this$0:Lcom/google/glass/home/GCMIntentService$1;


# direct methods
.method constructor <init>(Lcom/google/glass/home/GCMIntentService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/glass/home/GCMIntentService$1$1;->this$0:Lcom/google/glass/home/GCMIntentService$1;

    invoke-direct {p0}, Lcom/google/glass/net/SimpleProtoResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 202
    sget-object v0, Lcom/google/glass/home/GCMIntentService$2;->$SwitchMap$com$google$googlex$glass$common$proto$ResponseWrapper$ErrorCode:[I

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ResponseWrapper$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 209
    :goto_0
    return-void

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/home/GCMIntentService$1$1;->this$0:Lcom/google/glass/home/GCMIntentService$1;

    iget-object v0, v0, Lcom/google/glass/home/GCMIntentService$1;->val$application:Lcom/google/glass/home/HomeApplication;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "retry_gcm_register"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/home/HomeApplication;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
