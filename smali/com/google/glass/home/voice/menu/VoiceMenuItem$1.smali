.class Lcom/google/glass/home/voice/menu/VoiceMenuItem$1;
.super Ljava/lang/Object;
.source "VoiceMenuItem.java"

# interfaces
.implements Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/VoiceMenuItem;->playTriggerSounds(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currentSoundIndex:I

.field final synthetic this$0:Lcom/google/glass/home/voice/menu/VoiceMenuItem;

.field final synthetic val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

.field final synthetic val$sounds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/util/List;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem$1;->this$0:Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    iput-object p2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem$1;->val$sounds:Ljava/util/List;

    iput-object p3, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem$1;->currentSoundIndex:I

    return-void
.end method


# virtual methods
.method public onSoundDone(Lcom/google/glass/sound/SoundManager$SoundId;)V
    .locals 3
    .parameter "sound"

    .prologue
    .line 120
    iget v0, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem$1;->currentSoundIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem$1;->currentSoundIndex:I

    .line 121
    iget v0, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem$1;->currentSoundIndex:I

    iget-object v1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem$1;->val$sounds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem$1;->val$environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    iget-object v0, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem$1;->val$sounds:Ljava/util/List;

    iget v2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuItem$1;->currentSoundIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-interface {v1, v0, p0}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager$OnSoundDoneListener;)V

    goto :goto_0
.end method
