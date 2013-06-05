.class Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem$1;
.super Ljava/lang/Object;
.source "EntityMenuItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem;

.field final synthetic val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem$1;->this$0:Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem;

    iput-object p2, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-interface {v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem$1;->this$0:Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem;

    iget-object v1, v1, Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/bluetooth/BluetoothHeadset;->attemptDial(Lcom/google/glass/app/GlassActivity;Ljava/lang/String;)Z

    .line 120
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/EntityMenuItem$CallEntityItem$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-interface {v0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->showProgressBar()V

    .line 121
    return-void
.end method
