.class public final Lcom/google/majel/proto/AliasProto$Alias;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "AliasProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/AliasProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alias"
.end annotation


# static fields
.field public static final ALIAS_LOCATION_AVAILABLE_FIELD_NUMBER:I = 0x2

.field public static final ALIAS_TYPE_FIELD_NUMBER:I = 0x1

.field public static final ALIAS_TYPE_HOME:I = 0x0

.field public static final ALIAS_TYPE_WORK:I = 0x1


# instance fields
.field private aliasLocationAvailable_:Z

.field private aliasType_:I

.field private cachedSize:I

.field private hasAliasLocationAvailable:Z

.field private hasAliasType:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 19
    iput v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasType_:I

    .line 36
    iput-boolean v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasLocationAvailable_:Z

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/AliasProto$Alias;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/google/majel/proto/AliasProto$Alias;

    invoke-direct {v0}, Lcom/google/majel/proto/AliasProto$Alias;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/AliasProto$Alias;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/AliasProto$Alias;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/AliasProto$Alias;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/google/majel/proto/AliasProto$Alias;

    invoke-direct {v0}, Lcom/google/majel/proto/AliasProto$Alias;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/AliasProto$Alias;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/AliasProto$Alias;

    check-cast v0, Lcom/google/majel/proto/AliasProto$Alias;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/AliasProto$Alias;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/google/majel/proto/AliasProto$Alias;->clearAliasType()Lcom/google/majel/proto/AliasProto$Alias;

    .line 52
    invoke-virtual {p0}, Lcom/google/majel/proto/AliasProto$Alias;->clearAliasLocationAvailable()Lcom/google/majel/proto/AliasProto$Alias;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->cachedSize:I

    .line 54
    return-object p0
.end method

.method public clearAliasLocationAvailable()Lcom/google/majel/proto/AliasProto$Alias;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->hasAliasLocationAvailable:Z

    .line 46
    iput-boolean v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasLocationAvailable_:Z

    .line 47
    return-object p0
.end method

.method public clearAliasType()Lcom/google/majel/proto/AliasProto$Alias;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->hasAliasType:Z

    .line 29
    iput v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasType_:I

    .line 30
    return-object p0
.end method

.method public getAliasLocationAvailable()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasLocationAvailable_:Z

    return v0
.end method

.method public getAliasType()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasType_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->cachedSize:I

    if-gez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/google/majel/proto/AliasProto$Alias;->getSerializedSize()I

    .line 79
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/AliasProto$Alias;->hasAliasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/AliasProto$Alias;->getAliasType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/AliasProto$Alias;->hasAliasLocationAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/AliasProto$Alias;->getAliasLocationAvailable()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->cachedSize:I

    .line 94
    return v0
.end method

.method public hasAliasLocationAvailable()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->hasAliasLocationAvailable:Z

    return v0
.end method

.method public hasAliasType()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->hasAliasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/AliasProto$Alias;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 103
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 107
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/AliasProto$Alias;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    :sswitch_0
    return-object p0

    .line 113
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/AliasProto$Alias;->setAliasType(I)Lcom/google/majel/proto/AliasProto$Alias;

    goto :goto_0

    .line 117
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/AliasProto$Alias;->setAliasLocationAvailable(Z)Lcom/google/majel/proto/AliasProto$Alias;

    goto :goto_0

    .line 103
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/AliasProto$Alias;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/AliasProto$Alias;

    move-result-object v0

    return-object v0
.end method

.method public setAliasLocationAvailable(Z)Lcom/google/majel/proto/AliasProto$Alias;
    .locals 1
    .parameter "value"

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->hasAliasLocationAvailable:Z

    .line 41
    iput-boolean p1, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasLocationAvailable_:Z

    .line 42
    return-object p0
.end method

.method public setAliasType(I)Lcom/google/majel/proto/AliasProto$Alias;
    .locals 1
    .parameter "value"

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/AliasProto$Alias;->hasAliasType:Z

    .line 24
    iput p1, p0, Lcom/google/majel/proto/AliasProto$Alias;->aliasType_:I

    .line 25
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
    .line 64
    invoke-virtual {p0}, Lcom/google/majel/proto/AliasProto$Alias;->hasAliasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/AliasProto$Alias;->getAliasType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/AliasProto$Alias;->hasAliasLocationAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/AliasProto$Alias;->getAliasLocationAvailable()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 70
    :cond_1
    return-void
.end method
