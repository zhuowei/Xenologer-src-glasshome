.class public final Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Update.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/Update$MutationsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/Update$Mutations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/Update$MutationsOrBuilder;"
    }
.end annotation


# instance fields
.field private attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

.field private bitField0_:I

.field private itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            "Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;",
            "Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 887
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 1111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemFieldDeletions_:Ljava/util/List;

    .line 1233
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    .line 741
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->maybeForceBuilderInitialization()V

    .line 742
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 746
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 887
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 1111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemFieldDeletions_:Ljava/util/List;

    .line 1233
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    .line 747
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->maybeForceBuilderInitialization()V

    .line 748
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Update$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 723
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$200()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 1

    .prologue
    .line 723
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->create()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 1

    .prologue
    .line 755
    new-instance v0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAttachmentDeletionsIsMutable()V
    .locals 2

    .prologue
    .line 1235
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1236
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    .line 1237
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    .line 1239
    :cond_0
    return-void
.end method

.method private ensureItemFieldDeletionsIsMutable()V
    .locals 2

    .prologue
    .line 1113
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1114
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemFieldDeletions_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemFieldDeletions_:Ljava/util/List;

    .line 1115
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    .line 1117
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 729
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_Update_Mutations_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getItemFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            "Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;",
            "Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1101
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 750
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->getItemFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 753
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllAttachmentDeletions(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;"
        }
    .end annotation

    .prologue
    .line 1353
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->ensureAttachmentDeletionsIsMutable()V

    .line 1354
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->onChanged()V

    .line 1357
    return-object p0
.end method

.method public addAllItemFieldDeletions(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;"
        }
    .end annotation

    .prologue
    .line 1209
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->ensureItemFieldDeletionsIsMutable()V

    .line 1210
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemFieldDeletions_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1212
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->onChanged()V

    .line 1213
    return-object p0
.end method

