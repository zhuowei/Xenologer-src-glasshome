.class final Lcom/google/glass/voice/VoiceConfig$6;
.super Lcom/google/glass/voice/VoiceConfig;
.source "VoiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceConfig;->newHybridVoiceConfig([Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$configs:[Lcom/google/glass/voice/VoiceConfig;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceConfig$Type;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/google/glass/voice/VoiceConfig;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter

    .prologue
    .line 338
    iput-object p7, p0, Lcom/google/glass/voice/VoiceConfig$6;->val$configs:[Lcom/google/glass/voice/VoiceConfig;

    invoke-direct/range {p0 .. p6}, Lcom/google/glass/voice/VoiceConfig;-><init>(Lcom/google/glass/voice/VoiceConfig$Type;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHotwordRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 3
    .parameter "context"

    .prologue
    .line 342
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig$6;->val$configs:[Lcom/google/glass/voice/VoiceConfig;

    array-length v2, v2

    new-array v1, v2, [Lcom/google/glass/voice/HotwordRecognizer;

    .line 343
    .local v1, recognizers:[Lcom/google/glass/voice/HotwordRecognizer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig$6;->val$configs:[Lcom/google/glass/voice/VoiceConfig;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/google/glass/voice/VoiceConfig$6;->val$configs:[Lcom/google/glass/voice/VoiceConfig;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/google/glass/voice/VoiceConfig;->getHotwordRecognizer(Landroid/content/Context;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_0
    new-instance v2, Lcom/google/glass/voice/HybridHotwordRecognizer;

    invoke-direct {v2, v1}, Lcom/google/glass/voice/HybridHotwordRecognizer;-><init>([Lcom/google/glass/voice/HotwordRecognizer;)V

    return-object v2
.end method
