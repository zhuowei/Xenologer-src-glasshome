.class public Lcom/google/glass/voice/InterleavingInputStream;
.super Ljava/io/InputStream;
.source "InterleavingInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final delegate:Ljava/io/InputStream;

.field private leaf:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/google/glass/voice/InterleavingInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/InterleavingInputStream;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/glass/voice/InterleavingInputStream;->delegate:Ljava/io/InputStream;

    .line 20
    return-void
.end method

.method private readFromDelegate([BIII)I
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .parameter "readSoFar"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/glass/voice/InterleavingInputStream;->delegate:Ljava/io/InputStream;

    add-int v1, p2, p4

    sub-int v2, p3, p4

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method private readFromLeaf([BII)V
    .locals 1
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/voice/InterleavingInputStream;->leaf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 68
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/voice/InterleavingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 73
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 74
    return-void
.end method

.method public interleave(Ljava/nio/ByteBuffer;)V
    .locals 0
    .parameter "leaf"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/glass/voice/InterleavingInputStream;->leaf:Ljava/nio/ByteBuffer;

    .line 36
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, readSoFar:I
    iget-object v2, p0, Lcom/google/glass/voice/InterleavingInputStream;->leaf:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    .line 47
    iget-object v2, p0, Lcom/google/glass/voice/InterleavingInputStream;->leaf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, p3, :cond_0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/InterleavingInputStream;->readFromLeaf([BII)V

    .line 58
    .end local p3
    :goto_0
    return p3

    .line 51
    .restart local p3
    :cond_0
    iget-object v2, p0, Lcom/google/glass/voice/InterleavingInputStream;->leaf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 52
    .local v1, remaining:I
    invoke-direct {p0, p1, p2, v1}, Lcom/google/glass/voice/InterleavingInputStream;->readFromLeaf([BII)V

    .line 53
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/glass/voice/InterleavingInputStream;->leaf:Ljava/nio/ByteBuffer;

    .line 54
    move v0, v1

    .line 58
    .end local v1           #remaining:I
    :cond_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/voice/InterleavingInputStream;->readFromDelegate([BIII)I

    move-result v2

    add-int p3, v0, v2

    goto :goto_0
.end method
