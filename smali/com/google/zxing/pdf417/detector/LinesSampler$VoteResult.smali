.class Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;
.super Ljava/lang/Object;
.source "LinesSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/pdf417/detector/LinesSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VoteResult"
.end annotation


# instance fields
.field private indecisive:Z

.field private vote:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/pdf417/detector/LinesSampler$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;-><init>()V

    return-void
.end method


# virtual methods
.method getVote()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;->vote:I

    return v0
.end method

.method isIndecisive()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;->indecisive:Z

    return v0
.end method

.method setIndecisive(Z)V
    .locals 0
    .parameter "indecisive"

    .prologue
    .line 536
    iput-boolean p1, p0, Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;->indecisive:Z

    .line 537
    return-void
.end method

.method setVote(I)V
    .locals 0
    .parameter "vote"

    .prologue
    .line 542
    iput p1, p0, Lcom/google/zxing/pdf417/detector/LinesSampler$VoteResult;->vote:I

    .line 543
    return-void
.end method
