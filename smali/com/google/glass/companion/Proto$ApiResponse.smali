.class public final Lcom/google/glass/companion/Proto$ApiResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$ApiResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApiResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$ApiResponse$Builder;,
        Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/glass/companion/Proto$ApiResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMELINE_ITEM_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final USER_ACTION_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/glass/companion/Proto$ApiResponse;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessageLite;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

.field private final unknownFields:Lcom/google/protobuf/ByteString;

.field private userAction_:Lcom/google/googlex/glass/common/proto/UserAction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12200
    new-instance v0, Lcom/google/glass/companion/Proto$ApiResponse$1;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiResponse$1;-><init>()V

    sput-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 12376
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 12716
    new-instance v0, Lcom/google/glass/companion/Proto$ApiResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/glass/companion/Proto$ApiResponse;-><init>(Z)V

    sput-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->defaultInstance:Lcom/google/glass/companion/Proto$ApiResponse;

    .line 12717
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->defaultInstance:Lcom/google/glass/companion/Proto$ApiResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiResponse;->initFields()V

    .line 12718
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 11
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 12121
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12321
    iput-byte v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedIsInitialized:B

    .line 12345
    iput v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedSerializedSize:I

    .line 12122
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiResponse;->initFields()V

    .line 12123
    const/4 v2, 0x0

    .line 12124
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v7

    .line 12126
    .local v7, unknownFieldsOutput:Lcom/google/protobuf/ByteString$Output;
    invoke-static {v7}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v6

    .line 12130
    .local v6, unknownFieldsCodedOutput:Lcom/google/protobuf/CodedOutputStream;
    const/4 v0, 0x0

    .line 12131
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .line 12132
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 12133
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 12138
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/glass/companion/Proto$ApiResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 12140
    const/4 v0, 0x1

    goto :goto_0

    .line 12135
    :sswitch_0
    const/4 v0, 0x1

    .line 12136
    goto :goto_0

    .line 12145
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    .line 12146
    .local v3, rawValue:I
    invoke-static {v3}, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->valueOf(I)Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    move-result-object v8

    .line 12147
    .local v8, value:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    if-nez v8, :cond_1

    .line 12148
    invoke-virtual {v6, v5}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 12149
    invoke-virtual {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 12184
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v8           #value:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    :catch_0
    move-exception v1

    .line 12185
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12190
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v9

    .line 12191
    :try_start_2
    invoke-virtual {v6}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 12195
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 12197
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse;->makeExtensionsImmutable()V

    throw v9

    .line 12151
    .restart local v3       #rawValue:I
    .restart local v5       #tag:I
    .restart local v8       #value:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    :cond_1
    :try_start_3
    iget v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    or-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    .line 12152
    iput-object v8, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 12186
    .end local v3           #rawValue:I
    .end local v5           #tag:I
    .end local v8           #value:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    :catch_1
    move-exception v1

    .line 12187
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    new-instance v9, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v9

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 12157
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #tag:I
    :sswitch_2
    const/4 v4, 0x0

    .line 12158
    .local v4, subBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    :try_start_5
    iget v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v9, v9, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 12159
    iget-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/TimelineItem;->toBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v4

    .line 12161
    :cond_2
    sget-object v9, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/googlex/glass/common/proto/TimelineItem;

    iput-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 12162
    if-eqz v4, :cond_3

    .line 12163
    iget-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v4, v9}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 12164
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 12166
    :cond_3
    iget v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    or-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    goto :goto_0

    .line 12170
    .end local v4           #subBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    :sswitch_3
    const/4 v4, 0x0

    .line 12171
    .local v4, subBuilder:Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    iget v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v9, v9, 0x4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_4

    .line 12172
    iget-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    invoke-virtual {v9}, Lcom/google/googlex/glass/common/proto/UserAction;->toBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v4

    .line 12174
    :cond_4
    sget-object v9, Lcom/google/googlex/glass/common/proto/UserAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/google/googlex/glass/common/proto/UserAction;

    iput-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    .line 12175
    if-eqz v4, :cond_5

    .line 12176
    iget-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    invoke-virtual {v4, v9}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    .line 12177
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    .line 12179
    :cond_5
    iget v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    or-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 12191
    .end local v4           #subBuilder:Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    .end local v5           #tag:I
    :cond_6
    :try_start_6
    invoke-virtual {v6}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 12195
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 12197
    :goto_2
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse;->makeExtensionsImmutable()V

    .line 12199
    return-void

    .line 12192
    :catch_2
    move-exception v9

    .line 12195
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v9

    iput-object v9, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    goto :goto_2

    :catchall_1
    move-exception v9

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v9

    .line 12192
    :catch_3
    move-exception v10

    .line 12195
    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    goto/16 :goto_1

    :catchall_2
    move-exception v9

    invoke-virtual {v7}, Lcom/google/protobuf/ByteString$Output;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v10

    iput-object v10, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    throw v9

    .line 12133
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
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
    .line 12097
    invoke-direct {p0, p1, p2}, Lcom/google/glass/companion/Proto$ApiResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 12103
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 12321
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedIsInitialized:B

    .line 12345
    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedSerializedSize:I

    .line 12104
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    .line 12105
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12097
    invoke-direct {p0, p1}, Lcom/google/glass/companion/Proto$ApiResponse;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12106
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12321
    iput-byte v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedIsInitialized:B

    .line 12345
    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedSerializedSize:I

    .line 12106
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$11702(Lcom/google/glass/companion/Proto$ApiResponse;Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;)Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12097
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    return-object p1
.end method

