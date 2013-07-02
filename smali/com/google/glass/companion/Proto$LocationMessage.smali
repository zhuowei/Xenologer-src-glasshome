.class public final Lcom/google/glass/companion/Proto$LocationMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$LocationMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocationMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$LocationMessage$Builder;,
        Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    }
.end annotation


# static fields
.field public static final LOCATION_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$LocationMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROVIDER_FIELD_NUMBER:I = 0x2

.field public static final RECEIVER_FIELD_NUMBER:I = 0x5

.field public static final STATUS_FIELD_NUMBER:I = 0x4

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$LocationMessage;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private location_:Lcom/google/glass/companion/Proto$Location;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private provider_:Ljava/lang/Object;

.field private receiver_:Ljava/lang/Object;

.field private status_:I

.field private type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

.field private final unknownFields:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8062
    new-instance v0, Lcom/google/glass/companion/Proto$LocationMessage$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationMessage$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 8396
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 8961
    new-instance v0, Lcom/google/glass/companion/Proto$LocationMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->defaultInstance:Lcom/google/glass/companion/Proto$LocationMessage;

    .line 8962
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->defaultInstance:Lcom/google/glass/companion/Proto$LocationMessage;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationMessage;->initFields()V

    .line 8963
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 12
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 7979
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8319
    iput-byte v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    .line 8357
    iput v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedSerializedSize:I

    .line 7980
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->initFields()V

    .line 7981
    const/4 v3, 0x0

    .line 7982
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v8

    .line 7984
    .local v8, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v8}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v7

    .line 7988
    .local v7, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v1, 0x0

    .line 7989
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 7990
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v6

    .line 7991
    .local v6, tag:I
    sparse-switch v6, :sswitch_data_0

    .line 7996
    invoke-virtual {p0, p1, v7, p2, v6}, Lcom/google/glass/companion/Proto$LocationMessage;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 7998
    const/4 v1, 0x1

    goto :goto_0

    .line 7993
    :sswitch_0
    const/4 v1, 0x1

    .line 7994
    goto :goto_0

    .line 8003
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 8004
    .local v4, rawValue:I
    invoke-static {v4}, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->valueOf(I)Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    move-result-object v9

    .line 8005
    .local v9, value:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    if-nez v9, :cond_1

    .line 8006
    invoke-virtual {v7, v6}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 8007
    invoke-virtual {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 8046
    .end local v4           #rawValue:I
    .end local v6           #tag:I
    .end local v9           #value:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    :catch_0
    move-exception v2

    .line 8047
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v10

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8052
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v10

    .line 8053
    :try_start_2
    invoke-virtual {v7}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 8057
    invoke-virtual {v8}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v11

    iput-object v11, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 8059
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->makeExtensionsImmutable()V

    throw v10

    .line 8009
    .restart local v4       #rawValue:I
    .restart local v6       #tag:I
    .restart local v9       #value:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    :cond_1
    :try_start_3
    iget v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 8010
    iput-object v9, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 8048
    .end local v4           #rawValue:I
    .end local v6           #tag:I
    .end local v9           #value:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    :catch_1
    move-exception v2

    .line 8049
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    new-instance v10, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v10

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 8015
    .end local v2           #e:Ljava/io/IOException;
    .restart local v6       #tag:I
    :sswitch_2
    :try_start_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8016
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 8017
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    goto :goto_0

    .line 8021
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_3
    const/4 v5, 0x0

    .line 8022
    .local v5, subBuilder:Lcom/google/glass/companion/Proto$Location$Builder;
    iget v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v10, v10, 0x4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_2

    .line 8023
    iget-object v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-virtual {v10}, Lcom/google/glass/companion/Proto$Location;->toBuilder()Lcom/google/glass/companion/Proto$Location$Builder;

    move-result-object v5

    .line 8025
    :cond_2
    sget-object v10, Lcom/google/glass/companion/Proto$Location;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    check-cast v10, Lcom/google/glass/companion/Proto$Location;

    iput-object v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 8026
    if-eqz v5, :cond_3

    .line 8027
    iget-object v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-virtual {v5, v10}, Lcom/google/glass/companion/Proto$Location$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location$Builder;

    .line 8028
    invoke-virtual {v5}, Lcom/google/glass/companion/Proto$Location$Builder;->buildPartial()Lcom/google/glass/companion/Proto$Location;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 8030
    :cond_3
    iget v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v10, v10, 0x4

    iput v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    goto/16 :goto_0

    .line 8034
    .end local v5           #subBuilder:Lcom/google/glass/companion/Proto$Location$Builder;
    :sswitch_4
    iget v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 8035
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v10

    iput v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    goto/16 :goto_0

    .line 8039
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8040
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    or-int/lit8 v10, v10, 0x10

    iput v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    .line 8041
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 8053
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v6           #tag:I
    :cond_4
    :try_start_6
    invoke-virtual {v7}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 8057
    invoke-virtual {v8}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 8059
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->makeExtensionsImmutable()V

    .line 8061
    return-void

    .line 8054
    :catch_2
    move-exception v10

    .line 8057
    invoke-virtual {v8}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v10

    invoke-virtual {v8}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v11

    iput-object v11, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v10

    .line 8054
    :catch_3
    move-exception v11

    .line 8057
    invoke-virtual {v8}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v11

    iput-object v11, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    goto/16 :goto_1

    :catchall_2
    move-exception v10

    invoke-virtual {v8}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v11

    iput-object v11, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v10

    .line 7991
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 7955
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 7961
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 8319
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    .line 8357
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedSerializedSize:I

    .line 7962
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 7963
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7955
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$LocationMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 7964
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8319
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    .line 8357
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedSerializedSize:I

    .line 7964
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$7802(Lcom/google/glass/companion/Proto$LocationMessage;Lcom/google/glass/companion/Proto$LocationMessage$MessageType;)Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7955
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    return-object p1
.end method

.method static synthetic access$7900(Lcom/google/glass/companion/Proto$LocationMessage;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7955
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7902(Lcom/google/glass/companion/Proto$LocationMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7955
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8002(Lcom/google/glass/companion/Proto$LocationMessage;Lcom/google/glass/companion/Proto$Location;)Lcom/google/glass/companion/Proto$Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7955
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    return-object p1
.end method

.method static synthetic access$8102(Lcom/google/glass/companion/Proto$LocationMessage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7955
    iput p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    return p1
.end method

.method static synthetic access$8200(Lcom/google/glass/companion/Proto$LocationMessage;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7955
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8202(Lcom/google/glass/companion/Proto$LocationMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7955
    iput-object p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8302(Lcom/google/glass/companion/Proto$LocationMessage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7955
    iput p1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    return p1
.end method

.method static synthetic access$8400(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7955
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 7968
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->defaultInstance:Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 8313
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->LOCATION_CHANGED:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    .line 8314
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    .line 8315
    invoke-static {}, Lcom/google/glass/companion/Proto$Location;->getDefaultInstance()Lcom/google/glass/companion/Proto$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    .line 8316
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    .line 8317
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    .line 8318
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 8458
    #calls: Lcom/google/glass/companion/Proto$LocationMessage$Builder;->create()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->access$7600()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 8461
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->newBuilder()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$LocationMessage$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8438
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8444
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8408
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8414
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8449
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8455
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8428
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8434
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8418
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 8424
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationMessage;
    .locals 1

    .prologue
    .line 7972
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->defaultInstance:Lcom/google/glass/companion/Proto$LocationMessage;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 7955
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$LocationMessage;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/google/glass/companion/Proto$Location;
    .locals 1

    .prologue
    .line 8229
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$LocationMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8074
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 4

    .prologue
    .line 8179
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    .line 8180
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 8181
    check-cast v1, Ljava/lang/String;

    .line 8189
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 8183
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8185
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8186
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8187
    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8189
    goto :goto_0
.end method

.method public getProviderBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 8197
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    .line 8198
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8199
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8202
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->provider_:Ljava/lang/Object;

    .line 8205
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getReceiver()Ljava/lang/String;
    .locals 4

    .prologue
    .line 8277
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    .line 8278
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 8279
    check-cast v1, Ljava/lang/String;

    .line 8287
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 8281
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8283
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8284
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8285
    iput-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 8287
    goto :goto_0
.end method

.method public getReceiverBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 8300
    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    .line 8301
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 8302
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8305
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->receiver_:Ljava/lang/Object;

    .line 8308
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 8359
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedSerializedSize:I

    .line 8360
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 8385
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 8362
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 8363
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 8364
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8367
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 8368
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getProviderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8371
    :cond_2
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 8372
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8375
    :cond_3
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 8376
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 8379
    :cond_4
    iget v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 8380
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getReceiverBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 8383
    :cond_5
    iget-object v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 8384
    iput v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedSerializedSize:I

    move v1, v0

    .line 8385
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 8252
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    return v0
.end method

.method public getType()Lcom/google/glass/companion/Proto$LocationMessage$MessageType;
    .locals 1

    .prologue
    .line 8164
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    return-object v0
.end method

.method public hasLocation()Z
    .locals 2

    .prologue
    .line 8219
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasProvider()Z
    .locals 2

    .prologue
    .line 8173
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReceiver()Z
    .locals 2

    .prologue
    .line 8266
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStatus()Z
    .locals 2

    .prologue
    .line 8242
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 8158
    iget v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

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
    .line 8399
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 8400
    const-string v0, "com.google.glass.companion.MutableProto$LocationMessage"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$LocationMessage;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 8402
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$LocationMessage;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8321
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    .line 8322
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 8333
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 8322
    goto :goto_0

    .line 8324
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->hasType()Z

    move-result v3

    if-nez v3, :cond_2

    .line 8325
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    move v1, v2

    .line 8326
    goto :goto_0

    .line 8328
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->hasProvider()Z

    move-result v3

    if-nez v3, :cond_3

    .line 8329
    iput-byte v2, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    move v1, v2

    .line 8330
    goto :goto_0

    .line 8332
    :cond_3
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 8459
    invoke-static {}, Lcom/google/glass/companion/Proto$LocationMessage;->newBuilder()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7955
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->newBuilderForType()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$LocationMessage$Builder;
    .locals 1

    .prologue
    .line 8463
    invoke-static {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->newBuilder(Lcom/google/glass/companion/Proto$LocationMessage;)Lcom/google/glass/companion/Proto$LocationMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 7955
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->toBuilder()Lcom/google/glass/companion/Proto$LocationMessage$Builder;

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
    .line 8392
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 8338
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getSerializedSize()I

    .line 8339
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 8340
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->type_:Lcom/google/glass/companion/Proto$LocationMessage$MessageType;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$LocationMessage$MessageType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 8342
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 8343
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getProviderBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8345
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 8346
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$LocationMessage;->location_:Lcom/google/glass/companion/Proto$Location;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 8348
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 8349
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->status_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 8351
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 8352
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$LocationMessage;->getReceiverBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8354
    :cond_4
    iget-object v0, p0, Lcom/google/glass/companion/Proto$LocationMessage;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 8355
    return-void
.end method
