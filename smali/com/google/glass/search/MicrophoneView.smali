.class public Lcom/google/glass/search/MicrophoneView;
.super Landroid/widget/RelativeLayout;
.source "MicrophoneView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/search/MicrophoneView$1;,
        Lcom/google/glass/search/MicrophoneView$State;
    }
.end annotation


# instance fields
.field private microphone:Landroid/widget/ImageView;

.field private soundLevels:Lcom/google/glass/search/BitmapSoundLevelsView;

.field private state:Lcom/google/glass/search/MicrophoneView$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method private refreshUi()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    sget-object v0, Lcom/google/glass/search/MicrophoneView$1;->$SwitchMap$com$google$glass$search$MicrophoneView$State:[I

    iget-object v1, p0, Lcom/google/glass/search/MicrophoneView;->state:Lcom/google/glass/search/MicrophoneView$State;

    invoke-virtual {v1}, Lcom/google/glass/search/MicrophoneView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/search/MicrophoneView;->microphone:Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/voice/R$drawable;->ic_microphone_medium:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-object v0, p0, Lcom/google/glass/search/MicrophoneView;->soundLevels:Lcom/google/glass/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/search/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/google/glass/search/MicrophoneView;->soundLevels:Lcom/google/glass/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v4}, Lcom/google/glass/search/BitmapSoundLevelsView;->setVisibility(I)V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/search/MicrophoneView;->microphone:Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/voice/R$drawable;->ic_microphone_medium:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v0, p0, Lcom/google/glass/search/MicrophoneView;->soundLevels:Lcom/google/glass/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/search/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/google/glass/search/MicrophoneView;->soundLevels:Lcom/google/glass/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/search/BitmapSoundLevelsView;->setVisibility(I)V

    goto :goto_0

    .line 97
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/search/MicrophoneView;->microphone:Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/voice/R$drawable;->ic_microphone_medium:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    iget-object v0, p0, Lcom/google/glass/search/MicrophoneView;->soundLevels:Lcom/google/glass/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/search/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 99
    iget-object v0, p0, Lcom/google/glass/search/MicrophoneView;->soundLevels:Lcom/google/glass/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/search/BitmapSoundLevelsView;->setVisibility(I)V

    goto :goto_0

    .line 102
    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/search/MicrophoneView;->microphone:Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/voice/R$drawable;->ic_microphone_medium:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    iget-object v0, p0, Lcom/google/glass/search/MicrophoneView;->soundLevels:Lcom/google/glass/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/search/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 104
    iget-object v0, p0, Lcom/google/glass/search/MicrophoneView;->soundLevels:Lcom/google/glass/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v4}, Lcom/google/glass/search/BitmapSoundLevelsView;->setVisibility(I)V

    goto :goto_0

    .line 107
    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/search/MicrophoneView;->microphone:Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/voice/R$drawable;->ic_microphone_medium:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object v0, p0, Lcom/google/glass/search/MicrophoneView;->soundLevels:Lcom/google/glass/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/search/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/google/glass/search/MicrophoneView;->soundLevels:Lcom/google/glass/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/search/BitmapSoundLevelsView;->setVisibility(I)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateState(Lcom/google/glass/search/MicrophoneView$State;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/glass/search/MicrophoneView;->state:Lcom/google/glass/search/MicrophoneView$State;

    .line 81
    invoke-direct {p0}, Lcom/google/glass/search/MicrophoneView;->refreshUi()V

    .line 82
    return-void
.end method


# virtual methods
.method public getState()Lcom/google/glass/search/MicrophoneView$State;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/search/MicrophoneView;->state:Lcom/google/glass/search/MicrophoneView$State;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/google/glass/voice/R$id;->sound_levels:I

    invoke-virtual {p0, v0}, Lcom/google/glass/search/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/search/BitmapSoundLevelsView;

    iput-object v0, p0, Lcom/google/glass/search/MicrophoneView;->soundLevels:Lcom/google/glass/search/BitmapSoundLevelsView;

    .line 55
    sget v0, Lcom/google/glass/voice/R$id;->microphone:I

    invoke-virtual {p0, v0}, Lcom/google/glass/search/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/search/MicrophoneView;->microphone:Landroid/widget/ImageView;

    .line 56
    return-void
.end method

.method public setSpeechLevelSource(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/glass/search/MicrophoneView;->soundLevels:Lcom/google/glass/search/BitmapSoundLevelsView;

    invoke-virtual {v0, p1}, Lcom/google/glass/search/BitmapSoundLevelsView;->setLevelSource(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V

    .line 50
    return-void
.end method

.method public showListening()V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/glass/search/MicrophoneView$State;->LISTENING:Lcom/google/glass/search/MicrophoneView$State;

    invoke-direct {p0, v0}, Lcom/google/glass/search/MicrophoneView;->updateState(Lcom/google/glass/search/MicrophoneView$State;)V

    .line 64
    return-void
.end method

.method public showNotListening()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/glass/search/MicrophoneView$State;->NOT_LISTENING:Lcom/google/glass/search/MicrophoneView$State;

    invoke-direct {p0, v0}, Lcom/google/glass/search/MicrophoneView;->updateState(Lcom/google/glass/search/MicrophoneView$State;)V

    .line 68
    return-void
.end method

.method public showRecognizing()V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/glass/search/MicrophoneView$State;->RECOGNIZING:Lcom/google/glass/search/MicrophoneView$State;

    invoke-direct {p0, v0}, Lcom/google/glass/search/MicrophoneView;->updateState(Lcom/google/glass/search/MicrophoneView$State;)V

    .line 72
    return-void
.end method

.method public showRecording()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/glass/search/MicrophoneView$State;->RECORDING:Lcom/google/glass/search/MicrophoneView$State;

    invoke-direct {p0, v0}, Lcom/google/glass/search/MicrophoneView;->updateState(Lcom/google/glass/search/MicrophoneView$State;)V

    .line 60
    return-void
.end method
