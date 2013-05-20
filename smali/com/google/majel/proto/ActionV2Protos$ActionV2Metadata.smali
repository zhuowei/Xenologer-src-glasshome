.class public final Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionV2Metadata"
.end annotation


# static fields
.field public static final ACTION_TYPE_FIELD_NUMBER:I = 0x1

.field public static final PARSED_ACTION_TYPE_FIELD_NUMBER:I = 0x2


# instance fields
.field private actionType_:I

.field private cachedSize:I

.field private hasActionType:Z

.field private hasParsedActionType:Z

.field private parsedActionType_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1049
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1054
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->actionType_:I

    .line 1071
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->parsedActionType_:I

    .line 1107
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->cachedSize:I

    .line 1049
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1167
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1161
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 1

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->clearActionType()Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    .line 1087
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->clearParsedActionType()Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    .line 1088
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->cachedSize:I

    .line 1089
    return-object p0
.end method

.method public clearActionType()Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 1

    .prologue
    .line 1063
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->hasActionType:Z

    .line 1064
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->actionType_:I

    .line 1065
    return-object p0
.end method

.method public clearParsedActionType()Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 1

    .prologue
    .line 1080
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->hasParsedActionType:Z

    .line 1081
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->parsedActionType_:I

    .line 1082
    return-object p0
.end method

.method public getActionType()I
    .locals 1

    .prologue
    .line 1056
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->actionType_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1110
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->cachedSize:I

    if-gez v0, :cond_0

    .line 1112
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->getSerializedSize()I

    .line 1114
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->cachedSize:I

    return v0
.end method

.method public getParsedActionType()I
    .locals 1

    .prologue
    .line 1073
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->parsedActionType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1119
    const/4 v0, 0x0

    .line 1120
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->hasActionType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1121
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->getActionType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1124
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->hasParsedActionType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1125
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->getParsedActionType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1128
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->cachedSize:I

    .line 1129
    return v0
.end method

.method public hasActionType()Z
    .locals 1

    .prologue
    .line 1055
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->hasActionType:Z

    return v0
.end method

.method public hasParsedActionType()Z
    .locals 1

    .prologue
    .line 1072
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->hasParsedActionType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1093
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1137
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1138
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1142
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1143
    :sswitch_0
    return-object p0

    .line 1148
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->setActionType(I)Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    goto :goto_0

    .line 1152
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->setParsedActionType(I)Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    goto :goto_0

    .line 1138
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 1046
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;

    move-result-object v0

    return-object v0
.end method

.method public setActionType(I)Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 1058
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->hasActionType:Z

    .line 1059
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->actionType_:I

    .line 1060
    return-object p0
.end method

.method public setParsedActionType(I)Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;
    .locals 1
    .parameter "value"

    .prologue
    .line 1075
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->hasParsedActionType:Z

    .line 1076
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->parsedActionType_:I

    .line 1077
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
    .line 1099
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->hasActionType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1100
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->getActionType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1102
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->hasParsedActionType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1103
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionV2Metadata;->getParsedActionType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1105
    :cond_1
    return-void
.end method
