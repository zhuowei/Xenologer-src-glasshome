.class public final Lcom/google/majel/proto/ActionProtos$Contact;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Contact"
.end annotation


# static fields
.field public static final DIGIT_FIELD_NUMBER:I = 0x2

.field public static final EMAIL_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private digit_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private email_:Ljava/lang/String;

.field private hasEmail:Z

.field private hasName:Z

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->name_:Ljava/lang/String;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit_:Ljava/util/List;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->email_:Ljava/lang/String;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Contact;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$Contact;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Contact;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Contact;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$Contact;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Contact;

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Contact;

    return-object v0
.end method


# virtual methods
.method public addDigit(I)Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 2
    .parameter "value"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit_:Ljava/util/List;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Contact;->clearName()Lcom/google/majel/proto/ActionProtos$Contact;

    .line 75
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Contact;->clearDigit()Lcom/google/majel/proto/ActionProtos$Contact;

    .line 76
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Contact;->clearEmail()Lcom/google/majel/proto/ActionProtos$Contact;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->cachedSize:I

    .line 78
    return-object p0
.end method

.method public clearDigit()Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit_:Ljava/util/List;

    .line 53
    return-object p0
.end method

.method public clearEmail()Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->hasEmail:Z

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->email_:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->hasName:Z

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->name_:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->cachedSize:I

    if-gez v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Contact;->getSerializedSize()I

    .line 106
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->cachedSize:I

    return v0
.end method

.method public getDigit(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDigitCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDigitList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit_:Ljava/util/List;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->email_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 111
    const/4 v3, 0x0

    .line 112
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Contact;->hasName()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Contact;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 118
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Contact;->getDigitList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 119
    .local v1, element:I
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 122
    .end local v1           #element:I
    :cond_1
    add-int/2addr v3, v0

    .line 123
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Contact;->getDigitList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 125
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Contact;->hasEmail()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 126
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Contact;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 129
    :cond_2
    iput v3, p0, Lcom/google/majel/proto/ActionProtos$Contact;->cachedSize:I

    .line 130
    return v3
.end method

.method public hasEmail()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->hasEmail:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->hasName:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 139
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 143
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionProtos$Contact;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    :sswitch_0
    return-object p0

    .line 149
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionProtos$Contact;->setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionProtos$Contact;

    goto :goto_0

    .line 153
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionProtos$Contact;->addDigit(I)Lcom/google/majel/proto/ActionProtos$Contact;

    goto :goto_0

    .line 157
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionProtos$Contact;->setEmail(Ljava/lang/String;)Lcom/google/majel/proto/ActionProtos$Contact;

    goto :goto_0

    .line 139
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionProtos$Contact;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionProtos$Contact;

    move-result-object v0

    return-object v0
.end method

.method public setDigit(II)Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->digit_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 1
    .parameter "value"

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->hasEmail:Z

    .line 64
    iput-object p1, p0, Lcom/google/majel/proto/ActionProtos$Contact;->email_:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionProtos$Contact;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionProtos$Contact;->hasName:Z

    .line 20
    iput-object p1, p0, Lcom/google/majel/proto/ActionProtos$Contact;->name_:Ljava/lang/String;

    .line 21
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
    .line 88
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Contact;->hasName()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Contact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Contact;->getDigitList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    .local v0, element:I
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    goto :goto_0

    .line 94
    .end local v0           #element:I
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Contact;->hasEmail()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Contact;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 97
    :cond_2
    return-void
.end method
