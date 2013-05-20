.class public final Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
.super Lcom/google/protobuf/GeneratedMessage;
.source "InsertReplaceOnConflict.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflictOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMELINE_ITEM_FIELD_NUMBER:I = 0x1

.field public static final USER_ACTION_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private userAction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/UserAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->PARSER:Lcom/google/protobuf/Parser;

    .line 262
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 975
    new-instance v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->defaultInstance:Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    .line 976
    sget-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->defaultInstance:Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->initFields()V

    .line 977
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x2

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 214
    iput-byte v6, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->memoizedIsInitialized:B

    .line 235
    iput v6, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->memoizedSerializedSize:I

    .line 39
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->initFields()V

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
    if-nez v0, :cond_5

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    .line 47
    .local v4, tag:I
    sparse-switch v4, :sswitch_data_0

    .line 52
    invoke-virtual {p0, p1, v5, p2, v4}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

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
    .local v3, subBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    iget v6, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->bitField0_:I

    and-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 61
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/TimelineItem;->toBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v3

    .line 63
    :cond_1
    sget-object v6, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/googlex/glass/common/proto/TimelineItem;

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 64
    if-eqz v3, :cond_2

    .line 65
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v3, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 66
    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 68
    :cond_2
    iget v6, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->bitField0_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 81
    .end local v3           #subBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .end local v4           #tag:I
    :catch_0
    move-exception v1

    .line 82
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v6

    and-int/lit8 v7, v2, 0x2

    if-ne v7, v8, :cond_3

    .line 88
    iget-object v7, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;

    .line 90
    :cond_3
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v7

    iput-object v7, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 91
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->makeExtensionsImmutable()V

    throw v6

    .line 72
    .restart local v4       #tag:I
    :sswitch_2
    and-int/lit8 v6, v2, 0x2

    if-eq v6, v8, :cond_4

    .line 73
    :try_start_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;

    .line 74
    or-int/lit8 v2, v2, 0x2

    .line 76
    :cond_4
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;

    sget-object v7, Lcom/google/googlex/glass/common/proto/UserAction;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v7, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 83
    .end local v4           #tag:I
    :catch_1
    move-exception v1

    .line 84
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

    .line 87
    .end local v1           #e:Ljava/io/IOException;
    :cond_5
    and-int/lit8 v6, v2, 0x2

    if-ne v6, v8, :cond_6

    .line 88
    iget-object v6, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;

    .line 90
    :cond_6
    invoke-virtual {v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v6

    iput-object v6, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 91
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->makeExtensionsImmutable()V

    .line 93
    return-void

    .line 47
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$1;)V
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
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 214
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->memoizedIsInitialized:B

    .line 235
    iput v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->memoizedSerializedSize:I

    .line 16
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 214
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->memoizedIsInitialized:B

    .line 235
    iput v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->memoizedSerializedSize:I

    .line 18
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->bitField0_:I

    return p1
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 9
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->defaultInstance:Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_InsertReplaceOnConflict_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 212
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;

    .line 213
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 1

    .prologue
    .line 324
    #calls: Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->create()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->access$100()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 327
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->newBuilder()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    sget-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    sget-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 274
    sget-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 280
    sget-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    sget-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    sget-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    sget-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    sget-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 284
    sget-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 290
    sget-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->defaultInstance:Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

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
            "Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    sget-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 237
    iget v1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->memoizedSerializedSize:I

    .line 238
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v2, v1

    .line 251
    .end local v1           #size:I
    .local v2, size:I
    :goto_0
    return v2

    .line 240
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_0
    const/4 v1, 0x0

    .line 241
    iget v3, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    .line 242
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 245
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 246
    const/4 v4, 0x2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 249
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v3

    add-int/2addr v1, v3

    .line 250
    iput v1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->memoizedSerializedSize:I

    move v2, v1

    .line 251
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_0
.end method

.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getTimelineItemOrBuilder()Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUserAction(I)Lcom/google/googlex/glass/common/proto/UserAction;
    .locals 1
    .parameter "index"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserAction;

    return-object v0
.end method

.method public getUserActionCount()I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUserActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/UserAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;

    return-object v0
.end method

.method public getUserActionOrBuilder(I)Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;

    return-object v0
.end method

.method public getUserActionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/UserActionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;

    return-object v0
.end method

.method public hasTimelineItem()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 132
    iget v1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 101
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_InsertReplaceOnConflict_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;

    const-class v2, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 266
    const-string v0, "com.google.googlex.glass.common.proto.MutableSync$InsertReplaceOnConflict"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 268
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 216
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->memoizedIsInitialized:B

    .line 217
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    .line 220
    :goto_0
    return v1

    .line 217
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 219
    :cond_1
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 1

    .prologue
    .line 325
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->newBuilder()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 334
    new-instance v0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$1;)V

    .line 335
    .local v0, builder:Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->newBuilderForType()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->newBuilderForType()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;
    .locals 1

    .prologue
    .line 329
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->newBuilder(Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;)Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->toBuilder()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->toBuilder()Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict$Builder;

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
    .line 258
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

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
    const/4 v2, 0x1

    .line 225
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->getSerializedSize()I

    .line 226
    iget v1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 227
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 229
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 230
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->userAction_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InsertReplaceOnConflict;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 233
    return-void
.end method
