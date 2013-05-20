.class public final Lcom/google/googlex/glass/common/proto/Entity$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Entity.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/EntityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/Entity$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/EntityOrBuilder;"
    }
.end annotation


# instance fields
.field private acceptType_:Lcom/google/protobuf/LazyStringList;

.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private email_:Ljava/lang/Object;

.field private id_:Ljava/lang/Object;

.field private imageUrl_:Lcom/google/protobuf/LazyStringList;

.field private isCommunicationTarget_:Z

.field private phoneNumber_:Ljava/lang/Object;

.field private priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Priority;",
            "Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;",
            "Lcom/google/googlex/glass/common/proto/Entity$PriorityOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

.field private secondaryEmail_:Lcom/google/protobuf/LazyStringList;

.field private secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

.field private shouldSync_:Z

.field private source_:Ljava/lang/Object;

.field private type_:Lcom/google/googlex/glass/common/proto/Entity$Type;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1599
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1861
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 1964
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2067
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2164
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 2399
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Type;->INDIVIDUAL:Lcom/google/googlex/glass/common/proto/Entity$Type;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 2434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 2543
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 2672
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 2769
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 2898
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 3106
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 1600
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->maybeForceBuilderInitialization()V

    .line 1601
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 1605
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1861
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 1964
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2067
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2164
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 2399
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Type;->INDIVIDUAL:Lcom/google/googlex/glass/common/proto/Entity$Type;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 2434
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 2543
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 2672
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 2769
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 2898
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 3106
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 1606
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->maybeForceBuilderInitialization()V

    .line 1607
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Entity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1582
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$800()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->create()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 1614
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAcceptTypeIsMutable()V
    .locals 2

    .prologue
    .line 2900
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    .line 2901
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 2902
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2904
    :cond_0
    return-void
.end method

.method private ensureImageUrlIsMutable()V
    .locals 2

    .prologue
    .line 2166
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2167
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 2168
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2170
    :cond_0
    return-void
.end method

.method private ensureSecondaryEmailIsMutable()V
    .locals 2

    .prologue
    .line 2771
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    .line 2772
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 2773
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2775
    :cond_0
    return-void
.end method

.method private ensureSecondaryPhoneNumberIsMutable()V
    .locals 2

    .prologue
    .line 2545
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 2546
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 2547
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2549
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1588
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Entity_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getPriorityFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Priority;",
            "Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;",
            "Lcom/google/googlex/glass/common/proto/Entity$PriorityOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3211
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3212
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 3217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 3219
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1609
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1610
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getPriorityFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1612
    :cond_0
    return-void
.end method


# virtual methods
.method public addAcceptType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2991
    if-nez p1, :cond_0

    .line 2992
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2994
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptTypeIsMutable()V

    .line 2995
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 2996
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2997
    return-object p0
.end method

.method public addAcceptTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3045
    if-nez p1, :cond_0

    .line 3046
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3048
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptTypeIsMutable()V

    .line 3049
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 3050
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3051
    return-object p0
.end method

.method public addAllAcceptType(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/Entity$Builder;"
        }
    .end annotation

    .prologue
    .line 3011
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptTypeIsMutable()V

    .line 3012
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3014
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3015
    return-object p0
.end method

.method public addAllImageUrl(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/Entity$Builder;"
        }
    .end annotation

    .prologue
    .line 2298
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureImageUrlIsMutable()V

    .line 2299
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2301
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2302
    return-object p0
.end method

.method public addAllSecondaryEmail(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/Entity$Builder;"
        }
    .end annotation

    .prologue
    .line 2861
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryEmailIsMutable()V

    .line 2862
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2864
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2865
    return-object p0
.end method

.method public addAllSecondaryPhoneNumber(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/Entity$Builder;"
        }
    .end annotation

    .prologue
    .line 2635
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryPhoneNumberIsMutable()V

    .line 2636
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2638
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2639
    return-object p0
.end method

.method public addImageUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2275
    if-nez p1, :cond_0

    .line 2276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2278
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureImageUrlIsMutable()V

    .line 2279
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 2280
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2281
    return-object p0
.end method

.method public addImageUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2338
    if-nez p1, :cond_0

    .line 2339
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2341
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureImageUrlIsMutable()V

    .line 2342
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 2343
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2344
    return-object p0
.end method

.method public addSecondaryEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2844
    if-nez p1, :cond_0

    .line 2845
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2847
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryEmailIsMutable()V

    .line 2848
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 2849
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2850
    return-object p0
