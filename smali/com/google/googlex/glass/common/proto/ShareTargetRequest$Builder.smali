.class public final Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "ShareTargetRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/ShareTargetRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/ShareTargetRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 240
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->maybeForceBuilderInitialization()V

    .line 241
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 246
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->maybeForceBuilderInitialization()V

    .line 247
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/ShareTargetRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sharetargetquery;->internal_static_googlex_glass_common_proto_ShareTargetRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 249
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    move-result-object v0

    .line 276
    .local v0, result:Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 279
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
    .locals 2

    .prologue
    .line 283
    new-instance v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/ShareTargetRequest$1;)V

    .line 284
    .local v0, result:Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->onBuilt()V

    .line 285
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;
    .locals 0

    .prologue
    .line 257
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 258
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;
    .locals 2

    .prologue
    .line 262
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ShareTargetRequest;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

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
    .line 222
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
    .locals 1

    .prologue
    .line 271
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sharetargetquery;->internal_static_googlex_glass_common_proto_ShareTargetRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 233
    sget-object v0, Lcom/google/googlex/glass/common/proto/Sharetargetquery;->internal_static_googlex_glass_common_proto_ShareTargetRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/ShareTargetRequest;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 298
    invoke-static {}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 300
    :goto_0
    return-object p0

    .line 299
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    const/4 v2, 0x0

    .line 313
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/ShareTargetRequest;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    if-eqz v2, :cond_0

    .line 319
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ShareTargetRequest;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    .line 322
    :cond_0
    return-object p0

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    move-object v2, v0

    .line 316
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 319
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ShareTargetRequest;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 289
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    if-eqz v0, :cond_0

    .line 290
    check-cast p1, Lcom/google/googlex/glass/common/proto/ShareTargetRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/ShareTargetRequest;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object p0

    .line 293
    .end local p0
    :goto_0
    return-object p0

    .line 292
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
    .line 222
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

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
    .line 222
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

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
    .line 222
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

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
    .line 222
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/ShareTargetRequest$Builder;

    move-result-object v0

    return-object v0
.end method
