.class public final Lcom/google/majel/proto/PeanutProtos$Text;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "PeanutProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/PeanutProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Text"
.end annotation


# static fields
.field public static final ATTRIBUTION_FIELD_NUMBER:I = 0x3

.field public static final DISCLAIMER_TEXT_FIELD_NUMBER:I = 0x7

.field public static final DISCLAIMER_URL_FIELD_NUMBER:I = 0x8

.field public static final DISPLAY_DESCRIPTION_FIELD_NUMBER:I = 0x6

.field public static final DISPLAY_FIELD_NUMBER:I = 0x1

.field public static final LANGUAGE_FIELD_NUMBER:I = 0x4

.field public static final VOCALIZED_AUDIO_FIELD_NUMBER:I = 0x5

.field public static final VOCALIZED_FIELD_NUMBER:I = 0x2


# instance fields
.field private attribution_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/AttributionProtos$Attribution;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private disclaimerText_:Ljava/lang/String;

.field private disclaimerUrl_:Ljava/lang/String;

.field private displayDescription_:Ljava/lang/String;

.field private display_:Ljava/lang/String;

.field private hasDisclaimerText:Z

.field private hasDisclaimerUrl:Z

.field private hasDisplay:Z

.field private hasDisplayDescription:Z

.field private hasLanguage:Z

.field private hasVocalized:Z

.field private hasVocalizedAudio:Z

.field private language_:Ljava/lang/String;

.field private vocalizedAudio_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private vocalized_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->display_:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->displayDescription_:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalized_:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalizedAudio_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->language_:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerText_:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerUrl_:Ljava/lang/String;

    .line 133
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution_:Ljava/util/List;

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Text;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Text;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$Text;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Text;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 314
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Text;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Text;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$Text;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Text;

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Text;

    return-object v0
.end method


# virtual methods
.method public addAttribution(Lcom/google/majel/proto/AttributionProtos$Attribution;)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .parameter "value"

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution_:Ljava/util/List;

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->clearDisplay()Lcom/google/majel/proto/PeanutProtos$Text;

    .line 166
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->clearDisplayDescription()Lcom/google/majel/proto/PeanutProtos$Text;

    .line 167
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->clearVocalized()Lcom/google/majel/proto/PeanutProtos$Text;

    .line 168
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->clearVocalizedAudio()Lcom/google/majel/proto/PeanutProtos$Text;

    .line 169
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->clearLanguage()Lcom/google/majel/proto/PeanutProtos$Text;

    .line 170
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->clearDisclaimerText()Lcom/google/majel/proto/PeanutProtos$Text;

    .line 171
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->clearDisclaimerUrl()Lcom/google/majel/proto/PeanutProtos$Text;

    .line 172
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->clearAttribution()Lcom/google/majel/proto/PeanutProtos$Text;

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->cachedSize:I

    .line 174
    return-object p0
.end method

.method public clearAttribution()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution_:Ljava/util/List;

    .line 161
    return-object p0
.end method

.method public clearDisclaimerText()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisclaimerText:Z

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerText_:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public clearDisclaimerUrl()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisclaimerUrl:Z

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerUrl_:Ljava/lang/String;

    .line 128
    return-object p0
.end method

.method public clearDisplay()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisplay:Z

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->display_:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public clearDisplayDescription()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisplayDescription:Z

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->displayDescription_:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method public clearLanguage()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasLanguage:Z

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->language_:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public clearVocalized()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasVocalized:Z

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalized_:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public clearVocalizedAudio()Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasVocalizedAudio:Z

    .line 76
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalizedAudio_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 77
    return-object p0
.end method

.method public getAttribution(I)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1
    .parameter "index"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/AttributionProtos$Attribution;

    return-object v0
.end method

.method public getAttributionCount()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAttributionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/AttributionProtos$Attribution;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->cachedSize:I

    if-gez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->getSerializedSize()I

    .line 217
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->cachedSize:I

    return v0
.end method

