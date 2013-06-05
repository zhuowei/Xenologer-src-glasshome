.class public final Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Entity.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/Entity$CommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/Entity$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/Entity$CommandOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private isVoiceEnabled_:Z

.field private type_:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1207
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 1315
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->TAKE_A_NOTE:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    .line 1208
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->maybeForceBuilderInitialization()V

    .line 1209
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 1213
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 1315
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->TAKE_A_NOTE:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    .line 1214
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->maybeForceBuilderInitialization()V

    .line 1215
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/Entity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1190
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$900()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    .locals 1

    .prologue
    .line 1190
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->create()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    .locals 1

    .prologue
    .line 1221
    new-instance v0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1196
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Entity_Command_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 1217
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Command;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/Entity$Command;
    .locals 2

    .prologue
    .line 1247
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v0

    .line 1248
    .local v0, result:Lcom/google/googlex/glass/common/proto/Entity$Command;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Entity$Command;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1249
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1251
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/Entity$Command;
    .locals 5

    .prologue
    .line 1255
    new-instance v1, Lcom/google/googlex/glass/common/proto/Entity$Command;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/googlex/glass/common/proto/Entity$Command;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/Entity$1;)V

    .line 1256
    .local v1, result:Lcom/google/googlex/glass/common/proto/Entity$Command;
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->bitField0_:I

    .line 1257
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1258
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1259
    or-int/lit8 v2, v2, 0x1

    .line 1261
    :cond_0
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    #setter for: Lcom/google/googlex/glass/common/proto/Entity$Command;->type_:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity$Command;->access$1302(Lcom/google/googlex/glass/common/proto/Entity$Command;Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    .line 1262
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1263
    or-int/lit8 v2, v2, 0x2

    .line 1265
    :cond_1
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->isVoiceEnabled_:Z

    #setter for: Lcom/google/googlex/glass/common/proto/Entity$Command;->isVoiceEnabled_:Z
    invoke-static {v1, v3}, Lcom/google/googlex/glass/common/proto/Entity$Command;->access$1402(Lcom/google/googlex/glass/common/proto/Entity$Command;Z)Z

    .line 1266
    #setter for: Lcom/google/googlex/glass/common/proto/Entity$Command;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/googlex/glass/common/proto/Entity$Command;->access$1502(Lcom/google/googlex/glass/common/proto/Entity$Command;I)I

    .line 1267
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->onBuilt()V

    .line 1268
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    .locals 1

    .prologue
    .line 1225
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 1226
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->TAKE_A_NOTE:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    .line 1227
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->bitField0_:I

    .line 1228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->isVoiceEnabled_:Z

    .line 1229
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->bitField0_:I

    .line 1230
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->clear()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearIsVoiceEnabled()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    .locals 1

    .prologue
    .line 1396
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->bitField0_:I

    .line 1397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->isVoiceEnabled_:Z

    .line 1398
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->onChanged()V

    .line 1399
    return-object p0
.end method

.method public clearType()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    .locals 1

    .prologue
    .line 1344
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->bitField0_:I

    .line 1345
    sget-object v0, Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;->TAKE_A_NOTE:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    .line 1346
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->onChanged()V

    .line 1347
    return-object p0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    .locals 2

    .prologue
    .line 1234
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->create()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity$Command;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

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
    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->clone()Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity$Command;
    .locals 1

    .prologue
    .line 1243
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Command;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 1239
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Entity_Command_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getIsVoiceEnabled()Z
    .locals 1

    .prologue
    .line 1371
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->isVoiceEnabled_:Z

    return v0
.end method

.method public getType()Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;
    .locals 1

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    return-object v0
.end method

.method public hasIsVoiceEnabled()Z
    .locals 2

    .prologue
    .line 1360
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->bitField0_:I

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
    const/4 v0, 0x1

    .line 1320
    iget v1, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->bitField0_:I

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
    .line 1201
    sget-object v0, Lcom/google/googlex/glass/common/proto/Timeline;->internal_static_googlex_glass_common_proto_Entity_Command_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/Entity$Command;

    const-class v2, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1293
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/Entity$Command;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1281
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity$Command;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1289
    :goto_0
    return-object p0

    .line 1282
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Command;->hasType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1283
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Command;->getType()Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->setType(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    .line 1285
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Command;->hasIsVoiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1286
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Command;->getIsVoiceEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->setIsVoiceEnabled(Z)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    .line 1288
    :cond_2
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/Entity$Command;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1300
    const/4 v2, 0x0

    .line 1302
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/Entity$Command;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/Entity$Command;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    if-eqz v2, :cond_0

    .line 1308
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity$Command;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    .line 1311
    :cond_0
    return-object p0

    .line 1303
    :catch_0
    move-exception v1

    .line 1304
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/Entity$Command;

    move-object v2, v0

    .line 1305
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1307
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1308
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity$Command;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1272
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/Entity$Command;

    if-eqz v0, :cond_0

    .line 1273
    check-cast p1, Lcom/google/googlex/glass/common/proto/Entity$Command;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/Entity$Command;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object p0

    .line 1276
    .end local p0
    :goto_0
    return-object p0

    .line 1275
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
    .line 1190
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1190
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

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
    .line 1190
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

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
    .line 1190
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1190
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

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
    .line 1190
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setIsVoiceEnabled(Z)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1382
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->bitField0_:I

    .line 1383
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->isVoiceEnabled_:Z

    .line 1384
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->onChanged()V

    .line 1385
    return-object p0
.end method

.method public setType(Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;)Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;
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
    iget v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->bitField0_:I

    .line 1336
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->type_:Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;

    .line 1337
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/Entity$Command$Builder;->onChanged()V

    .line 1338
    return-object p0
.end method
