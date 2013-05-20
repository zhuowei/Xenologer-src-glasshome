.class Lcom/google/glass/timeline/TimelineOptionsHelper$5;
.super Ljava/lang/Object;
.source "TimelineOptionsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineOptionsHelper;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

.field final synthetic val$uriStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 832
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->val$uriStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 835
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->getSharedInstance()Lcom/google/glass/voice/network/translate/NetworkTts;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$5;->val$uriStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/translate/NetworkTts;->requestTtsAndPlay(Ljava/lang/String;)Z

    .line 836
    return-void
.end method
