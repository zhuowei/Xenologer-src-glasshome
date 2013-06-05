.class Lcom/google/glass/voice/network/PinholePage$ElementExtraction;
.super Ljava/lang/Object;
.source "PinholePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/PinholePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ElementExtraction"
.end annotation


# instance fields
.field private domDepth:I

.field private final extractedHtml:Ljava/lang/StringBuilder;

.field private recording:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->extractedHtml:Ljava/lang/StringBuilder;

    .line 413
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->domDepth:I

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->recording:Z

    .line 417
    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/voice/network/PinholePage$ElementExtraction;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->extractedHtml:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/voice/network/PinholePage$ElementExtraction;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->recording:Z

    return v0
.end method


# virtual methods
.method public characters(Ljava/lang/String;)V
    .locals 1
    .parameter "cdata"

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->recording:Z

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->extractedHtml:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_0
    return-void
.end method

.method public endTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "endTag"

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->recording:Z

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->extractedHtml:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    iget v0, p0, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->domDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->domDepth:I

    .line 430
    iget v0, p0, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->domDepth:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->recording:Z

    .line 432
    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->recording:Z

    return v0

    .line 430
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startTag(Ljava/lang/String;)V
    .locals 1
    .parameter "startTag"

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->recording:Z

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->extractedHtml:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget v0, p0, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->domDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->domDepth:I

    .line 424
    :cond_0
    return-void
.end method
