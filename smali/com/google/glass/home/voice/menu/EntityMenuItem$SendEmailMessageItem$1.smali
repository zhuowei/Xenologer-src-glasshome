.class Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem$1;
.super Ljava/lang/Object;
.source "EntityMenuItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem;

.field final synthetic val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

.field final synthetic val$spoken:Z


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem$1;->this$0:Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem;

    iput-object p2, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    iput-boolean p3, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem$1;->val$spoken:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    iget-boolean v1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem$1;->val$spoken:Z

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem$1;->this$0:Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem;

    iget-object v3, v3, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem$1;->this$0:Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem;

    iget-object v4, v4, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendEmailMessageItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/google/glass/home/voice/menu/EntityMenuItem;->sendMessage(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->access$200(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZILjava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method
