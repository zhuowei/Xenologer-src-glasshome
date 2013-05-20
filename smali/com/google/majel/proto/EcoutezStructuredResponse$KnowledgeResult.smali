.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KnowledgeResult"
.end annotation


# static fields
.field public static final DESCRIPTION_ATTRIBUTION_FIELD_NUMBER:I = 0x3

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x2

.field public static final FACT_FIELD_NUMBER:I = 0x4

.field public static final TITLE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private descriptionAttribution_:Lcom/google/majel/proto/AttributionProtos$Attribution;

.field private description_:Ljava/lang/String;

.field private fact_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;",
            ">;"
        }
    .end annotation
.end field

.field private hasDescription:Z

.field private hasDescriptionAttribution:Z

.field private hasTitle:Z

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10092
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 10097
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->title_:Ljava/lang/String;

    .line 10114
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->description_:Ljava/lang/String;

    .line 10131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->descriptionAttribution_:Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 10150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact_:Ljava/util/List;

    .line 10211
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->cachedSize:I

    .line 10092
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10291
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 10285
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    return-object v0
.end method


# virtual methods
.method public addFact(Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 10167
    if-nez p1, :cond_0

    .line 10168
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10170
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact_:Ljava/util/List;

    .line 10173
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10174
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1

    .prologue
    .line 10182
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->clearTitle()Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    .line 10183
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->clearDescription()Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    .line 10184
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->clearDescriptionAttribution()Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    .line 10185
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->clearFact()Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    .line 10186
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->cachedSize:I

    .line 10187
    return-object p0
.end method

.method public clearDescription()Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1

    .prologue
    .line 10123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->hasDescription:Z

    .line 10124
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->description_:Ljava/lang/String;

    .line 10125
    return-object p0
.end method

.method public clearDescriptionAttribution()Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1

    .prologue
    .line 10143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->hasDescriptionAttribution:Z

    .line 10144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->descriptionAttribution_:Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 10145
    return-object p0
.end method

.method public clearFact()Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1

    .prologue
    .line 10177
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact_:Ljava/util/List;

    .line 10178
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1

    .prologue
    .line 10106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->hasTitle:Z

    .line 10107
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->title_:Ljava/lang/String;

    .line 10108
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 10214
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 10216
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getSerializedSize()I

    .line 10218
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->cachedSize:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10115
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionAttribution()Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1

    .prologue
    .line 10133
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->descriptionAttribution_:Lcom/google/majel/proto/AttributionProtos$Attribution;

    return-object v0
.end method

.method public getFact(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .locals 1
    .parameter "index"

    .prologue
    .line 10157
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    return-object v0
.end method

.method public getFactCount()I
    .locals 1

    .prologue
    .line 10155
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFactList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10153
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 10223
    const/4 v2, 0x0

    .line 10224
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->hasTitle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10225
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 10228
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->hasDescription()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10229
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 10232
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->hasDescriptionAttribution()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10233
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getDescriptionAttribution()Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 10236
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getFactList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    .line 10237
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 10240
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    :cond_3
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->cachedSize:I

    .line 10241
    return v2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10098
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 10116
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->hasDescription:Z

    return v0
.end method

.method public hasDescriptionAttribution()Z
    .locals 1

    .prologue
    .line 10132
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->hasDescriptionAttribution:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 10099
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->hasTitle:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 10191
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10249
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 10250
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 10254
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10255
    :sswitch_0
    return-object p0

    .line 10260
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->setTitle(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    goto :goto_0

    .line 10264
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->setDescription(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    goto :goto_0

    .line 10268
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-direct {v1}, Lcom/google/majel/proto/AttributionProtos$Attribution;-><init>()V

    .line 10269
    .local v1, value:Lcom/google/majel/proto/AttributionProtos$Attribution;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 10270
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->setDescriptionAttribution(Lcom/google/majel/proto/AttributionProtos$Attribution;)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    goto :goto_0

    .line 10274
    .end local v1           #value:Lcom/google/majel/proto/AttributionProtos$Attribution;
    :sswitch_4
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;-><init>()V

    .line 10275
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 10276
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->addFact(Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    goto :goto_0

    .line 10250
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
    .line 10089
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 10118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->hasDescription:Z

    .line 10119
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->description_:Ljava/lang/String;

    .line 10120
    return-object p0
.end method

.method public setDescriptionAttribution(Lcom/google/majel/proto/AttributionProtos$Attribution;)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 10135
    if-nez p1, :cond_0

    .line 10136
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10138
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->hasDescriptionAttribution:Z

    .line 10139
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->descriptionAttribution_:Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 10140
    return-object p0
.end method

.method public setFact(ILcom/google/majel/proto/EcoutezStructuredResponse$Fact;)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10160
    if-nez p2, :cond_0

    .line 10161
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10163
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->fact_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10164
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 10101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->hasTitle:Z

    .line 10102
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->title_:Ljava/lang/String;

    .line 10103
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10197
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10198
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10200
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->hasDescription()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10201
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 10203
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->hasDescriptionAttribution()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10204
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getDescriptionAttribution()Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 10206
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$KnowledgeResult;->getFactList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    .line 10207
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 10209
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    :cond_3
    return-void
.end method
