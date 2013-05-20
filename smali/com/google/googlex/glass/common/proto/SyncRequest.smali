.class public final Lcom/google/googlex/glass/common/proto/SyncRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "SyncRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/SyncRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    }
.end annotation


# static fields
.field public static final DELETE_FIELD_NUMBER:I = 0x4

.field public static final DEVICE_ID_FIELD_NUMBER:I = 0x5

.field public static final INSERT_REPLACE_ON_CONFLICT_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/SyncRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_FIELD_NUMBER:I = 0x1

.field public static final SUPPORTS_USER_ACTIONS_FIELD_NUMBER:I = 0x9

.field public static final UPDATE_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/SyncRequest;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private delete_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Delete;",
            ">;"
        }
    .end annotation
.end field

.field private deviceId_:Ljava/lang/Object;

.field private insertReplaceOnConflict_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private select_:Lcom/google/googlex/glass/common/proto/Select;

.field private supportsUserActions_:Z

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private update_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Update;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncRequest$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncRequest$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 456
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1810
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/SyncRequest;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/SyncRequest;

    .line 1811
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/SyncRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->initFields()V

    .line 1812
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
    const/4 v6, -0x1

    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x2

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 370
    iput-byte v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->memoizedIsInitialized:B

    .line 413
    iput v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->memoizedSerializedSize:I

    .line 39
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->initFields()V

    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v5

    .line 44
    .local v5, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 45
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_9

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 47
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 52
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/SyncRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 54
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :sswitch_0
    const/4 v0, 0x1

    .line 50
    goto :goto_0

    .line 59
    :sswitch_1
    const/4 v3, 0x0

    .line 60
    .local v3, subBuilder:Lcom/google/googlex/glass/common/proto/Select$Builder;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I

    and-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 61
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/Select;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/Select;->toBuilder()Lcom/google/googlex/glass/common/proto/Select$Builder;

    move-result-object v3

    .line 63
    :cond_1
    sget-object v6, Lcom/google/googlex/glass/common/proto/Select;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/Select;

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 64
    if-eqz v3, :cond_2

    .line 65
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/Select;

    invoke-virtual {v3, v6}, Lcom/google/googlex/glass/common/proto/Select$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select$Builder;

    .line 66
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Select$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 68
    :cond_2
    iget v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 107
    .end local v3           #subBuilder:Lcom/google/googlex/glass/common/proto/Select$Builder;
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 108
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    and-int/lit8 v7, v2, 0x2

    if-ne v7, v8, :cond_3

    .line 114
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;

    .line 116
    :cond_3
    and-int/lit8 v7, v2, 0x4

    if-ne v7, v9, :cond_4

    .line 117
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;

    .line 119
    :cond_4
    and-int/lit8 v7, v2, 0x8

    if-ne v7, v10, :cond_5

    .line 120
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;

    .line 122
    :cond_5
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 123
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->makeExtensionsImmutable()V

    throw v6

    .line 72
    .restart local v4       #tag:I
    :sswitch_2
    and-int/lit8 v6, v2, 0x2

    if-eq v6, v8, :cond_6

    .line 73
    :try_start_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;

    .line 74
    or-int/lit8 v2, v2, 0x2

    .line 76
    :cond_6
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;

    sget-object v7, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 109
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 110
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v6, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #tag:I
    :sswitch_3
    and-int/lit8 v6, v2, 0x4

    if-eq v6, v9, :cond_7

    .line 81
    :try_start_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;

    .line 82
    or-int/lit8 v2, v2, 0x4

    .line 84
    :cond_7
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;

    sget-object v7, Lcom/google/googlex/glass/common/proto/Update;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 88
    :sswitch_4
    and-int/lit8 v6, v2, 0x8

    if-eq v6, v10, :cond_8

    .line 89
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;

    .line 90
    or-int/lit8 v2, v2, 0x8

    .line 92
    :cond_8
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;

    sget-object v7, Lcom/google/googlex/glass/common/proto/Delete;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 96
    :sswitch_5
    iget v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I

    .line 97
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->deviceId_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 101
    :sswitch_6
    iget v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I

    .line 102
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->supportsUserActions_:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 113
    .end local v4           #tag:I
    :cond_9
    and-int/lit8 v6, v2, 0x2

    if-ne v6, v8, :cond_a

    .line 114
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;

    .line 116
    :cond_a
    and-int/lit8 v6, v2, 0x4

    if-ne v6, v9, :cond_b

    .line 117
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;

    .line 119
    :cond_b
    and-int/lit8 v6, v2, 0x8

    if-ne v6, v10, :cond_c

    .line 120
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;

    .line 122
    :cond_c
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 123
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->makeExtensionsImmutable()V

    .line 125
    return-void

    .line 47
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x48 -> :sswitch_6
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/SyncRequest$1;)V
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
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/SyncRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, builder:Lcom/google/protobuf/GeneratedMessage$Builder;,"Lcom/google/protobuf/GeneratedMessage$Builder<*>;"
    const/4 v0, -0x1

    .line 15
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 370
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->memoizedIsInitialized:B

    .line 413
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->memoizedSerializedSize:I

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/SyncRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 370
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->memoizedIsInitialized:B

    .line 413
    iput v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->memoizedSerializedSize:I

    .line 18
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lcom/google/googlex/glass/common/proto/SyncRequest;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->supportsUserActions_:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/google/googlex/glass/common/proto/SyncRequest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I

    return p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/SyncRequest;Lcom/google/googlex/glass/common/proto/Select;)Lcom/google/googlex/glass/common/proto/Select;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/Select;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/googlex/glass/common/proto/SyncRequest;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->deviceId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/googlex/glass/common/proto/SyncRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->deviceId_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/SyncRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_SyncRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 363
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Select;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Select;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/Select;

    .line 364
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;

    .line 365
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;

    .line 366
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;

    .line 367
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->deviceId_:Ljava/lang/Object;

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->supportsUserActions_:Z

    .line 369
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 518
    #calls: Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->access$100()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/SyncRequest;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 521
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/SyncRequest;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 504
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 468
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 474
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 478
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 484
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/SyncRequest;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncRequest;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->defaultInstance:Lcom/google/googlex/glass/common/proto/SyncRequest;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/SyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDelete(I)Lcom/google/googlex/glass/common/proto/Delete;
    .locals 1
    .parameter "index"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Delete;

    return-object v0
