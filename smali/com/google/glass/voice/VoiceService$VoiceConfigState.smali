.class Lcom/google/glass/voice/VoiceService$VoiceConfigState;
.super Ljava/lang/Object;
.source "VoiceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VoiceConfigState"
.end annotation


# instance fields
.field private final allowScreenOff:Z

.field private final config:Lcom/google/glass/voice/VoiceConfig;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/VoiceConfig;Z)V
    .locals 0
    .parameter "config"
    .parameter "allowScreenOff"

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p1, p0, Lcom/google/glass/voice/VoiceService$VoiceConfigState;->config:Lcom/google/glass/voice/VoiceConfig;

    .line 358
    iput-boolean p2, p0, Lcom/google/glass/voice/VoiceService$VoiceConfigState;->allowScreenOff:Z

    .line 359
    return-void
.end method

.method static synthetic access$1900(Lcom/google/glass/voice/VoiceService$VoiceConfigState;)Lcom/google/glass/voice/VoiceConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService$VoiceConfigState;->config:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/glass/voice/VoiceService$VoiceConfigState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceService$VoiceConfigState;->allowScreenOff:Z

    return v0
.end method
