.class Lcom/google/glass/timeline/TimelineOptionsHelper$6;
.super Ljava/lang/Object;
.source "TimelineOptionsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineOptionsHelper;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

.field final synthetic val$speakExtraContext:Z

.field final synthetic val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 945
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    iput-object p2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    iput-boolean p3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->val$speakExtraContext:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 950
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    iget-boolean v3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->val$speakExtraContext:Z

    invoke-static {v1, v2, v3}, Lcom/google/glass/timeline/TimelineHelper;->formatSpeakableText(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, textToSynthesize:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 953
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper$6;->this$0:Lcom/google/glass/timeline/TimelineOptionsHelper;

    #getter for: Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;
    invoke-static {v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/app/GlassApplication;->speakText(Ljava/lang/String;)V

    .line 955
    :cond_0
    return-void
.end method
