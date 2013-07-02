.class public final Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "InstalledGlassware.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/InstalledGlasswareOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/InstalledGlassware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/InstalledGlasswareOrBuilder;"
    }
.end annotation


# instance fields
.field private apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;",
            "Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;",
            "Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadataOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

.field private bitField0_:I

.field private glasswareId_:J

.field private isEnabled_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1115
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1289
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    .line 1116
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->maybeForceBuilderInitialization()V

    .line 1117
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 1121
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1289
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    .line 1122
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->maybeForceBuilderInitialization()V

    .line 1123
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/InstalledGlassware$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1098
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$900()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 1

    .prologue
    .line 1098
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->create()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 1

    .prologue
    .line 1130
    new-instance v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;-><init>()V

    return-object v0
.end method

.method private getApkMetadataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;",
            "Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;",
            "Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadataOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1431
    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    .line 1436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    .line 1438
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1104
    sget-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_InstalledGlassware_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1125
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1126
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->getApkMetadataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    .line 1128
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/InstalledGlassware;
    .locals 2

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    move-result-object v0

    .line 1163
    .local v0, result:Lcom/google/googlex/glass/common/proto/InstalledGlassware;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1164
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1166
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->build()Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->build()Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/InstalledGlassware;
    .locals 5

    .prologue
    .line 1170
    new-instance v1, Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/InstalledGlassware$1;)V

    .line 1171
    .local v1, result:Lcom/google/googlex/glass/common/proto/InstalledGlassware;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    .line 1172
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1173
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1174
    or-int/lit8 v2, v2, 0x1

    .line 1176
    :cond_0
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->glasswareId_:J

    #setter for: Lcom/google/googlex/glass/common/proto/InstalledGlassware;->glasswareId_:J
    invoke-static {v1, v3, v4}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->access$1302(Lcom/google/googlex/glass/common/proto/InstalledGlassware;J)J

    .line 1177
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1178
    or-int/lit8 v2, v2, 0x2

    .line 1180
    :cond_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v3, :cond_3

    .line 1181
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    #setter for: Lcom/google/googlex/glass/common/proto/InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->access$1402(Lcom/google/googlex/glass/common/proto/InstalledGlassware;Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    .line 1185
    :goto_0
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1186
    or-int/lit8 v2, v2, 0x4

    .line 1188
    :cond_2
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->isEnabled_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/InstalledGlassware;->isEnabled_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->access$1502(Lcom/google/googlex/glass/common/proto/InstalledGlassware;Z)Z

    .line 1189
    #setter for: Lcom/google/googlex/glass/common/proto/InstalledGlassware;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->access$1602(Lcom/google/googlex/glass/common/proto/InstalledGlassware;I)I

    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->onBuilt()V

    .line 1191
    return-object v1

    .line 1183
    :cond_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v3}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    #setter for: Lcom/google/googlex/glass/common/proto/InstalledGlassware;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->access$1402(Lcom/google/googlex/glass/common/proto/InstalledGlassware;Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    goto :goto_0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 2

    .prologue
    .line 1134
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->glasswareId_:J

    .line 1136
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    .line 1137
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1138
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    .line 1142
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    .line 1143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->isEnabled_:Z

    .line 1144
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    .line 1145
    return-object p0

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->clear()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->clear()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->clear()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->clear()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearApkMetadata()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1386
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    .line 1387
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->onChanged()V

    .line 1391
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    .line 1392
    return-object p0

    .line 1389
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public clearGlasswareId()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 2

    .prologue
    .line 1283
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    .line 1284
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->glasswareId_:J

    .line 1285
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->onChanged()V

    .line 1286
    return-object p0
.end method

.method public clearIsEnabled()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 1

    .prologue
    .line 1491
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    .line 1492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->isEnabled_:Z

    .line 1493
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->onChanged()V

    .line 1494
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 2

    .prologue
    .line 1149
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->create()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/InstalledGlassware;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->clone()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->clone()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->clone()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->clone()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->clone()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

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
    .line 1098
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->clone()Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getApkMetadata()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;
    .locals 1

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    .line 1313
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    goto :goto_0
.end method

