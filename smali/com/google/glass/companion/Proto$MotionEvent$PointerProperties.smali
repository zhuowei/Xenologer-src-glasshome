.class public final Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$MotionEvent$PointerPropertiesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerProperties"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;
    }
.end annotation


# static fields
.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOOL_TYPE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private id_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private toolType_:I

.field private final unknownFields:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4214
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    .line 4312
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 4545
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->defaultInstance:Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    .line 4546
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->defaultInstance:Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->initFields()V

    .line 4547
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 4163
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4264
    iput-byte v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->memoizedIsInitialized:B

    .line 4285
    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->memoizedSerializedSize:I

    .line 4164
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->initFields()V

    .line 4165
    const/4 v2, 0x0

    .line 4166
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v5

    .line 4168
    .local v5, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v4

    .line 4172
    .local v4, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v0, 0x0

    .line 4173
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 4174
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    .line 4175
    .local v3, tag:I
    sparse-switch v3, :sswitch_data_0

    .line 4180
    invoke-virtual {p0, p1, v4, p2, v3}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4182
    const/4 v0, 0x1

    goto :goto_0

    .line 4177
    :sswitch_0
    const/4 v0, 0x1

    .line 4178
    goto :goto_0

    .line 4187
    :sswitch_1
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    .line 4188
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4198
    .end local v3           #tag:I
    :catch_0
    move-exception v1

    .line 4199
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4204
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    .line 4205
    :try_start_2
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 4209
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 4211
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->makeExtensionsImmutable()V

    throw v6

    .line 4192
    .restart local v3       #tag:I
    :sswitch_2
    :try_start_3
    iget v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    .line 4193
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 4200
    .end local v3           #tag:I
    :catch_1
    move-exception v1

    .line 4201
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4205
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    :try_start_5
    invoke-virtual {v4}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 4209
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 4211
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->makeExtensionsImmutable()V

    .line 4213
    return-void

    .line 4206
    :catch_2
    move-exception v6

    .line 4209
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v6

    .line 4206
    :catch_3
    move-exception v7

    .line 4209
    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_1

    :catchall_2
    move-exception v6

    invoke-virtual {v5}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v6

    .line 4175
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 4139
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4145
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4264
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->memoizedIsInitialized:B

    .line 4285
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->memoizedSerializedSize:I

    .line 4146
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 4147
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4139
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4148
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4264
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->memoizedIsInitialized:B

    .line 4285
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->memoizedSerializedSize:I

    .line 4148
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$2902(Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4139
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    return p1
.end method

.method static synthetic access$3002(Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4139
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    return p1
.end method

.method static synthetic access$3102(Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4139
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    return p1
.end method

.method static synthetic access$3200(Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4139
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1

    .prologue
    .line 4152
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->defaultInstance:Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4261
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    .line 4262
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    .line 4263
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;
    .locals 1

    .prologue
    .line 4374
    #calls: Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->create()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->access$2700()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 4377
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->newBuilder()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4354
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4360
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4324
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4330
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4365
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4371
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4344
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4350
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4334
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4340
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;
    .locals 1

    .prologue
    .line 4156
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->defaultInstance:Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4139
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 4242
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4226
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4287
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->memoizedSerializedSize:I

    .line 4288
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 4301
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 4290
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 4291
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 4292
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4295
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 4296
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4299
    :cond_2
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 4300
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->memoizedSerializedSize:I

    move v1, v0

    .line 4301
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getToolType()I
    .locals 1

    .prologue
    .line 4257
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    return v0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4236
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasToolType()Z
    .locals 2

    .prologue
    .line 4251
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

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

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 4315
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 4316
    const-string v0, "com.google.glass.companion.MutableProto$MotionEvent$PointerProperties"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 4318
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 4266
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->memoizedIsInitialized:B

    .line 4267
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 4270
    :goto_0
    return v1

    .line 4267
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 4269
    :cond_1
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;
    .locals 1

    .prologue
    .line 4375
    invoke-static {}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->newBuilder()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4139
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->newBuilderForType()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;
    .locals 1

    .prologue
    .line 4379
    invoke-static {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->newBuilder(Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;)Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4139
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toBuilder()Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties$Builder;

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
    .line 4308
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 4275
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->getSerializedSize()I

    .line 4276
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 4277
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->id_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4279
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 4280
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->toolType_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4282
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerProperties;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 4283
    return-void
.end method
