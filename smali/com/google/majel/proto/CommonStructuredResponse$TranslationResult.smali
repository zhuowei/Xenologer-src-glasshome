.class public final Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CommonStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TranslationResult"
.end annotation


# static fields
.field public static final TEXT_TO_TRANSLATE_FIELD_NUMBER:I = 0x1

.field public static final TEXT_TO_TRANSLATE_LANGUAGE_DISPLAY_FIELD_NUMBER:I = 0x5

.field public static final TEXT_TO_TRANSLATE_LANGUAGE_FIELD_NUMBER:I = 0x2

.field public static final TEXT_TO_TRANSLATE_TRANSLITERATION_FIELD_NUMBER:I = 0x6

.field public static final TRANSLATED_TEXT_FIELD_NUMBER:I = 0x3

.field public static final TRANSLATED_TEXT_LANGUAGE_DISPLAY_FIELD_NUMBER:I = 0x7

.field public static final TRANSLATED_TEXT_LANGUAGE_FIELD_NUMBER:I = 0x4

.field public static final TRANSLATED_TEXT_TRANSLITERATION_FIELD_NUMBER:I = 0x8


# instance fields
.field private cachedSize:I

.field private hasTextToTranslate:Z

.field private hasTextToTranslateLanguage:Z

.field private hasTextToTranslateLanguageDisplay:Z

.field private hasTextToTranslateTransliteration:Z

.field private hasTranslatedText:Z

.field private hasTranslatedTextLanguage:Z

.field private hasTranslatedTextLanguageDisplay:Z

.field private hasTranslatedTextTransliteration:Z

.field private textToTranslateLanguageDisplay_:Ljava/lang/String;

.field private textToTranslateLanguage_:Ljava/lang/String;

.field private textToTranslateTransliteration_:Ljava/lang/String;

.field private textToTranslate_:Ljava/lang/String;

.field private translatedTextLanguageDisplay_:Ljava/lang/String;

.field private translatedTextLanguage_:Ljava/lang/String;

.field private translatedTextTransliteration_:Ljava/lang/String;

