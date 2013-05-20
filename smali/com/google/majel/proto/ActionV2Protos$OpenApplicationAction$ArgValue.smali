.class public final Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArgValue"
.end annotation


# static fields
.field public static final ARG_NAME_FIELD_NUMBER:I = 0x1

.field public static final BOOL_VALUE_FIELD_NUMBER:I = 0x3

.field public static final DOUBLE_VALUE_FIELD_NUMBER:I = 0x5

.field public static final INT_VALUE_FIELD_NUMBER:I = 0x4

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private argName_:Ljava/lang/String;

.field private boolValue_:Z

.field private cachedSize:I

.field private doubleValue_:D

.field private hasArgName:Z

.field private hasBoolValue:Z

.field private hasDoubleValue:Z

.field private hasIntValue:Z

.field private hasStringValue:Z

.field private intValue_:I

.field private stringValue_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4073
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4078
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->argName_:Ljava/lang/String;

    .line 4095
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->stringValue_:Ljava/lang/String;

    .line 4112
    iput-boolean v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->boolValue_:Z

    .line 4129
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->intValue_:I

    .line 4146
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->doubleValue_:D

    .line 4194
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->cachedSize:I

    .line 4073
    return-void
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1

    .prologue
    .line 4161
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->clearArgName()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    .line 4162
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->clearStringValue()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    .line 4163
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->clearBoolValue()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    .line 4164
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->clearIntValue()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    .line 4165
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->clearDoubleValue()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    .line 4166
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->cachedSize:I

    .line 4167
    return-object p0
.end method

.method public clearArgName()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1

    .prologue
    .line 4087
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasArgName:Z

    .line 4088
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->argName_:Ljava/lang/String;

    .line 4089
    return-object p0
.end method

.method public clearBoolValue()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4121
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasBoolValue:Z

    .line 4122
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->boolValue_:Z

    .line 4123
    return-object p0
.end method

.method public clearDoubleValue()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 2

    .prologue
    .line 4155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasDoubleValue:Z

    .line 4156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->doubleValue_:D

    .line 4157
    return-object p0
.end method

.method public clearIntValue()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4138
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasIntValue:Z

    .line 4139
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->intValue_:I

    .line 4140
    return-object p0
.end method

.method public clearStringValue()Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1

    .prologue
    .line 4104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasStringValue:Z

    .line 4105
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->stringValue_:Ljava/lang/String;

    .line 4106
    return-object p0
.end method

.method public getArgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4079
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->argName_:Ljava/lang/String;

    return-object v0
.end method

.method public getBoolValue()Z
    .locals 1

    .prologue
    .line 4113
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->boolValue_:Z

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4197
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->cachedSize:I

    if-gez v0, :cond_0

    .line 4199
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->getSerializedSize()I

    .line 4201
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->cachedSize:I

    return v0
.end method

.method public getDoubleValue()D
    .locals 2

    .prologue
    .line 4147
    iget-wide v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->doubleValue_:D

    return-wide v0
.end method

.method public getIntValue()I
    .locals 1

    .prologue
    .line 4130
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->intValue_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 4206
    const/4 v0, 0x0

    .line 4207
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasArgName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4208
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->getArgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4211
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasStringValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4212
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4215
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasBoolValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4216
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->getBoolValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4219
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasIntValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4220
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->getIntValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4223
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasDoubleValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4224
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->getDoubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 4227
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->cachedSize:I

    .line 4228
    return v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4096
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->stringValue_:Ljava/lang/String;

    return-object v0
.end method

.method public hasArgName()Z
    .locals 1

    .prologue
    .line 4080
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasArgName:Z

    return v0
.end method

.method public hasBoolValue()Z
    .locals 1

    .prologue
    .line 4114
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasBoolValue:Z

    return v0
.end method

.method public hasDoubleValue()Z
    .locals 1

    .prologue
    .line 4148
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasDoubleValue:Z

    return v0
.end method

.method public hasIntValue()Z
    .locals 1

    .prologue
    .line 4131
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasIntValue:Z

    return v0
.end method

.method public hasStringValue()Z
    .locals 1

    .prologue
    .line 4097
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasStringValue:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4171
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4236
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4237
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 4241
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4242
    :sswitch_0
    return-object p0

    .line 4247
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->setArgName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    goto :goto_0

    .line 4251
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->setStringValue(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    goto :goto_0

    .line 4255
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->setBoolValue(Z)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    goto :goto_0

    .line 4259
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->setIntValue(I)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    goto :goto_0

    .line 4263
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->setDoubleValue(D)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    goto :goto_0

    .line 4237
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x29 -> :sswitch_5
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
    .line 4070
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4278
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4272
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;

    return-object v0
.end method

.method public setArgName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1
    .parameter "value"

    .prologue
    .line 4082
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasArgName:Z

    .line 4083
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->argName_:Ljava/lang/String;

    .line 4084
    return-object p0
.end method

.method public setBoolValue(Z)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1
    .parameter "value"

    .prologue
    .line 4116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasBoolValue:Z

    .line 4117
    iput-boolean p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->boolValue_:Z

    .line 4118
    return-object p0
.end method

.method public setDoubleValue(D)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1
    .parameter "value"

    .prologue
    .line 4150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasDoubleValue:Z

    .line 4151
    iput-wide p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->doubleValue_:D

    .line 4152
    return-object p0
.end method

.method public setIntValue(I)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1
    .parameter "value"

    .prologue
    .line 4133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasIntValue:Z

    .line 4134
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->intValue_:I

    .line 4135
    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;
    .locals 1
    .parameter "value"

    .prologue
    .line 4099
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasStringValue:Z

    .line 4100
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->stringValue_:Ljava/lang/String;

    .line 4101
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4177
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasArgName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4178
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->getArgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4180
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4181
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4183
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasBoolValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4184
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->getBoolValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 4186
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasIntValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4187
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->getIntValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4189
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->hasDoubleValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4190
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenApplicationAction$ArgValue;->getDoubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 4192
    :cond_4
    return-void
.end method
