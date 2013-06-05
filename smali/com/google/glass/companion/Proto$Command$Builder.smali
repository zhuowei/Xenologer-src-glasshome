.class public final Lcom/google/glass/companion/Proto$Command$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$CommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/glass/companion/Proto$Command;",
        "Lcom/google/glass/companion/Proto$Command$Builder;",
        ">;",
        "Lcom/google/glass/companion/Proto$CommandOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private command_:Lcom/google/glass/companion/Proto$Command$CommandType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 10087
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10168
    sget-object v0, Lcom/google/glass/companion/Proto$Command$CommandType;->UNPAIR:Lcom/google/glass/companion/Proto$Command$CommandType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Command$Builder;->command_:Lcom/google/glass/companion/Proto$Command$CommandType;

    .line 10088
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Command$Builder;->maybeForceBuilderInitialization()V

    .line 10089
    return-void
.end method

.method static synthetic access$9200()Lcom/google/glass/companion/Proto$Command$Builder;
    .locals 1

    .prologue
    .line 10080
    invoke-static {}, Lcom/google/glass/companion/Proto$Command$Builder;->create()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$Command$Builder;
    .locals 1

    .prologue
    .line 10094
    new-instance v0, Lcom/google/glass/companion/Proto$Command$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Command$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 10092
    return-void
.end method


# virtual methods
.method public build()Lcom/google/glass/companion/Proto$Command;
    .locals 2

    .prologue
    .line 10113
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    .line 10114
    .local v0, result:Lcom/google/glass/companion/Proto$Command;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Command;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10115
    invoke-static {v0}, Lcom/google/glass/companion/Proto$Command$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10117
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10080
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command$Builder;->build()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$Command;
    .locals 5

    .prologue
    .line 10121
    new-instance v1, Lcom/google/glass/companion/Proto$Command;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$Command;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 10122
    .local v1, result:Lcom/google/glass/companion/Proto$Command;
    iget v0, p0, Lcom/google/glass/companion/Proto$Command$Builder;->bitField0_:I

    .line 10123
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 10124
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 10125
    or-int/lit8 v2, v2, 0x1

    .line 10127
    :cond_0
    iget-object v3, p0, Lcom/google/glass/companion/Proto$Command$Builder;->command_:Lcom/google/glass/companion/Proto$Command$CommandType;

    #setter for: Lcom/google/glass/companion/Proto$Command;->command_:Lcom/google/glass/companion/Proto$Command$CommandType;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$Command;->access$9402(Lcom/google/glass/companion/Proto$Command;Lcom/google/glass/companion/Proto$Command$CommandType;)Lcom/google/glass/companion/Proto$Command$CommandType;

    .line 10128
    #setter for: Lcom/google/glass/companion/Proto$Command;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$Command;->access$9502(Lcom/google/glass/companion/Proto$Command;I)I

    .line 10129
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10080
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$Command$Builder;
    .locals 1

    .prologue
    .line 10098
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10099
    sget-object v0, Lcom/google/glass/companion/Proto$Command$CommandType;->UNPAIR:Lcom/google/glass/companion/Proto$Command$CommandType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Command$Builder;->command_:Lcom/google/glass/companion/Proto$Command$CommandType;

    .line 10100
    iget v0, p0, Lcom/google/glass/companion/Proto$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Command$Builder;->bitField0_:I

    .line 10101
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 10080
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command$Builder;->clear()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10080
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command$Builder;->clear()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCommand()Lcom/google/glass/companion/Proto$Command$Builder;
    .locals 1

    .prologue
    .line 10197
    iget v0, p0, Lcom/google/glass/companion/Proto$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$Command$Builder;->bitField0_:I

    .line 10198
    sget-object v0, Lcom/google/glass/companion/Proto$Command$CommandType;->UNPAIR:Lcom/google/glass/companion/Proto$Command$CommandType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Command$Builder;->command_:Lcom/google/glass/companion/Proto$Command$CommandType;

    .line 10200
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$Command$Builder;
    .locals 2

    .prologue
    .line 10105
    invoke-static {}, Lcom/google/glass/companion/Proto$Command$Builder;->create()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$Command$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 10080
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command$Builder;->clone()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 10080
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command$Builder;->clone()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 10080
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command$Builder;->clone()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 10080
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command$Builder;->clone()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCommand()Lcom/google/glass/companion/Proto$Command$CommandType;
    .locals 1

    .prologue
    .line 10179
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Command$Builder;->command_:Lcom/google/glass/companion/Proto$Command$CommandType;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Command;
    .locals 1

    .prologue
    .line 10109
    invoke-static {}, Lcom/google/glass/companion/Proto$Command;->getDefaultInstance()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 10080
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 10080
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    return-object v0
.end method

.method public hasCommand()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10173
    iget v1, p0, Lcom/google/glass/companion/Proto$Command$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 10142
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command$Builder;->hasCommand()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10144
    const/4 v0, 0x0

    .line 10146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 10133
    invoke-static {}, Lcom/google/glass/companion/Proto$Command;->getDefaultInstance()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 10138
    :goto_0
    return-object p0

    .line 10134
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Command;->hasCommand()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10135
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$Command;->getCommand()Lcom/google/glass/companion/Proto$Command$CommandType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Command$Builder;->setCommand(Lcom/google/glass/companion/Proto$Command$CommandType;)Lcom/google/glass/companion/Proto$Command$Builder;

    .line 10137
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    #getter for: Lcom/google/glass/companion/Proto$Command;->unknownFields:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$Command;->access$9600(Lcom/google/glass/companion/Proto$Command;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$Command$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Command$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10153
    const/4 v2, 0x0

    .line 10155
    .local v2, parsedMessage:Lcom/google/glass/companion/Proto$Command;
    :try_start_0
    sget-object v3, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10160
    if-eqz v2, :cond_0

    .line 10161
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$Command$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command$Builder;

    .line 10164
    :cond_0
    return-object p0

    .line 10156
    :catch_0
    move-exception v1

    .line 10157
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    move-object v2, v0

    .line 10158
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10160
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 10161
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$Command$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command$Builder;

    :cond_1
    throw v3
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10080
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$Command$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10080
    check-cast p1, Lcom/google/glass/companion/Proto$Command;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$Command$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10080
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$Command$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCommand(Lcom/google/glass/companion/Proto$Command$CommandType;)Lcom/google/glass/companion/Proto$Command$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 10185
    if-nez p1, :cond_0

    .line 10186
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10188
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$Command$Builder;->bitField0_:I

    .line 10189
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Command$Builder;->command_:Lcom/google/glass/companion/Proto$Command$CommandType;

    .line 10191
    return-object p0
.end method