.method public addAttachmentDeletions(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1332
    if-nez p1, :cond_0

    .line 1333
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1335
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->ensureAttachmentDeletionsIsMutable()V

    .line 1336
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1337
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->onChanged()V

    .line 1338
    return-object p0
.end method

.method public addAttachmentDeletionsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1389
    if-nez p1, :cond_0

    .line 1390
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1392
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->ensureAttachmentDeletionsIsMutable()V

    .line 1393
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 1394
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->onChanged()V

    .line 1395
    return-object p0
.end method

.method public addItemFieldDeletions(I)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1191
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->ensureItemFieldDeletionsIsMutable()V

    .line 1192
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemFieldDeletions_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1193
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->onChanged()V

    .line 1194
    return-object p0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/Update$Mutations;
    .locals 2

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    .line 788
    .local v0, result:Lcom/google/googlex/glass/common/proto/Update$Mutations;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 789
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 791
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->build()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->build()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/Update$Mutations;
    .locals 5

    .prologue
    .line 795
    new-instance v1, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/Update$Mutations;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Update$1;)V

    .line 796
    .local v1, result:Lcom/google/googlex/glass/common/proto/Update$Mutations;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    .line 797
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 798
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 799
    or-int/lit8 v2, v2, 0x1

    .line 801
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_3

    .line 802
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    #setter for: Lcom/google/googlex/glass/common/proto/Update$Mutations;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->access$602(Lcom/google/googlex/glass/common/proto/Update$Mutations;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 806
    :goto_0
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 807
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemFieldDeletions_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemFieldDeletions_:Ljava/util/List;

    .line 808
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    .line 810
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemFieldDeletions_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->access$702(Lcom/google/googlex/glass/common/proto/Update$Mutations;Ljava/util/List;)Ljava/util/List;

    .line 811
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 812
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    .line 814
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    .line 816
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->access$802(Lcom/google/googlex/glass/common/proto/Update$Mutations;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 817
    #setter for: Lcom/google/googlex/glass/common/proto/Update$Mutations;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->access$902(Lcom/google/googlex/glass/common/proto/Update$Mutations;I)I

    .line 818
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->onBuilt()V

    .line 819
    return-object v1

    .line 804
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineItem;

    #setter for: Lcom/google/googlex/glass/common/proto/Update$Mutations;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->access$602(Lcom/google/googlex/glass/common/proto/Update$Mutations;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 1

    .prologue
    .line 759
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 760
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 761
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 765
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    .line 766
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemFieldDeletions_:Ljava/util/List;

    .line 767
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    .line 768
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    .line 769
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    .line 770
    return-object p0

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->clear()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->clear()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->clear()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->clear()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAttachmentDeletions()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 1

    .prologue
    .line 1371
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    .line 1372
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    .line 1373
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->onChanged()V

    .line 1374
    return-object p0
.end method

.method public clearItem()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1032
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 1033
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->onChanged()V

    .line 1037
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    .line 1038
    return-object p0

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearItemFieldDeletions()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 1

    .prologue
    .line 1227
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemFieldDeletions_:Ljava/util/List;

    .line 1228
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    .line 1229
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->onChanged()V

    .line 1230
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 2

    .prologue
    .line 774
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->create()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->clone()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->clone()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->clone()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->clone()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->clone()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

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
    .line 723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->clone()Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentDeletions(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAttachmentDeletionsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentDeletionsCount()I
    .locals 1

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

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
    .line 1253
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Update$Mutations;
    .locals 1

    .prologue
    .line 783
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 779
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_Update_Mutations_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 927
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem;

    goto :goto_0
.end method

.method public getItemBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .locals 1

    .prologue
    .line 1056
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    .line 1057
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->onChanged()V

    .line 1058
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->getItemFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    return-object v0
.end method

.method public getItemFieldDeletions(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemFieldDeletions_:Ljava/util/List;

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
    .line 1145
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemFieldDeletions_:Ljava/util/List;

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
    .line 1131
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemFieldDeletions_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemOrBuilder()Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineItemOrBuilder;

    .line 1079
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    goto :goto_0
.end method

.method public hasItem()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 906
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

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
    .line 734
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sync;->internal_static_googlex_glass_common_proto_Update_Mutations_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    const-class v2, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->hasItem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 863
    const/4 v0, 0x0

    .line 865
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 832
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 857
    :goto_0
    return-object p0

    .line 833
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->hasItem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getItem()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->mergeItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    .line 836
    :cond_1
    #getter for: Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->access$700(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 837
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemFieldDeletions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 838
    #getter for: Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->access$700(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemFieldDeletions_:Ljava/util/List;

    .line 839
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    .line 844
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->onChanged()V

    .line 846
    :cond_2
    #getter for: Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->access$800(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 847
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 848
    #getter for: Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->access$800(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    .line 849
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    .line 854
    :goto_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->onChanged()V

    .line 856
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 841
    :cond_4
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->ensureItemFieldDeletionsIsMutable()V

    .line 842
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemFieldDeletions_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/Update$Mutations;->itemFieldDeletions_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->access$700(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 851
    :cond_5
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->ensureAttachmentDeletionsIsMutable()V

    .line 852
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/Update$Mutations;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations;->access$800(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 872
    const/4 v2, 0x0

    .line 874
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/Update$Mutations;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/Update$Mutations;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 879
    if-eqz v2, :cond_0

    .line 880
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    .line 883
    :cond_0
    return-object p0

    .line 875
    :catch_0
    move-exception v1

    .line 876
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    move-object v2, v0

    .line 877
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 879
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 880
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 823
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    if-eqz v0, :cond_0

    .line 824
    check-cast p1, Lcom/google/googlex/glass/common/proto/Update$Mutations;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Update$Mutations;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object p0

    .line 827
    .end local p0
    :goto_0
    return-object p0

    .line 826
    .restart local p0
    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 723
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
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
    .line 723
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 723
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

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
    .line 723
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1001
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 1008
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->onChanged()V

    .line 1012
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    .line 1013
    return-object p0

    .line 1006
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    goto :goto_0

    .line 1010
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setAttachmentDeletions(ILjava/lang/String;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1311
    if-nez p2, :cond_0

    .line 1312
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1314
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->ensureAttachmentDeletionsIsMutable()V

    .line 1315
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->attachmentDeletions_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1316
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->onChanged()V

    .line 1317
    return-object p0
.end method

.method public setItem(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 976
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 977
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->onChanged()V

    .line 981
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    .line 982
    return-object p0

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 946
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 947
    if-nez p1, :cond_0

    .line 948
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 950
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->item_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 951
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->onChanged()V

    .line 955
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->bitField0_:I

    .line 956
    return-object p0

    .line 953
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setItemFieldDeletions(II)Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1174
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->ensureItemFieldDeletionsIsMutable()V

    .line 1175
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->itemFieldDeletions_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1176
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Update$Mutations$Builder;->onChanged()V

    .line 1177
    return-object p0
.end method
