.class public final Lcom/google/glass/companion/Proto$ApiRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Proto.java"

# interfaces
.implements Lcom/google/glass/companion/Proto$ApiRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/glass/companion/Proto$ApiRequest;",
        "Lcom/google/glass/companion/Proto$ApiRequest$Builder;",
        ">;",
        "Lcom/google/glass/companion/Proto$ApiRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private attachmentContent_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private projectId_:Ljava/lang/Object;

.field private timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private token_:Ljava/lang/Object;

.field private type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14840
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14965
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 15065
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 15165
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->INSERT_OR_UPDATE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    .line 15216
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 15300
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    .line 14841
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->maybeForceBuilderInitialization()V

    .line 14842
    return-void
.end method

.method static synthetic access$14600()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 14833
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->create()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 14847
    new-instance v0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAttachmentContentIsMutable()V
    .locals 2

    .prologue
    .line 15302
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 15303
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    .line 15304
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 15306
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 14845
    return-void
.end method


# virtual methods
.method public addAllAttachmentContent(Ljava/lang/Iterable;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protobuf/ByteString;",
            ">;)",
            "Lcom/google/glass/companion/Proto$ApiRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 15386
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/protobuf/ByteString;>;"
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->ensureAttachmentContentIsMutable()V

    .line 15387
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 15390
    return-object p0
.end method

.method public addAttachmentContent(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 15368
    if-nez p1, :cond_0

    .line 15369
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15371
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->ensureAttachmentContentIsMutable()V

    .line 15372
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15374
    return-object p0
.end method

.method public build()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 2

    .prologue
    .line 14874
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    .line 14875
    .local v0, result:Lcom/google/glass/companion/Proto$ApiRequest;
    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ApiRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 14876
    invoke-static {v0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 14878
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14833
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->build()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 5

    .prologue
    .line 14882
    new-instance v1, Lcom/google/glass/companion/Proto$ApiRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/glass/companion/Proto$ApiRequest;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/glass/companion/Proto$1;)V

    .line 14883
    .local v1, result:Lcom/google/glass/companion/Proto$ApiRequest;
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 14884
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 14885
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 14886
    or-int/lit8 v2, v2, 0x1

    .line 14888
    :cond_0
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiRequest;->access$14802(Lcom/google/glass/companion/Proto$ApiRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14889
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 14890
    or-int/lit8 v2, v2, 0x2

    .line 14892
    :cond_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    #setter for: Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiRequest;->access$14902(Lcom/google/glass/companion/Proto$ApiRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14893
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 14894
    or-int/lit8 v2, v2, 0x4

    .line 14896
    :cond_2
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    #setter for: Lcom/google/glass/companion/Proto$ApiRequest;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiRequest;->access$15002(Lcom/google/glass/companion/Proto$ApiRequest;Lcom/google/glass/companion/Proto$ApiRequest$RequestType;)Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    .line 14897
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 14898
    or-int/lit8 v2, v2, 0x8

    .line 14900
    :cond_3
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    #setter for: Lcom/google/glass/companion/Proto$ApiRequest;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiRequest;->access$15102(Lcom/google/glass/companion/Proto$ApiRequest;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 14901
    iget v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 14902
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    .line 14903
    iget v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x11

    iput v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 14905
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    #setter for: Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/glass/companion/Proto$ApiRequest;->access$15202(Lcom/google/glass/companion/Proto$ApiRequest;Ljava/util/List;)Ljava/util/List;

    .line 14906
    #setter for: Lcom/google/glass/companion/Proto$ApiRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/glass/companion/Proto$ApiRequest;->access$15302(Lcom/google/glass/companion/Proto$ApiRequest;I)I

    .line 14907
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14833
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 14851
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 14852
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 14853
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 14854
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 14855
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 14856
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->INSERT_OR_UPDATE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    .line 14857
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 14858
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 14859
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 14860
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    .line 14861
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 14862
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 14833
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->clear()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14833
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->clear()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAttachmentContent()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 15401
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    .line 15402
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 15404
    return-object p0
.end method

.method public clearProjectId()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 15042
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 15043
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ApiRequest;->getProjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 15045
    return-object p0
.end method

.method public clearTimelineItem()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 15294
    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 15296
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 15297
    return-object p0
.end method

.method public clearToken()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 15142
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 15143
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/companion/Proto$ApiRequest;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 15145
    return-object p0
.end method

.method public clearType()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1

    .prologue
    .line 15210
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 15211
    sget-object v0, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->INSERT_OR_UPDATE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    .line 15213
    return-object p0
.end method

.method public clone()Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 2

    .prologue
    .line 14866
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->create()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->buildPartial()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 14833
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->clone()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 14833
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->clone()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 14833
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->clone()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

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
    .line 14833
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->clone()Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentContent(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 15339
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getAttachmentContentCount()I
    .locals 1

    .prologue
    .line 15328
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAttachmentContentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15317
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiRequest;
    .locals 1

    .prologue
    .line 14870
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 14833
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 14833
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->getDefaultInstanceForType()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 14984
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 14985
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 14986
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 14988
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 14989
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 14990
    iput-object v2, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 14994
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getProjectIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 15006
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 15007
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15008
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15011
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 15014
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

.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 15235
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 15084
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 15085
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 15086
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 15088
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 15089
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 15090
    iput-object v2, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 15094
    .end local v0           #bs:Lcom/google/protobuf/ByteString;
    .end local v1           #ref:Ljava/lang/Object;
    .end local v2           #s:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_1
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public getTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 15106
    iget-object v1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 15107
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15108
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 15111
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 15114
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

.method public getType()Lcom/google/glass/companion/Proto$ApiRequest$RequestType;
    .locals 1

    .prologue
    .line 15184
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    return-object v0
.end method

.method public hasProjectId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 14974
    iget v1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimelineItem()Z
    .locals 2

    .prologue
    .line 15225
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

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

.method public hasToken()Z
    .locals 2

    .prologue
    .line 15074
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

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
    .line 15174
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 14943
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 14911
    invoke-static {}, Lcom/google/glass/companion/Proto$ApiRequest;->getDefaultInstance()Lcom/google/glass/companion/Proto$ApiRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 14939
    :goto_0
    return-object p0

    .line 14912
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->hasProjectId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14913
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 14914
    #getter for: Lcom/google/glass/companion/Proto$ApiRequest;->projectId_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->access$14800(Lcom/google/glass/companion/Proto$ApiRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 14917
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14918
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 14919
    #getter for: Lcom/google/glass/companion/Proto$ApiRequest;->token_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->access$14900(Lcom/google/glass/companion/Proto$ApiRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 14922
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14923
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->getType()Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->setType(Lcom/google/glass/companion/Proto$ApiRequest$RequestType;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    .line 14925
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->hasTimelineItem()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14926
    invoke-virtual {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    .line 14928
    :cond_4
    #getter for: Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->access$15200(Lcom/google/glass/companion/Proto$ApiRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 14929
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14930
    #getter for: Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->access$15200(Lcom/google/glass/companion/Proto$ApiRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    .line 14931
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 14938
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->getUnknownFields()Lcom/google/protobuf/ByteString;

    move-result-object v0

    #getter for: Lcom/google/glass/companion/Proto$ApiRequest;->unknownFields:Lcom/google/protobuf/ByteString;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->access$15400(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->concat(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->setUnknownFields(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    goto :goto_0

    .line 14933
    :cond_6
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->ensureAttachmentContentIsMutable()V

    .line 14934
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    #getter for: Lcom/google/glass/companion/Proto$ApiRequest;->attachmentContent_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/glass/companion/Proto$ApiRequest;->access$15200(Lcom/google/glass/companion/Proto$ApiRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14950
    const/4 v2, 0x0

    .line 14952
    .local v2, parsedMessage:Lcom/google/glass/companion/Proto$ApiRequest;
    :try_start_0
    sget-object v3, Lcom/google/glass/companion/Proto$ApiRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14957
    if-eqz v2, :cond_0

    .line 14958
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    .line 14961
    :cond_0
    return-object p0

    .line 14953
    :catch_0
    move-exception v1

    .line 14954
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/glass/companion/Proto$ApiRequest;

    move-object v2, v0

    .line 14955
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14957
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 14958
    invoke-virtual {p0, v2}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

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
    .line 14833
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14833
    check-cast p1, Lcom/google/glass/companion/Proto$ApiRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

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
    .line 14833
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 15275
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 15277
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 15283
    :goto_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 15284
    return-object p0

    .line 15280
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    goto :goto_0
.end method

.method public setAttachmentContent(ILcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 15351
    if-nez p2, :cond_0

    .line 15352
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15354
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->ensureAttachmentContentIsMutable()V

    .line 15355
    iget-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->attachmentContent_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 15357
    return-object p0
.end method

.method public setProjectId(Ljava/lang/String;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 15026
    if-nez p1, :cond_0

    .line 15027
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15029
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 15030
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 15032
    return-object p0
.end method

.method public setProjectIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 15056
    if-nez p1, :cond_0

    .line 15057
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15059
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 15060
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->projectId_:Ljava/lang/Object;

    .line 15062
    return-object p0
.end method

.method public setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "builderForValue"

    .prologue
    .line 15262
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 15264
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 15265
    return-object p0
.end method

.method public setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 15245
    if-nez p1, :cond_0

    .line 15246
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15248
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->timelineItem_:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 15250
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 15251
    return-object p0
.end method

.method public setToken(Ljava/lang/String;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 15126
    if-nez p1, :cond_0

    .line 15127
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15129
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 15130
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 15132
    return-object p0
.end method

.method public setTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 15156
    if-nez p1, :cond_0

    .line 15157
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15159
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 15160
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->token_:Ljava/lang/Object;

    .line 15162
    return-object p0
.end method

.method public setType(Lcom/google/glass/companion/Proto$ApiRequest$RequestType;)Lcom/google/glass/companion/Proto$ApiRequest$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 15194
    if-nez p1, :cond_0

    .line 15195
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 15197
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->bitField0_:I

    .line 15198
    iput-object p1, p0, Lcom/google/glass/companion/Proto$ApiRequest$Builder;->type_:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    .line 15200
    return-object p0
.end method
