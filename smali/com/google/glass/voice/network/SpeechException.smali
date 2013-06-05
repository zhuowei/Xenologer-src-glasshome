.class public final Lcom/google/glass/voice/network/SpeechException;
.super Ljava/lang/Object;
.source "SpeechException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/SpeechException$Type;
    }
.end annotation


# instance fields
.field private final detail:Ljava/lang/String;

.field private final simpleName:Ljava/lang/String;

.field private final type:Lcom/google/glass/voice/network/SpeechException$Type;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/network/SpeechException$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "simpleName"
    .parameter "detail"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/glass/voice/network/SpeechException;->type:Lcom/google/glass/voice/network/SpeechException$Type;

    .line 27
    iput-object p2, p0, Lcom/google/glass/voice/network/SpeechException;->simpleName:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/google/glass/voice/network/SpeechException;->detail:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->detail:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->simpleName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/google/glass/voice/network/SpeechException$Type;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/glass/voice/network/SpeechException;->type:Lcom/google/glass/voice/network/SpeechException$Type;

    return-object v0
.end method