.method public getDisclaimerText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerText_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisclaimerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->display_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->displayDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->language_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 222
    const/4 v2, 0x0

    .line 223
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisplay()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->getDisplay()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->hasVocalized()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->getVocalized()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->getAttributionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 232
    .local v0, element:Lcom/google/majel/proto/AttributionProtos$Attribution;
    const/4 v3, 0x3

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 235
    .end local v0           #element:Lcom/google/majel/proto/AttributionProtos$Attribution;
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->hasLanguage()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 236
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 239
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->hasVocalizedAudio()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 240
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->getVocalizedAudio()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 243
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisplayDescription()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 244
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->getDisplayDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 247
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisclaimerText()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 248
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->getDisclaimerText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 251
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisclaimerUrl()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 252
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->getDisclaimerUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 255
    :cond_7
    iput v2, p0, Lcom/google/majel/proto/PeanutProtos$Text;->cachedSize:I

    .line 256
    return v2
.end method

.method public getVocalized()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalized_:Ljava/lang/String;

    return-object v0
.end method

.method public getVocalizedAudio()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalizedAudio_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public hasDisclaimerText()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisclaimerText:Z

    return v0
.end method

.method public hasDisclaimerUrl()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisclaimerUrl:Z

    return v0
.end method

.method public hasDisplay()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisplay:Z

    return v0
.end method

.method public hasDisplayDescription()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisplayDescription:Z

    return v0
.end method

.method public hasLanguage()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasLanguage:Z

    return v0
.end method

.method public hasVocalized()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasVocalized:Z

    return v0
.end method

.method public hasVocalizedAudio()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasVocalizedAudio:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 265
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 269
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/PeanutProtos$Text;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    :sswitch_0
    return-object p0

    .line 275
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Text;->setDisplay(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Text;

    goto :goto_0

    .line 279
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Text;->setVocalized(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Text;

    goto :goto_0

    .line 283
    :sswitch_3
    new-instance v1, Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-direct {v1}, Lcom/google/majel/proto/AttributionProtos$Attribution;-><init>()V

    .line 284
    .local v1, value:Lcom/google/majel/proto/AttributionProtos$Attribution;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 285
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$Text;->addAttribution(Lcom/google/majel/proto/AttributionProtos$Attribution;)Lcom/google/majel/proto/PeanutProtos$Text;

    goto :goto_0

    .line 289
    .end local v1           #value:Lcom/google/majel/proto/AttributionProtos$Attribution;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Text;->setLanguage(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Text;

    goto :goto_0

    .line 293
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Text;->setVocalizedAudio(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/majel/proto/PeanutProtos$Text;

    goto :goto_0

    .line 297
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Text;->setDisplayDescription(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Text;

    goto :goto_0

    .line 301
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Text;->setDisclaimerText(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Text;

    goto :goto_0

    .line 305
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Text;->setDisclaimerUrl(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Text;

    goto :goto_0

    .line 265
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
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
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/PeanutProtos$Text;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Text;

    move-result-object v0

    return-object v0
.end method

.method public setAttribution(ILcom/google/majel/proto/AttributionProtos$Attribution;)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 143
    if-nez p2, :cond_0

    .line 144
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->attribution_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-object p0
.end method

.method public setDisclaimerText(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .parameter "value"

    .prologue
    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisclaimerText:Z

    .line 105
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerText_:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public setDisclaimerUrl(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .parameter "value"

    .prologue
    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisclaimerUrl:Z

    .line 122
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Text;->disclaimerUrl_:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public setDisplay(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisplay:Z

    .line 20
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Text;->display_:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setDisplayDescription(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisplayDescription:Z

    .line 37
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Text;->displayDescription_:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .parameter "value"

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasLanguage:Z

    .line 88
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Text;->language_:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public setVocalized(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasVocalized:Z

    .line 54
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalized_:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public setVocalizedAudio(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/majel/proto/PeanutProtos$Text;
    .locals 1
    .parameter "value"

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Text;->hasVocalizedAudio:Z

    .line 71
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Text;->vocalizedAudio_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 72
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
    .line 184
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->getDisplay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->hasVocalized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->getVocalized()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->getAttributionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 191
    .local v0, element:Lcom/google/majel/proto/AttributionProtos$Attribution;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 193
    .end local v0           #element:Lcom/google/majel/proto/AttributionProtos$Attribution;
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->hasLanguage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 196
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->hasVocalizedAudio()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 197
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->getVocalizedAudio()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 199
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisplayDescription()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 200
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->getDisplayDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 202
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisclaimerText()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 203
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->getDisclaimerText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 205
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->hasDisclaimerUrl()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 206
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Text;->getDisclaimerUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 208
    :cond_7
    return-void
.end method
