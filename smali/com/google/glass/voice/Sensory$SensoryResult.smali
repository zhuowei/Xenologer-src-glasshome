.class public Lcom/google/glass/voice/Sensory$SensoryResult;
.super Ljava/lang/Object;
.source "Sensory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/Sensory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SensoryResult"
.end annotation


# instance fields
.field final literal:Ljava/lang/String;

.field final score:F

.field final wordAlignment:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;FLjava/lang/String;)V
    .locals 0
    .parameter "literal"
    .parameter "score"
    .parameter "wordAlignment"

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/google/glass/voice/Sensory$SensoryResult;->literal:Ljava/lang/String;

    .line 297
    iput p2, p0, Lcom/google/glass/voice/Sensory$SensoryResult;->score:F

    .line 298
    iput-object p3, p0, Lcom/google/glass/voice/Sensory$SensoryResult;->wordAlignment:Ljava/lang/String;

    .line 299
    return-void
.end method
