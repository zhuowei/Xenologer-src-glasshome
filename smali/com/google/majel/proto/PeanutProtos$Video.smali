.class public final Lcom/google/majel/proto/PeanutProtos$Video;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "PeanutProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/PeanutProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Video"
.end annotation


# static fields
.field public static final DURATION_MILLIS_FIELD_NUMBER:I = 0x5

.field public static final RENDERED_THUMB_URL_FIELD_NUMBER:I = 0x4

.field public static final THUMB_URL_FIELD_NUMBER:I = 0x3

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field public static final URL_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private durationMillis_:I

.field private hasDurationMillis:Z

.field private hasRenderedThumbUrl:Z

.field private hasThumbUrl:Z

.field private hasTitle:Z

.field private hasUrl:Z

.field private renderedThumbUrl_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private thumbUrl_:Ljava/lang/String;

.field private title_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1095
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->url_:Ljava/lang/String;

    .line 1117
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->title_:Ljava/lang/String;

    .line 1134
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->thumbUrl_:Ljava/lang/String;

    .line 1151
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->renderedThumbUrl_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1168
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->durationMillis_:I

    .line 1216
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->cachedSize:I

    .line 1095
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1300
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Video;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Video;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$Video;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Video;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1294
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Video;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Video;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$Video;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Video;

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Video;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1

    .prologue
    .line 1183
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->clearUrl()Lcom/google/majel/proto/PeanutProtos$Video;

    .line 1184
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->clearTitle()Lcom/google/majel/proto/PeanutProtos$Video;

    .line 1185
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->clearThumbUrl()Lcom/google/majel/proto/PeanutProtos$Video;

    .line 1186
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->clearRenderedThumbUrl()Lcom/google/majel/proto/PeanutProtos$Video;

    .line 1187
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->clearDurationMillis()Lcom/google/majel/proto/PeanutProtos$Video;

    .line 1188
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->cachedSize:I

    .line 1189
    return-object p0
.end method

.method public clearDurationMillis()Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1177
    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->hasDurationMillis:Z

    .line 1178
    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->durationMillis_:I

    .line 1179
    return-object p0
.end method

.method public clearRenderedThumbUrl()Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1

    .prologue
    .line 1160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->hasRenderedThumbUrl:Z

    .line 1161
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->renderedThumbUrl_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1162
    return-object p0
.end method

.method public clearThumbUrl()Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1

    .prologue
    .line 1143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->hasThumbUrl:Z

    .line 1144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->thumbUrl_:Ljava/lang/String;

    .line 1145
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1

    .prologue
    .line 1126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->hasTitle:Z

    .line 1127
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->title_:Ljava/lang/String;

    .line 1128
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1

    .prologue
    .line 1109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->hasUrl:Z

    .line 1110
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->url_:Ljava/lang/String;

    .line 1111
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1219
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->cachedSize:I

    if-gez v0, :cond_0

    .line 1221
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->getSerializedSize()I

    .line 1223
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->cachedSize:I

    return v0
.end method

.method public getDurationMillis()I
    .locals 1

    .prologue
    .line 1169
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->durationMillis_:I

    return v0
.end method

.method public getRenderedThumbUrl()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->renderedThumbUrl_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1228
    const/4 v0, 0x0

    .line 1229
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1230
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1233
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1234
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1237
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->hasThumbUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1238
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->getThumbUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1241
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->hasRenderedThumbUrl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1242
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->getRenderedThumbUrl()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1245
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->hasDurationMillis()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1246
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->getDurationMillis()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1249
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->cachedSize:I

    .line 1250
    return v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->thumbUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDurationMillis()Z
    .locals 1

    .prologue
    .line 1170
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->hasDurationMillis:Z

    return v0
.end method

.method public hasRenderedThumbUrl()Z
    .locals 1

    .prologue
    .line 1153
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->hasRenderedThumbUrl:Z

    return v0
.end method

.method public hasThumbUrl()Z
    .locals 1

    .prologue
    .line 1136
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->hasThumbUrl:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 1119
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->hasTitle:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 1102
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->hasUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1193
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1258
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1259
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1263
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/PeanutProtos$Video;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1264
    :sswitch_0
    return-object p0

    .line 1269
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$Video;->setUrl(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Video;

    goto :goto_0

    .line 1273
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$Video;->setTitle(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Video;

    goto :goto_0

    .line 1277
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$Video;->setThumbUrl(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Video;

    goto :goto_0

    .line 1281
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$Video;->setRenderedThumbUrl(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/majel/proto/PeanutProtos$Video;

    goto :goto_0

    .line 1285
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$Video;->setDurationMillis(I)Lcom/google/majel/proto/PeanutProtos$Video;

    goto :goto_0

    .line 1259
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 1092
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/PeanutProtos$Video;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Video;

    move-result-object v0

    return-object v0
.end method

.method public setDurationMillis(I)Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1
    .parameter "value"

    .prologue
    .line 1172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->hasDurationMillis:Z

    .line 1173
    iput p1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->durationMillis_:I

    .line 1174
    return-object p0
.end method

.method public setRenderedThumbUrl(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1
    .parameter "value"

    .prologue
    .line 1155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->hasRenderedThumbUrl:Z

    .line 1156
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->renderedThumbUrl_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 1157
    return-object p0
.end method

.method public setThumbUrl(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1
    .parameter "value"

    .prologue
    .line 1138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->hasThumbUrl:Z

    .line 1139
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->thumbUrl_:Ljava/lang/String;

    .line 1140
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1
    .parameter "value"

    .prologue
    .line 1121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->hasTitle:Z

    .line 1122
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->title_:Ljava/lang/String;

    .line 1123
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Video;
    .locals 1
    .parameter "value"

    .prologue
    .line 1104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Video;->hasUrl:Z

    .line 1105
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Video;->url_:Ljava/lang/String;

    .line 1106
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
    .line 1199
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1202
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1203
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1205
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->hasThumbUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1206
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->getThumbUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1208
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->hasRenderedThumbUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1209
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->getRenderedThumbUrl()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 1211
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->hasDurationMillis()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1212
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Video;->getDurationMillis()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1214
    :cond_4
    return-void
.end method
