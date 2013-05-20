.class final Lcom/google/glass/voice/VoiceConfig$4;
.super Lcom/google/glass/voice/VoiceConfig;
.source "VoiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceConfig;->newCustomVoiceConfig(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$phrases:[Ljava/lang/String;

.field final synthetic val$tags:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceConfig$Type;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p7, p0, Lcom/google/glass/voice/VoiceConfig$4;->val$phrases:[Ljava/lang/String;

    iput-object p8, p0, Lcom/google/glass/voice/VoiceConfig$4;->val$tags:[Ljava/lang/String;

    invoke-direct/range {p0 .. p6}, Lcom/google/glass/voice/VoiceConfig;-><init>(Lcom/google/glass/voice/VoiceConfig$Type;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/Sensory;
    .locals 3
    .parameter "context"

    .prologue
    .line 226
    new-instance v0, Lcom/google/glass/voice/DynamicSensoryRecognizer;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceConfig$4;->val$phrases:[Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig$4;->val$tags:[Ljava/lang/String;

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/google/glass/voice/DynamicSensoryRecognizer;-><init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
