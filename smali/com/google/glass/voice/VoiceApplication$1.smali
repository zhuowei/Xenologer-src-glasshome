.class Lcom/google/glass/voice/VoiceApplication$1;
.super Ljava/lang/Object;
.source "VoiceApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceApplication;->enableSync(Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceApplication;

.field final synthetic val$primaryAccount:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceApplication;Landroid/accounts/Account;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/glass/voice/VoiceApplication$1;->this$0:Lcom/google/glass/voice/VoiceApplication;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceApplication$1;->val$primaryAccount:Landroid/accounts/Account;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/google/glass/voice/VoiceApplication;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enabling sync."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/google/glass/voice/VoiceApplication$1;->val$primaryAccount:Landroid/accounts/Account;

    const-string v1, "com.google.glass.savedaudio"

    invoke-static {v0, v1}, Lcom/google/glass/sync/SyncHelper;->enableSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 43
    return-void
.end method
