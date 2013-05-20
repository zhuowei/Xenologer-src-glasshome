.class public final Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "GetSessionIdRequest.java"

# interfaces
.implements Lcom/google/googlex/glass/common/proto/GetSessionIdRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;",
        ">;",
        "Lcom/google/googlex/glass/common/proto/GetSessionIdRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 236
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->maybeForceBuilderInitialization()V

    .line 237
    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 242
    invoke-direct {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->maybeForceBuilderInitialization()V

    .line 243
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;
    .locals 1

    .prologue
    .line 249
    new-instance v0, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/google/googlex/glass/common/proto/Logging;->internal_static_googlex_glass_common_proto_GetSessionIdRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .prologue
    .line 245
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;
    .locals 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;

    move-result-object v0

    .line 272
    .local v0, result:Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 275
    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;
    .locals 2

    .prologue
    .line 279
    new-instance v0, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$1;)V

    .line 280
    .local v0, result:Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->onBuilt()V

    .line 281
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;
    .locals 0

    .prologue
    .line 253
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 254
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->clear()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;
    .locals 2

    .prologue
    .line 258
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->create()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->buildPartial()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;)Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

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
    .line 218
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->clone()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;
    .locals 1

    .prologue
    .line 267
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->getDefaultInstanceForType()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/google/googlex/glass/common/proto/Logging;->internal_static_googlex_glass_common_proto_GetSessionIdRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .prologue
    .line 229
    sget-object v0, Lcom/google/googlex/glass/common/proto/Logging;->internal_static_googlex_glass_common_proto_GetSessionIdRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-class v1, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;

    const-class v2, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;)Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 294
    invoke-static {}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;->getDefaultInstance()Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 296
    :goto_0
    return-object p0

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    const/4 v2, 0x0

    .line 309
    .local v2, parsedMessage:Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;
    :try_start_0
    sget-object v3, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;)Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    .line 318
    :cond_0
    return-object p0

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;

    move-object v2, v0

    .line 312
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 315
    invoke-virtual {p0, v2}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;)Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    :cond_1
    throw v3
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 285
    instance-of v0, p1, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;

    if-eqz v0, :cond_0

    .line 286
    check-cast p1, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->mergeFrom(Lcom/google/googlex/glass/common/proto/GetSessionIdRequest;)Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    move-result-object p0

    .line 289
    .end local p0
    :goto_0
    return-object p0

    .line 288
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
    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

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
    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

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
    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

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
    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/googlex/glass/common/proto/GetSessionIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method
