.class public final Lcom/google/majel/proto/CookieProtos$MajelCookie;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CookieProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CookieProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MajelCookie"
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasName:Z

.field private hasValue:Z

.field private name_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->name_:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->value_:Ljava/lang/String;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    invoke-direct {v0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CookieProtos$MajelCookie;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    invoke-direct {v0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    check-cast v0, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->clearName()Lcom/google/majel/proto/CookieProtos$MajelCookie;

    .line 48
    invoke-virtual {p0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->clearValue()Lcom/google/majel/proto/CookieProtos$MajelCookie;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->cachedSize:I

    .line 50
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->hasName:Z

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->name_:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public clearValue()Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->hasValue:Z

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->value_:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->cachedSize:I

    if-gez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->getSerializedSize()I

    .line 75
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->cachedSize:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->cachedSize:I

    .line 90
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->hasName:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->hasValue:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 99
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    :sswitch_0
    return-object p0

    .line 109
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->setName(Ljava/lang/String;)Lcom/google/majel/proto/CookieProtos$MajelCookie;

    goto :goto_0

    .line 113
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->setValue(Ljava/lang/String;)Lcom/google/majel/proto/CookieProtos$MajelCookie;

    goto :goto_0

    .line 99
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CookieProtos$MajelCookie;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->hasName:Z

    .line 20
    iput-object p1, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->name_:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->hasValue:Z

    .line 37
    iput-object p1, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->value_:Ljava/lang/String;

    .line 38
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
    .line 60
    invoke-virtual {p0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 66
    :cond_1
    return-void
.end method
