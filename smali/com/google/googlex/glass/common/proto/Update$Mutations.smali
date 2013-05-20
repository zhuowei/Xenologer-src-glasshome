.class public final Lcom/google/googlex/glass/common/proto/Update$Mutations;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Update.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/Update$MutationsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/Update;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mutations"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    }
.end annotation


# static fields
.field public static final ATTACHMENT_DELETIONS_FIELD_NUMBER:I = 0x3

.field public static final ITEM_FIELD_DELETIONS_FIELD_NUMBER:I = 0x2

.field public static final ITEM_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/Update$Mutations;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/google/googlex/glass/common/proto/Update$Mutations;

.field private static volatile mutableDefault:Lcom/google/protobuf/MutableMessage;

.field private static final serialVersionUID:J


# instance fields
.field private attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

.field private bitField0_:I

.field private itemFieldDeletions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 391
    new-instance v0, Lcom/google/googlex/glass/common/proto/Update$Mutations$1;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$1;-><init>()V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->PARSER:Lcom/google/protobuf/Parser;

    .line 645
    const/4 v0, 0x0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 1402
    new-instance v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlex/glass/common/proto/Update$Mutations;-><init>(Z)V

    sput-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->defaultInstance:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .line 1403
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->defaultInstance:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->initFields()V

    .line 1404
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
    const/4 v8, -0x1

    const/4 v11, 0x4

    const/4 v10, 0x2

    .line 299
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 576
    iput-byte v8, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->memoizedIsInitialized:B

    .line 604
    iput v8, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->memoizedSerializedSize:I

    .line 300
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->initFields()V

    .line 301
    const/4 v4, 0x0

    .line 302
    .local v4, mutable_bitField0_:I
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v7

    .line 305
    .local v7, unknownFields:Lcom/google/protobuf/UnknownFieldSet$Builder;
    const/4 v0, 0x0

    .line 306
    .local v0, done:Z
    :cond_0
    :goto_0
    if-nez v0, :cond_9

    .line 307
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v6

    .line 308
    .local v6, tag:I
    sparse-switch v6, :sswitch_data_0

    .line 313
    invoke-virtual {p0, p1, v7, p2, v6}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 315
    const/4 v0, 0x1

    goto :goto_0

    .line 310
    :sswitch_0
    const/4 v0, 0x1

    .line 311
    goto :goto_0

    .line 320
    :sswitch_1
    const/4 v5, 0x0

    .line 321
    .local v5, subBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->bitField0_:I

    and-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 322
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/TimelineItem;->toBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v5

    .line 324
    :cond_1
    sget-object v8, Lcom/google/googlex/glass/common/proto/TimelineItem;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v8, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v8

    check-cast v8, Lcom/google/googlex/glass/common/proto/TimelineItem;

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 325
    if-eqz v5, :cond_2

    .line 326
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v5, v8}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 327
    invoke-virtual {v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 329
    :cond_2
    iget v8, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->bitField0_:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 363
    .end local v5           #subBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .end local v6           #tag:I
    :catch_0
    move-exception v1

    .line 364
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v8

    and-int/lit8 v9, v4, 0x2

    if-ne v9, v10, :cond_3

    .line 370
    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;

    .line 372
    :cond_3
    and-int/lit8 v9, v4, 0x4

    if-ne v9, v11, :cond_4

    .line 373
    new-instance v9, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v10, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v9, v10}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    .line 375
    :cond_4
    invoke-virtual {v7}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v9

    iput-object v9, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 376
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->makeExtensionsImmutable()V

    throw v8

    .line 333
    .restart local v6       #tag:I
    :sswitch_2
    and-int/lit8 v8, v4, 0x2

    if-eq v8, v10, :cond_5

    .line 334
    :try_start_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;

    .line 335
    or-int/lit8 v4, v4, 0x2

    .line 337
    :cond_5
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 365
    .end local v6           #tag:I
    :catch_1
    move-exception v1

    .line 366
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    new-instance v8, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v8

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    .end local v1           #e:Ljava/io/IOException;
    .restart local v6       #tag:I
    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v2

    .line 342
    .local v2, length:I
    invoke-virtual {p1, v2}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 343
    .local v3, limit:I
    and-int/lit8 v8, v4, 0x2

    if-eq v8, v10, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_6

    .line 344
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;

    .line 345
    or-int/lit8 v4, v4, 0x2

    .line 347
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_7

    .line 348
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 350
    :cond_7
    invoke-virtual {p1, v3}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_0

    .line 354
    .end local v2           #length:I
    .end local v3           #limit:I
    :sswitch_4
    and-int/lit8 v8, v4, 0x4

    if-eq v8, v11, :cond_8

    .line 355
    new-instance v8, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v8}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    .line 356
    or-int/lit8 v4, v4, 0x4

    .line 358
    :cond_8
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 369
    .end local v6           #tag:I
    :cond_9
    and-int/lit8 v8, v4, 0x2

    if-ne v8, v10, :cond_a

    .line 370
    iget-object v8, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;

    .line 372
    :cond_a
    and-int/lit8 v8, v4, 0x4

    if-ne v8, v11, :cond_b

    .line 373
    new-instance v8, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v9, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v8, v9}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    .line 375
    :cond_b
    invoke-virtual {v7}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v8

    iput-object v8, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 376
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->makeExtensionsImmutable()V

    .line 378
    return-void

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
        0x1a -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/googlex/glass/common/proto/Update$1;)V
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
    .line 270
    invoke-direct {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Update$Mutations;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 276
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    .line 576
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->memoizedIsInitialized:B

    .line 604
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->memoizedSerializedSize:I

    .line 277
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 278
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Update$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 279
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    .line 576
    iput-byte v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->memoizedIsInitialized:B

    .line 604
    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->memoizedSerializedSize:I

    .line 279
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 270
    sget-boolean v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/googlex/glass/common/proto/Update$Mutations;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/googlex/glass/common/proto/Update$Mutations;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/protobuf/LazyStringList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/googlex/glass/common/proto/Update$Mutations;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$902(Lcom/google/googlex/glass/common/proto/Update$Mutations;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 270
    iput p1, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update$Mutations;
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->defaultInstance:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 381
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_Update_Mutations_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 572
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 573
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;

    .line 574
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    .line 575
    return-void
.end method

.method public static newBuilder()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 1

    .prologue
    .line 707
    #calls: Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->create()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->access$200()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 1
    .parameter "prototype"

    .prologue
    .line 710
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->newBuilder()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/Update$Mutations;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update$Mutations;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Update$Mutations;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 657
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update$Mutations;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 663
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/googlex/glass/common/proto/Update$Mutations;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update$Mutations;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 704
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/googlex/glass/common/proto/Update$Mutations;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update$Mutations;
    .locals 1
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/Update$Mutations;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 667
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update$Mutations;
    .locals 1
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 673
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    return-object v0
.end method


# virtual methods
.method public getAttachmentDeletions(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAttachmentDeletionsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentDeletionsCount()I
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getAttachmentDeletionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Update$Mutations;
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->defaultInstance:Lcom/google/googlex/glass/common/proto/Update$Mutations;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getItemFieldDeletions(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getItemFieldDeletionsCount()I
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemFieldDeletionsList()Ljava/util/List;
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
    .line 479
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;

    return-object v0
.end method

.method public getItemOrBuilder()Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/google/googlex/glass/common/proto/Update$Mutations;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 606
    iget v2, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->memoizedSerializedSize:I

    .line 607
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    move v3, v2

    .line 634
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    return v3

    .line 609
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_0
    const/4 v2, 0x0

    .line 610
    iget v4, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    .line 611
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 615
    :cond_1
    const/4 v0, 0x0

    .line 616
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 617
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    .line 616
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 620
    :cond_2
    add-int/2addr v2, v0

    .line 621
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getItemFieldDeletionsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 624
    const/4 v0, 0x0

    .line 625
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 626
    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 629
    :cond_3
    add-int/2addr v2, v0

    .line 630
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getAttachmentDeletionsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 632
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v4

    add-int/2addr v2, v4

    .line 633
    iput v2, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->memoizedSerializedSize:I

    move v3, v2

    .line 634
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasItem()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 425
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->bitField0_:I

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
    .line 386
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_Update_Mutations_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    const-class v2, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method protected internalMutableDefault()Lcom/google/protobuf/MutableMessage;
    .locals 1

    .prologue
    .line 648
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    if-nez v0, :cond_0

    .line 649
    const-string v0, "com.google.googlex.glass.common.proto.MutableSync$Update$Mutations"

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->internalMutableDefault(Ljava/lang/String;)Lcom/google/protobuf/MutableMessage;

    move-result-object v0

    sput-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    .line 651
    :cond_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->mutableDefault:Lcom/google/protobuf/MutableMessage;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 578
    iget-byte v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->memoizedIsInitialized:B

    .line 579
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 586
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 579
    goto :goto_0

    .line 581
    :cond_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->hasItem()Z

    move-result v3

    if-nez v3, :cond_2

    .line 582
    iput-byte v2, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->memoizedIsInitialized:B

    move v1, v2

    .line 583
    goto :goto_0

    .line 585
    :cond_2
    iput-byte v1, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 1

    .prologue
    .line 708
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->newBuilder()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 2
    .parameter "parent"

    .prologue
    .line 717
    new-instance v0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Update$1;)V

    .line 718
    .local v0, builder:Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->newBuilderForType()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->newBuilderForType()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 1

    .prologue
    .line 712
    invoke-static {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->newBuilder(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->toBuilder()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->toBuilder()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

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
    .line 641
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

    .line 591
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getSerializedSize()I

    .line 592
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_0

    .line 593
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 595
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 596
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 595
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 599
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 598
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 601
    :cond_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    .line 602
    return-void
.end method
