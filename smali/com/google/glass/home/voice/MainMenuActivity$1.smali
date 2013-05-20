.class Lcom/google/glass/home/voice/MainMenuActivity$1;
.super Ljava/lang/Object;
.source "MainMenuActivity.java"

# interfaces
.implements Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/MainMenuActivity;->playSoundForPendingOpenEndedInput(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/voice/MainMenuActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/MainMenuActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/glass/home/voice/MainMenuActivity$1;->this$0:Lcom/google/glass/home/voice/MainMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSoundDone(Lcom/google/glass/sound/SoundManager$SoundId;)V
    .locals 2
    .parameter "sound"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/home/voice/MainMenuActivity$1;->this$0:Lcom/google/glass/home/voice/MainMenuActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/voice/MainMenuActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 52
    return-void
.end method
