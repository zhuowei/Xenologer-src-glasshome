.class public final Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppItem"
.end annotation


# static fields
.field public static final DEVELOPER_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final PACKAGE_NAME_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private developer_:Ljava/lang/String;

.field private hasDeveloper:Z

.field private hasName:Z

.field private hasPackageName:Z

.field private name_:Ljava/lang/String;

.field private packageName_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5081
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5086
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->name_:Ljava/lang/String;

    .line 5103
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->packageName_:Ljava/lang/String;

    .line 5120
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->developer_:Ljava/lang/String;

    .line 5160
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->cachedSize:I

    .line 5081
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1

    .prologue
    .line 5135
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->clearName()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    .line 5136
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->clearPackageName()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    .line 5137
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->clearDeveloper()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    .line 5138
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->cachedSize:I

    .line 5139
    return-object p0
.end method

.method public clearDeveloper()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1

    .prologue
    .line 5129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->hasDeveloper:Z

    .line 5130
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->developer_:Ljava/lang/String;

    .line 5131
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1

    .prologue
    .line 5095
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->hasName:Z

    .line 5096
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->name_:Ljava/lang/String;

    .line 5097
    return-object p0
.end method

.method public clearPackageName()Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1

    .prologue
    .line 5112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->hasPackageName:Z

    .line 5113
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->packageName_:Ljava/lang/String;

    .line 5114
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5163
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->cachedSize:I

    if-gez v0, :cond_0

    .line 5165
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->getSerializedSize()I

    .line 5167
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->cachedSize:I

    return v0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5121
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->developer_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5087
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5104
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5172
    const/4 v0, 0x0

    .line 5173
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5174
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5177
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->hasPackageName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5178
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5181
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->hasDeveloper()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5182
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->getDeveloper()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5185
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->cachedSize:I

    .line 5186
    return v0
.end method

.method public hasDeveloper()Z
    .locals 1

    .prologue
    .line 5122
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->hasDeveloper:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 5088
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->hasName:Z

    return v0
.end method

.method public hasPackageName()Z
    .locals 1

    .prologue
    .line 5105
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->hasPackageName:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5143
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5194
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5195
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5199
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5200
    :sswitch_0
    return-object p0

    .line 5205
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    goto :goto_0

    .line 5209
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->setPackageName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    goto :goto_0

    .line 5213
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->setDeveloper(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    goto :goto_0

    .line 5195
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 5078
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5228
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5222
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;

    return-object v0
.end method

.method public setDeveloper(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 5124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->hasDeveloper:Z

    .line 5125
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->developer_:Ljava/lang/String;

    .line 5126
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 5090
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->hasName:Z

    .line 5091
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->name_:Ljava/lang/String;

    .line 5092
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 5107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->hasPackageName:Z

    .line 5108
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->packageName_:Ljava/lang/String;

    .line 5109
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
    .line 5149
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5150
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5152
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->hasPackageName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5153
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5155
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->hasDeveloper()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5156
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$PlayMediaAction$AppItem;->getDeveloper()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5158
    :cond_2
    return-void
.end method
