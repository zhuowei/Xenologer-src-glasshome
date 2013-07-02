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

.field private contactGroup_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;",
            ">;"
        }
    .end annotation
.end field

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
    .line 2533
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 2865
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2971
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 3077
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 3177
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 3412
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Type;->INDIVIDUAL:Lcom/google/googlex/glass/common/proto/Entity$Type;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 3447
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 3559
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 3688
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 3788
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 3917
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 4125
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 4241
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    .line 4481
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 4587
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->contactGroup_:Ljava/util/List;

    .line 2534
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->maybeForceBuilderInitialization()V

    .line 2535
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 2539
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 2865
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2971
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 3077
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 3177
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 3412
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Type;->INDIVIDUAL:Lcom/google/googlex/glass/common/proto/Entity$Type;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 3447
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 3559
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 3688
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 3788
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 3917
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 4125
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 4241
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    .line 4481
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 4587
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->contactGroup_:Ljava/util/List;

    .line 2540
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->maybeForceBuilderInitialization()V

    .line 2541
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Entity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2516
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1600()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2516
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->create()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2549
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;-><init>()V

    return-object v0
.end method

.method private ensureAcceptCommandIsMutable()V
    .locals 2

    .prologue
    .line 4244
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_0

    .line 4245
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    .line 4246
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4248
    :cond_0
    return-void
.end method

.method private ensureAcceptTypeIsMutable()V
    .locals 2

    .prologue
    .line 3919
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    .line 3920
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 3921
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3923
    :cond_0
    return-void
.end method

.method private ensureContactGroupIsMutable()V
    .locals 3

    .prologue
    const v2, 0x8000

    .line 4590
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    .line 4591
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->contactGroup_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->contactGroup_:Ljava/util/List;

    .line 4592
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4594
    :cond_0
    return-void
.end method

.method private ensureImageUrlIsMutable()V
    .locals 2

    .prologue
    .line 3179
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 3180
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 3181
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3183
    :cond_0
    return-void
.end method

.method private ensureSecondaryEmailIsMutable()V
    .locals 2

    .prologue
    .line 3790
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    .line 3791
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 3792
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3794
    :cond_0
    return-void
.end method

.method private ensureSecondaryPhoneNumberIsMutable()V
    .locals 2

    .prologue
    .line 3561
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 3562
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 3563
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3565
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
    .line 4469
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4470
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

    .line 4476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    .line 4478
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 4470
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2522
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
    .line 4230
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4231
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 4236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 4238
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 2543
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2544
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getPriorityFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 2545
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getAcceptCommandFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2547
    :cond_0
    return-void
.end method


