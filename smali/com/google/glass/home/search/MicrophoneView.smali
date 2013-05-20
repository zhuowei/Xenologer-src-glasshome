.class public Lcom/google/glass/home/search/MicrophoneView;
.super Landroid/widget/RelativeLayout;
.source "MicrophoneView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/search/MicrophoneView$1;,
        Lcom/google/glass/home/search/MicrophoneView$State;
    }
.end annotation


# instance fields
.field private microphone:Landroid/widget/ImageView;

.field private soundLevels:Lcom/google/glass/home/search/BitmapSoundLevelsView;

.field private state:Lcom/google/glass/home/search/MicrophoneView$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method private refreshUi()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    sget-object v0, Lcom/google/glass/home/search/MicrophoneView$1;->$SwitchMap$com$google$glass$home$search$MicrophoneView$State:[I

    iget-object v1, p0, Lcom/google/glass/home/search/MicrophoneView;->state:Lcom/google/glass/home/search/MicrophoneView$State;

    invoke-virtual {v1}, Lcom/google/glass/home/search/MicrophoneView$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/home/search/MicrophoneView;->microphone:Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/home/R$drawable;->ic_microphone_medium:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object v0, p0, Lcom/google/glass/home/search/MicrophoneView;->soundLevels:Lcom/google/glass/home/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/home/search/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/google/glass/home/search/MicrophoneView;->soundLevels:Lcom/google/glass/home/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v4}, Lcom/google/glass/home/search/BitmapSoundLevelsView;->setVisibility(I)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/home/search/MicrophoneView;->microphone:Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/home/R$drawable;->ic_microphone_medium:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    iget-object v0, p0, Lcom/google/glass/home/search/MicrophoneView;->soundLevels:Lcom/google/glass/home/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/home/search/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/google/glass/home/search/MicrophoneView;->soundLevels:Lcom/google/glass/home/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/home/search/BitmapSoundLevelsView;->setVisibility(I)V

    goto :goto_0

    .line 90
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/home/search/MicrophoneView;->microphone:Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/home/R$drawable;->ic_microphone_medium:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v0, p0, Lcom/google/glass/home/search/MicrophoneView;->soundLevels:Lcom/google/glass/home/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v3}, Lcom/google/glass/home/search/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/google/glass/home/search/MicrophoneView;->soundLevels:Lcom/google/glass/home/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/home/search/BitmapSoundLevelsView;->setVisibility(I)V

    goto :goto_0

    .line 95
    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/home/search/MicrophoneView;->microphone:Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/home/R$drawable;->ic_microphone_medium:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget-object v0, p0, Lcom/google/glass/home/search/MicrophoneView;->soundLevels:Lcom/google/glass/home/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/home/search/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/google/glass/home/search/MicrophoneView;->soundLevels:Lcom/google/glass/home/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v4}, Lcom/google/glass/home/search/BitmapSoundLevelsView;->setVisibility(I)V

    goto :goto_0

    .line 100
    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/home/search/MicrophoneView;->microphone:Landroid/widget/ImageView;

    sget v1, Lcom/google/glass/home/R$drawable;->ic_microphone_medium:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/google/glass/home/search/MicrophoneView;->soundLevels:Lcom/google/glass/home/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/home/search/BitmapSoundLevelsView;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/google/glass/home/search/MicrophoneView;->soundLevels:Lcom/google/glass/home/search/BitmapSoundLevelsView;

    invoke-virtual {v0, v2}, Lcom/google/glass/home/search/BitmapSoundLevelsView;->setVisibility(I)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateState(Lcom/google/glass/home/search/MicrophoneView$State;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/glass/home/search/MicrophoneView;->state:Lcom/google/glass/home/search/MicrophoneView$State;

    .line 74
    invoke-direct {p0}, Lcom/google/glass/home/search/MicrophoneView;->refreshUi()V

    .line 75
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/google/glass/home/R$id;->sound_levels:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/search/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/search/BitmapSoundLevelsView;

    iput-object v0, p0, Lcom/google/glass/home/search/MicrophoneView;->soundLevels:Lcom/google/glass/home/search/BitmapSoundLevelsView;

    .line 53
    sget v0, Lcom/google/glass/home/R$id;->microphone:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/search/MicrophoneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/home/search/MicrophoneView;->microphone:Landroid/widget/ImageView;

    .line 54
    return-void
.end method

.method public setSpeechLevelSource(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/home/search/MicrophoneView;->soundLevels:Lcom/google/glass/home/search/BitmapSoundLevelsView;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/search/BitmapSoundLevelsView;->setLevelSource(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechLevelSource;)V

    .line 48
    return-void
.end method

.method public showListening()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/glass/home/search/MicrophoneView$State;->LISTENING:Lcom/google/glass/home/search/MicrophoneView$State;

    invoke-direct {p0, v0}, Lcom/google/glass/home/search/MicrophoneView;->updateState(Lcom/google/glass/home/search/MicrophoneView$State;)V

    .line 62
    return-void
.end method

.method public showNotListening()V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/glass/home/search/MicrophoneView$State;->NOT_LISTENING:Lcom/google/glass/home/search/MicrophoneView$State;

    invoke-direct {p0, v0}, Lcom/google/glass/home/search/MicrophoneView;->updateState(Lcom/google/glass/home/search/MicrophoneView$State;)V

    .line 66
    return-void
.end method

.method public showRecognizing()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/glass/home/search/MicrophoneView$State;->RECOGNIZING:Lcom/google/glass/home/search/MicrophoneView$State;

    invoke-direct {p0, v0}, Lcom/google/glass/home/search/MicrophoneView;->updateState(Lcom/google/glass/home/search/MicrophoneView$State;)V

    .line 70
    return-void
.end method

.method public showRecording()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/glass/home/search/MicrophoneView$State;->RECORDING:Lcom/google/glass/home/search/MicrophoneView$State;

    invoke-direct {p0, v0}, Lcom/google/glass/home/search/MicrophoneView;->updateState(Lcom/google/glass/home/search/MicrophoneView$State;)V

    .line 58
    return-void
.end method
