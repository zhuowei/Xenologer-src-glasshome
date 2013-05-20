.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DictionaryResult"
.end annotation


# static fields
.field public static final ATTRIBUTION_LINK_FIELD_NUMBER:I = 0xb

.field public static final DICTIONARY_WORD_FIELD_NUMBER:I = 0x1

.field public static final EXTERNAL_DICTIONARY_LINK_FIELD_NUMBER:I = 0xc

.field public static final GOOGLE_DICTIONARY_LINK_FIELD_NUMBER:I = 0xa

.field public static final NORMAL_FORM_FIELD_NUMBER:I = 0x3

.field public static final PART_OF_SPEECH_FIELD_NUMBER:I = 0x4

.field public static final PART_OF_SPEECH_MEANING_FIELD_NUMBER:I = 0x7

.field public static final PRONUNCIATION_FIELD_NUMBER:I = 0x5

.field public static final SOUND_FIELD_NUMBER:I = 0x6

.field public static final SYNONYMS_HEADER_FIELD_NUMBER:I = 0x8

.field public static final SYNONYM_FIELD_NUMBER:I = 0x9

.field public static final VARIATION_TYPE_FIELD_NUMBER:I = 0x2


# instance fields
.field private attributionLink_:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

.field private cachedSize:I

.field private dictionaryWord_:Ljava/lang/String;

.field private externalDictionaryLink_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;",
            ">;"
        }
    .end annotation
.end field

.field private googleDictionaryLink_:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

.field private hasAttributionLink:Z

.field private hasDictionaryWord:Z

.field private hasGoogleDictionaryLink:Z

.field private hasNormalForm:Z

.field private hasPartOfSpeech:Z

.field private hasPronunciation:Z

.field private hasSound:Z

.field private hasSynonymsHeader:Z

.field private hasVariationType:Z

.field private normalForm_:Ljava/lang/String;

.field private partOfSpeechMeaning_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;",
            ">;"
        }
    .end annotation
.end field

.field private partOfSpeech_:Ljava/lang/String;

.field private pronunciation_:Ljava/lang/String;

.field private sound_:Ljava/lang/String;

.field private synonym_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;",
            ">;"
        }
    .end annotation
.end field

.field private synonymsHeader_:Ljava/lang/String;

.field private variationType_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5965
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5970
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->dictionaryWord_:Ljava/lang/String;

    .line 5987
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->variationType_:Ljava/lang/String;

    .line 6004
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->normalForm_:Ljava/lang/String;

    .line 6021
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeech_:Ljava/lang/String;

    .line 6038
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->pronunciation_:Ljava/lang/String;

    .line 6055
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->sound_:Ljava/lang/String;

    .line 6071
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning_:Ljava/util/List;

    .line 6105
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonymsHeader_:Ljava/lang/String;

    .line 6121
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym_:Ljava/util/List;

    .line 6155
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->googleDictionaryLink_:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    .line 6175
    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->attributionLink_:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    .line 6194
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink_:Ljava/util/List;

    .line 6287
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->cachedSize:I

    .line 5965
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6437
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6431
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    return-object v0
.end method


