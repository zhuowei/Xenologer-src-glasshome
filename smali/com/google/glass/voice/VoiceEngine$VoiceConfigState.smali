.class Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;
.super Ljava/lang/Object;
.source "VoiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VoiceConfigState"
.end annotation


# instance fields
.field private final allowScreenOff:Z

.field private final config:Lcom/google/glass/voice/VoiceConfigDescriptor;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/VoiceConfigDescriptor;Z)V
    .locals 0
    .parameter "config"
    .parameter "allowScreenOff"

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;->config:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 330
    iput-boolean p2, p0, Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;->allowScreenOff:Z

    .line 331
    return-void
.end method

.method static synthetic access$1400(Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;)Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;->config:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceEngine$VoiceConfigState;->allowScreenOff:Z

    return v0
.end method
