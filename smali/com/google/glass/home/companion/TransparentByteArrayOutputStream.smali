.class public Lcom/google/glass/home/companion/TransparentByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "TransparentByteArrayOutputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 18
    return-void
.end method


# virtual methods
.method public getByteArray()[B
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/glass/home/companion/TransparentByteArrayOutputStream;->buf:[B

    return-object v0
.end method
