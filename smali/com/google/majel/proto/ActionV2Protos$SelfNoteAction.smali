.class public final Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelfNoteAction"
.end annotation


# static fields
.field public static final BODY_FIELD_NUMBER:I = 0x2

.field public static final BODY_SPAN_FIELD_NUMBER:I = 0x4

.field public static final DEPRECATED_SUBJECT_FIELD_NUMBER:I = 0x1

.field public static final DEPRECATED_SUBJECT_SPAN_FIELD_NUMBER:I = 0x3


# instance fields
.field private bodySpan_:Lcom/google/majel/proto/SpanProtos$Span;

.field private body_:Ljava/lang/String;

.field private cachedSize:I

.field private dEPRECATEDSubjectSpan_:Lcom/google/majel/proto/SpanProtos$Span;

.field private dEPRECATEDSubject_:Ljava/lang/String;

.field private hasBody:Z

.field private hasBodySpan:Z

.field private hasDEPRECATEDSubject:Z

.field private hasDEPRECATEDSubjectSpan:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6242
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6247
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubject_:Ljava/lang/String;

    .line 6264
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubjectSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 6284
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->body_:Ljava/lang/String;

    .line 6301
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bodySpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 6348
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->cachedSize:I

    .line 6242
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6428
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6422
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 1

    .prologue
    .line 6319
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->clearDEPRECATEDSubject()Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    .line 6320
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->clearDEPRECATEDSubjectSpan()Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    .line 6321
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->clearBody()Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    .line 6322
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->clearBodySpan()Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    .line 6323
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->cachedSize:I

    .line 6324
    return-object p0
.end method

.method public clearBody()Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 1

    .prologue
    .line 6293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasBody:Z

    .line 6294
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->body_:Ljava/lang/String;

    .line 6295
    return-object p0
.end method

.method public clearBodySpan()Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 1

    .prologue
    .line 6313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasBodySpan:Z

    .line 6314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bodySpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 6315
    return-object p0
.end method

.method public clearDEPRECATEDSubject()Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 1

    .prologue
    .line 6256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasDEPRECATEDSubject:Z

    .line 6257
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubject_:Ljava/lang/String;

    .line 6258
    return-object p0
.end method

.method public clearDEPRECATEDSubjectSpan()Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 1

    .prologue
    .line 6276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasDEPRECATEDSubjectSpan:Z

    .line 6277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubjectSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 6278
    return-object p0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6285
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->body_:Ljava/lang/String;

    return-object v0
.end method

.method public getBodySpan()Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1

    .prologue
    .line 6303
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bodySpan_:Lcom/google/majel/proto/SpanProtos$Span;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6351
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->cachedSize:I

    if-gez v0, :cond_0

    .line 6353
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->getSerializedSize()I

    .line 6355
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->cachedSize:I

    return v0
.end method

.method public getDEPRECATEDSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6248
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubject_:Ljava/lang/String;

    return-object v0
.end method

.method public getDEPRECATEDSubjectSpan()Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1

    .prologue
    .line 6266
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubjectSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6360
    const/4 v0, 0x0

    .line 6361
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasDEPRECATEDSubject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6362
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->getDEPRECATEDSubject()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6365
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasBody()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6366
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6369
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasDEPRECATEDSubjectSpan()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6370
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->getDEPRECATEDSubjectSpan()Lcom/google/majel/proto/SpanProtos$Span;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6373
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasBodySpan()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6374
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->getBodySpan()Lcom/google/majel/proto/SpanProtos$Span;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6377
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->cachedSize:I

    .line 6378
    return v0
.end method

.method public hasBody()Z
    .locals 1

    .prologue
    .line 6286
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasBody:Z

    return v0
.end method

.method public hasBodySpan()Z
    .locals 1

    .prologue
    .line 6302
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasBodySpan:Z

    return v0
.end method

.method public hasDEPRECATEDSubject()Z
    .locals 1

    .prologue
    .line 6249
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasDEPRECATEDSubject:Z

    return v0
.end method

.method public hasDEPRECATEDSubjectSpan()Z
    .locals 1

    .prologue
    .line 6265
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasDEPRECATEDSubjectSpan:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6328
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6386
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6387
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 6391
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6392
    :sswitch_0
    return-object p0

    .line 6397
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->setDEPRECATEDSubject(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    goto :goto_0

    .line 6401
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->setBody(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    goto :goto_0

    .line 6405
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v1}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    .line 6406
    .local v1, value:Lcom/google/majel/proto/SpanProtos$Span;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6407
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->setDEPRECATEDSubjectSpan(Lcom/google/majel/proto/SpanProtos$Span;)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    goto :goto_0

    .line 6411
    .end local v1           #value:Lcom/google/majel/proto/SpanProtos$Span;
    :sswitch_4
    new-instance v1, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v1}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    .line 6412
    .restart local v1       #value:Lcom/google/majel/proto/SpanProtos$Span;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6413
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->setBodySpan(Lcom/google/majel/proto/SpanProtos$Span;)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    goto :goto_0

    .line 6387
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 6239
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 6288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasBody:Z

    .line 6289
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->body_:Ljava/lang/String;

    .line 6290
    return-object p0
.end method

.method public setBodySpan(Lcom/google/majel/proto/SpanProtos$Span;)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 6305
    if-nez p1, :cond_0

    .line 6306
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6308
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasBodySpan:Z

    .line 6309
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bodySpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 6310
    return-object p0
.end method

.method public setDEPRECATEDSubject(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 6251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasDEPRECATEDSubject:Z

    .line 6252
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubject_:Ljava/lang/String;

    .line 6253
    return-object p0
.end method

.method public setDEPRECATEDSubjectSpan(Lcom/google/majel/proto/SpanProtos$Span;)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 1
    .parameter "value"

    .prologue
    .line 6268
    if-nez p1, :cond_0

    .line 6269
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6271
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasDEPRECATEDSubjectSpan:Z

    .line 6272
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubjectSpan_:Lcom/google/majel/proto/SpanProtos$Span;

    .line 6273
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
    .line 6334
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasDEPRECATEDSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6335
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->getDEPRECATEDSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6337
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasBody()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6338
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6340
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasDEPRECATEDSubjectSpan()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6341
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->getDEPRECATEDSubjectSpan()Lcom/google/majel/proto/SpanProtos$Span;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 6343
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->hasBodySpan()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6344
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->getBodySpan()Lcom/google/majel/proto/SpanProtos$Span;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 6346
    :cond_3
    return-void
.end method
