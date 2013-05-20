.class public final Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizerContextLog"
.end annotation


# static fields
.field public static final ENABLED_KEYBOARD_LANGUAGE_FIELD_NUMBER:I = 0xb

.field public static final FIELD_ID_FIELD_NUMBER:I = 0x3

.field public static final FIELD_NAME_FIELD_NUMBER:I = 0x2

.field public static final HINT_FIELD_NUMBER:I = 0x6

.field public static final IME_OPTIONS_FIELD_NUMBER:I = 0x8

.field public static final INPUT_TYPE_FIELD_NUMBER:I = 0x7

.field public static final LABEL_FIELD_NUMBER:I = 0x5

.field public static final LANGUAGE_MODEL_FIELD_NUMBER:I = 0x9

.field public static final SELECTED_KEYBOARD_LANGUAGE_FIELD_NUMBER:I = 0xa

.field public static final SINGLE_LINE_FIELD_NUMBER:I = 0x4

.field public static final VOICE_SEARCH_LANGUAGE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private enabledKeyboardLanguage_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fieldId_:Ljava/lang/String;

.field private fieldName_:Ljava/lang/String;

.field private hasFieldId:Z

.field private hasFieldName:Z

.field private hasHint:Z

.field private hasImeOptions:Z

.field private hasInputType:Z

.field private hasLabel:Z

.field private hasLanguageModel:Z

.field private hasSelectedKeyboardLanguage:Z

.field private hasSingleLine:Z

.field private hasVoiceSearchLanguage:Z

.field private hint_:Ljava/lang/String;

.field private imeOptions_:I

.field private inputType_:I

.field private label_:Ljava/lang/String;

.field private languageModel_:Ljava/lang/String;

.field private selectedKeyboardLanguage_:Ljava/lang/String;

.field private singleLine_:Z

.field private voiceSearchLanguage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1593
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1598
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->voiceSearchLanguage_:Ljava/lang/String;

    .line 1615
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldName_:Ljava/lang/String;

    .line 1632
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldId_:Ljava/lang/String;

    .line 1649
    iput-boolean v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->singleLine_:Z

    .line 1666
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->label_:Ljava/lang/String;

    .line 1683
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hint_:Ljava/lang/String;

    .line 1700
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->inputType_:I

    .line 1717
    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->imeOptions_:I

    .line 1734
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->languageModel_:Ljava/lang/String;

    .line 1751
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->selectedKeyboardLanguage_:Ljava/lang/String;

    .line 1767
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage_:Ljava/util/List;

    .line 1856
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->cachedSize:I

    .line 1593
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1993
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1987
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    return-object v0
.end method


# virtual methods
.method public addEnabledKeyboardLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1784
    if-nez p1, :cond_0

    .line 1785
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1787
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage_:Ljava/util/List;

    .line 1790
    :cond_1
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1791
    return-object p0
.end method

.method public final clear()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 1799
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearVoiceSearchLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 1800
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearFieldName()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 1801
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearFieldId()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 1802
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearSingleLine()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 1803
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearLabel()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 1804
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearHint()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 1805
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearInputType()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 1806
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearImeOptions()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 1807
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearLanguageModel()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 1808
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearSelectedKeyboardLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 1809
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->clearEnabledKeyboardLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    .line 1810
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->cachedSize:I

    .line 1811
    return-object p0
.end method

.method public clearEnabledKeyboardLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 1794
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage_:Ljava/util/List;

    .line 1795
    return-object p0
.end method

.method public clearFieldId()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 1641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldId:Z

    .line 1642
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldId_:Ljava/lang/String;

    .line 1643
    return-object p0
.end method

.method public clearFieldName()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 1624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldName:Z

    .line 1625
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldName_:Ljava/lang/String;

    .line 1626
    return-object p0
.end method

.method public clearHint()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 1692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasHint:Z

    .line 1693
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hint_:Ljava/lang/String;

    .line 1694
    return-object p0
