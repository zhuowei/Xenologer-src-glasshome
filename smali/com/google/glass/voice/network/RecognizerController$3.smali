.class Lcom/google/glass/voice/network/RecognizerController$3;
.super Ljava/lang/Object;
.source "RecognizerController.java"

# interfaces
.implements Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/RecognizerController;->getSpeechException(Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;Ljava/lang/Exception;)Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/RecognizerController;

.field final synthetic val$ex:Ljava/lang/Exception;

.field final synthetic val$type:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/RecognizerController;Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController$3;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    iput-object p2, p0, Lcom/google/glass/voice/network/RecognizerController$3;->val$type:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    iput-object p3, p0, Lcom/google/glass/voice/network/RecognizerController$3;->val$ex:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$3;->val$ex:Ljava/lang/Exception;

    return-object v0
.end method

.method public getType()Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$3;->val$type:Lcom/google/glass/voice/network/VoiceSearchUi$SpeechException$Type;

    return-object v0
.end method
