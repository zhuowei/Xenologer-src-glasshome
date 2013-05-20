.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fact"
.end annotation


# static fields
.field public static final LABEL_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasLabel:Z

.field private hasValue:Z

.field private label_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9966
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 9971
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->label_:Ljava/lang/String;

    .line 9988
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->value_:Ljava/lang/String;

    .line 10024
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->cachedSize:I

    .line 9966
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10084
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 10078
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .locals 1

    .prologue
    .line 10003
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->clearLabel()Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    .line 10004
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->clearValue()Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    .line 10005
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->cachedSize:I

    .line 10006
    return-object p0
.end method

.method public clearLabel()Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .locals 1

    .prologue
    .line 9980
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->hasLabel:Z

    .line 9981
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->label_:Ljava/lang/String;

    .line 9982
    return-object p0
.end method

.method public clearValue()Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .locals 1

    .prologue
    .line 9997
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->hasValue:Z

    .line 9998
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->value_:Ljava/lang/String;

    .line 9999
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 10027
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->cachedSize:I

    if-gez v0, :cond_0

    .line 10029
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->getSerializedSize()I

    .line 10031
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->cachedSize:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9972
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 10036
    const/4 v0, 0x0

    .line 10037
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->hasLabel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10038
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10041
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10042
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10045
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->cachedSize:I

    .line 10046
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9989
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 9973
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->hasLabel:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 9990
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->hasValue:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 10010
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10054
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10055
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 10059
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 10060
    :sswitch_0
    return-object p0

    .line 10065
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->setLabel(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    goto :goto_0

    .line 10069
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->setValue(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    goto :goto_0

    .line 10055
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 9963
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    move-result-object v0

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .locals 1
    .parameter "value"

    .prologue
    .line 9975
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->hasLabel:Z

    .line 9976
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->label_:Ljava/lang/String;

    .line 9977
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .locals 1
    .parameter "value"

    .prologue
    .line 9992
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->hasValue:Z

    .line 9993
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->value_:Ljava/lang/String;

    .line 9994
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
    .line 10016
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10017
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10019
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10020
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10022
    :cond_1
    return-void
.end method
