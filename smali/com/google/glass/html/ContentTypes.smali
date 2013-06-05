.class public Lcom/google/glass/html/ContentTypes;
.super Ljava/lang/Object;
.source "ContentTypes.java"


# static fields
.field private static final GIF_PREFIX:[B

.field private static final JPEG_PREFIX:[B

.field private static final MAX_PREFIX_LENGTH:I

.field private static final PNG_PREFIX:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/glass/html/ContentTypes;->JPEG_PREFIX:[B

    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/glass/html/ContentTypes;->PNG_PREFIX:[B

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/glass/html/ContentTypes;->GIF_PREFIX:[B

    .line 22
    sget-object v0, Lcom/google/glass/html/ContentTypes;->PNG_PREFIX:[B

    array-length v0, v0

    sput v0, Lcom/google/glass/html/ContentTypes;->MAX_PREFIX_LENGTH:I

    return-void

    .line 11
    nop

    :array_0
    .array-data 0x1
        0xfft
        0xd8t
    .end array-data

    .line 14
    nop

    :array_1
    .array-data 0x1
        0x89t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    .line 19
    :array_2
    .array-data 0x1
        0x47t
        0x49t
        0x46t
        0x38t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arrayStartsWith([B[B)Z
    .locals 4
    .parameter "array"
    .parameter "prefix"

    .prologue
    const/4 v1, 0x0

    .line 70
    array-length v2, p0

    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 74
    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    if-ne v2, v3, :cond_0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getContentType([B)Ljava/lang/String;
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/google/glass/html/ContentTypes;->JPEG_PREFIX:[B

    invoke-static {p0, v0}, Lcom/google/glass/html/ContentTypes;->arrayStartsWith([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "image/jpeg"

    .line 63
    :goto_0
    return-object v0

    .line 60
    :cond_0
    sget-object v0, Lcom/google/glass/html/ContentTypes;->PNG_PREFIX:[B

    invoke-static {p0, v0}, Lcom/google/glass/html/ContentTypes;->arrayStartsWith([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "image/png"

    goto :goto_0

    .line 62
    :cond_1
    sget-object v0, Lcom/google/glass/html/ContentTypes;->GIF_PREFIX:[B

    invoke-static {p0, v0}, Lcom/google/glass/html/ContentTypes;->arrayStartsWith([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    const-string v0, "image/gif"

    goto :goto_0

    .line 65
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unrecognized content type"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readPrefix(Ljava/io/InputStream;)[B
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 39
    new-instance v3, Ljava/io/IOException;

    const-string v4, "InputStream must support mark()"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 41
    :cond_0
    sget v3, Lcom/google/glass/html/ContentTypes;->MAX_PREFIX_LENGTH:I

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 43
    sget v3, Lcom/google/glass/html/ContentTypes;->MAX_PREFIX_LENGTH:I

    new-array v0, v3, [B

    .line 44
    .local v0, buffer:[B
    const/4 v2, 0x0

    .line 45
    .local v2, pos:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 46
    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 47
    .local v1, numRead:I
    if-gtz v1, :cond_1

    .line 48
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Insufficient data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 50
    :cond_1
    add-int/2addr v2, v1

    .line 51
    goto :goto_0

    .line 53
    .end local v1           #numRead:I
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 54
    return-object v0
.end method

.method public static sniff(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p0}, Lcom/google/glass/html/ContentTypes;->readPrefix(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 34
    .local v0, buffer:[B
    invoke-static {v0}, Lcom/google/glass/html/ContentTypes;->getContentType([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
