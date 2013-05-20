.class public Lcom/google/glass/net/FileRangeInputStream;
.super Ljava/io/InputStream;
.source "FileRangeInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bytesToRead:J

.field private final randomAccessFile:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/google/glass/net/FileRangeInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/FileRangeInputStream;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JJ)V
    .locals 2
    .parameter "file"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 29
    iput-wide p4, p0, Lcom/google/glass/net/FileRangeInputStream;->bytesToRead:J

    .line 30
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/net/FileRangeInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    .line 31
    iget-object v0, p0, Lcom/google/glass/net/FileRangeInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lcom/google/glass/net/FileRangeInputStream;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stream closed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/glass/net/FileRangeInputStream;->bytesToRead:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes left unread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/google/glass/net/FileRangeInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 62
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 36
    iget-wide v2, p0, Lcom/google/glass/net/FileRangeInputStream;->bytesToRead:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 37
    iget-object v2, p0, Lcom/google/glass/net/FileRangeInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 38
    .local v0, byteRead:I
    if-eq v0, v1, :cond_0

    .line 39
    iget-wide v1, p0, Lcom/google/glass/net/FileRangeInputStream;->bytesToRead:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/glass/net/FileRangeInputStream;->bytesToRead:J

    .line 43
    .end local v0           #byteRead:I
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-wide v1, p0, Lcom/google/glass/net/FileRangeInputStream;->bytesToRead:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/google/glass/net/FileRangeInputStream;->randomAccessFile:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    int-to-long v3, p3

    iget-wide v5, p0, Lcom/google/glass/net/FileRangeInputStream;->bytesToRead:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    .line 50
    .local v0, bytesRead:I
    if-lez v0, :cond_0

    .line 51
    iget-wide v1, p0, Lcom/google/glass/net/FileRangeInputStream;->bytesToRead:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/glass/net/FileRangeInputStream;->bytesToRead:J

    .line 55
    .end local v0           #bytesRead:I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
