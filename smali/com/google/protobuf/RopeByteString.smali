.class Lcom/google/protobuf/RopeByteString;
.super Lcom/google/protobuf/ByteString;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/RopeByteString$1;,
        Lcom/google/protobuf/RopeByteString$RopeInputStream;,
        Lcom/google/protobuf/RopeByteString$RopeByteIterator;,
        Lcom/google/protobuf/RopeByteString$PieceIterator;,
        Lcom/google/protobuf/RopeByteString$Balancer;
    }
.end annotation


# static fields
.field private static final minLengthByDepth:[I


# instance fields
.field private hash:I

.field private final left:Lcom/google/protobuf/ByteString;

.field private final leftLength:I

.field private final right:Lcom/google/protobuf/ByteString;

.field private final totalLength:I

.field private final treeDepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v3, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    .line 66
    .local v0, f1:I
    const/4 v1, 0x1

    .line 69
    .local v1, f2:I
    :goto_0
    if-lez v1, :cond_0

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int v4, v0, v1

    .line 72
    .local v4, temp:I
    move v0, v1

    .line 73
    move v1, v4

    .line 74
    goto :goto_0

    .line 78
    .end local v4           #temp:I
    :cond_0
    const v5, 0x7fffffff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    sput-object v5, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    .line 80
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v5, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 82
    sget-object v6, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v6, v2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 84
    :cond_1
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V
    .locals 2
    .parameter "left"
    .parameter "right"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/protobuf/ByteString;-><init>()V

    .line 501
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    .line 102
    iput-object p1, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    .line 103
    iput-object p2, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    .line 104
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    .line 105
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    .line 106
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/RopeByteString;->treeDepth:I

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/protobuf/RopeByteString;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method static concatenate(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 9
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v6, 0x0

    const/16 v8, 0x80

    .line 125
    instance-of v5, p0, Lcom/google/protobuf/RopeByteString;

    if-eqz v5, :cond_0

    move-object v5, p0

    check-cast v5, Lcom/google/protobuf/RopeByteString;

    move-object v0, v5

    .line 127
    .local v0, leftRope:Lcom/google/protobuf/RopeByteString;
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 128
    move-object v4, p0

    .line 173
    .local v4, result:Lcom/google/protobuf/ByteString;
    :goto_1
    return-object v4

    .end local v0           #leftRope:Lcom/google/protobuf/RopeByteString;
    .end local v4           #result:Lcom/google/protobuf/ByteString;
    :cond_0
    move-object v0, v6

    .line 125
    goto :goto_0

    .line 129
    .restart local v0       #leftRope:Lcom/google/protobuf/RopeByteString;
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 130
    move-object v4, p1

    .restart local v4       #result:Lcom/google/protobuf/ByteString;
    goto :goto_1

    .line 132
    .end local v4           #result:Lcom/google/protobuf/ByteString;
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v7

    add-int v2, v5, v7

    .line 133
    .local v2, newLength:I
    if-ge v2, v8, :cond_3

    .line 136
    invoke-static {p0, p1}, Lcom/google/protobuf/RopeByteString;->concatenateBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/LiteralByteString;

    move-result-object v4

    .restart local v4       #result:Lcom/google/protobuf/ByteString;
    goto :goto_1

    .line 137
    .end local v4           #result:Lcom/google/protobuf/ByteString;
    :cond_3
    if-eqz v0, :cond_4

    iget-object v5, v0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v7

    add-int/2addr v5, v7

    if-ge v5, v8, :cond_4

    .line 149
    iget-object v5, v0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-static {v5, p1}, Lcom/google/protobuf/RopeByteString;->concatenateBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/LiteralByteString;

    move-result-object v3

    .line 150
    .local v3, newRight:Lcom/google/protobuf/ByteString;
    new-instance v4, Lcom/google/protobuf/RopeByteString;

    iget-object v5, v0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-direct {v4, v5, v3}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    .line 151
    .restart local v4       #result:Lcom/google/protobuf/ByteString;
    goto :goto_1

    .end local v3           #newRight:Lcom/google/protobuf/ByteString;
    .end local v4           #result:Lcom/google/protobuf/ByteString;
    :cond_4
    if-eqz v0, :cond_5

    iget-object v5, v0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v5

    iget-object v7, v0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v7

    if-le v5, v7, :cond_5

    invoke-virtual {v0}, Lcom/google/protobuf/RopeByteString;->getTreeDepth()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v7

    if-le v5, v7, :cond_5

    .line 159
    new-instance v3, Lcom/google/protobuf/RopeByteString;

    iget-object v5, v0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-direct {v3, v5, p1}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    .line 160
    .restart local v3       #newRight:Lcom/google/protobuf/ByteString;
    new-instance v4, Lcom/google/protobuf/RopeByteString;

    iget-object v5, v0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-direct {v4, v5, v3}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    .line 161
    .restart local v4       #result:Lcom/google/protobuf/ByteString;
    goto :goto_1

    .line 164
    .end local v3           #newRight:Lcom/google/protobuf/ByteString;
    .end local v4           #result:Lcom/google/protobuf/ByteString;
    :cond_5
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v5

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->getTreeDepth()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 165
    .local v1, newDepth:I
    sget-object v5, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    aget v5, v5, v1

    if-lt v2, v5, :cond_6

    .line 167
    new-instance v4, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v4, p0, p1}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    .restart local v4       #result:Lcom/google/protobuf/ByteString;
    goto :goto_1

    .line 169
    .end local v4           #result:Lcom/google/protobuf/ByteString;
    :cond_6
    new-instance v5, Lcom/google/protobuf/RopeByteString$Balancer;

    invoke-direct {v5, v6}, Lcom/google/protobuf/RopeByteString$Balancer;-><init>(Lcom/google/protobuf/RopeByteString$1;)V

    #calls: Lcom/google/protobuf/RopeByteString$Balancer;->balance(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    invoke-static {v5, p0, p1}, Lcom/google/protobuf/RopeByteString$Balancer;->access$100(Lcom/google/protobuf/RopeByteString$Balancer;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v4

    .restart local v4       #result:Lcom/google/protobuf/ByteString;
    goto/16 :goto_1
.end method

.method private static concatenateBytes(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/LiteralByteString;
    .locals 5
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v4, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    .line 187
    .local v1, leftSize:I
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    .line 188
    .local v2, rightSize:I
    add-int v3, v1, v2

    new-array v0, v3, [B

    .line 189
    .local v0, bytes:[B
    invoke-virtual {p0, v0, v4, v4, v1}, Lcom/google/protobuf/ByteString;->copyTo([BIII)V

    .line 190
    invoke-virtual {p1, v0, v4, v1, v2}, Lcom/google/protobuf/ByteString;->copyTo([BIII)V

    .line 191
    new-instance v3, Lcom/google/protobuf/LiteralByteString;

    invoke-direct {v3, v0}, Lcom/google/protobuf/LiteralByteString;-><init>([B)V

    return-object v3
.end method

.method private equalsFragments(Lcom/google/protobuf/ByteString;)Z
    .locals 12
    .parameter "other"

    .prologue
    const/4 v11, 0x0

    .line 451
    const/4 v8, 0x0

    .line 452
    .local v8, thisOffset:I
    new-instance v7, Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v7, p0, v11}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    .line 453
    .local v7, thisIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/protobuf/LiteralByteString;>;"
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/protobuf/LiteralByteString;

    .line 455
    .local v10, thisString:Lcom/google/protobuf/LiteralByteString;
    const/4 v4, 0x0

    .line 456
    .local v4, thatOffset:I
    new-instance v3, Lcom/google/protobuf/RopeByteString$PieceIterator;

    invoke-direct {v3, p1, v11}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    .line 457
    .local v3, thatIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/protobuf/LiteralByteString;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/LiteralByteString;

    .line 459
    .local v6, thatString:Lcom/google/protobuf/LiteralByteString;
    const/4 v1, 0x0

    .line 461
    .local v1, pos:I
    :goto_0
    invoke-virtual {v10}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v11

    sub-int v9, v11, v8

    .line 462
    .local v9, thisRemaining:I
    invoke-virtual {v6}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v11

    sub-int v5, v11, v4

    .line 463
    .local v5, thatRemaining:I
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 466
    .local v0, bytesToCompare:I
    if-nez v8, :cond_0

    invoke-virtual {v10, v6, v4, v0}, Lcom/google/protobuf/LiteralByteString;->equalsRange(Lcom/google/protobuf/LiteralByteString;II)Z

    move-result v2

    .line 469
    .local v2, stillEqual:Z
    :goto_1
    if-nez v2, :cond_1

    .line 470
    const/4 v11, 0x0

    .line 476
    :goto_2
    return v11

    .line 466
    .end local v2           #stillEqual:Z
    :cond_0
    invoke-virtual {v6, v10, v8, v0}, Lcom/google/protobuf/LiteralByteString;->equalsRange(Lcom/google/protobuf/LiteralByteString;II)Z

    move-result v2

    goto :goto_1

    .line 473
    .restart local v2       #stillEqual:Z
    :cond_1
    add-int/2addr v1, v0

    .line 474
    iget v11, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-lt v1, v11, :cond_3

    .line 475
    iget v11, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-ne v1, v11, :cond_2

    .line 476
    const/4 v11, 0x1

    goto :goto_2

    .line 478
    :cond_2
    new-instance v11, Ljava/lang/IllegalStateException;

    invoke-direct {v11}, Ljava/lang/IllegalStateException;-><init>()V

    throw v11

    .line 481
    :cond_3
    if-ne v0, v9, :cond_4

    .line 482
    const/4 v8, 0x0

    .line 483
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #thisString:Lcom/google/protobuf/LiteralByteString;
    check-cast v10, Lcom/google/protobuf/LiteralByteString;

    .line 487
    .restart local v10       #thisString:Lcom/google/protobuf/LiteralByteString;
    :goto_3
    if-ne v0, v5, :cond_5

    .line 488
    const/4 v4, 0x0

    .line 489
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #thatString:Lcom/google/protobuf/LiteralByteString;
    check-cast v6, Lcom/google/protobuf/LiteralByteString;

    .restart local v6       #thatString:Lcom/google/protobuf/LiteralByteString;
    goto :goto_0

    .line 485
    :cond_4
    add-int/2addr v8, v0

    goto :goto_3

    .line 491
    :cond_5
    add-int/2addr v4, v0

    goto :goto_0
.end method

.method static newInstanceForTest(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/RopeByteString;
    .locals 1
    .parameter "left"
    .parameter "right"

    .prologue
    .line 206
    new-instance v0, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v0, p0, p1}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    return-object v0
.end method


# virtual methods
.method public asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 354
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public asReadOnlyByteBufferList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    new-instance v1, Lcom/google/protobuf/RopeByteString$PieceIterator;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protobuf/RopeByteString$PieceIterator;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/RopeByteString$1;)V

    .line 363
    .local v1, pieces:Lcom/google/protobuf/RopeByteString$PieceIterator;
    :goto_0
    invoke-virtual {v1}, Lcom/google/protobuf/RopeByteString$PieceIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    invoke-virtual {v1}, Lcom/google/protobuf/RopeByteString$PieceIterator;->next()Lcom/google/protobuf/LiteralByteString;

    move-result-object v0

    .line 365
    .local v0, byteString:Lcom/google/protobuf/LiteralByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/LiteralByteString;->asReadOnlyByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 367
    .end local v0           #byteString:Lcom/google/protobuf/LiteralByteString;
    :cond_0
    return-object v2
.end method

.method public byteAt(I)B
    .locals 4
    .parameter "index"

    .prologue
    .line 221
    if-gez p1, :cond_0

    .line 222
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index < 0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    :cond_0
    iget v1, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-le p1, v1, :cond_1

    .line 225
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index > length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 231
    :cond_1
    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-ge p1, v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v0

    .line 236
    .local v0, result:B
    :goto_0
    return v0

    .line 234
    .end local v0           #result:B
    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v0

    .restart local v0       #result:B
    goto :goto_0
.end method

.method public copyTo(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    .line 348
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->copyTo(Ljava/nio/ByteBuffer;)V

    .line 349
    return-void
.end method

.method protected copyToInternal([BIII)V
    .locals 5
    .parameter "target"
    .parameter "sourceOffset"
    .parameter "targetOffset"
    .parameter "numberToCopy"

    .prologue
    .line 332
    add-int v1, p2, p4

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt v1, v2, :cond_0

    .line 333
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    .line 343
    :goto_0
    return-void

    .line 334
    :cond_0
    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v2, p2, v2

    invoke-virtual {v1, p1, v2, p3, p4}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_0

    .line 338
    :cond_1
    iget v1, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v0, v1, p2

    .line 339
    .local v0, leftLength:I
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    .line 340
    iget-object v1, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v2, 0x0

    add-int v3, p3, v0

    sub-int v4, p4, v0

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/google/protobuf/ByteString;->copyToInternal([BIII)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "other"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 411
    if-ne p1, p0, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v2

    .line 414
    :cond_1
    instance-of v4, p1, Lcom/google/protobuf/ByteString;

    if-nez v4, :cond_2

    move v2, v3

    .line 415
    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 418
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 419
    .local v1, otherByteString:Lcom/google/protobuf/ByteString;
    iget v4, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    move v2, v3

    .line 420
    goto :goto_0

    .line 422
    :cond_3
    iget v4, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-eqz v4, :cond_0

    .line 431
    iget v2, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    if-eqz v2, :cond_4

    .line 432
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->peekCachedHashCode()I

    move-result v0

    .line 433
    .local v0, cachedOtherHash:I
    if-eqz v0, :cond_4

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    if-eq v2, v0, :cond_4

    move v2, v3

    .line 434
    goto :goto_0

    .line 438
    .end local v0           #cachedOtherHash:I
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/protobuf/RopeByteString;->equalsFragments(Lcom/google/protobuf/ByteString;)Z

    move-result v2

    goto :goto_0
.end method

.method protected getTreeDepth()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->treeDepth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 505
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    .line 507
    .local v0, h:I
    if-nez v0, :cond_1

    .line 508
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    .line 509
    const/4 v1, 0x0

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/protobuf/RopeByteString;->partialHash(III)I

    move-result v0

    .line 510
    if-nez v0, :cond_0

    .line 511
    const/4 v0, 0x1

    .line 513
    :cond_0
    iput v0, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    .line 515
    :cond_1
    return v0
.end method

.method protected isBalanced()Z
    .locals 3

    .prologue
    .line 262
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    sget-object v1, Lcom/google/protobuf/RopeByteString;->minLengthByDepth:[I

    iget v2, p0, Lcom/google/protobuf/RopeByteString;->treeDepth:I

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidUtf8()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 387
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    iget v4, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    invoke-virtual {v3, v2, v2, v4}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v0

    .line 388
    .local v0, leftPartial:I
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget-object v4, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v4}, Lcom/google/protobuf/ByteString;->size()I

    move-result v4

    invoke-virtual {v3, v0, v2, v4}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v1

    .line 389
    .local v1, state:I
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public iterator()Lcom/google/protobuf/ByteString$ByteIterator;
    .locals 2

    .prologue
    .line 738
    new-instance v0, Lcom/google/protobuf/RopeByteString$RopeByteIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/RopeByteString$RopeByteIterator;-><init>(Lcom/google/protobuf/RopeByteString;Lcom/google/protobuf/RopeByteString$1;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString;->iterator()Lcom/google/protobuf/ByteString$ByteIterator;

    move-result-object v0

    return-object v0
.end method

.method public newCodedInput()Lcom/google/protobuf/CodedInputStream;
    .locals 1

    .prologue
    .line 542
    new-instance v0, Lcom/google/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/google/protobuf/RopeByteString;)V

    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object v0

    return-object v0
.end method

.method public newInput()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 547
    new-instance v0, Lcom/google/protobuf/RopeByteString$RopeInputStream;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RopeByteString$RopeInputStream;-><init>(Lcom/google/protobuf/RopeByteString;)V

    return-object v0
.end method

.method protected partialHash(III)I
    .locals 6
    .parameter "h"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 525
    add-int v2, p2, p3

    .line 526
    .local v2, toIndex:I
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt v2, v3, :cond_0

    .line 527
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3, p1, p2, p3}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result v3

    .line 533
    :goto_0
    return v3

    .line 528
    :cond_0
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v3, :cond_1

    .line 529
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v4, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v4, p2, v4

    invoke-virtual {v3, p1, v4, p3}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result v3

    goto :goto_0

    .line 531
    :cond_1
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v0, v3, p2

    .line 532
    .local v0, leftLength:I
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3, p1, p2, v0}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result v1

    .line 533
    .local v1, leftPartial:I
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v4, 0x0

    sub-int v5, p3, v0

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/protobuf/ByteString;->partialHash(III)I

    move-result v3

    goto :goto_0
.end method

.method protected partialIsValidUtf8(III)I
    .locals 6
    .parameter "state"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 394
    add-int v2, p2, p3

    .line 395
    .local v2, toIndex:I
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt v2, v3, :cond_0

    .line 396
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3, p1, p2, p3}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v3

    .line 402
    :goto_0
    return v3

    .line 397
    :cond_0
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p2, v3, :cond_1

    .line 398
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v4, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v4, p2, v4

    invoke-virtual {v3, p1, v4, p3}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v3

    goto :goto_0

    .line 400
    :cond_1
    iget v3, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v0, v3, p2

    .line 401
    .local v0, leftLength:I
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3, p1, p2, v0}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v1

    .line 402
    .local v1, leftPartial:I
    iget-object v3, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v4, 0x0

    sub-int v5, p3, v0

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/protobuf/ByteString;->partialIsValidUtf8(III)I

    move-result v3

    goto :goto_0
.end method

.method protected peekCachedHashCode()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->hash:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    return v0
.end method

.method public substring(II)Lcom/google/protobuf/ByteString;
    .locals 7
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 282
    if-gez p1, :cond_0

    .line 283
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Beginning index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " < 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 286
    :cond_0
    iget v4, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-le p2, v4, :cond_1

    .line 287
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "End index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 290
    :cond_1
    sub-int v3, p2, p1

    .line 291
    .local v3, substringLength:I
    if-gez v3, :cond_2

    .line 292
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Beginning index larger than ending index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 298
    :cond_2
    if-nez v3, :cond_3

    .line 300
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 323
    .local v1, result:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v1

    .line 301
    .end local v1           #result:Lcom/google/protobuf/ByteString;
    :cond_3
    iget v4, p0, Lcom/google/protobuf/RopeByteString;->totalLength:I

    if-ne v3, v4, :cond_4

    .line 303
    move-object v1, p0

    .restart local v1       #result:Lcom/google/protobuf/ByteString;
    goto :goto_0

    .line 306
    .end local v1           #result:Lcom/google/protobuf/ByteString;
    :cond_4
    iget v4, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-gt p2, v4, :cond_5

    .line 308
    iget-object v4, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v4, p1, p2}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .restart local v1       #result:Lcom/google/protobuf/ByteString;
    goto :goto_0

    .line 309
    .end local v1           #result:Lcom/google/protobuf/ByteString;
    :cond_5
    iget v4, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    if-lt p1, v4, :cond_6

    .line 311
    iget-object v4, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    iget v5, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v5, p1, v5

    iget v6, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v6, p2, v6

    invoke-virtual {v4, v5, v6}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .restart local v1       #result:Lcom/google/protobuf/ByteString;
    goto :goto_0

    .line 315
    .end local v1           #result:Lcom/google/protobuf/ByteString;
    :cond_6
    iget-object v4, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v4, p1}, Lcom/google/protobuf/ByteString;->substring(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 316
    .local v0, leftSub:Lcom/google/protobuf/ByteString;
    iget-object v4, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/protobuf/RopeByteString;->leftLength:I

    sub-int v6, p2, v6

    invoke-virtual {v4, v5, v6}, Lcom/google/protobuf/ByteString;->substring(II)Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 320
    .local v2, rightSub:Lcom/google/protobuf/ByteString;
    new-instance v1, Lcom/google/protobuf/RopeByteString;

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/RopeByteString;-><init>(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)V

    .restart local v1       #result:Lcom/google/protobuf/ByteString;
    goto :goto_0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 379
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/protobuf/RopeByteString;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->left:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 373
    iget-object v0, p0, Lcom/google/protobuf/RopeByteString;->right:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/ByteString;->writeTo(Ljava/io/OutputStream;)V

    .line 374
    return-void
.end method
