.class public final Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ClientInfoProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ClientInfoProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreviewParams"
.end annotation


# static fields
.field public static final MAP_HEIGHT_PIXELS_FIELD_NUMBER:I = 0x5

.field public static final MAP_WIDTH_PIXELS_FIELD_NUMBER:I = 0x4

.field public static final PREVIEW_TYPE_DESKTOP:I = 0x1

.field public static final PREVIEW_TYPE_MOBILE:I = 0x0

.field public static final PREVIEW_TYPE_TABLET:I = 0x2

.field public static final URL_HEIGHT_PIXELS_FIELD_NUMBER:I = 0x2

.field public static final URL_PREVIEW_TYPE_FIELD_NUMBER:I = 0x3

.field public static final URL_WIDTH_PIXELS_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasMapHeightPixels:Z

.field private hasMapWidthPixels:Z

.field private hasUrlHeightPixels:Z

.field private hasUrlPreviewType:Z

.field private hasUrlWidthPixels:Z

.field private mapHeightPixels_:I

.field private mapWidthPixels_:I

.field private urlHeightPixels_:I

.field private urlPreviewType_:I

.field private urlWidthPixels_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x190

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 20
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlWidthPixels_:I

    .line 37
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlHeightPixels_:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlPreviewType_:I

    .line 71
    const/16 v0, 0x280

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapWidthPixels_:I

    .line 88
    const/16 v0, 0x140

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapHeightPixels_:I

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    invoke-direct {v0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    invoke-direct {v0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    check-cast v0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->clearUrlWidthPixels()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    .line 104
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->clearUrlHeightPixels()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    .line 105
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->clearUrlPreviewType()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    .line 106
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->clearMapWidthPixels()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    .line 107
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->clearMapHeightPixels()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->cachedSize:I

    .line 109
    return-object p0
.end method

.method public clearMapHeightPixels()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasMapHeightPixels:Z

    .line 98
    const/16 v0, 0x140

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapHeightPixels_:I

    .line 99
    return-object p0
.end method

.method public clearMapWidthPixels()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasMapWidthPixels:Z

    .line 81
    const/16 v0, 0x280

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapWidthPixels_:I

    .line 82
    return-object p0
.end method

.method public clearUrlHeightPixels()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasUrlHeightPixels:Z

    .line 47
    const/16 v0, 0x190

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlHeightPixels_:I

    .line 48
    return-object p0
.end method

.method public clearUrlPreviewType()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasUrlPreviewType:Z

    .line 64
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlPreviewType_:I

    .line 65
    return-object p0
.end method

.method public clearUrlWidthPixels()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasUrlWidthPixels:Z

    .line 30
    const/16 v0, 0x190

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlWidthPixels_:I

    .line 31
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->cachedSize:I

    if-gez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->getSerializedSize()I

    .line 143
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->cachedSize:I

    return v0
.end method

.method public getMapHeightPixels()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapHeightPixels_:I

    return v0
.end method

.method public getMapWidthPixels()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapWidthPixels_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasUrlWidthPixels()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->getUrlWidthPixels()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasUrlHeightPixels()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->getUrlHeightPixels()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasUrlPreviewType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->getUrlPreviewType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasMapWidthPixels()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->getMapWidthPixels()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 165
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasMapHeightPixels()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 166
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->getMapHeightPixels()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->cachedSize:I

    .line 170
    return v0
.end method

.method public getUrlHeightPixels()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlHeightPixels_:I

    return v0
.end method

.method public getUrlPreviewType()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlPreviewType_:I

    return v0
.end method

.method public getUrlWidthPixels()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlWidthPixels_:I

    return v0
.end method

.method public hasMapHeightPixels()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasMapHeightPixels:Z

    return v0
.end method

.method public hasMapWidthPixels()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasMapWidthPixels:Z

    return v0
.end method

.method public hasUrlHeightPixels()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasUrlHeightPixels:Z

    return v0
.end method

.method public hasUrlPreviewType()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasUrlPreviewType:Z

    return v0
.end method

.method public hasUrlWidthPixels()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasUrlWidthPixels:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 179
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 183
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    :sswitch_0
    return-object p0

    .line 189
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->setUrlWidthPixels(I)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    goto :goto_0

    .line 193
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->setUrlHeightPixels(I)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    goto :goto_0

    .line 197
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->setUrlPreviewType(I)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    goto :goto_0

    .line 201
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->setMapWidthPixels(I)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    goto :goto_0

    .line 205
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->setMapHeightPixels(I)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    goto :goto_0

    .line 179
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    move-result-object v0

    return-object v0
.end method

.method public setMapHeightPixels(I)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasMapHeightPixels:Z

    .line 93
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapHeightPixels_:I

    .line 94
    return-object p0
.end method

.method public setMapWidthPixels(I)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasMapWidthPixels:Z

    .line 76
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapWidthPixels_:I

    .line 77
    return-object p0
.end method

.method public setUrlHeightPixels(I)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasUrlHeightPixels:Z

    .line 42
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlHeightPixels_:I

    .line 43
    return-object p0
.end method

.method public setUrlPreviewType(I)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasUrlPreviewType:Z

    .line 59
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlPreviewType_:I

    .line 60
    return-object p0
.end method

.method public setUrlWidthPixels(I)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1
    .parameter "value"

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasUrlWidthPixels:Z

    .line 25
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlWidthPixels_:I

    .line 26
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasUrlWidthPixels()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->getUrlWidthPixels()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasUrlHeightPixels()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->getUrlHeightPixels()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasUrlPreviewType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->getUrlPreviewType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasMapWidthPixels()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->getMapWidthPixels()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 131
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->hasMapHeightPixels()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 132
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->getMapHeightPixels()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 134
    :cond_4
    return-void
.end method
