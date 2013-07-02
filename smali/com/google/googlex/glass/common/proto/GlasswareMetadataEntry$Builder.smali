.class public final Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GlasswareMetadataEntry.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntryOrBuilder;"
    }
.end annotation


# instance fields
.field private apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

.field private bitField0_:I

.field private id_:J

.field private messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;",
            "Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;",
            "Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$MessagesOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

.field private mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;",
            "Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;",
            "Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1209
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1410
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    .line 1562
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    .line 1723
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    .line 1210
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->maybeForceBuilderInitialization()V

    .line 1211
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 1215
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1410
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    .line 1562
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    .line 1723
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    .line 1216
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->maybeForceBuilderInitialization()V

    .line 1217
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1192
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$900()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 1

    .prologue
    .line 1192
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->create()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 1

    .prologue
    .line 1226
    new-instance v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;-><init>()V

    return-object v0
.end method

.method private getApkMetadataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;",
            "Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadataOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1713
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    .line 1720
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1198
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_GlasswareMetadataEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getMessagesFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;",
            "Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;",
            "Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$MessagesOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1552
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1557
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    .line 1559
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getMirrorMetadataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;",
            "Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;",
            "Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadataOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1874
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1879
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    .line 1881
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1219
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->getMessagesFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1221
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->getApkMetadataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1222
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->getMirrorMetadataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1224
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
    .locals 2

    .prologue
    .line 1268
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    move-result-object v0

    .line 1269
    .local v0, result:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1270
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1272
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
    .locals 5

    .prologue
    .line 1276
    new-instance v1, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$1;)V

    .line 1277
    .local v1, result:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1278
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1279
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1280
    or-int/lit8 v2, v2, 0x1

    .line 1282
    :cond_0
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->id_:J

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->id_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->access$1302(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;J)J

    .line 1283
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1284
    or-int/lit8 v2, v2, 0x2

    .line 1286
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_4

    .line 1287
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->access$1402(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    .line 1291
    :goto_0
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1292
    or-int/lit8 v2, v2, 0x4

    .line 1294
    :cond_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_5

    .line 1295
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->access$1502(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    .line 1299
    :goto_1
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 1300
    or-int/lit8 v2, v2, 0x8

    .line 1302
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_6

    .line 1303
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->access$1602(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    .line 1307
    :goto_2
    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->access$1702(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;I)I

    .line 1308
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->onBuilt()V

    .line 1309
    return-object v1

    .line 1289
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->access$1402(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    goto :goto_0

    .line 1297
    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->access$1502(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    goto :goto_1

    .line 1305
    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    #setter for: Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->access$1602(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    goto :goto_2
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 2

    .prologue
    .line 1230
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1231
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->id_:J

    .line 1232
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1233
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1234
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    .line 1238
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1239
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1240
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    .line 1244
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1245
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_2

    .line 1246
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    .line 1250
    :goto_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1251
    return-object p0

    .line 1236
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    .line 1242
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1

    .line 1248
    :cond_2
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_2
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->clear()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearApkMetadata()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 1

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1665
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    .line 1666
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->onChanged()V

    .line 1670
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1671
    return-object p0

    .line 1668
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearId()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 2

    .prologue
    .line 1404
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1405
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->id_:J

    .line 1406
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->onChanged()V

    .line 1407
    return-object p0
.end method

.method public clearMessages()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1507
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    .line 1508
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->onChanged()V

    .line 1512
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1513
    return-object p0

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearMirrorMetadata()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 1

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1826
    invoke-static {}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    .line 1827
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->onChanged()V

    .line 1831
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1832
    return-object p0

    .line 1829
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 2

    .prologue
    .line 1255
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->create()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

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
    .line 1192
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->clone()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApkMetadata()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;
    .locals 1

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    .line 1588
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    goto :goto_0
.end method

.method public getApkMetadataBuilder()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;
    .locals 1

    .prologue
    .line 1682
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1683
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->onChanged()V

    .line 1684
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->getApkMetadataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    return-object v0
.end method

.method public getApkMetadataOrBuilder()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadataOrBuilder;
    .locals 1

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1696
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadataOrBuilder;

    .line 1698
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    goto :goto_0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
    .locals 1

    .prologue
    .line 1264
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1192
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1260
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_GlasswareMetadataEntry_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 1381
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->id_:J

    return-wide v0
.end method

.method public getMessages()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;
    .locals 1

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    .line 1434
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    goto :goto_0
.end method

.method public getMessagesBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;
    .locals 1

    .prologue
    .line 1523
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1524
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->onChanged()V

    .line 1525
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->getMessagesFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    return-object v0
.end method

.method public getMessagesOrBuilder()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$MessagesOrBuilder;
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$MessagesOrBuilder;

    .line 1538
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    goto :goto_0
.end method

.method public getMirrorMetadata()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;
    .locals 1

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    .line 1749
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    goto :goto_0
.end method

.method public getMirrorMetadataBuilder()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;
    .locals 1

    .prologue
    .line 1843
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1844
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->onChanged()V

    .line 1845
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->getMirrorMetadataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    return-object v0
.end method

.method public getMirrorMetadataOrBuilder()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadataOrBuilder;
    .locals 1

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1857
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadataOrBuilder;

    .line 1859
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    goto :goto_0
.end method

.method public hasApkMetadata()Z
    .locals 2

    .prologue
    .line 1574
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

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

    .line 1371
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMessages()Z
    .locals 2

    .prologue
    .line 1421
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

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

.method public hasMirrorMetadata()Z
    .locals 2

    .prologue
    .line 1735
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 1203
    sget-object v0, Lcom/google/googlex/glass/common/proto/Glassware;->internal_static_googlex_glass_common_proto_GlasswareMetadataEntry_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    const-class v2, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1340
    const/4 v0, 0x1

    return v0
.end method

.method public mergeApkMetadata(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1641
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1643
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;->newBuilder(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    .line 1648
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->onChanged()V

    .line 1652
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1653
    return-object p0

    .line 1646
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    goto :goto_0

    .line 1650
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1322
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1336
    :goto_0
    return-object p0

    .line 1323
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1324
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->getId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->setId(J)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    .line 1326
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->hasMessages()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1327
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->getMessages()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mergeMessages(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    .line 1329
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->hasApkMetadata()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1330
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->getApkMetadata()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mergeApkMetadata(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    .line 1332
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->hasMirrorMetadata()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1333
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->getMirrorMetadata()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mergeMirrorMetadata(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    .line 1335
    :cond_4
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1347
    const/4 v2, 0x0

    .line 1349
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1354
    if-eqz v2, :cond_0

    .line 1355
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    .line 1358
    :cond_0
    return-object p0

    .line 1350
    :catch_0
    move-exception v1

    .line 1351
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    move-object v2, v0

    .line 1352
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1354
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1355
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1313
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    if-eqz v0, :cond_0

    .line 1314
    check-cast p1, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object p0

    .line 1317
    .end local p0
    :goto_0
    return-object p0

    .line 1316
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
    .line 1192
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1192
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

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
    .line 1192
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

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
    .line 1192
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1192
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

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
    .line 1192
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeMessages(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1484
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;->newBuilder(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    .line 1491
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->onChanged()V

    .line 1495
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1496
    return-object p0

    .line 1489
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    goto :goto_0

    .line 1493
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeMirrorMetadata(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1802
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;->newBuilder(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    .line 1809
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->onChanged()V

    .line 1813
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1814
    return-object p0

    .line 1807
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    goto :goto_0

    .line 1811
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public setApkMetadata(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1623
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->build()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    .line 1624
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->onChanged()V

    .line 1628
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1629
    return-object p0

    .line 1626
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata$Builder;->build()Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setApkMetadata(Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1601
    if-nez p1, :cond_0

    .line 1602
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1604
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/ApkGlasswareMetadata;

    .line 1605
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->onChanged()V

    .line 1609
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1610
    return-object p0

    .line 1607
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setId(J)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1391
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1392
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->id_:J

    .line 1393
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->onChanged()V

    .line 1394
    return-object p0
.end method

.method public setMessages(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1467
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    .line 1468
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->onChanged()V

    .line 1472
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1473
    return-object p0

    .line 1470
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages$Builder;->build()Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setMessages(Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1446
    if-nez p1, :cond_0

    .line 1447
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1449
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messages_:Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Messages;

    .line 1450
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->onChanged()V

    .line 1454
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1455
    return-object p0

    .line 1452
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->messagesBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setMirrorMetadata(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1784
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->build()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    .line 1785
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->onChanged()V

    .line 1789
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1790
    return-object p0

    .line 1787
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata$Builder;->build()Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setMirrorMetadata(Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;)Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1762
    if-nez p1, :cond_0

    .line 1763
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1765
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadata_:Lcom/google/googlex/glass/common/proto/MirrorGlasswareMetadata;

    .line 1766
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->onChanged()V

    .line 1770
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->bitField0_:I

    .line 1771
    return-object p0

    .line 1768
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GlasswareMetadataEntry$Builder;->mirrorMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method
