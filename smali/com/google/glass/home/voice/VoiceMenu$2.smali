.class Lcom/google/glass/home/voice/VoiceMenu$2;
.super Ljava/lang/Object;
.source "VoiceMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/VoiceMenu;->selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/VoiceMenu;

.field final synthetic val$menuItems:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/VoiceMenu;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/glass/home/voice/VoiceMenu$2;->this$0:Lcom/google/glass/home/voice/VoiceMenu;

    iput-object p2, p0, Lcom/google/glass/home/voice/VoiceMenu$2;->val$menuItems:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu$2;->this$0:Lcom/google/glass/home/voice/VoiceMenu;

    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu$2;->val$menuItems:Ljava/util/List;

    #calls: Lcom/google/glass/home/voice/VoiceMenu;->showSecondaryMenu(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/google/glass/home/voice/VoiceMenu;->access$200(Lcom/google/glass/home/voice/VoiceMenu;Ljava/util/List;)V

    .line 194
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu$2;->this$0:Lcom/google/glass/home/voice/VoiceMenu;

    #getter for: Lcom/google/glass/home/voice/VoiceMenu;->voiceMenuListener:Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;
    invoke-static {v0}, Lcom/google/glass/home/voice/VoiceMenu;->access$300(Lcom/google/glass/home/voice/VoiceMenu;)Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu$2;->this$0:Lcom/google/glass/home/voice/VoiceMenu;

    #getter for: Lcom/google/glass/home/voice/VoiceMenu;->voiceMenuListener:Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;
    invoke-static {v0}, Lcom/google/glass/home/voice/VoiceMenu;->access$300(Lcom/google/glass/home/voice/VoiceMenu;)Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;->onShowSecondaryMenu()V

    .line 197
    :cond_0
    return-void
.end method
