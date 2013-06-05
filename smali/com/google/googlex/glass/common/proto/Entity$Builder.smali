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
.field private acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Command;",
            "Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;",
            "Lcom/google/googlex/glass/common/proto/Entity$CommandOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private acceptCommand_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Command;",
            ">;"
        }
    .end annotation
.end field

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

.field private speakableName_:Ljava/lang/Object;

.field private type_:Lcom/google/googlex/glass/common/proto/Entity$Type;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2366
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2681
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2784
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2887
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2984
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 3219
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Type;->INDIVIDUAL:Lcom/google/googlex/glass/common/proto/Entity$Type;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 3254
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 3363
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 3492
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 3589
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 3718
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 3926
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 4042
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    .line 4282
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 2367
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->maybeForceBuilderInitialization()V

    .line 2368
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 2372
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2681
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2784
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2887
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2984
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 3219
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Type;->INDIVIDUAL:Lcom/google/googlex/glass/common/proto/Entity$Type;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 3254
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 3363
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 3492
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 3589
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 3718
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 3926
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 4042
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    .line 4282
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 2373
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->maybeForceBuilderInitialization()V

    .line 2374
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Entity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2349
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1600()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2349
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->create()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2382
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAcceptCommandIsMutable()V
    .locals 2

    .prologue
    .line 4045
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_0

    .line 4046
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    .line 4047
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4049
    :cond_0
    return-void
.end method

.method private ensureAcceptTypeIsMutable()V
    .locals 2

    .prologue
    .line 3720
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    .line 3721
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 3722
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3724
    :cond_0
    return-void
.end method

.method private ensureImageUrlIsMutable()V
    .locals 2

    .prologue
    .line 2986
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 2987
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 2988
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2990
    :cond_0
    return-void
.end method

.method private ensureSecondaryEmailIsMutable()V
    .locals 2

    .prologue
    .line 3591
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    .line 3592
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 3593
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3595
    :cond_0
    return-void
.end method

.method private ensureSecondaryPhoneNumberIsMutable()V
    .locals 2

    .prologue
    .line 3365
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 3366
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 3367
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3369
    :cond_0
    return-void
.end method

.method private getAcceptCommandFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Command;",
            "Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;",
            "Lcom/google/googlex/glass/common/proto/Entity$CommandOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4270
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4271
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v3, 0x2000

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 4277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    .line 4279
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 4271
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2355
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
    .line 4031
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4032
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 4037
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 4039
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 2376
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2377
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getPriorityFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 2378
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getAcceptCommandFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2380
    :cond_0
    return-void
.end method