.end method

.method public clearImeOptions()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1726
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasImeOptions:Z

    .line 1727
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->imeOptions_:I

    .line 1728
    return-object p0
.end method

.method public clearInputType()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1709
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasInputType:Z

    .line 1710
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->inputType_:I

    .line 1711
    return-object p0
.end method

.method public clearLabel()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 1675
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLabel:Z

    .line 1676
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->label_:Ljava/lang/String;

    .line 1677
    return-object p0
.end method

.method public clearLanguageModel()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 1743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLanguageModel:Z

    .line 1744
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->languageModel_:Ljava/lang/String;

    .line 1745
    return-object p0
.end method

.method public clearSelectedKeyboardLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 1760
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSelectedKeyboardLanguage:Z

    .line 1761
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->selectedKeyboardLanguage_:Ljava/lang/String;

    .line 1762
    return-object p0
.end method

.method public clearSingleLine()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1658
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSingleLine:Z

    .line 1659
    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->singleLine_:Z

    .line 1660
    return-object p0
.end method

.method public clearVoiceSearchLanguage()Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1

    .prologue
    .line 1607
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasVoiceSearchLanguage:Z

    .line 1608
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->voiceSearchLanguage_:Ljava/lang/String;

    .line 1609
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1859
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->cachedSize:I

    if-gez v0, :cond_0

    .line 1861
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getSerializedSize()I

    .line 1863
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->cachedSize:I

    return v0
.end method

