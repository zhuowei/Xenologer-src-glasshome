.class public final Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationTrigger"
.end annotation


# static fields
.field public static final LOCAL_RESULT_CANDIDATE_LIST_FIELD_NUMBER:I = 0x3

.field public static final LOCATION_FIELD_NUMBER:I = 0x1

.field public static final TYPE_ARRIVING:I = 0x0

.field public static final TYPE_EN_ROUTE:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x2

.field public static final TYPE_LEAVING:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasLocation:Z

.field private hasType:Z

.field private localResultCandidateList_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;",
            ">;"
        }
    .end annotation
.end field

.field private location_:Lcom/google/majel/proto/ActionV2Protos$Location;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7112
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 7122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->location_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 7141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList_:Ljava/util/List;

    .line 7175
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->type_:I

    .line 7215
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->cachedSize:I

    .line 7112
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7287
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7281
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    return-object v0
.end method


# virtual methods
.method public addLocalResultCandidateList(Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;)Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    .locals 1
    .parameter "value"

    .prologue
    .line 7158
    if-nez p1, :cond_0

    .line 7159
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7161
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList_:Ljava/util/List;

    .line 7164
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7165
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    .locals 1

    .prologue
    .line 7190
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->clearLocation()Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    .line 7191
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->clearLocalResultCandidateList()Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    .line 7192
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->clearType()Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    .line 7193
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->cachedSize:I

    .line 7194
    return-object p0
.end method

.method public clearLocalResultCandidateList()Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    .locals 1

    .prologue
    .line 7168
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList_:Ljava/util/List;

    .line 7169
    return-object p0
.end method

.method public clearLocation()Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    .locals 1

    .prologue
    .line 7134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->hasLocation:Z

    .line 7135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->location_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 7136
    return-object p0
.end method

.method public clearType()Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7184
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->hasType:Z

    .line 7185
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->type_:I

    .line 7186
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 7218
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->cachedSize:I

    if-gez v0, :cond_0

    .line 7220
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->getSerializedSize()I

    .line 7222
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->cachedSize:I

    return v0
.end method

.method public getLocalResultCandidateList(I)Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    .locals 1
    .parameter "index"

    .prologue
    .line 7148
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    return-object v0
.end method

.method public getLocalResultCandidateListCount()I
    .locals 1

    .prologue
    .line 7146
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLocalResultCandidateListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7144
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList_:Ljava/util/List;

    return-object v0
.end method

.method public getLocation()Lcom/google/majel/proto/ActionV2Protos$Location;
    .locals 1

    .prologue
    .line 7124
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->location_:Lcom/google/majel/proto/ActionV2Protos$Location;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 7227
    const/4 v2, 0x0

    .line 7228
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->hasLocation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7229
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->getLocation()Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 7232
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->hasType()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7233
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->getType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 7236
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->getLocalResultCandidateListList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    .line 7237
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 7240
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    :cond_2
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->cachedSize:I

    .line 7241
    return v2
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 7177
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->type_:I

    return v0
.end method

.method public hasLocation()Z
    .locals 1

    .prologue
    .line 7123
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->hasLocation:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 7176
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 7198
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7249
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 7250
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 7254
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7255
    :sswitch_0
    return-object p0

    .line 7260
    :sswitch_1
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$Location;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$Location;-><init>()V

    .line 7261
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$Location;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7262
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->setLocation(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    goto :goto_0

    .line 7266
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$Location;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->setType(I)Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    goto :goto_0

    .line 7270
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;-><init>()V

    .line 7271
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 7272
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->addLocalResultCandidateList(Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;)Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    goto :goto_0

    .line 7250
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 7109
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;

    move-result-object v0

    return-object v0
.end method

.method public setLocalResultCandidateList(ILcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;)Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 7151
    if-nez p2, :cond_0

    .line 7152
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7154
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->localResultCandidateList_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7155
    return-object p0
.end method

.method public setLocation(Lcom/google/majel/proto/ActionV2Protos$Location;)Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    .locals 1
    .parameter "value"

    .prologue
    .line 7126
    if-nez p1, :cond_0

    .line 7127
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7129
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->hasLocation:Z

    .line 7130
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->location_:Lcom/google/majel/proto/ActionV2Protos$Location;

    .line 7131
    return-object p0
.end method

.method public setType(I)Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;
    .locals 1
    .parameter "value"

    .prologue
    .line 7179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->hasType:Z

    .line 7180
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->type_:I

    .line 7181
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
    .line 7204
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->hasLocation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7205
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->getLocation()Lcom/google/majel/proto/ActionV2Protos$Location;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 7207
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->hasType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7208
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->getType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 7210
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocationTrigger;->getLocalResultCandidateListList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;

    .line 7211
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 7213
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$LocalResultCandidateList;
    :cond_2
    return-void
.end method