.end method

.method public getDeleteCount()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDeleteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Delete;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;

    return-object v0
.end method

.method public getDeleteOrBuilder(I)Lcom/google/googlex/glass/common/proto/DeleteOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/DeleteOrBuilder;

    return-object v0
.end method

.method public getDeleteOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/DeleteOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 302
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->deviceId_:Ljava/lang/Object;

    .line 303
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 304
    check-cast v1, Ljava/lang/String;

    .line 312
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 306
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 308
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->deviceId_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 312
    goto :goto_0
.end method

.method public getDeviceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 325
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->deviceId_:Ljava/lang/Object;

    .line 326
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 327
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 330
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->deviceId_:Ljava/lang/Object;

    .line 333
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

.method public getInsertReplaceOnConflict(I)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    .locals 1
    .parameter "index"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    return-object v0
.end method

.method public getInsertReplaceOnConflictCount()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInsertReplaceOnConflictList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;

    return-object v0
.end method

.method public getInsertReplaceOnConflictOrBuilder(I)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflictOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflictOrBuilder;

    return-object v0
.end method

.method public getInsertReplaceOnConflictOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflictOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/SyncRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSelect()Lcom/google/googlex/glass/common/proto/Select;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/Select;

    return-object v0
.end method

.method public getSelectOrBuilder()Lcom/google/googlex/glass/common/proto/SelectOrBuilder;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/Select;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 415
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->memoizedSerializedSize:I

    .line 416
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 445
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 418
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 419
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 420
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/Select;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 423
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 424
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 428
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 431
    :cond_3
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 432
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 435
    :cond_4
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_5

    .line 436
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getDeviceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 439
    :cond_5
    iget v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_6

    .line 440
    const/16 v3, 0x9

    iget-boolean v4, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->supportsUserActions_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 443
    :cond_6
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 444
    iput v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->memoizedSerializedSize:I

    move v2, v1

    .line 445
    .end local v1           #size:I
    .restart local v2       #size:I
    goto/16 :goto_0
.end method

.method public getSupportsUserActions()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->supportsUserActions_:Z

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUpdate(I)Lcom/google/googlex/glass/common/proto/Update;
    .locals 1
    .parameter "index"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update;

    return-object v0
.end method

.method public getUpdateCount()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUpdateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Update;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;

    return-object v0
.end method

.method public getUpdateOrBuilder(I)Lcom/google/googlex/glass/common/proto/UpdateOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UpdateOrBuilder;

    return-object v0
.end method

.method public getUpdateOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/UpdateOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;

    return-object v0
.end method

.method public hasDeviceId()Z
    .locals 2

    .prologue
    .line 291
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I

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

.method public hasSelect()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 160
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSupportsUserActions()Z
    .locals 2

    .prologue
    .line 348
    iget v0, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 133
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_SyncRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/SyncRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 459
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 460
    const-string v0, "com.google.googlex.glass.common.proto.MutableSync$SyncRequest"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 462
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/SyncRequest;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 372
    iget-byte v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->memoizedIsInitialized:B

    .line 373
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    .line 386
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 373
    goto :goto_0

    .line 375
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->hasDeviceId()Z

    move-result v4

    if-nez v4, :cond_2

    .line 376
    iput-byte v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->memoizedIsInitialized:B

    move v2, v3

    .line 377
    goto :goto_0

    .line 379
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getUpdateCount()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 380
    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getUpdate(I)Lcom/google/googlex/glass/common/proto/Update;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/Update;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_3

    .line 381
    iput-byte v3, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->memoizedIsInitialized:B

    move v2, v3

    .line 382
    goto :goto_0

    .line 379
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 385
    :cond_4
    iput-byte v2, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 519
    invoke-static {}, Lcom/google/googlex/glass/common/proto/SyncRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 528
    new-instance v0, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/SyncRequest$1;)V

    .line 529
    .local v0, builder:Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/SyncRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->newBuilderForType()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;
    .locals 1

    .prologue
    .line 523
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->newBuilder(Lcom/google/googlex/glass/common/proto/SyncRequest;)Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->toBuilder()Lcom/google/googlex/glass/common/proto/SyncRequest$Builder;

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
    .line 452
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 391
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getSerializedSize()I

    .line 392
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 393
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->select_:Lcom/google/googlex/glass/common/proto/Select;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 395
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->insertReplaceOnConflict_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 399
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->update_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 401
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 402
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->delete_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 404
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_4

    .line 405
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getDeviceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 407
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_5

    .line 408
    const/16 v1, 0x9

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/SyncRequest;->supportsUserActions_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 410
    :cond_5
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/SyncRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 411
    return-void
.end method