.method public getEnabledKeyboardLanguage(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 1774
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledKeyboardLanguageCount()I
    .locals 1

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getEnabledKeyboardLanguageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage_:Ljava/util/List;

    return-object v0
.end method

.method public getFieldId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldId_:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldName_:Ljava/lang/String;

    return-object v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hint_:Ljava/lang/String;

    return-object v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 1718
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->imeOptions_:I

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 1701
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->inputType_:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->languageModel_:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedKeyboardLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->selectedKeyboardLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 1868
    const/4 v3, 0x0

    .line 1869
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasVoiceSearchLanguage()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1870
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getVoiceSearchLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1873
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldName()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1874
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getFieldName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1877
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldId()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1878
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getFieldId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1881
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSingleLine()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1882
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getSingleLine()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 1885
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLabel()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1886
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1889
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasHint()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1890
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getHint()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1893
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasInputType()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1894
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getInputType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1897
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasImeOptions()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1898
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getImeOptions()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1901
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLanguageModel()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1902
    const/16 v4, 0x9

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getLanguageModel()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1905
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSelectedKeyboardLanguage()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1906
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getSelectedKeyboardLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1910
    :cond_9
    const/4 v0, 0x0

    .line 1911
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getEnabledKeyboardLanguageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1912
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 1915
    .end local v1           #element:Ljava/lang/String;
    :cond_a
    add-int/2addr v3, v0

    .line 1916
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getEnabledKeyboardLanguageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 1918
    iput v3, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->cachedSize:I

    .line 1919
    return v3
.end method

.method public getSingleLine()Z
    .locals 1

    .prologue
    .line 1650
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->singleLine_:Z

    return v0
.end method

.method public getVoiceSearchLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->voiceSearchLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public hasFieldId()Z
    .locals 1

    .prologue
    .line 1634
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldId:Z

    return v0
.end method

.method public hasFieldName()Z
    .locals 1

    .prologue
    .line 1617
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldName:Z

    return v0
.end method

.method public hasHint()Z
    .locals 1

    .prologue
    .line 1685
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasHint:Z

    return v0
.end method

.method public hasImeOptions()Z
    .locals 1

    .prologue
    .line 1719
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasImeOptions:Z

    return v0
.end method

.method public hasInputType()Z
    .locals 1

    .prologue
    .line 1702
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasInputType:Z

    return v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 1668
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLabel:Z

    return v0
.end method

.method public hasLanguageModel()Z
    .locals 1

    .prologue
    .line 1736
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLanguageModel:Z

    return v0
.end method

.method public hasSelectedKeyboardLanguage()Z
    .locals 1

    .prologue
    .line 1753
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSelectedKeyboardLanguage:Z

    return v0
.end method

.method public hasSingleLine()Z
    .locals 1

    .prologue
    .line 1651
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSingleLine:Z

    return v0
.end method

.method public hasVoiceSearchLanguage()Z
    .locals 1

    .prologue
    .line 1600
    iget-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasVoiceSearchLanguage:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1815
    const/4 v0, 0x1

    return v0
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
    .line 1590
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1927
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1928
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1932
    invoke-virtual {p0, p1, v0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1933
    :sswitch_0
    return-object p0

    .line 1938
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setVoiceSearchLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 1942
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setFieldName(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 1946
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setFieldId(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 1950
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setSingleLine(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 1954
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setLabel(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 1958
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setHint(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 1962
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setInputType(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 1966
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setImeOptions(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 1970
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setLanguageModel(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 1974
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->setSelectedKeyboardLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 1978
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->addEnabledKeyboardLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;

    goto :goto_0

    .line 1928
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
    .end sparse-switch
.end method

.method public setEnabledKeyboardLanguage(ILjava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1777
    if-nez p2, :cond_0

    .line 1778
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1780
    :cond_0
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->enabledKeyboardLanguage_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1781
    return-object p0
.end method

.method public setFieldId(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldId:Z

    .line 1637
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldId_:Ljava/lang/String;

    .line 1638
    return-object p0
.end method

.method public setFieldName(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldName:Z

    .line 1620
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->fieldName_:Ljava/lang/String;

    .line 1621
    return-object p0
.end method

.method public setHint(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasHint:Z

    .line 1688
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hint_:Ljava/lang/String;

    .line 1689
    return-object p0
.end method

.method public setImeOptions(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1721
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasImeOptions:Z

    .line 1722
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->imeOptions_:I

    .line 1723
    return-object p0
.end method

.method public setInputType(I)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasInputType:Z

    .line 1705
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->inputType_:I

    .line 1706
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1670
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLabel:Z

    .line 1671
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->label_:Ljava/lang/String;

    .line 1672
    return-object p0
.end method

.method public setLanguageModel(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLanguageModel:Z

    .line 1739
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->languageModel_:Ljava/lang/String;

    .line 1740
    return-object p0
.end method

.method public setSelectedKeyboardLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSelectedKeyboardLanguage:Z

    .line 1756
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->selectedKeyboardLanguage_:Ljava/lang/String;

    .line 1757
    return-object p0
.end method

.method public setSingleLine(Z)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSingleLine:Z

    .line 1654
    iput-boolean p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->singleLine_:Z

    .line 1655
    return-object p0
.end method

.method public setVoiceSearchLanguage(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;
    .locals 1
    .parameter "value"

    .prologue
    .line 1602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasVoiceSearchLanguage:Z

    .line 1603
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->voiceSearchLanguage_:Ljava/lang/String;

    .line 1604
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
    .line 1821
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasVoiceSearchLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1822
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getVoiceSearchLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1824
    :cond_0
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1825
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1827
    :cond_1
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasFieldId()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1828
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getFieldId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1830
    :cond_2
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSingleLine()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1831
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getSingleLine()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1833
    :cond_3
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLabel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1834
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1836
    :cond_4
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasHint()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1837
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getHint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1839
    :cond_5
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasInputType()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1840
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getInputType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1842
    :cond_6
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasImeOptions()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1843
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getImeOptions()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1845
    :cond_7
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasLanguageModel()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1846
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getLanguageModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1848
    :cond_8
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->hasSelectedKeyboardLanguage()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1849
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getSelectedKeyboardLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1851
    :cond_9
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$RecognizerContextLog;->getEnabledKeyboardLanguageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1852
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 1854
    .end local v0           #element:Ljava/lang/String;
    :cond_a
    return-void
.end method
