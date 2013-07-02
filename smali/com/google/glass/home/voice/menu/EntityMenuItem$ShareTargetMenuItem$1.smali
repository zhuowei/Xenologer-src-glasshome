.class Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;
.super Ljava/lang/Object;
.source "EntityMenuItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;

.field final synthetic val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;->this$0:Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;

    iput-object p2, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 273
    iget-object v3, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;->this$0:Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;

    invoke-virtual {v3}, Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;->getEntity()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    .line 274
    .local v1, shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    sget-object v3, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;->this$0:Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;

    #getter for: Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v4}, Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;->access$300(Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 277
    .local v2, timelineItemUri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-interface {v4}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v4

    const-class v5, Lcom/google/glass/share/ShareActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.intent.action.EDIT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 280
    .local v0, shareMenuIntent:Landroid/content/Intent;
    const-string v3, "item_id"

    new-instance v4, Lcom/google/glass/timeline/TimelineItemId;

    iget-object v5, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;->this$0:Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;

    #getter for: Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v5}, Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;->access$300(Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 282
    const-string v3, "update_timeline_share"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    const-string v3, "voice_annotation"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    const-string v3, "chosen_share_target"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 285
    iget-object v3, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$ShareTargetMenuItem$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-interface {v3}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/google/glass/app/GlassActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 286
    return-void
.end method
