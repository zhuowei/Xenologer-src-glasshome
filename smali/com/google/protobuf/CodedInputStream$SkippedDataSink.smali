.class Lcom/google/protobuf/CodedInputStream$SkippedDataSink;
.super Ljava/lang/Object;
.source "CodedInputStream.java"

# interfaces
.implements Lcom/google/protobuf/CodedInputStream$RefillCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SkippedDataSink"
.end annotation


# instance fields
.field private byteArrayStream:Ljava/io/ByteArrayOutputStream;

.field private lastPos:I

.field final synthetic this$0:Lcom/google/protobuf/CodedInputStream;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/google/protobuf/CodedInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/google/protobuf/CodedInputStream;

    #getter for: Lcom/google/protobuf/CodedInputStream;->bufferPos:I
    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->access$000(Lcom/google/protobuf/CodedInputStream;)I

    move-result v0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedInputStream$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;-><init>(Lcom/google/protobuf/CodedInputStream;)V

    return-void
.end method


# virtual methods
.method getSkippedData()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/google/protobuf/CodedInputStream;

    #getter for: Lcom/google/protobuf/CodedInputStream;->buffer:[B
    invoke-static {v0}, Lcom/google/protobuf/CodedInputStream;->access$100(Lcom/google/protobuf/CodedInputStream;)[B

    move-result-object v0

    iget v1, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    iget-object v2, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/google/protobuf/CodedInputStream;

    #getter for: Lcom/google/protobuf/CodedInputStream;->bufferPos:I
    invoke-static {v2}, Lcom/google/protobuf/CodedInputStream;->access$000(Lcom/google/protobuf/CodedInputStream;)I

    move-result v2

    iget v3, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/google/protobuf/CodedInputStream;

    #getter for: Lcom/google/protobuf/CodedInputStream;->buffer:[B
    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->access$100(Lcom/google/protobuf/CodedInputStream;)[B

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/google/protobuf/CodedInputStream;

    #getter for: Lcom/google/protobuf/CodedInputStream;->bufferPos:I
    invoke-static {v3}, Lcom/google/protobuf/CodedInputStream;->access$000(Lcom/google/protobuf/CodedInputStream;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 243
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public onRefill()V
    .locals 5

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->byteArrayStream:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/google/protobuf/CodedInputStream;

    #getter for: Lcom/google/protobuf/CodedInputStream;->buffer:[B
    invoke-static {v1}, Lcom/google/protobuf/CodedInputStream;->access$100(Lcom/google/protobuf/CodedInputStream;)[B

    move-result-object v1

    iget v2, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    iget-object v3, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->this$0:Lcom/google/protobuf/CodedInputStream;

    #getter for: Lcom/google/protobuf/CodedInputStream;->bufferPos:I
    invoke-static {v3}, Lcom/google/protobuf/CodedInputStream;->access$000(Lcom/google/protobuf/CodedInputStream;)I

    move-result v3

    iget v4, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/CodedInputStream$SkippedDataSink;->lastPos:I

    .line 232
    return-void
.end method
