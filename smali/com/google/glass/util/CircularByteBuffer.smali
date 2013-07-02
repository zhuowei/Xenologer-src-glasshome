.class public Lcom/google/glass/util/CircularByteBuffer;
.super Ljava/lang/Object;
.source "CircularByteBuffer.java"


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private byteCount:I

.field private startIndex:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/google/glass/util/CircularByteBuffer;->startIndex:I

    .line 24
    iput v0, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    .line 30
    iput-object p1, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    .line 31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 32
    return-void
.end method

.method private peekFromIndex(Ljava/nio/ByteBuffer;II)V
    .locals 6
    .parameter "dest"
    .parameter "index"
    .parameter "length"

    .prologue
    .line 86
    if-ltz p2, :cond_0

    add-int v3, p2, p3

    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 87
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot read bytes ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int v5, p2, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from a buffer of size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, p3, :cond_2

    .line 92
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destination buffer with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes remaining does not have space for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " new elements."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    :cond_2
    iget v3, p0, Lcom/google/glass/util/CircularByteBuffer;->startIndex:I

    add-int/2addr v3, p2

    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    rem-int v1, v3, v4

    .line 98
    .local v1, readStart:I
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    add-int v3, v1, p3

    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 100
    .local v0, limit:I
    add-int v3, v1, p3

    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    sub-int v2, v3, v4

    .line 102
    .local v2, remainder:I
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 103
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 104
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 107
    if-lez v2, :cond_3

    .line 108
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 109
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 110
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 113
    :cond_3
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 114
    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 191
    iput v1, p0, Lcom/google/glass/util/CircularByteBuffer;->startIndex:I

    .line 192
    iput v1, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    .line 193
    return-void
.end method

.method public peek(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "dest"

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/util/CircularByteBuffer;->peekFromIndex(Ljava/nio/ByteBuffer;II)V

    .line 160
    return-void
.end method

.method public peekFirst(Ljava/nio/ByteBuffer;)I
    .locals 3
    .parameter "dest"

    .prologue
    .line 145
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 146
    .local v0, length:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v0

    .line 149
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/glass/util/CircularByteBuffer;->peekFromIndex(Ljava/nio/ByteBuffer;II)V

    .line 150
    return v0
.end method

.method public peekLast(Ljava/nio/ByteBuffer;)I
    .locals 4
    .parameter "dest"

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, index:I
    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v1

    .line 127
    .local v1, length:I
    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    sub-int v0, v2, v3

    .line 129
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 131
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/util/CircularByteBuffer;->peekFromIndex(Ljava/nio/ByteBuffer;II)V

    .line 132
    return v1
.end method

.method public put(Ljava/nio/ByteBuffer;)Z
    .locals 8
    .parameter "src"

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    iget-object v6, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v7

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_2

    const/4 v1, 0x1

    .line 45
    .local v1, overwrite:Z
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 46
    .local v2, thatOriginalLimit:I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    iget-object v7, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 51
    .local v0, bytesToWrite:I
    iget v5, p0, Lcom/google/glass/util/CircularByteBuffer;->startIndex:I

    iget v6, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    rem-int v3, v5, v6

    .line 52
    .local v3, writeIndex:I
    iget-object v5, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 54
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iget-object v6, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 55
    iget-object v5, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 59
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 60
    iget-object v5, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 61
    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 65
    :cond_0
    iget v4, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    .line 67
    if-eqz v1, :cond_1

    .line 68
    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iput v4, p0, Lcom/google/glass/util/CircularByteBuffer;->startIndex:I

    .line 71
    :cond_1
    return v1

    .end local v0           #bytesToWrite:I
    .end local v1           #overwrite:Z
    .end local v2           #thatOriginalLimit:I
    .end local v3           #writeIndex:I
    :cond_2
    move v1, v4

    .line 42
    goto/16 :goto_0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 3
    .parameter "dest"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v0

    .line 173
    .local v0, length:I
    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 174
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 176
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/glass/util/CircularByteBuffer;->peekFromIndex(Ljava/nio/ByteBuffer;II)V

    .line 177
    iget v1, p0, Lcom/google/glass/util/CircularByteBuffer;->startIndex:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/google/glass/util/CircularByteBuffer;->startIndex:I

    .line 178
    iget v1, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    .line 179
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/google/glass/util/CircularByteBuffer;->byteCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/glass/util/CircularByteBuffer;->startIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") size("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/glass/util/CircularByteBuffer;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, result:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "position("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") limit("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 204
    .local v1, limit:I
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 205
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    :cond_0
    iget-object v3, p0, Lcom/google/glass/util/CircularByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 210
    return-object v2
.end method