.field private translatedText_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 617
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 622
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslate_:Ljava/lang/String;

    .line 639
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguage_:Ljava/lang/String;

    .line 656
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguageDisplay_:Ljava/lang/String;

    .line 673
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateTransliteration_:Ljava/lang/String;

    .line 690
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedText_:Ljava/lang/String;

    .line 707
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguage_:Ljava/lang/String;

    .line 724
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguageDisplay_:Ljava/lang/String;

    .line 741
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextTransliteration_:Ljava/lang/String;

    .line 801
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->cachedSize:I

    .line 617
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 909
    new-instance v0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    invoke-direct {v0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 903
    new-instance v0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    invoke-direct {v0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    check-cast v0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1

    .prologue
    .line 756
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->clearTextToTranslate()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    .line 757
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->clearTextToTranslateLanguage()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    .line 758
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->clearTextToTranslateLanguageDisplay()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    .line 759
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->clearTextToTranslateTransliteration()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    .line 760
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->clearTranslatedText()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    .line 761
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->clearTranslatedTextLanguage()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    .line 762
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->clearTranslatedTextLanguageDisplay()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    .line 763
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->clearTranslatedTextTransliteration()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    .line 764
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->cachedSize:I

    .line 765
    return-object p0
.end method

.method public clearTextToTranslate()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslate:Z

    .line 632
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslate_:Ljava/lang/String;

    .line 633
    return-object p0
.end method

.method public clearTextToTranslateLanguage()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslateLanguage:Z

    .line 649
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguage_:Ljava/lang/String;

    .line 650
    return-object p0
.end method

.method public clearTextToTranslateLanguageDisplay()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslateLanguageDisplay:Z

    .line 666
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguageDisplay_:Ljava/lang/String;

    .line 667
    return-object p0
.end method

.method public clearTextToTranslateTransliteration()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1

    .prologue
    .line 682
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslateTransliteration:Z

    .line 683
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateTransliteration_:Ljava/lang/String;

    .line 684
    return-object p0
.end method

.method public clearTranslatedText()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1

    .prologue
    .line 699
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedText:Z

    .line 700
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedText_:Ljava/lang/String;

    .line 701
    return-object p0
.end method

.method public clearTranslatedTextLanguage()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedTextLanguage:Z

    .line 717
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguage_:Ljava/lang/String;

    .line 718
    return-object p0
.end method

.method public clearTranslatedTextLanguageDisplay()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1

    .prologue
    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedTextLanguageDisplay:Z

    .line 734
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguageDisplay_:Ljava/lang/String;

    .line 735
    return-object p0
.end method

.method public clearTranslatedTextTransliteration()Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedTextTransliteration:Z

    .line 751
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextTransliteration_:Ljava/lang/String;

    .line 752
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 804
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 806
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getSerializedSize()I

    .line 808
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 813
    const/4 v0, 0x0

    .line 814
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 815
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTextToTranslate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 818
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslateLanguage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 819
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTextToTranslateLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 822
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedText()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 823
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTranslatedText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 826
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedTextLanguage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 827
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTranslatedTextLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 830
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslateLanguageDisplay()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 831
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTextToTranslateLanguageDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 834
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslateTransliteration()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 835
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTextToTranslateTransliteration()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 838
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedTextLanguageDisplay()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 839
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTranslatedTextLanguageDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 842
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedTextTransliteration()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 843
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTranslatedTextTransliteration()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 846
    :cond_7
    iput v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->cachedSize:I

    .line 847
    return v0
.end method

.method public getTextToTranslate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslate_:Ljava/lang/String;

    return-object v0
.end method

.method public getTextToTranslateLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getTextToTranslateLanguageDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguageDisplay_:Ljava/lang/String;

    return-object v0
.end method

.method public getTextToTranslateTransliteration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateTransliteration_:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedText_:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedTextLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedTextLanguageDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguageDisplay_:Ljava/lang/String;

    return-object v0
.end method

.method public getTranslatedTextTransliteration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextTransliteration_:Ljava/lang/String;

    return-object v0
.end method

.method public hasTextToTranslate()Z
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslate:Z

    return v0
.end method

.method public hasTextToTranslateLanguage()Z
    .locals 1

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslateLanguage:Z

    return v0
.end method

.method public hasTextToTranslateLanguageDisplay()Z
    .locals 1

    .prologue
    .line 658
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslateLanguageDisplay:Z

    return v0
.end method

.method public hasTextToTranslateTransliteration()Z
    .locals 1

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslateTransliteration:Z

    return v0
.end method

.method public hasTranslatedText()Z
    .locals 1

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedText:Z

    return v0
.end method

.method public hasTranslatedTextLanguage()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedTextLanguage:Z

    return v0
.end method

.method public hasTranslatedTextLanguageDisplay()Z
    .locals 1

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedTextLanguageDisplay:Z

    return v0
.end method

.method public hasTranslatedTextTransliteration()Z
    .locals 1

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedTextTransliteration:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 769
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 855
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 856
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 860
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 861
    :sswitch_0
    return-object p0

    .line 866
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->setTextToTranslate(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    goto :goto_0

    .line 870
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->setTextToTranslateLanguage(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    goto :goto_0

    .line 874
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->setTranslatedText(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    goto :goto_0

    .line 878
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->setTranslatedTextLanguage(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    goto :goto_0

    .line 882
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->setTextToTranslateLanguageDisplay(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    goto :goto_0

    .line 886
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->setTextToTranslateTransliteration(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    goto :goto_0

    .line 890
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->setTranslatedTextLanguageDisplay(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    goto :goto_0

    .line 894
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->setTranslatedTextTransliteration(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    goto :goto_0

    .line 856
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
    .line 614
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;

    move-result-object v0

    return-object v0
.end method

.method public setTextToTranslate(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 626
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslate:Z

    .line 627
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslate_:Ljava/lang/String;

    .line 628
    return-object p0
.end method

.method public setTextToTranslateLanguage(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslateLanguage:Z

    .line 644
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguage_:Ljava/lang/String;

    .line 645
    return-object p0
.end method

.method public setTextToTranslateLanguageDisplay(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 660
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslateLanguageDisplay:Z

    .line 661
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateLanguageDisplay_:Ljava/lang/String;

    .line 662
    return-object p0
.end method

.method public setTextToTranslateTransliteration(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 677
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslateTransliteration:Z

    .line 678
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->textToTranslateTransliteration_:Ljava/lang/String;

    .line 679
    return-object p0
.end method

.method public setTranslatedText(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 694
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedText:Z

    .line 695
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedText_:Ljava/lang/String;

    .line 696
    return-object p0
.end method

.method public setTranslatedTextLanguage(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 711
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedTextLanguage:Z

    .line 712
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguage_:Ljava/lang/String;

    .line 713
    return-object p0
.end method

.method public setTranslatedTextLanguageDisplay(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedTextLanguageDisplay:Z

    .line 729
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextLanguageDisplay_:Ljava/lang/String;

    .line 730
    return-object p0
.end method

.method public setTranslatedTextTransliteration(Ljava/lang/String;)Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;
    .locals 1
    .parameter "value"

    .prologue
    .line 745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedTextTransliteration:Z

    .line 746
    iput-object p1, p0, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->translatedTextTransliteration_:Ljava/lang/String;

    .line 747
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
    .line 775
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTextToTranslate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 778
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslateLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTextToTranslateLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 781
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 782
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTranslatedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 784
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedTextLanguage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 785
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTranslatedTextLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 787
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslateLanguageDisplay()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 788
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTextToTranslateLanguageDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 790
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTextToTranslateTransliteration()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 791
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTextToTranslateTransliteration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 793
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedTextLanguageDisplay()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 794
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTranslatedTextLanguageDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 796
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->hasTranslatedTextTransliteration()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 797
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/majel/proto/CommonStructuredResponse$TranslationResult;->getTranslatedTextTransliteration()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 799
    :cond_7
    return-void
.end method