# virtual methods
.method public addExternalDictionaryLink(Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 6211
    if-nez p1, :cond_0

    .line 6212
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6214
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink_:Ljava/util/List;

    .line 6217
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6218
    return-object p0
.end method

.method public addPartOfSpeechMeaning(Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 6088
    if-nez p1, :cond_0

    .line 6089
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6091
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning_:Ljava/util/List;

    .line 6094
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6095
    return-object p0
.end method

.method public addSynonym(Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 6138
    if-nez p1, :cond_0

    .line 6139
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6141
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym_:Ljava/util/List;

    .line 6144
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6145
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 6226
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->clearDictionaryWord()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    .line 6227
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->clearVariationType()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    .line 6228
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->clearNormalForm()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    .line 6229
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->clearPartOfSpeech()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    .line 6230
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->clearPronunciation()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    .line 6231
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->clearSound()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    .line 6232
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->clearPartOfSpeechMeaning()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    .line 6233
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->clearSynonymsHeader()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    .line 6234
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->clearSynonym()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    .line 6235
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->clearGoogleDictionaryLink()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    .line 6236
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->clearAttributionLink()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    .line 6237
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->clearExternalDictionaryLink()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    .line 6238
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->cachedSize:I

    .line 6239
    return-object p0
.end method

.method public clearAttributionLink()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 6187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasAttributionLink:Z

    .line 6188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->attributionLink_:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    .line 6189
    return-object p0
.end method

.method public clearDictionaryWord()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 5979
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasDictionaryWord:Z

    .line 5980
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->dictionaryWord_:Ljava/lang/String;

    .line 5981
    return-object p0
.end method

.method public clearExternalDictionaryLink()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 6221
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink_:Ljava/util/List;

    .line 6222
    return-object p0
.end method

.method public clearGoogleDictionaryLink()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 6167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasGoogleDictionaryLink:Z

    .line 6168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->googleDictionaryLink_:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    .line 6169
    return-object p0
.end method

.method public clearNormalForm()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 6013
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasNormalForm:Z

    .line 6014
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->normalForm_:Ljava/lang/String;

    .line 6015
    return-object p0
.end method

.method public clearPartOfSpeech()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 6030
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasPartOfSpeech:Z

    .line 6031
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeech_:Ljava/lang/String;

    .line 6032
    return-object p0
.end method

.method public clearPartOfSpeechMeaning()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 6098
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning_:Ljava/util/List;

    .line 6099
    return-object p0
.end method

.method public clearPronunciation()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 6047
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasPronunciation:Z

    .line 6048
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->pronunciation_:Ljava/lang/String;

    .line 6049
    return-object p0
.end method

.method public clearSound()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 6064
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasSound:Z

    .line 6065
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->sound_:Ljava/lang/String;

    .line 6066
    return-object p0
.end method

.method public clearSynonym()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 6148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym_:Ljava/util/List;

    .line 6149
    return-object p0
.end method

.method public clearSynonymsHeader()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 6114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasSynonymsHeader:Z

    .line 6115
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonymsHeader_:Ljava/lang/String;

    .line 6116
    return-object p0
.end method

.method public clearVariationType()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1

    .prologue
    .line 5996
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasVariationType:Z

    .line 5997
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->variationType_:Ljava/lang/String;

    .line 5998
    return-object p0
.end method

.method public getAttributionLink()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    .locals 1

    .prologue
    .line 6177
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->attributionLink_:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6290
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 6292
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getSerializedSize()I

    .line 6294
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->cachedSize:I

    return v0
.end method

.method public getDictionaryWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5971
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->dictionaryWord_:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalDictionaryLink(I)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    .locals 1
    .parameter "index"

    .prologue
    .line 6201
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    return-object v0
.end method

.method public getExternalDictionaryLinkCount()I
    .locals 1

    .prologue
    .line 6199
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExternalDictionaryLinkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6197
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink_:Ljava/util/List;

    return-object v0
.end method

.method public getGoogleDictionaryLink()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    .locals 1

    .prologue
    .line 6157
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->googleDictionaryLink_:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    return-object v0
.end method

.method public getNormalForm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6005
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->normalForm_:Ljava/lang/String;

    return-object v0
.end method

.method public getPartOfSpeech()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6022
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeech_:Ljava/lang/String;

    return-object v0
.end method

.method public getPartOfSpeechMeaning(I)Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    .locals 1
    .parameter "index"

    .prologue
    .line 6078
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    return-object v0
.end method

.method public getPartOfSpeechMeaningCount()I
    .locals 1

    .prologue
    .line 6076
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPartOfSpeechMeaningList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6074
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning_:Ljava/util/List;

    return-object v0
.end method

.method public getPronunciation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6039
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->pronunciation_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 6299
    const/4 v2, 0x0

    .line 6300
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasDictionaryWord()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6301
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getDictionaryWord()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6304
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasVariationType()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6305
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getVariationType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6308
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasNormalForm()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6309
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getNormalForm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6312
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasPartOfSpeech()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6313
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getPartOfSpeech()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6316
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasPronunciation()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6317
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getPronunciation()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6320
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasSound()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6321
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getSound()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6324
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getPartOfSpeechMeaningList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    .line 6325
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 6328
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasSynonymsHeader()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 6329
    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getSynonymsHeader()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6332
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getSynonymList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    .line 6333
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 6336
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasGoogleDictionaryLink()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 6337
    const/16 v3, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getGoogleDictionaryLink()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6340
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasAttributionLink()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 6341
    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getAttributionLink()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 6344
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getExternalDictionaryLinkList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    .line 6345
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    const/16 v3, 0xc

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    .line 6348
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    :cond_b
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->cachedSize:I

    .line 6349
    return v2
.end method

.method public getSound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6056
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->sound_:Ljava/lang/String;

    return-object v0
.end method

.method public getSynonym(I)Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    .locals 1
    .parameter "index"

    .prologue
    .line 6128
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    return-object v0
.end method

.method public getSynonymCount()I
    .locals 1

    .prologue
    .line 6126
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSynonymList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6124
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym_:Ljava/util/List;

    return-object v0
.end method

.method public getSynonymsHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6106
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonymsHeader_:Ljava/lang/String;

    return-object v0
.end method

.method public getVariationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5988
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->variationType_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttributionLink()Z
    .locals 1

    .prologue
    .line 6176
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasAttributionLink:Z

    return v0
.end method

.method public hasDictionaryWord()Z
    .locals 1

    .prologue
    .line 5972
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasDictionaryWord:Z

    return v0
.end method

.method public hasGoogleDictionaryLink()Z
    .locals 1

    .prologue
    .line 6156
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasGoogleDictionaryLink:Z

    return v0
.end method

.method public hasNormalForm()Z
    .locals 1

    .prologue
    .line 6006
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasNormalForm:Z

    return v0
.end method

.method public hasPartOfSpeech()Z
    .locals 1

    .prologue
    .line 6023
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasPartOfSpeech:Z

    return v0
.end method

.method public hasPronunciation()Z
    .locals 1

    .prologue
    .line 6040
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasPronunciation:Z

    return v0
.end method

.method public hasSound()Z
    .locals 1

    .prologue
    .line 6057
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasSound:Z

    return v0
.end method

.method public hasSynonymsHeader()Z
    .locals 1

    .prologue
    .line 6107
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasSynonymsHeader:Z

    return v0
.end method

.method public hasVariationType()Z
    .locals 1

    .prologue
    .line 5989
    iget-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasVariationType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6243
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6357
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6358
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 6362
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6363
    :sswitch_0
    return-object p0

    .line 6368
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->setDictionaryWord(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    goto :goto_0

    .line 6372
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->setVariationType(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    goto :goto_0

    .line 6376
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->setNormalForm(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    goto :goto_0

    .line 6380
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->setPartOfSpeech(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    goto :goto_0

    .line 6384
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->setPronunciation(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    goto :goto_0

    .line 6388
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->setSound(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    goto :goto_0

    .line 6392
    :sswitch_7
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;-><init>()V

    .line 6393
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6394
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->addPartOfSpeechMeaning(Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    goto :goto_0

    .line 6398
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->setSynonymsHeader(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    goto :goto_0

    .line 6402
    :sswitch_9
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;-><init>()V

    .line 6403
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6404
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->addSynonym(Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    goto :goto_0

    .line 6408
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    :sswitch_a
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;-><init>()V

    .line 6409
    .local v1, value:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6410
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->setGoogleDictionaryLink(Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    goto :goto_0

    .line 6414
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    :sswitch_b
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;-><init>()V

    .line 6415
    .restart local v1       #value:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6416
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->setAttributionLink(Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    goto :goto_0

    .line 6420
    .end local v1           #value:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    :sswitch_c
    new-instance v1, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    invoke-direct {v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;-><init>()V

    .line 6421
    .restart local v1       #value:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6422
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->addExternalDictionaryLink(Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    goto/16 :goto_0

    .line 6358
    nop

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
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
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
    .line 5962
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;

    move-result-object v0

    return-object v0
.end method

.method public setAttributionLink(Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 6179
    if-nez p1, :cond_0

    .line 6180
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6182
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasAttributionLink:Z

    .line 6183
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->attributionLink_:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    .line 6184
    return-object p0
.end method

.method public setDictionaryWord(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 5974
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasDictionaryWord:Z

    .line 5975
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->dictionaryWord_:Ljava/lang/String;

    .line 5976
    return-object p0
.end method

.method public setExternalDictionaryLink(ILcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6204
    if-nez p2, :cond_0

    .line 6205
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6207
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->externalDictionaryLink_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6208
    return-object p0
.end method

.method public setGoogleDictionaryLink(Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 6159
    if-nez p1, :cond_0

    .line 6160
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6162
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasGoogleDictionaryLink:Z

    .line 6163
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->googleDictionaryLink_:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    .line 6164
    return-object p0
.end method

.method public setNormalForm(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 6008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasNormalForm:Z

    .line 6009
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->normalForm_:Ljava/lang/String;

    .line 6010
    return-object p0
.end method

.method public setPartOfSpeech(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 6025
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasPartOfSpeech:Z

    .line 6026
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeech_:Ljava/lang/String;

    .line 6027
    return-object p0
.end method

.method public setPartOfSpeechMeaning(ILcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6081
    if-nez p2, :cond_0

    .line 6082
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6084
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->partOfSpeechMeaning_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6085
    return-object p0
.end method

.method public setPronunciation(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 6042
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasPronunciation:Z

    .line 6043
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->pronunciation_:Ljava/lang/String;

    .line 6044
    return-object p0
.end method

.method public setSound(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 6059
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasSound:Z

    .line 6060
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->sound_:Ljava/lang/String;

    .line 6061
    return-object p0
.end method

.method public setSynonym(ILcom/google/majel/proto/EcoutezStructuredResponse$Synonym;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 6131
    if-nez p2, :cond_0

    .line 6132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6134
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonym_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6135
    return-object p0
.end method

.method public setSynonymsHeader(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 6109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasSynonymsHeader:Z

    .line 6110
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->synonymsHeader_:Ljava/lang/String;

    .line 6111
    return-object p0
.end method

.method public setVariationType(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 5991
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasVariationType:Z

    .line 5992
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->variationType_:Ljava/lang/String;

    .line 5993
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
    .line 6249
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasDictionaryWord()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6250
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getDictionaryWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6252
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasVariationType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6253
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getVariationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6255
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasNormalForm()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6256
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getNormalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6258
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasPartOfSpeech()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6259
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getPartOfSpeech()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6261
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasPronunciation()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6262
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getPronunciation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6264
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasSound()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6265
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getSound()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6267
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getPartOfSpeechMeaningList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;

    .line 6268
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 6270
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$PosMeaning;
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasSynonymsHeader()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 6271
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getSynonymsHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6273
    :cond_7
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getSynonymList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;

    .line 6274
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 6276
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$Synonym;
    :cond_8
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasGoogleDictionaryLink()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 6277
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getGoogleDictionaryLink()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 6279
    :cond_9
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->hasAttributionLink()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 6280
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getAttributionLink()Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 6282
    :cond_a
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryResult;->getExternalDictionaryLinkList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;

    .line 6283
    .local v0, element:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    const/16 v2, 0xc

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_2

    .line 6285
    .end local v0           #element:Lcom/google/majel/proto/EcoutezStructuredResponse$DictionaryLink;
    :cond_b
    return-void
.end method
