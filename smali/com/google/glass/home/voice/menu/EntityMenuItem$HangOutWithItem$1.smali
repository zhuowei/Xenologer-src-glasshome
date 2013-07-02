.class Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem$1;
.super Ljava/lang/Object;
.source "EntityMenuItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem;

.field final synthetic val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem$1;->this$0:Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem;

    iput-object p2, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 244
    new-instance v0, Lcom/google/glass/util/HangoutHelper;

    iget-object v1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-interface {v1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/util/HangoutHelper;-><init>(Landroid/content/Context;)V

    .line 245
    .local v0, hangoutHelper:Lcom/google/glass/util/HangoutHelper;
    iget-object v1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem$1;->this$0:Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem;

    iget-object v1, v1, Lcom/google/glass/home/voice/menu/EntityMenuItem$HangOutWithItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/HangoutHelper;->startHangout(Lcom/google/googlex/glass/common/proto/Entity;Z)V

    .line 246
    return-void
.end method
