.class Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$2;
.super Ljava/lang/Object;
.source "EntityMenuItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem;

.field final synthetic val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

.field final synthetic val$messageType:I

.field final synthetic val$spoken:Z

.field final synthetic val$toId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$2;->this$0:Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem;

    iput-object p2, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$2;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    iput-boolean p3, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$2;->val$spoken:Z

    iput p4, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$2;->val$messageType:I

    iput-object p5, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$2;->val$toId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$2;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    iget-boolean v1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$2;->val$spoken:Z

    iget v2, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$2;->val$messageType:I

    iget-object v3, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$2;->val$toId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem$2;->this$0:Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem;

    iget-object v4, v4, Lcom/google/glass/home/voice/menu/EntityMenuItem$SendSmsWithEmailFallbackItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/google/glass/home/voice/menu/EntityMenuItem;->sendMessage(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->access$200(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZILjava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method
