.class Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;
.super Ljava/lang/Object;
.source "LiteralByteString.java"

# interfaces
.implements Lcom/google/protobuf/ByteString$ByteIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/LiteralByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiteralByteIterator"
.end annotation


# instance fields
.field private final limit:I

.field private position:I

.field final synthetic this$0:Lcom/google/protobuf/LiteralByteString;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/LiteralByteString;)V
    .locals 1
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->this$0:Lcom/google/protobuf/LiteralByteString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->position:I

    .line 274
    invoke-virtual {p1}, Lcom/google/protobuf/LiteralByteString;->size()I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->limit:I

    .line 275
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/LiteralByteString;Lcom/google/protobuf/LiteralByteString$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;-><init>(Lcom/google/protobuf/LiteralByteString;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 278
    iget v0, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->position:I

    iget v1, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->limit:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Byte;
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->nextByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->next()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public nextByte()B
    .locals 4

    .prologue
    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->this$0:Lcom/google/protobuf/LiteralByteString;

    iget-object v1, v1, Lcom/google/protobuf/LiteralByteString;->bytes:[B

    iget v2, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/protobuf/LiteralByteString$LiteralByteIterator;->position:I

    aget-byte v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 295
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
