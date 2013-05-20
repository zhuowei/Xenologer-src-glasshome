.class public Lcom/google/glass/voice/VoiceCommandRecognitionResult;
.super Ljava/lang/Object;
.source "VoiceCommandRecognitionResult.java"


# instance fields
.field private final recognizedCommand:Lcom/google/glass/voice/VoiceCommand;

.field private final sensoryResult:Lcom/google/glass/voice/SensoryResult;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/VoiceCommand;Lcom/google/glass/voice/SensoryResult;)V
    .locals 0
    .parameter "recognizedCommand"
    .parameter "sensoryResult"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/google/glass/voice/VoiceCommandRecognitionResult;->recognizedCommand:Lcom/google/glass/voice/VoiceCommand;

    .line 13
    iput-object p2, p0, Lcom/google/glass/voice/VoiceCommandRecognitionResult;->sensoryResult:Lcom/google/glass/voice/SensoryResult;

    .line 14
    return-void
.end method


# virtual methods
.method public getRecognizedCommand()Lcom/google/glass/voice/VoiceCommand;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandRecognitionResult;->recognizedCommand:Lcom/google/glass/voice/VoiceCommand;

    return-object v0
.end method

.method public getSensoryResult()Lcom/google/glass/voice/SensoryResult;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandRecognitionResult;->sensoryResult:Lcom/google/glass/voice/SensoryResult;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceCommandRecognitionResult [recognizedCommand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceCommandRecognitionResult;->recognizedCommand:Lcom/google/glass/voice/VoiceCommand;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sensoryResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceCommandRecognitionResult;->sensoryResult:Lcom/google/glass/voice/SensoryResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