# virtual methods
.method public addAcceptCommand(ILcom/google/googlex/glass/common/proto/Entity$Command$Builder;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4167
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4168
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptCommandIsMutable()V

    .line 4169
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4170
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4174
    :goto_0
    return-object p0

    .line 4172
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAcceptCommand(ILcom/google/googlex/glass/common/proto/Entity$Command;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4136
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4137
    if-nez p2, :cond_0

    .line 4138
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4140
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptCommandIsMutable()V

    .line 4141
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4142
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4146
    :goto_0
    return-object p0

    .line 4144
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAcceptCommand(Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 4153
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4154
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptCommandIsMutable()V

    .line 4155
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4156
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4160
    :goto_0
    return-object p0

    .line 4158
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAcceptCommand(Lcom/google/googlex/glass/common/proto/Entity$Command;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4119
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4120
    if-nez p1, :cond_0

    .line 4121
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4123
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptCommandIsMutable()V

    .line 4124
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4125
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4129
    :goto_0
    return-object p0

    .line 4127
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAcceptCommandBuilder()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    .locals 2

    .prologue
    .line 4249
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getAcceptCommandFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Command;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    return-object v0
.end method

.method public addAcceptCommandBuilder(I)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 4257
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getAcceptCommandFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Command;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    return-object v0
.end method

.method public addAcceptType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3811
    if-nez p1, :cond_0

    .line 3812
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3814
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptTypeIsMutable()V

    .line 3815
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3816
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3817
    return-object p0
.end method

.method public addAcceptTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3865
    if-nez p1, :cond_0

    .line 3866
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3868
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptTypeIsMutable()V

    .line 3869
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 3870
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3871
    return-object p0
.end method

.method public addAllAcceptCommand(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/Entity$Command;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/Entity$Builder;"
        }
    .end annotation

    .prologue
    .line 4181
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/Entity$Command;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4182
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptCommandIsMutable()V

    .line 4183
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4185
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4189
    :goto_0
    return-object p0

    .line 4187
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
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
    .line 3831
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptTypeIsMutable()V

    .line 3832
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3834
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3835
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
    .line 3118
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureImageUrlIsMutable()V

    .line 3119
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3121
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3122
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
    .line 3681
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryEmailIsMutable()V

    .line 3682
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3684
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3685
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
    .line 3455
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryPhoneNumberIsMutable()V

    .line 3456
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3458
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3459
    return-object p0
.end method

.method public addImageUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3095
    if-nez p1, :cond_0

    .line 3096
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3098
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureImageUrlIsMutable()V

    .line 3099
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3100
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3101
    return-object p0
.end method

.method public addImageUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3158
    if-nez p1, :cond_0

    .line 3159
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3161
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureImageUrlIsMutable()V

    .line 3162
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 3163
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3164
    return-object p0
.end method

.method public addSecondaryEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3664
    if-nez p1, :cond_0

    .line 3665
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3667
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryEmailIsMutable()V

    .line 3668
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3669
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3670
    return-object p0
.end method

.method public addSecondaryEmailBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3709
    if-nez p1, :cond_0

    .line 3710
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3712
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryEmailIsMutable()V

    .line 3713
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 3714
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3715
    return-object p0
.end method

.method public addSecondaryPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3438
    if-nez p1, :cond_0

    .line 3439
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3441
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryPhoneNumberIsMutable()V

    .line 3442
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3443
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3444
    return-object p0
.end method

.method public addSecondaryPhoneNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3483
    if-nez p1, :cond_0

    .line 3484
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3486
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryPhoneNumberIsMutable()V

    .line 3487
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 3488
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3489
    return-object p0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 2

    .prologue
    .line 2442
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 2443
    .local v0, result:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2444
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2446
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2349
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2349
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 5

    .prologue
    .line 2450
    new-instance v1, Lcom/google/googlex/glass/common/proto/Entity;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/Entity;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Entity$1;)V

    .line 2451
    .local v1, result:Lcom/google/googlex/glass/common/proto/Entity;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2452
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2453
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2454
    or-int/lit8 v2, v2, 0x1

    .line 2456
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2002(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2457
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2458
    or-int/lit8 v2, v2, 0x2

    .line 2460
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2102(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2461
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2462
    or-int/lit8 v2, v2, 0x4

    .line 2464
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2202(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2465
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 2466
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 2468
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2470
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2302(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 2471
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2472
    or-int/lit8 v2, v2, 0x8

    .line 2474
    :cond_4
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->shouldSync_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->shouldSync_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2402(Lcom/google/googlex/glass/common/proto/Entity;Z)Z

    .line 2475
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 2476
    or-int/lit8 v2, v2, 0x10

    .line 2478
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2502(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/googlex/glass/common/proto/Entity$Type;)Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 2479
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 2480
    or-int/lit8 v2, v2, 0x20

    .line 2482
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2602(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2483
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 2484
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 2486
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2488
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2702(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 2489
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 2490
    or-int/lit8 v2, v2, 0x40

    .line 2492
    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2802(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2493
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 2494
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 2496
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x201

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2498
    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2902(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 2499
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 2500
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 2502
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x401

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2504
    :cond_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$3002(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 2505
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 2506
    or-int/lit16 v2, v2, 0x80

    .line 2508
    :cond_b
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->isCommunicationTarget_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->isCommunicationTarget_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$3102(Lcom/google/googlex/glass/common/proto/Entity;Z)Z

    .line 2509
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 2510
    or-int/lit16 v2, v2, 0x100

    .line 2512
    :cond_c
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_f

    .line 2513
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$3202(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 2517
    :goto_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_10

    .line 2518
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 2519
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    .line 2520
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2522
    :cond_d
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$3302(Lcom/google/googlex/glass/common/proto/Entity;Ljava/util/List;)Ljava/util/List;

    .line 2526
    :goto_1
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 2527
    or-int/lit16 v2, v2, 0x200

    .line 2529
    :cond_e
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->speakableName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$3402(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2530
    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/Entity;->access$3502(Lcom/google/googlex/glass/common/proto/Entity;I)I

    .line 2531
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onBuilt()V

    .line 2532
    return-object v1

    .line 2515
    :cond_f
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$3202(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority;

    goto :goto_0

    .line 2524
    :cond_10
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$3302(Lcom/google/googlex/glass/common/proto/Entity;Ljava/util/List;)Ljava/util/List;

    goto :goto_1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2349
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2349
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2386
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2387
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2388
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2389
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2390
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2391
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2392
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2393
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 2394
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2395
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->shouldSync_:Z

    .line 2396
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2397
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Type;->INDIVIDUAL:Lcom/google/googlex/glass/common/proto/Entity$Type;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 2398
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2399
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 2400
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2401
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 2402
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2403
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 2404
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2405
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 2406
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2407
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 2408
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2409
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->isCommunicationTarget_:Z

    .line 2410
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2411
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2412
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 2416
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2417
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2418
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    .line 2419
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2423
    :goto_1
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 2424
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2425
    return-object p0

    .line 2414
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 2421
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2349
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2349
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2349
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2349
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAcceptCommand()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 4195
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4196
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    .line 4197
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4198
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4202
    :goto_0
    return-object p0

    .line 4200
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearAcceptType()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3848
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 3849
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3850
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3851
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2961
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2962
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2963
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2964
    return-object p0
.end method

.method public clearEmail()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3566
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3567
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 3568
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3569
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2863
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2864
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2865
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2866
    return-object p0
.end method

.method public clearImageUrl()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3138
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 3139
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3140
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3141
    return-object p0
.end method

.method public clearIsCommunicationTarget()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3920
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3921
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->isCommunicationTarget_:Z

    .line 3922
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3923
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3338
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3339
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 3340
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3341
    return-object p0
.end method

.method public clearPriority()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3998
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3999
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 4000
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4004
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4005
    return-object p0

    .line 4002
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearSecondaryEmail()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3695
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 3696
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3697
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3698
    return-object p0
.end method

.method public clearSecondaryPhoneNumber()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3469
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 3470
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3471
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3472
    return-object p0
.end method

.method public clearShouldSync()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3213
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->shouldSync_:Z

    .line 3215
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3216
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2760
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2761
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2762
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2763
    return-object p0
.end method

.method public clearSpeakableName()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 4361
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4362
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getSpeakableName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 4363
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4364
    return-object p0
.end method

.method public clearType()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3248
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3249
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Type;->INDIVIDUAL:Lcom/google/googlex/glass/common/proto/Entity$Type;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 3250
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3251
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2

    .prologue
    .line 2429
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
    .line 2349
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2349
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2349
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2349
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2349
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
    .line 2349
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAcceptCommand(I)Lcom/google/googlex/glass/common/proto/Entity$Command;
    .locals 1
    .parameter "index"

    .prologue
    .line 4078
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4079
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command;

    .line 4081
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command;

    goto :goto_0
.end method

.method public getAcceptCommandBuilder(I)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 4222
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getAcceptCommandFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    return-object v0
.end method

.method public getAcceptCommandBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4265
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getAcceptCommandFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAcceptCommandCount()I
    .locals 1

    .prologue
    .line 4068
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4069
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4071
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getAcceptCommandList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Command;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4058
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4059
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4061
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAcceptCommandOrBuilder(I)Lcom/google/googlex/glass/common/proto/Entity$CommandOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 4229
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4230
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$CommandOrBuilder;

    .line 4231
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$CommandOrBuilder;

    goto :goto_0
.end method

.method public getAcceptCommandOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/Entity$CommandOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4239
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 4240
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 4242
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getAcceptType(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 3763
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
    .line 3777
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAcceptTypeCount()I
    .locals 1

    .prologue
    .line 3750
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
    .line 3737
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1

    .prologue
    .line 2438
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2349
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2349
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2434
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Entity_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2906
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2907
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2908
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2910
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2913
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
    .line 2925
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2926
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2927
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2930
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2933
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
    .line 3511
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 3512
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3513
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3515
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 3518
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
    .line 3530
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 3531
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3532
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3535
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 3538
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
    .line 2805
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2806
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2807
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2809
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2812
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
    .line 2825
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2826
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2827
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2830
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2833
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
    .line 3038
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
    .line 3055
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrlCount()I
    .locals 1

    .prologue
    .line 3022
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
    .line 3006
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIsCommunicationTarget()Z
    .locals 1

    .prologue
    .line 3895
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->isCommunicationTarget_:Z

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3277
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 3278
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3279
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3281
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 3284
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
    .line 3298
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 3299
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3300
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3303
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 3306
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
    .line 3939
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3940
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 3942
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
    .line 4011
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4012
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4013
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
    .line 4019
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 4020
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$PriorityOrBuilder;

    .line 4022
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
    .line 3625
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
    .line 3636
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryEmailCount()I
    .locals 1

    .prologue
    .line 3615
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
    .line 3605
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryPhoneNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 3399
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
    .line 3410
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryPhoneNumberCount()I
    .locals 1

    .prologue
    .line 3389
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
    .line 3379
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShouldSync()Z
    .locals 1

    .prologue
    .line 3188
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->shouldSync_:Z

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2702
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2703
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2704
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2706
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2709
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
    .line 2722
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2723
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2724
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2727
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2730
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

.method public getSpeakableName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4303
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 4304
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_0

    .line 4305
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4307
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 4310
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

.method public getSpeakableNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4323
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 4324
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4325
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4328
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 4331
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
    .line 3230
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    return-object v0
.end method

.method public hasDisplayName()Z
    .locals 2

    .prologue
    .line 2896
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
    .line 3501
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
    .line 2794
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
    .line 3884
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
    .line 3265
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
    .line 3933
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
    .line 3177
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

    .line 2691
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeakableName()Z
    .locals 2

    .prologue
    .line 4292
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

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
    .line 3224
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
    .line 2360
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
    .line 2659
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 3
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 2545
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 2655
    :goto_0
    return-object p0

    .line 2546
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2547
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2548
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2000(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2549
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2551
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2552
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2553
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2100(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2554
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2556
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasDisplayName()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2557
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2558
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2200(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2559
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2561
    :cond_3
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2300(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2562
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2563
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2300(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 2564
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2569
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2571
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasShouldSync()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2572
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getShouldSync()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setShouldSync(Z)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 2574
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasType()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2575
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getType()Lcom/google/googlex/glass/common/proto/Entity$Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setType(Lcom/google/googlex/glass/common/proto/Entity$Type;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 2577
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2578
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2579
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2600(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 2580
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2582
    :cond_7
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2700(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2583
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2584
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2700(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 2585
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2590
    :goto_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2592
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasEmail()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2593
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2594
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2800(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 2595
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2597
    :cond_9
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2900(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2598
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2599
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2900(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 2600
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2605
    :goto_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2607
    :cond_a
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3000(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 2608
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2609
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3000(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 2610
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2615
    :goto_4
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2617
    :cond_b
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasIsCommunicationTarget()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2618
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getIsCommunicationTarget()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setIsCommunicationTarget(Z)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 2620
    :cond_c
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasPriority()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2621
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getPriority()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergePriority(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 2623
    :cond_d
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_15

    .line 2624
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3300(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2625
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2626
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3300(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    .line 2627
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2632
    :goto_5
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2649
    :cond_e
    :goto_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasSpeakableName()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2650
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2651
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->speakableName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3400(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 2652
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2654
    :cond_f
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 2566
    :cond_10
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureImageUrlIsMutable()V

    .line 2567
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2300(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 2587
    :cond_11
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryPhoneNumberIsMutable()V

    .line 2588
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2700(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 2602
    :cond_12
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryEmailIsMutable()V

    .line 2603
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2900(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 2612
    :cond_13
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptTypeIsMutable()V

    .line 2613
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3000(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 2629
    :cond_14
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptCommandIsMutable()V

    .line 2630
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3300(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 2635
    :cond_15
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3300(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2636
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2637
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 2638
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2639
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3300(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    .line 2640
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2641
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->access$3600()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getAcceptCommandFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_16
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_6

    .line 2645
    :cond_17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3300(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_6
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
    .line 2666
    const/4 v2, 0x0

    .line 2668
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

    .line 2673
    if-eqz v2, :cond_0

    .line 2674
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 2677
    :cond_0
    return-object p0

    .line 2669
    :catch_0
    move-exception v1

    .line 2670
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    move-object v2, v0

    .line 2671
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2673
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 2674
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2536
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/Entity;

    if-eqz v0, :cond_0

    .line 2537
    check-cast p1, Lcom/google/googlex/glass/common/proto/Entity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object p0

    .line 2540
    .end local p0
    :goto_0
    return-object p0

    .line 2539
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
    .line 2349
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2349
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
    .line 2349
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
    .line 2349
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2349
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
    .line 2349
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergePriority(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 3979
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 3980
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3982
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 3987
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3991
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3992
    return-object p0

    .line 3985
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    goto :goto_0

    .line 3989
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public removeAcceptCommand(I)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 4208
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4209
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptCommandIsMutable()V

    .line 4210
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4211
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4215
    :goto_0
    return-object p0

    .line 4213
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setAcceptCommand(ILcom/google/googlex/glass/common/proto/Entity$Command$Builder;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4106
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4107
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptCommandIsMutable()V

    .line 4108
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4109
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4113
    :goto_0
    return-object p0

    .line 4111
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setAcceptCommand(ILcom/google/googlex/glass/common/proto/Entity$Command;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4089
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4090
    if-nez p2, :cond_0

    .line 4091
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4093
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptCommandIsMutable()V

    .line 4094
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4095
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4099
    :goto_0
    return-object p0

    .line 4097
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setAcceptType(ILjava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3791
    if-nez p2, :cond_0

    .line 3792
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3794
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptTypeIsMutable()V

    .line 3795
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3796
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3797
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2945
    if-nez p1, :cond_0

    .line 2946
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2948
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2949
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2950
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2951
    return-object p0
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2975
    if-nez p1, :cond_0

    .line 2976
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2978
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2979
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2980
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2981
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3550
    if-nez p1, :cond_0

    .line 3551
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3553
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3554
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 3555
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3556
    return-object p0
.end method

.method public setEmailBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3580
    if-nez p1, :cond_0

    .line 3581
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3583
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3584
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 3585
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3586
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2846
    if-nez p1, :cond_0

    .line 2847
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2849
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2850
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2851
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2852
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2878
    if-nez p1, :cond_0

    .line 2879
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2881
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2882
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2883
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2884
    return-object p0
.end method

.method public setImageUrl(ILjava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3072
    if-nez p2, :cond_0

    .line 3073
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3075
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureImageUrlIsMutable()V

    .line 3076
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3077
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3078
    return-object p0
.end method

.method public setIsCommunicationTarget(Z)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3906
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3907
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->isCommunicationTarget_:Z

    .line 3908
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3909
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3320
    if-nez p1, :cond_0

    .line 3321
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3323
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3324
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 3325
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3326
    return-object p0
.end method

.method public setPhoneNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3354
    if-nez p1, :cond_0

    .line 3355
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3357
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3358
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 3359
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3360
    return-object p0
.end method

.method public setPriority(Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 3966
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 3967
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 3968
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3972
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3973
    return-object p0

    .line 3970
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
    .line 3949
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 3950
    if-nez p1, :cond_0

    .line 3951
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3953
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 3954
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3958
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3959
    return-object p0

    .line 3956
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
    .line 3647
    if-nez p2, :cond_0

    .line 3648
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3650
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryEmailIsMutable()V

    .line 3651
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3652
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3653
    return-object p0
.end method

.method public setSecondaryPhoneNumber(ILjava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3421
    if-nez p2, :cond_0

    .line 3422
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3424
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryPhoneNumberIsMutable()V

    .line 3425
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3426
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3427
    return-object p0
.end method

.method public setShouldSync(Z)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3199
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3200
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->shouldSync_:Z

    .line 3201
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3202
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2743
    if-nez p1, :cond_0

    .line 2744
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2746
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2747
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2748
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2749
    return-object p0
.end method

.method public setSourceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2775
    if-nez p1, :cond_0

    .line 2776
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2778
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2779
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2780
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2781
    return-object p0
.end method

.method public setSpeakableName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4344
    if-nez p1, :cond_0

    .line 4345
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4347
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4348
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 4349
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4350
    return-object p0
.end method

.method public setSpeakableNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4376
    if-nez p1, :cond_0

    .line 4377
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4379
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4380
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 4381
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4382
    return-object p0
.end method

.method public setType(Lcom/google/googlex/glass/common/proto/Entity$Type;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3236
    if-nez p1, :cond_0

    .line 3237
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3239
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3240
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 3241
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3242
    return-object p0
.end method
