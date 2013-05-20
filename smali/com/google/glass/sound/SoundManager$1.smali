.class Lcom/google/glass/sound/SoundManager$1;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sound/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sound/SoundManager;


# direct methods
.method constructor <init>(Lcom/google/glass/sound/SoundManager;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/glass/sound/SoundManager$1;->this$0:Lcom/google/glass/sound/SoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager$1;->this$0:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$ConnectionState;->CONNECTED:Lcom/google/glass/sound/SoundManager$ConnectionState;

    iput-object v1, v0, Lcom/google/glass/sound/SoundManager;->connectionState:Lcom/google/glass/sound/SoundManager$ConnectionState;

    .line 188
    invoke-static {}, Lcom/google/glass/sound/SoundManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service connected, connection state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/sound/SoundManager$1;->this$0:Lcom/google/glass/sound/SoundManager;

    iget-object v2, v2, Lcom/google/glass/sound/SoundManager;->connectionState:Lcom/google/glass/sound/SoundManager$ConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager$1;->this$0:Lcom/google/glass/sound/SoundManager;

    invoke-static {p2}, Lcom/google/glass/sound/ISoundManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/sound/ISoundManagerService;

    move-result-object v1

    #setter for: Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;
    invoke-static {v0, v1}, Lcom/google/glass/sound/SoundManager;->access$102(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/ISoundManagerService;)Lcom/google/glass/sound/ISoundManagerService;

    .line 190
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager$1;->this$0:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$ConnectionState;->DISCONNECTED:Lcom/google/glass/sound/SoundManager$ConnectionState;

    iput-object v1, v0, Lcom/google/glass/sound/SoundManager;->connectionState:Lcom/google/glass/sound/SoundManager$ConnectionState;

    .line 195
    invoke-static {}, Lcom/google/glass/sound/SoundManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service disconnected, connection state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/sound/SoundManager$1;->this$0:Lcom/google/glass/sound/SoundManager;

    iget-object v2, v2, Lcom/google/glass/sound/SoundManager;->connectionState:Lcom/google/glass/sound/SoundManager$ConnectionState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/google/glass/sound/SoundManager$1;->this$0:Lcom/google/glass/sound/SoundManager;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/sound/SoundManager;->soundManagerService:Lcom/google/glass/sound/ISoundManagerService;
    invoke-static {v0, v1}, Lcom/google/glass/sound/SoundManager;->access$102(Lcom/google/glass/sound/SoundManager;Lcom/google/glass/sound/ISoundManagerService;)Lcom/google/glass/sound/ISoundManagerService;

    .line 197
    return-void
.end method
