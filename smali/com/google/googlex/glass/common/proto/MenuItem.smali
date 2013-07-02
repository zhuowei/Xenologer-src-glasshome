.class public final Lcom/google/googlex/glass/common/proto/MenuItem;
.super Lcom/google/protobuf/GeneratedMessage;
.source "MenuItem.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/MenuItemOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/MenuItem$Builder;,
        Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;,
        Lcom/google/googlex/glass/common/proto/MenuItem$State;,
        Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    }
.end annotation


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x2

.field public static final BROADCAST_ACTION_FIELD_NUMBER:I = 0x5

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMOVE_WHEN_SELECTED_FIELD_NUMBER:I = 0x7

.field public static final TRAVEL_MODE_FIELD_NUMBER:I = 0x8

.field public static final VALUE_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/MenuItem;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

.field private bitField0_:I

.field private broadcastAction_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private removeWhenSelected_:Z

.field private travelMode_:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private value_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/MenuItem$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->PARSER:Lcom/google/protobuf/Parser;

    .line 1096
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 2103
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/MenuItem;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->defaultInstance:Lcom/google/googlex/glass/common/proto/MenuItem;

    .line 2104
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->defaultInstance:Lcom/google/googlex/glass/common/proto/MenuItem;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/MenuItem;->initFields()V

    .line 2105
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
    const/4 v8, -0x1

    const/4 v10, 0x4

    .line 43
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1020
    iput-byte v8, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->memoizedIsInitialized:B

    .line 1053
    iput v8, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->memoizedSerializedSize:I

    .line 44
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/MenuItem;->initFields()V

    .line 45
    const/4 v3, 0x0

    .line 46
    .local v3, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v6

    .line 49
    .local v6, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v1, 0x0

    .line 50
    .local v1, done:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    .line 52
    .local v5, tag:I
    sparse-switch v5, :sswitch_data_0

    .line 57
    invoke-virtual {p0, p1, v6, p2, v5}, Lcom/google/googlex/glass/common/proto/MenuItem;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 59
    const/4 v1, 0x1

    goto :goto_0

    .line 54
    :sswitch_0
    const/4 v1, 0x1

    .line 55
    goto :goto_0

    .line 64
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 65
    .local v0, bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    .line 66
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->id_:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 112
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v5           #tag:I
    :catch_0
    move-exception v2

    .line 113
    .local v2, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    .end local v2           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    and-int/lit8 v9, v3, 0x4

    if-ne v9, v10, :cond_1

    .line 119
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;

    .line 121
    :cond_1
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 122
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem;->makeExtensionsImmutable()V

    throw v8

    .line 70
    .restart local v5       #tag:I
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 71
    .local v4, rawValue:I
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->valueOf(I)Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    move-result-object v7

    .line 72
    .local v7, value:Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    if-nez v7, :cond_2

    .line 73
    const/4 v8, 0x2

    invoke-virtual {v6, v8, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 114
    .end local v4           #rawValue:I
    .end local v5           #tag:I
    .end local v7           #value:Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    :catch_1
    move-exception v2

    .line 115
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    .end local v2           #e:Ljava/io/IOException;
    .restart local v4       #rawValue:I
    .restart local v5       #tag:I
    .restart local v7       #value:Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    :cond_2
    :try_start_4
    iget v8, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    .line 76
    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    goto :goto_0

    .line 81
    .end local v4           #rawValue:I
    .end local v7           #value:Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    :sswitch_3
    and-int/lit8 v8, v3, 0x4

    if-eq v8, v10, :cond_3

    .line 82
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;

    .line 83
    or-int/lit8 v3, v3, 0x4

    .line 85
    :cond_3
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;

    sget-object v9, Lcom/google/googlex/glass/common/proto/MenuValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 90
    .restart local v0       #bs:Lcom/google/protobuf/ByteString;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    .line 91
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->broadcastAction_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 95
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    :sswitch_5
    iget v8, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    .line 96
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v8

    iput-boolean v8, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->removeWhenSelected_:Z

    goto/16 :goto_0

    .line 100
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    .line 101
    .restart local v4       #rawValue:I
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->valueOf(I)Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    move-result-object v7

    .line 102
    .local v7, value:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;
    if-nez v7, :cond_4

    .line 103
    const/16 v8, 0x8

    invoke-virtual {v6, v8, v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 105
    :cond_4
    iget v8, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    .line 106
    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->travelMode_:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 118
    .end local v4           #rawValue:I
    .end local v5           #tag:I
    .end local v7           #value:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;
    :cond_5
    and-int/lit8 v8, v3, 0x4

    if-ne v8, v10, :cond_6

    .line 119
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;

    .line 121
    :cond_6
    invoke-virtual {v6}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 122
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem;->makeExtensionsImmutable()V

    .line 124
    return-void

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x2a -> :sswitch_4
        0x38 -> :sswitch_5
        0x40 -> :sswitch_6
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/MenuItem$1;)V
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
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/MenuItem;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 20
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 1020
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->memoizedIsInitialized:B

    .line 1053
    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->memoizedSerializedSize:I

    .line 21
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/MenuItem$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/MenuItem;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 23
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 1020
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->memoizedIsInitialized:B

    .line 1053
    iput v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->memoizedSerializedSize:I

    .line 23
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;)Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->travelMode_:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/googlex/glass/common/proto/MenuItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    return p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/MenuItem;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/MenuItem;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/googlex/glass/common/proto/MenuItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/MenuItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/MenuItem$Action;)Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/googlex/glass/common/proto/MenuItem;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/MenuItem;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/googlex/glass/common/proto/MenuItem;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->broadcastAction_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/MenuItem;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->broadcastAction_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/googlex/glass/common/proto/MenuItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->removeWhenSelected_:Z

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->defaultInstance:Lcom/google/googlex/glass/common/proto/MenuItem;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_MenuItem_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1013
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->id_:Ljava/lang/Object;

    .line 1014
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->CUSTOM:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    .line 1015
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;

    .line 1016
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->broadcastAction_:Ljava/lang/Object;

    .line 1017
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->removeWhenSelected_:Z

    .line 1018
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->MOST_RECENTLY_USED:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->travelMode_:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    .line 1019
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 1158
    #calls: Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->create()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->access$100()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 1161
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1138
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1144
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1108
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1114
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1149
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1155
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1128
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1134
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1118
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1124
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    return-object v0
.end method


