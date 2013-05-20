.class public final Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "MajelProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/MajelProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MakeQueryPublicResponse"
.end annotation


# instance fields
.field private cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 609
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;->cachedSize:I

    .line 594
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    new-instance v0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;

    invoke-direct {v0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 647
    new-instance v0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;

    invoke-direct {v0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;

    check-cast v0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;
    .locals 1

    .prologue
    .line 597
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;->cachedSize:I

    .line 598
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;->getSerializedSize()I

    .line 616
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    .line 622
    .local v0, size:I
    iput v0, p0, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;->cachedSize:I

    .line 623
    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 632
    .local v0, tag:I
    packed-switch v0, :pswitch_data_0

    .line 636
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 637
    :pswitch_0
    return-object p0

    .line 632
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/MajelProtos$MakeQueryPublicResponse;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 0
    .parameter "output"

    .prologue
    .line 607
    return-void
.end method
