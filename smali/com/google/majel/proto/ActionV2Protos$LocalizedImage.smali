.class public final Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalizedImage"
.end annotation


# static fields
.field public static final DEFAULT_URL_FIELD_NUMBER:I = 0x1

.field public static final IMAGE_TYPE_DEFAULT:I = 0x0

.field public static final IMAGE_TYPE_FIELD_NUMBER:I = 0x3

.field public static final IMAGE_TYPE_STATIC_MAP:I = 0x1

.field public static final LOCALIZED_URL_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private defaultUrl_:Ljava/lang/String;

.field private hasDefaultUrl:Z

.field private hasImageType:Z

.field private imageType_:I

.field private localizedUrl_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$LocalizedString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8176
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 8185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->defaultUrl_:Ljava/lang/String;

    .line 8201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl_:Ljava/util/List;

    .line 8235
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->imageType_:I

    .line 8275
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->cachedSize:I

    .line 8176
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8345
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 8339
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    return-object v0
.end method


# virtual methods
.method public addLocalizedUrl(Lcom/google/majel/proto/ActionV2Protos$LocalizedString;)Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 1
    .parameter "value"

    .prologue
    .line 8218
    if-nez p1, :cond_0

    .line 8219
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8221
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl_:Ljava/util/List;

    .line 8224
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8225
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 1

    .prologue
    .line 8250
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->clearDefaultUrl()Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    .line 8251
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->clearLocalizedUrl()Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    .line 8252
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->clearImageType()Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    .line 8253
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->cachedSize:I

    .line 8254
    return-object p0
.end method

.method public clearDefaultUrl()Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 1

    .prologue
    .line 8194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->hasDefaultUrl:Z

    .line 8195
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->defaultUrl_:Ljava/lang/String;

    .line 8196
    return-object p0
.end method

.method public clearImageType()Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8244
    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->hasImageType:Z

    .line 8245
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->imageType_:I

    .line 8246
    return-object p0
.end method

.method public clearLocalizedUrl()Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 1

    .prologue
    .line 8228
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl_:Ljava/util/List;

    .line 8229
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 8278
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->cachedSize:I

    if-gez v0, :cond_0

    .line 8280
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->getSerializedSize()I

    .line 8282
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->cachedSize:I

    return v0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8186
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->defaultUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageType()I
    .locals 1

    .prologue
    .line 8237
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->imageType_:I

    return v0
.end method

.method public getLocalizedUrl(I)Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .locals 1
    .parameter "index"

    .prologue
    .line 8208
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    return-object v0
.end method

.method public getLocalizedUrlCount()I
    .locals 1

    .prologue
    .line 8206
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLocalizedUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/ActionV2Protos$LocalizedString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8204
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 8287
    const/4 v2, 0x0

    .line 8288
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->hasDefaultUrl()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8289
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->getDefaultUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 8292
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->getLocalizedUrlList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    .line 8293
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 8296
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->hasImageType()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8297
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->getImageType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 8300
    :cond_2
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->cachedSize:I

    .line 8301
    return v2
.end method

.method public hasDefaultUrl()Z
    .locals 1

    .prologue
    .line 8187
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->hasDefaultUrl:Z

    return v0
.end method

.method public hasImageType()Z
    .locals 1

    .prologue
    .line 8236
    iget-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->hasImageType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 8258
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8309
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 8310
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 8314
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8315
    :sswitch_0
    return-object p0

    .line 8320
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->setDefaultUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    goto :goto_0

    .line 8324
    :sswitch_2
    new-instance v1, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    invoke-direct {v1}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;-><init>()V

    .line 8325
    .local v1, value:Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 8326
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->addLocalizedUrl(Lcom/google/majel/proto/ActionV2Protos$LocalizedString;)Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    goto :goto_0

    .line 8330
    .end local v1           #value:Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->setImageType(I)Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    goto :goto_0

    .line 8310
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8173
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 1
    .parameter "value"

    .prologue
    .line 8189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->hasDefaultUrl:Z

    .line 8190
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->defaultUrl_:Ljava/lang/String;

    .line 8191
    return-object p0
.end method

.method public setImageType(I)Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 1
    .parameter "value"

    .prologue
    .line 8239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->hasImageType:Z

    .line 8240
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->imageType_:I

    .line 8241
    return-object p0
.end method

.method public setLocalizedUrl(ILcom/google/majel/proto/ActionV2Protos$LocalizedString;)Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 8211
    if-nez p2, :cond_0

    .line 8212
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8214
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8215
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8264
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->hasDefaultUrl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8265
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->getDefaultUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 8267
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->getLocalizedUrlList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    .line 8268
    .local v0, element:Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 8270
    .end local v0           #element:Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->hasImageType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8271
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->getImageType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 8273
    :cond_2
    return-void
.end method