# virtual methods
.method public getAction()Lcom/google/googlex/glass/common/proto/MenuItem$Action;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    return-object v0
.end method

.method public getBroadcastAction()Ljava/lang/String;
    .locals 4

    .prologue
    .line 928
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->broadcastAction_:Ljava/lang/Object;

    .line 929
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 930
    check-cast v1, Ljava/lang/String;

    .line 938
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 932
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 934
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 935
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 936
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->broadcastAction_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 938
    goto :goto_0
.end method

.method public getBroadcastActionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 952
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->broadcastAction_:Ljava/lang/Object;

    .line 953
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 954
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 957
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->broadcastAction_:Ljava/lang/Object;

    .line 960
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

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/MenuItem;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->defaultInstance:Lcom/google/googlex/glass/common/proto/MenuItem;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 784
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->id_:Ljava/lang/Object;

    .line 785
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 786
    check-cast v1, Ljava/lang/String;

    .line 794
    .end local v1           #ref:Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    .line 788
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 790
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 791
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 792
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->id_:Ljava/lang/Object;

    :cond_1
    move-object v1, v2

    .line 794
    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 807
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->id_:Ljava/lang/Object;

    .line 808
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 809
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 812
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->id_:Ljava/lang/Object;

    .line 815
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

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRemoveWhenSelected()Z
    .locals 1

    .prologue
    .line 986
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->removeWhenSelected_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1055
    iget v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->memoizedSerializedSize:I

    .line 1056
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 1085
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 1058
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 1059
    iget v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 1060
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1063
    :cond_1
    iget v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v5, :cond_2

    .line 1064
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->getNumber()I

    move-result v3

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1067
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1068
    const/4 v4, 0x3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1067
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1071
    :cond_3
    iget v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 1072
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem;->getBroadcastActionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1075
    :cond_4
    iget v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v6, :cond_5

    .line 1076
    const/4 v3, 0x7

    iget-boolean v4, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->removeWhenSelected_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 1079
    :cond_5
    iget v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_6

    .line 1080
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->travelMode_:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->getNumber()I

    move-result v3

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 1083
    :cond_6
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 1084
    iput v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->memoizedSerializedSize:I

    move v2, v1

    .line 1085
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public getTravelMode()Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->travelMode_:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getValue(I)Lcom/google/googlex/glass/common/proto/MenuValue;
    .locals 1
    .parameter "index"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuValue;

    return-object v0
.end method

.method public getValueCount()I
    .locals 1

    .prologue
    .line 874
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/MenuValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 847
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;

    return-object v0
.end method

.method public getValueOrBuilder(I)Lcom/google/googlex/glass/common/proto/MenuValueOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 901
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuValueOrBuilder;

    return-object v0
.end method

.method public getValueOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/MenuValueOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 861
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;

    return-object v0
.end method

.method public hasAction()Z
    .locals 2

    .prologue
    .line 825
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

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

.method public hasBroadcastAction()Z
    .locals 2

    .prologue
    .line 916
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 773
    iget v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRemoveWhenSelected()Z
    .locals 2

    .prologue
    .line 975
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

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

.method public hasTravelMode()Z
    .locals 2

    .prologue
    .line 999
    iget v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 132
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_MenuItem_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/MenuItem;

    const-class v2, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 1099
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 1100
    const-string v0, "com.google.googlex.glass.common.proto.MutableTimeline$MenuItem"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/MenuItem;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1102
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/MenuItem;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1022
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->memoizedIsInitialized:B

    .line 1023
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 1026
    :goto_0
    return v1

    .line 1023
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1025
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 1159
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 1168
    new-instance v0, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/MenuItem$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/MenuItem$1;)V

    .line 1169
    .local v0, builder:Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilderForType()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilderForType()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;
    .locals 1

    .prologue
    .line 1163
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/MenuItem;->newBuilder(Lcom/google/googlex/glass/common/proto/MenuItem;)Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem;->toBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem;->toBuilder()Lcom/google/googlex/glass/common/proto/MenuItem$Builder;

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
    .line 1092
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
    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1031
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem;->getSerializedSize()I

    .line 1032
    iget v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 1033
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1035
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_1

    .line 1036
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->action_:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->getNumber()I

    move-result v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1038
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1039
    const/4 v2, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->value_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1038
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1041
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 1042
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem;->getBroadcastActionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1044
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v4, :cond_4

    .line 1045
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->removeWhenSelected_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1047
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    .line 1048
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/MenuItem;->travelMode_:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->getNumber()I

    move-result v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1050
    :cond_5
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/MenuItem;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 1051
    return-void
.end method
