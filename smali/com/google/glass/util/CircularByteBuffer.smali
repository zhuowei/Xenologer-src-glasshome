.class public Lcom/google/glass/util/CircularByteBuffer;
.super Ljava/lang/Object;
.source "CircularByteBuffer.java"


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private byteCount:I

.field private nextWriteIndex:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/google/glass/util/CircularByteBuffer;->nextWriteIndex:I

    .line 25
    iput v0, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    .line 31
    iput-object p1, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 33
    return-void
.end method

.method private fillFromPosition(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .parameter "dest"
    .parameter "readStart"

    .prologue
    .line 80
    if-gez p2, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/2addr p2, v0

    .line 82
    iget-object v0, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 83
    iget-object v0, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 84
    iget-object v0, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 85
    const/4 p2, 0x0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    iget-object v0, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/glass/util/CircularByteBuffer;->nextWriteIndex:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 91
    iget-object v0, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 92
    iget-object v0, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 93
    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 113
    iput v1, p0, Lcom/google/glass/util/CircularByteBuffer;->nextWriteIndex:I

    .line 114
    iput v1, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    .line 115
    return-void
.end method

.method public get(Ljava/nio/ByteBuffer;)V
    .locals 3
    .parameter "dest"

    .prologue
    .line 73
    iget v1, p0, Lcom/google/glass/util/CircularByteBuffer;->nextWriteIndex:I

    iget v2, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    sub-int v0, v1, v2

    .line 75
    .local v0, readStart:I
    invoke-direct {p0, p1, v0}, Lcom/google/glass/util/CircularByteBuffer;->fillFromPosition(Ljava/nio/ByteBuffer;I)V

    .line 76
    return-void
.end method

.method public getLast(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .parameter "dest"
    .parameter "length"

    .prologue
    .line 96
    iget v1, p0, Lcom/google/glass/util/CircularByteBuffer;->nextWriteIndex:I

    iget v2, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    sub-int v0, v1, v2

    .line 97
    .local v0, readStart:I
    iget v1, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    if-ge p2, v1, :cond_0

    .line 98
    iget v1, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    sub-int/2addr v1, p2

    add-int/2addr v0, v1

    .line 101
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/glass/util/CircularByteBuffer;->fillFromPosition(Ljava/nio/ByteBuffer;I)V

    .line 102
    return-void
.end method

.method public put(Ljava/nio/ByteBuffer;)V
    .locals 6
    .parameter "src"

    .prologue
    const/4 v5, 0x0

    .line 42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 43
    .local v2, thatOriginalLimit:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 48
    .local v0, bytesToWrite:I
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/google/glass/util/CircularByteBuffer;->nextWriteIndex:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 49
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 50
    .local v1, maxFirstWrite:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 51
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 55
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 61
    :cond_0
    iget v3, p0, Lcom/google/glass/util/CircularByteBuffer;->nextWriteIndex:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/google/glass/util/CircularByteBuffer;->nextWriteIndex:I

    .line 62
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    iget v4, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    .line 63
    return-void
.end method
