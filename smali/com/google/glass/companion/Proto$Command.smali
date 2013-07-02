.class public final Lcom/google/glass/companion/Proto$Command;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$CommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Command"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$Command$Builder;,
        Lcom/google/glass/companion/Proto$Command$CommandType;
    }
.end annotation


# static fields
.field public static final COMMAND_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$Command;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$Command;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private command_:Lcom/google/glass/companion/Proto$Command$CommandType;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13192
    new-instance v0, Lcom/google/glass/companion/Proto$Command$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Command$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    .line 13352
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$Command;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 13557
    new-instance v0, Lcom/google/glass/companion/Proto$Command;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$Command;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$Command;->defaultInstance:Lcom/google/glass/companion/Proto$Command;

    .line 13558
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->defaultInstance:Lcom/google/glass/companion/Proto$Command;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$Command;->initFields()V

    .line 13559
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 10
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 13139
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13307
    iput-byte v8, p0, Lcom/google/glass/companion/Proto$Command;->memoizedIsInitialized:B

    .line 13329
    iput v8, p0, Lcom/google/glass/companion/Proto$Command;->memoizedSerializedSize:I

    .line 13140
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$Command;->initFields()V

    .line 13141
    const/4 v2, 0x0

    .line 13142
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v6

    .line 13144
    .local v6, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v5

    .line 13148
    .local v5, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v0, 0x0

    .line 13149
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 13150
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 13151
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 13156
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/glass/companion/Proto$Command;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 13158
    const/4 v0, 0x1

    goto :goto_0

    .line 13153
    :sswitch_0
    const/4 v0, 0x1

    .line 13154
    goto :goto_0

    .line 13163
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 13164
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/glass/companion/Proto$Command$CommandType;->valueOf(I)Lcom/google/glass/companion/Proto$Command$CommandType;

    move-result-object v7

    .line 13165
    .local v7, value:Lcom/google/glass/companion/Proto$Command$CommandType;
    if-nez v7, :cond_1

    .line 13166
    invoke-virtual {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 13167
    invoke-virtual {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 13176
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v7           #value:Lcom/google/glass/companion/Proto$Command$CommandType;
    :catch_0
    move-exception v1

    .line 13177
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13182
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    .line 13183
    :try_start_2
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 13187
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$Command;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 13189
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command;->makeExtensionsImmutable()V

    throw v8

    .line 13169
    .restart local v3       #rawValue:I
    .restart local v4       #tag:I
    .restart local v7       #value:Lcom/google/glass/companion/Proto$Command$CommandType;
    :cond_1
    :try_start_3
    iget v8, p0, Lcom/google/glass/companion/Proto$Command;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/glass/companion/Proto$Command;->bitField0_:I

    .line 13170
    iput-object v7, p0, Lcom/google/glass/companion/Proto$Command;->command_:Lcom/google/glass/companion/Proto$Command$CommandType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 13178
    .end local v3           #rawValue:I
    .end local v4           #tag:I
    .end local v7           #value:Lcom/google/glass/companion/Proto$Command$CommandType;
    :catch_1
    move-exception v1

    .line 13179
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 13183
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    :try_start_5
    invoke-virtual {v5}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 13187
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Command;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 13189
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command;->makeExtensionsImmutable()V

    .line 13191
    return-void

    .line 13184
    :catch_2
    move-exception v8

    .line 13187
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/companion/Proto$Command;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v8

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$Command;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v8

    .line 13184
    :catch_3
    move-exception v9

    .line 13187
    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$Command;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_1

    :catchall_2
    move-exception v8

    invoke-virtual {v6}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$Command;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v8

    .line 13151
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13115
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$Command;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 13121
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13307
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Command;->memoizedIsInitialized:B

    .line 13329
    iput v0, p0, Lcom/google/glass/companion/Proto$Command;->memoizedSerializedSize:I

    .line 13122
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Command;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 13123
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13115
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$Command;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 13124
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13307
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$Command;->memoizedIsInitialized:B

    .line 13329
    iput v0, p0, Lcom/google/glass/companion/Proto$Command;->memoizedSerializedSize:I

    .line 13124
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Command;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$13502(Lcom/google/glass/companion/Proto$Command;Lcom/google/glass/companion/Proto$Command$CommandType;)Lcom/google/glass/companion/Proto$Command$CommandType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13115
    iput-object p1, p0, Lcom/google/glass/companion/Proto$Command;->command_:Lcom/google/glass/companion/Proto$Command$CommandType;

    return-object p1
.end method

.method static synthetic access$13602(Lcom/google/glass/companion/Proto$Command;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13115
    iput p1, p0, Lcom/google/glass/companion/Proto$Command;->bitField0_:I

    return p1
.end method

.method static synthetic access$13700(Lcom/google/glass/companion/Proto$Command;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13115
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Command;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$Command;
    .locals 1

    .prologue
    .line 13128
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->defaultInstance:Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 13305
    sget-object v0, Lcom/google/glass/companion/Proto$Command$CommandType;->UNPAIR:Lcom/google/glass/companion/Proto$Command$CommandType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$Command;->command_:Lcom/google/glass/companion/Proto$Command$CommandType;

    .line 13306
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$Command$Builder;
    .locals 1

    .prologue
    .line 13414
    #calls: Lcom/google/glass/companion/Proto$Command$Builder;->create()Lcom/google/glass/companion/Proto$Command$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$Command$Builder;->access$13300()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 13417
    invoke-static {}, Lcom/google/glass/companion/Proto$Command;->newBuilder()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$Command$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13394
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13400
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13364
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13370
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13405
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13411
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13384
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13390
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13374
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$Command;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13380
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method


# virtual methods
.method public getCommand()Lcom/google/glass/companion/Proto$Command$CommandType;
    .locals 1

    .prologue
    .line 13301
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Command;->command_:Lcom/google/glass/companion/Proto$Command$CommandType;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Command;
    .locals 1

    .prologue
    .line 13132
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->defaultInstance:Lcom/google/glass/companion/Proto$Command;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 13115
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$Command;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$Command;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13204
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 13331
    iget v0, p0, Lcom/google/glass/companion/Proto$Command;->memoizedSerializedSize:I

    .line 13332
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 13341
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 13334
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 13335
    iget v2, p0, Lcom/google/glass/companion/Proto$Command;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 13336
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Command;->command_:Lcom/google/glass/companion/Proto$Command$CommandType;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$Command$CommandType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 13339
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$Command;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 13340
    iput v0, p0, Lcom/google/glass/companion/Proto$Command;->memoizedSerializedSize:I

    move v1, v0

    .line 13341
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public hasCommand()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 13295
    iget v1, p0, Lcom/google/glass/companion/Proto$Command;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 13355
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 13356
    const-string v0, "com.google.glass.companion.MutableProto$Command"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$Command;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$Command;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 13358
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$Command;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 13309
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$Command;->memoizedIsInitialized:B

    .line 13310
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 13317
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 13310
    goto :goto_0

    .line 13312
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command;->hasCommand()Z

    move-result v3

    if-nez v3, :cond_2

    .line 13313
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$Command;->memoizedIsInitialized:B

    move v1, v2

    .line 13314
    goto :goto_0

    .line 13316
    :cond_2
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$Command;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$Command$Builder;
    .locals 1

    .prologue
    .line 13415
    invoke-static {}, Lcom/google/glass/companion/Proto$Command;->newBuilder()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13115
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command;->newBuilderForType()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$Command$Builder;
    .locals 1

    .prologue
    .line 13419
    invoke-static {p0}, Lcom/google/glass/companion/Proto$Command;->newBuilder(Lcom/google/glass/companion/Proto$Command;)Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 13115
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command;->toBuilder()Lcom/google/glass/companion/Proto$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 13348
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 13322
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$Command;->getSerializedSize()I

    .line 13323
    iget v0, p0, Lcom/google/glass/companion/Proto$Command;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 13324
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Command;->command_:Lcom/google/glass/companion/Proto$Command$CommandType;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$Command$CommandType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 13326
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$Command;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 13327
    return-void
.end method