.method public getApkMetadataBuilder()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;
    .locals 1

    .prologue
    .line 1402
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    .line 1403
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->onChanged()V

    .line 1404
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->getApkMetadataFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    return-object v0
.end method

.method public getApkMetadataOrBuilder()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadataOrBuilder;
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadataOrBuilder;

    .line 1417
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    goto :goto_0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/InstalledGlassware;
    .locals 1

    .prologue
    .line 1158
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1154
    sget-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_InstalledGlassware_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getGlasswareId()J
    .locals 2

    .prologue
    .line 1260
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->glasswareId_:J

    return-wide v0
.end method

.method public getIsEnabled()Z
    .locals 1

    .prologue
    .line 1464
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->isEnabled_:Z

    return v0
.end method

.method public hasApkMetadata()Z
    .locals 2

    .prologue
    .line 1300
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

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

.method public hasGlasswareId()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1250
    iget v1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsEnabled()Z
    .locals 2

    .prologue
    .line 1452
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 1109
    sget-object v0, Lcom/google/googlex/glass/common/proto/Boutique;->internal_static_googlex_glass_common_proto_InstalledGlassware_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    const-class v2, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1219
    const/4 v0, 0x1

    return v0
.end method

.method public mergeApkMetadata(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1363
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;->newBuilder(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    .line 1370
    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->onChanged()V

    .line 1374
    :goto_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    .line 1375
    return-object p0

    .line 1368
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    goto :goto_0

    .line 1372
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/InstalledGlassware;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1204
    invoke-static {}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1215
    :goto_0
    return-object p0

    .line 1205
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->hasGlasswareId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1206
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->getGlasswareId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->setGlasswareId(J)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    .line 1208
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->hasApkMetadata()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1209
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->getApkMetadata()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->mergeApkMetadata(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    .line 1211
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->hasIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1212
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->getIsEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->setIsEnabled(Z)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    .line 1214
    :cond_3
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1226
    const/4 v2, 0x0

    .line 1228
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/InstalledGlassware;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/InstalledGlassware;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    if-eqz v2, :cond_0

    .line 1234
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/InstalledGlassware;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    .line 1237
    :cond_0
    return-object p0

    .line 1229
    :catch_0
    move-exception v1

    .line 1230
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    move-object v2, v0

    .line 1231
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1233
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1234
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/InstalledGlassware;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1195
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    if-eqz v0, :cond_0

    .line 1196
    check-cast p1, Lcom/google/googlex/glass/common/proto/InstalledGlassware;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/InstalledGlassware;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object p0

    .line 1199
    .end local p0
    :goto_0
    return-object p0

    .line 1198
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
    .line 1098
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1098
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

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
    .line 1098
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

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
    .line 1098
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1098
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

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
    .line 1098
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setApkMetadata(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 2
    .parameter "builderForValue"

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    .line 1346
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->build()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    .line 1347
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->onChanged()V

    .line 1351
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    .line 1352
    return-object p0

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata$Builder;->build()Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setApkMetadata(Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    .line 1325
    if-nez p1, :cond_0

    .line 1326
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1328
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadata_:Lcom/google/googlex/glass/common/proto/InstalledGlassware$ApkMetadata;

    .line 1329
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->onChanged()V

    .line 1333
    :goto_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    .line 1334
    return-object p0

    .line 1331
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->apkMetadataBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public setGlasswareId(J)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1270
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    .line 1271
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->glasswareId_:J

    .line 1272
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->onChanged()V

    .line 1273
    return-object p0
.end method

.method public setIsEnabled(Z)Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1476
    iget v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->bitField0_:I

    .line 1477
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->isEnabled_:Z

    .line 1478
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/InstalledGlassware$Builder;->onChanged()V

    .line 1479
    return-object p0
.end method