.end method

.method public addSecondaryEmailBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2889
    if-nez p1, :cond_0

    .line 2890
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2892
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryEmailIsMutable()V

    .line 2893
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 2894
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2895
    return-object p0
.end method

.method public addSecondaryPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2618
    if-nez p1, :cond_0

    .line 2619
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2621
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryPhoneNumberIsMutable()V

    .line 2622
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 2623
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2624
    return-object p0
.end method

.method public addSecondaryPhoneNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2663
    if-nez p1, :cond_0

    .line 2664
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2666
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryPhoneNumberIsMutable()V

    .line 2667
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 2668
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2669
    return-object p0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 2

    .prologue
    .line 1666
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 1667
    .local v0, result:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1668
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1670
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 5

    .prologue
    .line 1674
    new-instance v1, Lcom/google/googlex/glass/common/proto/Entity;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/Entity;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Entity$1;)V

    .line 1675
    .local v1, result:Lcom/google/googlex/glass/common/proto/Entity;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1676
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1677
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1678
    or-int/lit8 v2, v2, 0x1

    .line 1680
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$1202(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1681
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1682
    or-int/lit8 v2, v2, 0x2

    .line 1684
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$1302(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1685
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1686
    or-int/lit8 v2, v2, 0x4

    .line 1688
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$1402(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1690
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 1692
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1694
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$1502(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 1695
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 1696
    or-int/lit8 v2, v2, 0x8

    .line 1698
    :cond_4
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->shouldSync_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->shouldSync_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$1602(Lcom/google/googlex/glass/common/proto/Entity;Z)Z

    .line 1699
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 1700
    or-int/lit8 v2, v2, 0x10

    .line 1702
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$1702(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/googlex/glass/common/proto/Entity$Type;)Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 1703
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 1704
    or-int/lit8 v2, v2, 0x20

    .line 1706
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$1802(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 1708
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 1710
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1712
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$1902(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 1713
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 1714
    or-int/lit8 v2, v2, 0x40

    .line 1716
    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2002(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1717
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 1718
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 1720
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x201

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1722
    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2102(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 1723
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 1724
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 1726
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x401

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1728
    :cond_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2202(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 1729
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 1730
    or-int/lit16 v2, v2, 0x80

    .line 1732
    :cond_b
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->isCommunicationTarget_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->isCommunicationTarget_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2302(Lcom/google/googlex/glass/common/proto/Entity;Z)Z

    .line 1733
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 1734
    or-int/lit16 v2, v2, 0x100

    .line 1736
    :cond_c
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_d

    .line 1737
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2402(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 1741
    :goto_0
    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/Entity;->access$2502(Lcom/google/googlex/glass/common/proto/Entity;I)I

    .line 1742
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onBuilt()V

    .line 1743
    return-object v1

    .line 1739
    :cond_d
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2402(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1618
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1619
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 1620
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1621
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 1622
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1623
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 1624
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1625
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 1626
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1627
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->shouldSync_:Z

    .line 1628
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1629
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Type;->INDIVIDUAL:Lcom/google/googlex/glass/common/proto/Entity$Type;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 1630
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1631
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 1632
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1633
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 1634
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1635
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 1636
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1637
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 1638
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1639
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 1640
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1641
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->isCommunicationTarget_:Z

    .line 1642
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1643
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1644
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 1648
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1649
    return-object p0

    .line 1646
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAcceptType()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3028
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 3029
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3030
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3031
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2141
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2142
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2143
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2144
    return-object p0
.end method

.method public clearEmail()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2746
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2747
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 2748
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2749
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2043
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2044
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2045
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2046
    return-object p0
.end method

.method public clearImageUrl()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2318
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 2319
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2320
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2321
    return-object p0
.end method

.method public clearIsCommunicationTarget()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3100
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->isCommunicationTarget_:Z

    .line 3102
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3103
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2518
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2519
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 2520
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2521
    return-object p0
.end method

.method public clearPriority()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3178
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3179
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 3180
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3184
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3185
    return-object p0

    .line 3182
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearSecondaryEmail()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2875
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 2876
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2877
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2878
    return-object p0
.end method

.method public clearSecondaryPhoneNumber()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2649
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 2650
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2651
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2652
    return-object p0
.end method

.method public clearShouldSync()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2393
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->shouldSync_:Z

    .line 2395
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2396
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 1940
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1941
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 1942
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 1943
    return-object p0
.end method

.method public clearType()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2428
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2429
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Type;->INDIVIDUAL:Lcom/google/googlex/glass/common/proto/Entity$Type;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 2430
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2431
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2

    .prologue
    .line 1653
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->create()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Builder;

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
    .line 1582
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAcceptType(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 2943
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAcceptTypeBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 2957
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAcceptTypeCount()I
    .locals 1

    .prologue
    .line 2930
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getAcceptTypeList()Ljava/util/List;
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
    .line 2917
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1

    .prologue
    .line 1662
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1582
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1658
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Entity_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2087
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2088
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2090
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2093
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2105
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2106
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2107
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2110
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2113
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

.method public getEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2691
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 2692
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2693
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2695
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 2698
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getEmailBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2710
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 2711
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2712
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2715
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 2718
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

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 1986
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1987
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1989
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 1992
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2005
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2006
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2007
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2010
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2013
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

.method public getImageUrl(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrlBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrlCount()I
    .locals 1

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getImageUrlList()Ljava/util/List;
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
    .line 2186
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIsCommunicationTarget()Z
    .locals 1

    .prologue
    .line 3075
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->isCommunicationTarget_:Z

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 2458
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2459
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2461
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 2464
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2478
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 2479
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2480
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2483
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 2486
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

.method public getPriority()Lcom/google/googlex/glass/common/proto/Entity$Priority;
    .locals 1

    .prologue
    .line 3119
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3120
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 3122
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    goto :goto_0
.end method

.method public getPriorityBuilder()Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;
    .locals 1

    .prologue
    .line 3191
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3192
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3193
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getPriorityFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    return-object v0
.end method

.method public getPriorityOrBuilder()Lcom/google/googlex/glass/common/proto/Entity$PriorityOrBuilder;
    .locals 1

    .prologue
    .line 3199
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 3200
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$PriorityOrBuilder;

    .line 3202
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    goto :goto_0
.end method

.method public getSecondaryEmail(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 2805
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryEmailBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 2816
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryEmailCount()I
    .locals 1

    .prologue
    .line 2795
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getSecondaryEmailList()Ljava/util/List;
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
    .line 2785
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryPhoneNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 2579
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryPhoneNumberBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .parameter "index"

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryPhoneNumberCount()I
    .locals 1

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getSecondaryPhoneNumberList()Ljava/util/List;
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
    .line 2559
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShouldSync()Z
    .locals 1

    .prologue
    .line 2368
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->shouldSync_:Z

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1882
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 1883
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1884
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1886
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 1889
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_0
.end method

.method public getSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1902
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 1903
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1904
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1907
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 1910
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

.method public getType()Lcom/google/googlex/glass/common/proto/Entity$Type;
    .locals 1

    .prologue
    .line 2410
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    return-object v0
.end method

.method public hasDisplayName()Z
    .locals 2

    .prologue
    .line 2076
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

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

.method public hasEmail()Z
    .locals 2

    .prologue
    .line 2681
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

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
    .line 1974
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

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

.method public hasIsCommunicationTarget()Z
    .locals 2

    .prologue
    .line 3064
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPhoneNumber()Z
    .locals 2

    .prologue
    .line 2445
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPriority()Z
    .locals 2

    .prologue
    .line 3113
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShouldSync()Z
    .locals 2

    .prologue
    .line 2357
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

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

.method public hasSource()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1871
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    .line 2404
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

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
    .line 1593
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Entity_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Entity;

    const-class v2, Lcom/google/googlex/glass/common/proto/Entity$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1839
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1756
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1835
    :goto_0
    return-object p0

    .line 1757
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasSource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1758
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1759
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$1200(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 1760
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 1762
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1763
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1764
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$1300(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 1765
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 1767
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasDisplayName()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1768
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1769
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$1400(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 1770
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 1772
    :cond_3
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$1500(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1773
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1774
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$1500(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 1775
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1780
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 1782
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasShouldSync()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1783
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getShouldSync()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setShouldSync(Z)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 1785
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1786
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getType()Lcom/google/googlex/glass/common/proto/Entity$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setType(Lcom/google/googlex/glass/common/proto/Entity$Type;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 1788
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1789
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1790
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$1800(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 1791
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 1793
    :cond_7
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$1900(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1794
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1795
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$1900(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 1796
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1801
    :goto_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 1803
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasEmail()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1804
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1805
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2000(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 1806
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 1808
    :cond_9
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2100(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1809
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1810
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2100(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 1811
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1816
    :goto_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 1818
    :cond_a
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2200(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1819
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1820
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2200(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 1821
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1826
    :goto_4
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 1828
    :cond_b
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasIsCommunicationTarget()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1829
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getIsCommunicationTarget()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setIsCommunicationTarget(Z)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 1831
    :cond_c
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1832
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getPriority()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergePriority(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 1834
    :cond_d
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 1777
    :cond_e
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureImageUrlIsMutable()V

    .line 1778
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$1500(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 1798
    :cond_f
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryPhoneNumberIsMutable()V

    .line 1799
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$1900(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 1813
    :cond_10
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryEmailIsMutable()V

    .line 1814
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2100(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 1823
    :cond_11
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptTypeIsMutable()V

    .line 1824
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2200(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1846
    const/4 v2, 0x0

    .line 1848
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/Entity;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/Entity;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    if-eqz v2, :cond_0

    .line 1854
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 1857
    :cond_0
    return-object p0

    .line 1849
    :catch_0
    move-exception v1

    .line 1850
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    move-object v2, v0

    .line 1851
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1853
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1854
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1747
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/Entity;

    if-eqz v0, :cond_0

    .line 1748
    check-cast p1, Lcom/google/googlex/glass/common/proto/Entity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object p0

    .line 1751
    .end local p0
    :goto_0
    return-object p0

    .line 1750
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
    .line 1582
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1582
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

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
    .line 1582
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

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
    .line 1582
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1582
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

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
    .line 1582
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergePriority(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3159
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 3160
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3162
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 3167
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3171
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3172
    return-object p0

    .line 3165
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    goto :goto_0

    .line 3169
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setAcceptType(ILjava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2971
    if-nez p2, :cond_0

    .line 2972
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2974
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptTypeIsMutable()V

    .line 2975
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2976
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2977
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2125
    if-nez p1, :cond_0

    .line 2126
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2128
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2129
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2130
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2131
    return-object p0
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2155
    if-nez p1, :cond_0

    .line 2156
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2158
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2159
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2160
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2161
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2730
    if-nez p1, :cond_0

    .line 2731
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2733
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2734
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 2735
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2736
    return-object p0
.end method

.method public setEmailBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2760
    if-nez p1, :cond_0

    .line 2761
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2763
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2764
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 2765
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2766
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2026
    if-nez p1, :cond_0

    .line 2027
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2029
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2030
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2031
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2032
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2058
    if-nez p1, :cond_0

    .line 2059
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2061
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2062
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2063
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2064
    return-object p0
.end method

.method public setImageUrl(ILjava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2252
    if-nez p2, :cond_0

    .line 2253
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2255
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureImageUrlIsMutable()V

    .line 2256
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2257
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2258
    return-object p0
.end method

.method public setIsCommunicationTarget(Z)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3086
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3087
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->isCommunicationTarget_:Z

    .line 3088
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3089
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2500
    if-nez p1, :cond_0

    .line 2501
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2503
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2504
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 2505
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2506
    return-object p0
.end method

.method public setPhoneNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2534
    if-nez p1, :cond_0

    .line 2535
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2537
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2538
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 2539
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2540
    return-object p0
.end method

.method public setPriority(Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3146
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3147
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 3148
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3152
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3153
    return-object p0

    .line 3150
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setPriority(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3129
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 3130
    if-nez p1, :cond_0

    .line 3131
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3133
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 3134
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3138
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3139
    return-object p0

    .line 3136
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setSecondaryEmail(ILjava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2827
    if-nez p2, :cond_0

    .line 2828
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2830
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryEmailIsMutable()V

    .line 2831
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2832
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2833
    return-object p0
.end method

.method public setSecondaryPhoneNumber(ILjava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2601
    if-nez p2, :cond_0

    .line 2602
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2604
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryPhoneNumberIsMutable()V

    .line 2605
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2606
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2607
    return-object p0
.end method

.method public setShouldSync(Z)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2379
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2380
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->shouldSync_:Z

    .line 2381
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2382
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1923
    if-nez p1, :cond_0

    .line 1924
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1926
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1927
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 1928
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 1929
    return-object p0
.end method

.method public setSourceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1955
    if-nez p1, :cond_0

    .line 1956
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1958
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 1959
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 1960
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 1961
    return-object p0
.end method

.method public setType(Lcom/google/googlex/glass/common/proto/Entity$Type;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2416
    if-nez p1, :cond_0

    .line 2417
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2419
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2420
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 2421
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2422
    return-object p0
.end method