# virtual methods
.method public addAcceptCommand(ILcom/google/googlex/glass/common/proto/Entity$Command$Builder;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 4366
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4367
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptCommandIsMutable()V

    .line 4368
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4369
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4373
    :goto_0
    return-object p0

    .line 4371
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
    .line 4335
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4336
    if-nez p2, :cond_0

    .line 4337
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4339
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptCommandIsMutable()V

    .line 4340
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4341
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4345
    :goto_0
    return-object p0

    .line 4343
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAcceptCommand(Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 4352
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4353
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptCommandIsMutable()V

    .line 4354
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4355
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4359
    :goto_0
    return-object p0

    .line 4357
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
    .line 4318
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4319
    if-nez p1, :cond_0

    .line 4320
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4322
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptCommandIsMutable()V

    .line 4323
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4324
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4328
    :goto_0
    return-object p0

    .line 4326
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addAcceptCommandBuilder()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    .locals 2

    .prologue
    .line 4448
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
    .line 4456
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
    .line 4010
    if-nez p1, :cond_0

    .line 4011
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4013
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptTypeIsMutable()V

    .line 4014
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 4015
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4016
    return-object p0
.end method

.method public addAcceptTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4064
    if-nez p1, :cond_0

    .line 4065
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4067
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptTypeIsMutable()V

    .line 4068
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 4069
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4070
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
    .line 4380
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/Entity$Command;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4381
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptCommandIsMutable()V

    .line 4382
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4384
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4388
    :goto_0
    return-object p0

    .line 4386
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
    .line 4030
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptTypeIsMutable()V

    .line 4031
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4033
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4034
    return-object p0
.end method

.method public addAllContactGroup(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/Entity$Builder;"
        }
    .end annotation

    .prologue
    .line 4643
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureContactGroupIsMutable()V

    .line 4644
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->contactGroup_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 4646
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4647
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
    .line 3311
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureImageUrlIsMutable()V

    .line 3312
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3314
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3315
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
    .line 3880
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryEmailIsMutable()V

    .line 3881
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3883
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3884
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
    .line 3651
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryPhoneNumberIsMutable()V

    .line 3652
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3654
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3655
    return-object p0
.end method

.method public addContactGroup(Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4630
    if-nez p1, :cond_0

    .line 4631
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4633
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureContactGroupIsMutable()V

    .line 4634
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->contactGroup_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4635
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4636
    return-object p0
.end method

.method public addImageUrl(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3288
    if-nez p1, :cond_0

    .line 3289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3291
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureImageUrlIsMutable()V

    .line 3292
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3293
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3294
    return-object p0
.end method

.method public addImageUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3351
    if-nez p1, :cond_0

    .line 3352
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3354
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureImageUrlIsMutable()V

    .line 3355
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 3356
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3357
    return-object p0
.end method

.method public addSecondaryEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3863
    if-nez p1, :cond_0

    .line 3864
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3866
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryEmailIsMutable()V

    .line 3867
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3868
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3869
    return-object p0
.end method

.method public addSecondaryEmailBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3908
    if-nez p1, :cond_0

    .line 3909
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3911
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryEmailIsMutable()V

    .line 3912
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 3913
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3914
    return-object p0
.end method

.method public addSecondaryPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3634
    if-nez p1, :cond_0

    .line 3635
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3637
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryPhoneNumberIsMutable()V

    .line 3638
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 3639
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3640
    return-object p0
.end method

.method public addSecondaryPhoneNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3679
    if-nez p1, :cond_0

    .line 3680
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3682
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryPhoneNumberIsMutable()V

    .line 3683
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    .line 3684
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3685
    return-object p0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 2

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    .line 2612
    .local v0, result:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2613
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 2615
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2516
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2516
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 6

    .prologue
    const v5, 0x8000

    .line 2619
    new-instance v1, Lcom/google/googlex/glass/common/proto/Entity;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/Entity;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Entity$1;)V

    .line 2620
    .local v1, result:Lcom/google/googlex/glass/common/proto/Entity;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2621
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2622
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2623
    or-int/lit8 v2, v2, 0x1

    .line 2625
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2002(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2626
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2627
    or-int/lit8 v2, v2, 0x2

    .line 2629
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2102(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2630
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2631
    or-int/lit8 v2, v2, 0x4

    .line 2633
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2202(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2634
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 2635
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 2637
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x9

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2639
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2302(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 2640
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2641
    or-int/lit8 v2, v2, 0x8

    .line 2643
    :cond_4
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->shouldSync_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->shouldSync_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2402(Lcom/google/googlex/glass/common/proto/Entity;Z)Z

    .line 2644
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 2645
    or-int/lit8 v2, v2, 0x10

    .line 2647
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2502(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/googlex/glass/common/proto/Entity$Type;)Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 2648
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 2649
    or-int/lit8 v2, v2, 0x20

    .line 2651
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2602(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2652
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 2653
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 2655
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x81

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2657
    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2702(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 2658
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 2659
    or-int/lit8 v2, v2, 0x40

    .line 2661
    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2802(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2662
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 2663
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 2665
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x201

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2667
    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$2902(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 2668
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    .line 2669
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 2671
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x401

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2673
    :cond_a
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$3002(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 2674
    and-int/lit16 v3, v0, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    .line 2675
    or-int/lit16 v2, v2, 0x80

    .line 2677
    :cond_b
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->isCommunicationTarget_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->isCommunicationTarget_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$3102(Lcom/google/googlex/glass/common/proto/Entity;Z)Z

    .line 2678
    and-int/lit16 v3, v0, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    .line 2679
    or-int/lit16 v2, v2, 0x100

    .line 2681
    :cond_c
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_10

    .line 2682
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$3202(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 2686
    :goto_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_11

    .line 2687
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    .line 2688
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    .line 2689
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v3, v3, -0x2001

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2691
    :cond_d
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$3302(Lcom/google/googlex/glass/common/proto/Entity;Ljava/util/List;)Ljava/util/List;

    .line 2695
    :goto_1
    and-int/lit16 v3, v0, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    .line 2696
    or-int/lit16 v2, v2, 0x200

    .line 2698
    :cond_e
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->speakableName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$3402(Lcom/google/googlex/glass/common/proto/Entity;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2699
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_f

    .line 2700
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->contactGroup_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->contactGroup_:Ljava/util/List;

    .line 2701
    iget v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    const v4, -0x8001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2703
    :cond_f
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->contactGroup_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$3502(Lcom/google/googlex/glass/common/proto/Entity;Ljava/util/List;)Ljava/util/List;

    .line 2704
    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/Entity;->access$3602(Lcom/google/googlex/glass/common/proto/Entity;I)I

    .line 2705
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onBuilt()V

    .line 2706
    return-object v1

    .line 2684
    :cond_10
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/Entity$Priority;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity;->access$3202(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority;

    goto :goto_0

    .line 2693
    :cond_11
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
    .line 2516
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2516
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2553
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 2554
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2555
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2556
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2557
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2558
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2559
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2560
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 2561
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2562
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->shouldSync_:Z

    .line 2563
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2564
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Type;->INDIVIDUAL:Lcom/google/googlex/glass/common/proto/Entity$Type;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 2565
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2566
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 2567
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2568
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 2569
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2570
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 2571
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2572
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 2573
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2574
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 2575
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2576
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->isCommunicationTarget_:Z

    .line 2577
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2578
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 2579
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 2583
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2584
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 2585
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    .line 2586
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2590
    :goto_1
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 2591
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2592
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->contactGroup_:Ljava/util/List;

    .line 2593
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2594
    return-object p0

    .line 2581
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 2588
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 2516
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2516
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2516
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2516
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAcceptCommand()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 4394
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4395
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    .line 4396
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4397
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4401
    :goto_0
    return-object p0

    .line 4399
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clearAcceptType()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 4047
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 4048
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4049
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4050
    return-object p0
.end method

.method public clearContactGroup()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2

    .prologue
    .line 4653
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->contactGroup_:Ljava/util/List;

    .line 4654
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4655
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4656
    return-object p0
.end method

.method public clearDisplayName()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3154
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3155
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 3156
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3157
    return-object p0
.end method

.method public clearEmail()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3765
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3766
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getEmail()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 3767
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3768
    return-object p0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3053
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3054
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 3055
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3056
    return-object p0
.end method

.method public clearImageUrl()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3331
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 3332
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3333
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3334
    return-object p0
.end method

.method public clearIsCommunicationTarget()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 4119
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->isCommunicationTarget_:Z

    .line 4121
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4122
    return-object p0
.end method

.method public clearPhoneNumber()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3534
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3535
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 3536
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3537
    return-object p0
.end method

.method public clearPriority()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 4197
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4198
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 4199
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4203
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4204
    return-object p0

    .line 4201
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearSecondaryEmail()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3894
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 3895
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3896
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3897
    return-object p0
.end method

.method public clearSecondaryPhoneNumber()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3665
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 3666
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3667
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3668
    return-object p0
.end method

.method public clearShouldSync()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3406
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->shouldSync_:Z

    .line 3408
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3409
    return-object p0
.end method

.method public clearSource()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 2947
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2948
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getSource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2949
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2950
    return-object p0
.end method

.method public clearSpeakableName()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 4563
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4564
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity;->getSpeakableName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 4565
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4566
    return-object p0
.end method

.method public clearType()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1

    .prologue
    .line 3441
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3442
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Type;->INDIVIDUAL:Lcom/google/googlex/glass/common/proto/Entity$Type;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 3443
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3444
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2

    .prologue
    .line 2598
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
    .line 2516
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2516
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 2516
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 2516
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2516
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
    .line 2516
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAcceptCommand(I)Lcom/google/googlex/glass/common/proto/Entity$Command;
    .locals 1
    .parameter "index"

    .prologue
    .line 4277
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4278
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command;

    .line 4280
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
    .line 4421
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
    .line 4464
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getAcceptCommandFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAcceptCommandCount()I
    .locals 1

    .prologue
    .line 4267
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4268
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 4270
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
    .line 4257
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4258
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4260
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
    .line 4428
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4429
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$CommandOrBuilder;

    .line 4430
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
    .line 4438
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 4439
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 4441
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
    .line 3962
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
    .line 3976
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAcceptTypeCount()I
    .locals 1

    .prologue
    .line 3949
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
    .line 3936
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContactGroup(I)Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;
    .locals 1
    .parameter "index"

    .prologue
    .line 4611
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->contactGroup_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;

    return-object v0
.end method

.method public getContactGroupCount()I
    .locals 1

    .prologue
    .line 4605
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->contactGroup_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getContactGroupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$ContactGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4599
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->contactGroup_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity;
    .locals 1

    .prologue
    .line 2607
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 2516
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2516
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 2603
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Entity_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3096
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 3097
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 3098
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3100
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3101
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3102
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 3106
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

.method public getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3118
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 3119
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3120
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3123
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 3126
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
    .locals 4

    .prologue
    .line 3707
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 3708
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 3709
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3711
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3712
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3713
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 3717
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

.method public getEmailBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3729
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 3730
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3731
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3734
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 3737
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
    .locals 4

    .prologue
    .line 2992
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2993
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 2994
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2996
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2997
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2998
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 3002
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

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3015
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 3016
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3017
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3020
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 3023
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
    .line 3231
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
    .line 3248
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrlCount()I
    .locals 1

    .prologue
    .line 3215
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
    .line 3199
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIsCommunicationTarget()Z
    .locals 1

    .prologue
    .line 4094
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->isCommunicationTarget_:Z

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3470
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 3471
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 3472
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3474
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3475
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3476
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 3480
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

.method public getPhoneNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 3494
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 3495
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 3496
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3499
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 3502
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
    .line 4138
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4139
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 4141
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
    .line 4210
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4211
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4212
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
    .line 4218
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 4219
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$PriorityOrBuilder;

    .line 4221
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
    .line 3824
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
    .line 3835
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryEmailCount()I
    .locals 1

    .prologue
    .line 3814
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
    .line 3804
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryPhoneNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 3595
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
    .line 3606
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryPhoneNumberCount()I
    .locals 1

    .prologue
    .line 3585
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
    .line 3575
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShouldSync()Z
    .locals 1

    .prologue
    .line 3381
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->shouldSync_:Z

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2886
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2887
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 2888
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2890
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2891
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2892
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2896
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

.method public getSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2909
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2910
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2911
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2914
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2917
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
    .locals 4

    .prologue
    .line 4502
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 4503
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 4504
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4506
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4507
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4508
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 4512
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

.method public getSpeakableNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 4525
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 4526
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4527
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4530
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 4533
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
    .line 3423
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    return-object v0
.end method

.method public hasDisplayName()Z
    .locals 2

    .prologue
    .line 3086
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
    .line 3697
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
    .line 2981
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
    .line 4083
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
    .line 3458
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
    .line 4132
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
    .line 3370
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

    .line 2875
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
    .line 4491
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
    .line 3417
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
    .line 2527
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
    .line 2843
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 3
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 2719
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 2839
    :goto_0
    return-object p0

    .line 2720
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasSource()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2721
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2722
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->source_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2000(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2723
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2725
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasId()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2726
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2727
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->id_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2100(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 2728
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2730
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasDisplayName()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2731
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2732
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->displayName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2200(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 2733
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2735
    :cond_3
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2300(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2736
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2737
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2300(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    .line 2738
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2743
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2745
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasShouldSync()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2746
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getShouldSync()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setShouldSync(Z)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 2748
    :cond_5
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasType()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2749
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getType()Lcom/google/googlex/glass/common/proto/Entity$Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setType(Lcom/google/googlex/glass/common/proto/Entity$Type;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 2751
    :cond_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasPhoneNumber()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2752
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2753
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->phoneNumber_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2600(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 2754
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2756
    :cond_7
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2700(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2757
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2758
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2700(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    .line 2759
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2764
    :goto_2
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2766
    :cond_8
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasEmail()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2767
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2768
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->email_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2800(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 2769
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2771
    :cond_9
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2900(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 2772
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2773
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2900(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    .line 2774
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2779
    :goto_3
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2781
    :cond_a
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3000(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 2782
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2783
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3000(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    .line 2784
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2789
    :goto_4
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2791
    :cond_b
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasIsCommunicationTarget()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2792
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getIsCommunicationTarget()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setIsCommunicationTarget(Z)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 2794
    :cond_c
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasPriority()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2795
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getPriority()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergePriority(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 2797
    :cond_d
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_16

    .line 2798
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3300(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2799
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2800
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3300(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    .line 2801
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2806
    :goto_5
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2823
    :cond_e
    :goto_6
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->hasSpeakableName()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2824
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2825
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->speakableName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3400(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 2826
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2828
    :cond_f
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3500(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 2829
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->contactGroup_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2830
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3500(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->contactGroup_:Ljava/util/List;

    .line 2831
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2836
    :goto_7
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2838
    :cond_10
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    .line 2740
    :cond_11
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureImageUrlIsMutable()V

    .line 2741
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->imageUrl_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2300(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 2761
    :cond_12
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryPhoneNumberIsMutable()V

    .line 2762
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2700(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 2776
    :cond_13
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryEmailIsMutable()V

    .line 2777
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$2900(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 2786
    :cond_14
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptTypeIsMutable()V

    .line 2787
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptType_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3000(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    .line 2803
    :cond_15
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptCommandIsMutable()V

    .line 2804
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3300(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 2809
    :cond_16
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3300(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 2810
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2811
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 2812
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 2813
    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3300(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    .line 2814
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2815
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->access$3700()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->getAcceptCommandFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_17
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_6

    .line 2819
    :cond_18
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->acceptCommand_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3300(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_6

    .line 2833
    :cond_19
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureContactGroupIsMutable()V

    .line 2834
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->contactGroup_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/Entity;->contactGroup_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/Entity;->access$3500(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7
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
    .line 2850
    const/4 v2, 0x0

    .line 2852
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

    .line 2857
    if-eqz v2, :cond_0

    .line 2858
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    .line 2861
    :cond_0
    return-object p0

    .line 2853
    :catch_0
    move-exception v1

    .line 2854
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity;

    move-object v2, v0

    .line 2855
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2857
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 2858
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2710
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/Entity;

    if-eqz v0, :cond_0

    .line 2711
    check-cast p1, Lcom/google/googlex/glass/common/proto/Entity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object p0

    .line 2714
    .end local p0
    :goto_0
    return-object p0

    .line 2713
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
    .line 2516
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2516
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
    .line 2516
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
    .line 2516
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2516
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
    .line 2516
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergePriority(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 4178
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4179
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4181
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Entity$Priority;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity$Priority;)Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 4186
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4190
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4191
    return-object p0

    .line 4184
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    goto :goto_0

    .line 4188
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public removeAcceptCommand(I)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 4407
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4408
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptCommandIsMutable()V

    .line 4409
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4410
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4414
    :goto_0
    return-object p0

    .line 4412
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
    .line 4305
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 4306
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptCommandIsMutable()V

    .line 4307
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4308
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4312
    :goto_0
    return-object p0

    .line 4310
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
    .line 4288
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommandBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 4289
    if-nez p2, :cond_0

    .line 4290
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4292
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptCommandIsMutable()V

    .line 4293
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptCommand_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4294
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4298
    :goto_0
    return-object p0

    .line 4296
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
    .line 3990
    if-nez p2, :cond_0

    .line 3991
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3993
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureAcceptTypeIsMutable()V

    .line 3994
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->acceptType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3995
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3996
    return-object p0
.end method

.method public setContactGroup(ILcom/google/googlex/glass/common/proto/Entity$ContactGroup;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 4618
    if-nez p2, :cond_0

    .line 4619
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4621
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureContactGroupIsMutable()V

    .line 4622
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->contactGroup_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4623
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4624
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3138
    if-nez p1, :cond_0

    .line 3139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3141
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3142
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 3143
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3144
    return-object p0
.end method

.method public setDisplayNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3168
    if-nez p1, :cond_0

    .line 3169
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3171
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3172
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->displayName_:Ljava/lang/Object;

    .line 3173
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3174
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3749
    if-nez p1, :cond_0

    .line 3750
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3752
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3753
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 3754
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3755
    return-object p0
.end method

.method public setEmailBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3779
    if-nez p1, :cond_0

    .line 3780
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3782
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3783
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->email_:Ljava/lang/Object;

    .line 3784
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3785
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3036
    if-nez p1, :cond_0

    .line 3037
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3039
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3040
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 3041
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3042
    return-object p0
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3068
    if-nez p1, :cond_0

    .line 3069
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3071
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3072
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->id_:Ljava/lang/Object;

    .line 3073
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3074
    return-object p0
.end method

.method public setImageUrl(ILjava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3265
    if-nez p2, :cond_0

    .line 3266
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3268
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureImageUrlIsMutable()V

    .line 3269
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->imageUrl_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3270
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3271
    return-object p0
.end method

.method public setIsCommunicationTarget(Z)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4105
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4106
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->isCommunicationTarget_:Z

    .line 4107
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4108
    return-object p0
.end method

.method public setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3516
    if-nez p1, :cond_0

    .line 3517
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3519
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3520
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 3521
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3522
    return-object p0
.end method

.method public setPhoneNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
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

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3554
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->phoneNumber_:Ljava/lang/Object;

    .line 3555
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3556
    return-object p0
.end method

.method public setPriority(Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 4165
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 4166
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Priority$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 4167
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4171
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4172
    return-object p0

    .line 4169
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
    .line 4148
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priorityBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 4149
    if-nez p1, :cond_0

    .line 4150
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4152
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->priority_:Lcom/google/googlex/glass/common/proto/Entity$Priority;

    .line 4153
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4157
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4158
    return-object p0

    .line 4155
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
    .line 3846
    if-nez p2, :cond_0

    .line 3847
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3849
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryEmailIsMutable()V

    .line 3850
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryEmail_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3851
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3852
    return-object p0
.end method

.method public setSecondaryPhoneNumber(ILjava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3617
    if-nez p2, :cond_0

    .line 3618
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3620
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->ensureSecondaryPhoneNumberIsMutable()V

    .line 3621
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->secondaryPhoneNumber_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3622
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3623
    return-object p0
.end method

.method public setShouldSync(Z)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3392
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3393
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->shouldSync_:Z

    .line 3394
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3395
    return-object p0
.end method

.method public setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2930
    if-nez p1, :cond_0

    .line 2931
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2933
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2934
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2935
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2936
    return-object p0
.end method

.method public setSourceBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2962
    if-nez p1, :cond_0

    .line 2963
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2965
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 2966
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->source_:Ljava/lang/Object;

    .line 2967
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 2968
    return-object p0
.end method

.method public setSpeakableName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4546
    if-nez p1, :cond_0

    .line 4547
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4549
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4550
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 4551
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4552
    return-object p0
.end method

.method public setSpeakableNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4578
    if-nez p1, :cond_0

    .line 4579
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4581
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 4582
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->speakableName_:Ljava/lang/Object;

    .line 4583
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 4584
    return-object p0
.end method

.method public setType(Lcom/google/googlex/glass/common/proto/Entity$Type;)Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 3429
    if-nez p1, :cond_0

    .line 3430
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3432
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->bitField0_:I

    .line 3433
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Type;

    .line 3434
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->onChanged()V

    .line 3435
    return-object p0
.end method