.method static synthetic access$11802(Lcom/google/glass/companion/Proto$ApiResponse;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12097
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object p1
.end method

.method static synthetic access$11902(Lcom/google/glass/companion/Proto$ApiResponse;Lcom/google/googlex/glass/common/proto/UserAction;)Lcom/google/googlex/glass/common/proto/UserAction;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12097
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    return-object p1
.end method

.method static synthetic access$12002(Lcom/google/glass/companion/Proto$ApiResponse;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12097
    iput p1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    return p1
.end method

.method static synthetic access$12100(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12097
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1

    .prologue
    .line 12110
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->defaultInstance:Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 12317
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->USER_ACTION:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    .line 12318
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 12319
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    .line 12320
    return-void
.end method

.method public static newBuilder()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1

    .prologue
    .line 12438
    #calls: Lcom/google/glass/companion/Proto$ApiResponse$Builder;->create()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->access$11500()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 12441
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->newBuilder()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$ApiResponse$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12418
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12424
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12388
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12394
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12429
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12435
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12408
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12414
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12398
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 12404
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiResponse;
    .locals 1

    .prologue
    .line 12114
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->defaultInstance:Lcom/google/glass/companion/Proto$ApiResponse;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 12097
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiResponse;

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
            "Lcom/google/glass/companion/Proto$ApiResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12212
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 12347
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedSerializedSize:I

    .line 12348
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 12365
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 12350
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 12351
    iget v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 12352
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    invoke-virtual {v2}, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 12355
    :cond_1
    iget v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 12356
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12359
    :cond_2
    iget v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 12360
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 12363
    :cond_3
    iget-object v2, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 12364
    iput v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 12365
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 12298
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getType()Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;
    .locals 1

    .prologue
    .line 12283
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    return-object v0
.end method

.method public getUserAction()Lcom/google/googlex/glass/common/proto/UserAction;
    .locals 1

    .prologue
    .line 12313
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    return-object v0
.end method

.method public hasTimelineItem()Z
    .locals 2

    .prologue
    .line 12292
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 12277
    iget v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserAction()Z
    .locals 2

    .prologue
    .line 12307
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

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

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessageLite;
    .locals 1

    .prologue
    .line 12379
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    if-nez v0, :cond_0

    .line 12380
    const-string v0, "com.google.glass.companion.MutableProto$ApiResponse"

    invoke-static {v0}, Lcom/google/glass/companion/Proto$ApiResponse;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessageLite;

    move-result-object v0

    sput-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    .line 12382
    :cond_0
    sget-object v0, Lcom/google/glass/companion/Proto$ApiResponse;->mutableDefault:Lcom/google/protobuf/MutableMessageLite;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 12323
    iget-byte v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedIsInitialized:B

    .line 12324
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 12327
    :goto_0
    return v1

    .line 12324
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 12326
    :cond_1
    iput-byte v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1

    .prologue
    .line 12439
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiResponse;->newBuilder()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12097
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse;->newBuilderForType()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/glass/companion/Proto$ApiResponse$Builder;
    .locals 1

    .prologue
    .line 12443
    invoke-static {p0}, Lcom/google/glass/companion/Proto$ApiResponse;->newBuilder(Lcom/google/glass/companion/Proto$ApiResponse;)Lcom/google/glass/companion/Proto$ApiResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 12097
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse;->toBuilder()Lcom/google/glass/companion/Proto$ApiResponse$Builder;

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
    .line 12372
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

    .line 12332
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiResponse;->getSerializedSize()I

    .line 12333
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 12334
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->type_:Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ApiResponse$ResponseType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 12336
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 12337
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12339
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 12340
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiResponse;->userAction_:Lcom/google/googlex/glass/common/proto/UserAction;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 12342
    :cond_2
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiResponse;->unknownFields:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawBytes(Lcom/google/protobuf/ByteString;)V

    .line 12343
    return-void
.end method
