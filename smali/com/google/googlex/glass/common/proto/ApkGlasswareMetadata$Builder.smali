.class public final Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ApkGlasswareMetadata.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private packageName_:Ljava/lang/Object;

.field private versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$VersionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private version_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1054
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1197
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 1297
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    .line 1055
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->maybeForceBuilderInitialization()V

    .line 1056
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 1060
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1197
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 1297
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    .line 1061
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->maybeForceBuilderInitialization()V

    .line 1062
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1037
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$900()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 1

    .prologue
    .line 1037
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->create()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 1

    .prologue
    .line 1069
    new-instance v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;-><init>()V

    return-object v0
.end method

.method private ensureVersionIsMutable()V
    .locals 2

    .prologue
    .line 1300
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1301
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    .line 1302
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    .line 1304
    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1043
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_ApkGlasswareMetadata_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getVersionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$VersionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1598
    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    .line 1606
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    .line 1598
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1064
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->getVersionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1067
    :cond_0
    return-void
.end method


# virtual methods
.method public addAllVersion(Ljava/lang/Iterable;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;",
            ">;)",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;"
        }
    .end annotation

    .prologue
    .line 1476
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;>;"
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1477
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->ensureVersionIsMutable()V

    .line 1478
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1480
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->onChanged()V

    .line 1484
    :goto_0
    return-object p0

    .line 1482
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addVersion(ILcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1459
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->ensureVersionIsMutable()V

    .line 1460
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->build()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1461
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->onChanged()V

    .line 1465
    :goto_0
    return-object p0

    .line 1463
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->build()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addVersion(ILcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1420
    if-nez p2, :cond_0

    .line 1421
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1423
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->ensureVersionIsMutable()V

    .line 1424
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1425
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->onChanged()V

    .line 1429
    :goto_0
    return-object p0

    .line 1427
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addVersion(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1441
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->ensureVersionIsMutable()V

    .line 1442
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->build()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1443
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->onChanged()V

    .line 1447
    :goto_0
    return-object p0

    .line 1445
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->build()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addVersion(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1399
    if-nez p1, :cond_0

    .line 1400
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1402
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->ensureVersionIsMutable()V

    .line 1403
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1404
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->onChanged()V

    .line 1408
    :goto_0
    return-object p0

    .line 1406
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public addVersionBuilder()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 2

    .prologue
    .line 1568
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->getVersionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    return-object v0
.end method

.method public addVersionBuilder(I)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 2
    .parameter "index"

    .prologue
    .line 1580
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->getVersionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    return-object v0
.end method

.method public build()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    .locals 2

    .prologue
    .line 1099
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v0

    .line 1100
    .local v0, result:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1101
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1103
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->build()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->build()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    .locals 5

    .prologue
    .line 1107
    new-instance v1, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$1;)V

    .line 1108
    .local v1, result:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    .line 1109
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1110
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1111
    or-int/lit8 v2, v2, 0x1

    .line 1113
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->packageName_:Ljava/lang/Object;

    #setter for: Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->packageName_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->access$1302(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v3, :cond_2

    .line 1115
    iget v3, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1116
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    .line 1117
    iget v3, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    .line 1119
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    #setter for: Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->access$1402(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;Ljava/util/List;)Ljava/util/List;

    .line 1123
    :goto_0
    #setter for: Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->access$1502(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;I)I

    .line 1124
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->onBuilt()V

    .line 1125
    return-object v1

    .line 1121
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v3

    #setter for: Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->access$1402(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;Ljava/util/List;)Ljava/util/List;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 1

    .prologue
    .line 1073
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1074
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 1075
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    .line 1076
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1077
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    .line 1078
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    .line 1082
    :goto_0
    return-object p0

    .line 1080
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->clear()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->clear()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->clear()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->clear()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPackageName()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 1

    .prologue
    .line 1274
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    .line 1275
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 1276
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->onChanged()V

    .line 1277
    return-object p0
.end method

.method public clearVersion()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 1

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1495
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    .line 1496
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    .line 1497
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->onChanged()V

    .line 1501
    :goto_0
    return-object p0

    .line 1499
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 2

    .prologue
    .line 1086
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->create()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->clone()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->clone()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->clone()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->clone()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->clone()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

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
    .line 1037
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->clone()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    .locals 1

    .prologue
    .line 1095
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1091
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_ApkGlasswareMetadata_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1216
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 1217
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v0, v1

    .line 1218
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1220
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1221
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1222
    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 1226
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

.method public getPackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 1238
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 1239
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1240
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1243
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 1246
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

.method public getVersion(I)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;
    .locals 1
    .parameter "index"

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    .line 1348
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    goto :goto_0
.end method

.method public getVersionBuilder(I)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1529
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->getVersionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;

    return-object v0
.end method

.method public getVersionBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1592
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->getVersionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCount()I
    .locals 1

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1334
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getVersionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1320
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getVersionOrBuilder(I)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$VersionOrBuilder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1541
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$VersionOrBuilder;

    .line 1542
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$VersionOrBuilder;

    goto :goto_0
.end method

.method public getVersionOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$VersionOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    .line 1557
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public hasPackageName()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1206
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

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
    .line 1048
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_ApkGlasswareMetadata_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    const-class v2, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1175
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 2
    .parameter "other"

    .prologue
    const/4 v0, 0x0

    .line 1138
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 1171
    :goto_0
    return-object p0

    .line 1139
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->hasPackageName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1140
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    .line 1141
    #getter for: Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->packageName_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->access$1300(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 1142
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->onChanged()V

    .line 1144
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_4

    .line 1145
    #getter for: Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->access$1400(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1146
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1147
    #getter for: Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->access$1400(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    .line 1148
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    .line 1153
    :goto_1
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->onChanged()V

    .line 1170
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    .line 1150
    :cond_3
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->ensureVersionIsMutable()V

    .line 1151
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    #getter for: Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->access$1400(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1156
    :cond_4
    #getter for: Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->access$1400(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1157
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1158
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    .line 1159
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    .line 1160
    #getter for: Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->access$1400(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    .line 1161
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    .line 1162
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->getVersionFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2

    .line 1166
    :cond_6
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    #getter for: Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->version_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->access$1400(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1182
    const/4 v2, 0x0

    .line 1184
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    if-eqz v2, :cond_0

    .line 1190
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    .line 1193
    :cond_0
    return-object p0

    .line 1185
    :catch_0
    move-exception v1

    .line 1186
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-object v2, v0

    .line 1187
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1189
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1190
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1129
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    if-eqz v0, :cond_0

    .line 1130
    check-cast p1, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object p0

    .line 1133
    .end local p0
    :goto_0
    return-object p0

    .line 1132
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
    .line 1037
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1037
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

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
    .line 1037
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

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
    .line 1037
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1037
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

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
    .line 1037
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeVersion(I)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 1
    .parameter "index"

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1512
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->ensureVersionIsMutable()V

    .line 1513
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1514
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->onChanged()V

    .line 1518
    :goto_0
    return-object p0

    .line 1516
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1258
    if-nez p1, :cond_0

    .line 1259
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1261
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    .line 1262
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 1263
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->onChanged()V

    .line 1264
    return-object p0
.end method

.method public setPackageNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1288
    if-nez p1, :cond_0

    .line 1289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1291
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->bitField0_:I

    .line 1292
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->packageName_:Ljava/lang/Object;

    .line 1293
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->onChanged()V

    .line 1294
    return-object p0
.end method

.method public setVersion(ILcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 2
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    .line 1382
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->ensureVersionIsMutable()V

    .line 1383
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->build()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1384
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->onChanged()V

    .line 1388
    :goto_0
    return-object p0

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version$Builder;->build()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public setVersion(ILcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Version;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    .line 1361
    if-nez p2, :cond_0

    .line 1362
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1364
    :cond_0
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->ensureVersionIsMutable()V

    .line 1365
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->version_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1366
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->onChanged()V

    .line 1370
    :goto_0
    return-object p0

    .line 1368
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->versionBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method
