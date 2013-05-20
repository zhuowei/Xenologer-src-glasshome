.class public final Lcom/google/majel/proto/SpanProtos$Span;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SpanProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/SpanProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Span"
.end annotation


# static fields
.field public static final ALTERNATE_SPAN_EXTENSION_FIELD_NUMBER:I = 0x19b2283

.field public static final LENGTH_FIELD_NUMBER:I = 0x2

.field public static final START_FIELD_NUMBER:I = 0x1


# instance fields
.field private alternateSpanExtension_:Lcom/google/majel/proto/SpanProtos$AlternateSpan;

.field private cachedSize:I

.field private hasAlternateSpanExtension:Z

.field private hasLength:Z

.field private hasStart:Z

.field private length_:I

.field private start_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    iput v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->start_:I

    .line 32
    iput v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->length_:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->alternateSpanExtension_:Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v0}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/SpanProtos$Span;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/SpanProtos$Span;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v0}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/SpanProtos$Span;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/SpanProtos$Span;

    check-cast v0, Lcom/google/majel/proto/SpanProtos$Span;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$Span;->clearStart()Lcom/google/majel/proto/SpanProtos$Span;

    .line 68
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$Span;->clearLength()Lcom/google/majel/proto/SpanProtos$Span;

    .line 69
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$Span;->clearAlternateSpanExtension()Lcom/google/majel/proto/SpanProtos$Span;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->cachedSize:I

    .line 71
    return-object p0
.end method

.method public clearAlternateSpanExtension()Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->hasAlternateSpanExtension:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->alternateSpanExtension_:Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    .line 63
    return-object p0
.end method

.method public clearLength()Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->hasLength:Z

    .line 42
    iput v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->length_:I

    .line 43
    return-object p0
.end method

.method public clearStart()Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->hasStart:Z

    .line 25
    iput v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->start_:I

    .line 26
    return-object p0
.end method

.method public getAlternateSpanExtension()Lcom/google/majel/proto/SpanProtos$AlternateSpan;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->alternateSpanExtension_:Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->cachedSize:I

    if-gez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$Span;->getSerializedSize()I

    .line 99
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->cachedSize:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->length_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$Span;->hasStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$Span;->getStart()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$Span;->hasLength()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$Span;->getLength()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$Span;->hasAlternateSpanExtension()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    const v1, 0x19b2283

    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$Span;->getAlternateSpanExtension()Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->cachedSize:I

    .line 118
    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->start_:I

    return v0
.end method

.method public hasAlternateSpanExtension()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->hasAlternateSpanExtension:Z

    return v0
.end method

.method public hasLength()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->hasLength:Z

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->hasStart:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/SpanProtos$Span;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 127
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 131
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/SpanProtos$Span;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    :sswitch_0
    return-object p0

    .line 137
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/SpanProtos$Span;->setStart(I)Lcom/google/majel/proto/SpanProtos$Span;

    goto :goto_0

    .line 141
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/SpanProtos$Span;->setLength(I)Lcom/google/majel/proto/SpanProtos$Span;

    goto :goto_0

    .line 145
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    invoke-direct {v1}, Lcom/google/majel/proto/SpanProtos$AlternateSpan;-><init>()V

    .line 146
    .local v1, value:Lcom/google/majel/proto/SpanProtos$AlternateSpan;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 147
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/SpanProtos$Span;->setAlternateSpanExtension(Lcom/google/majel/proto/SpanProtos$AlternateSpan;)Lcom/google/majel/proto/SpanProtos$Span;

    goto :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0xcd9141a -> :sswitch_3
    .end sparse-switch
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/SpanProtos$Span;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/SpanProtos$Span;

    move-result-object v0

    return-object v0
.end method

.method public setAlternateSpanExtension(Lcom/google/majel/proto/SpanProtos$AlternateSpan;)Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 56
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->hasAlternateSpanExtension:Z

    .line 57
    iput-object p1, p0, Lcom/google/majel/proto/SpanProtos$Span;->alternateSpanExtension_:Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    .line 58
    return-object p0
.end method

.method public setLength(I)Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->hasLength:Z

    .line 37
    iput p1, p0, Lcom/google/majel/proto/SpanProtos$Span;->length_:I

    .line 38
    return-object p0
.end method

.method public setStart(I)Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->hasStart:Z

    .line 20
    iput p1, p0, Lcom/google/majel/proto/SpanProtos$Span;->start_:I

    .line 21
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$Span;->hasStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$Span;->getStart()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$Span;->hasLength()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$Span;->getLength()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$Span;->hasAlternateSpanExtension()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    const v0, 0x19b2283

    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$Span;->getAlternateSpanExtension()Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 90
    :cond_2
    return-void
.end method
