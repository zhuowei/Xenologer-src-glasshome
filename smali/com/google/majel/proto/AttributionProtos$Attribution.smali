.class public final Lcom/google/majel/proto/AttributionProtos$Attribution;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "AttributionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/AttributionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attribution"
.end annotation


# static fields
.field public static final DISPLAY_TEXT_FIELD_NUMBER:I = 0x5

.field public static final PAGE_DOMAIN_FIELD_NUMBER:I = 0x4

.field public static final PAGE_TITLE_FIELD_NUMBER:I = 0x2

.field public static final PAGE_URL_FIELD_NUMBER:I = 0x1

.field public static final SNIPPET_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private displayText_:Ljava/lang/String;

.field private hasDisplayText:Z

.field private hasPageDomain:Z

.field private hasPageTitle:Z

.field private hasPageUrl:Z

.field private pageDomain_:Ljava/lang/String;

.field private pageTitle_:Ljava/lang/String;

.field private pageUrl_:Ljava/lang/String;

.field private snippet_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageUrl_:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageDomain_:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageTitle_:Ljava/lang/String;

    .line 65
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet_:Ljava/util/List;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->displayText_:Ljava/lang/String;

    .line 147
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->cachedSize:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-direct {v0}, Lcom/google/majel/proto/AttributionProtos$Attribution;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-direct {v0}, Lcom/google/majel/proto/AttributionProtos$Attribution;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/AttributionProtos$Attribution;

    check-cast v0, Lcom/google/majel/proto/AttributionProtos$Attribution;

    return-object v0
.end method


# virtual methods
.method public addSnippet(Ljava/lang/String;)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1
    .parameter "value"

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet_:Ljava/util/List;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->clearPageUrl()Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 115
    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->clearPageDomain()Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 116
    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->clearPageTitle()Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 117
    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->clearSnippet()Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 118
    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->clearDisplayText()Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->cachedSize:I

    .line 120
    return-object p0
.end method

.method public clearDisplayText()Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasDisplayText:Z

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->displayText_:Ljava/lang/String;

    .line 110
    return-object p0
.end method

.method public clearPageDomain()Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasPageDomain:Z

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageDomain_:Ljava/lang/String;

    .line 43
    return-object p0
.end method

.method public clearPageTitle()Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasPageTitle:Z

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageTitle_:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public clearPageUrl()Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasPageUrl:Z

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageUrl_:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public clearSnippet()Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet_:Ljava/util/List;

    .line 93
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->cachedSize:I

    if-gez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->getSerializedSize()I

    .line 154
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->cachedSize:I

    return v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->displayText_:Ljava/lang/String;

    return-object v0
.end method

.method public getPageDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageDomain_:Ljava/lang/String;

    return-object v0
.end method

.method public getPageTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 159
    const/4 v3, 0x0

    .line 160
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasPageUrl()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->getPageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasPageTitle()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->getPageTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 169
    :cond_1
    const/4 v0, 0x0

    .line 170
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->getSnippetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 174
    .end local v1           #element:Ljava/lang/String;
    :cond_2
    add-int/2addr v3, v0

    .line 175
    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->getSnippetList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 177
    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasPageDomain()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->getPageDomain()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 181
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasDisplayText()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 182
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->getDisplayText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 185
    :cond_4
    iput v3, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->cachedSize:I

    .line 186
    return v3
.end method

.method public getSnippet(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSnippetCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSnippetList()Ljava/util/List;
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
    .line 68
    iget-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet_:Ljava/util/List;

    return-object v0
.end method

.method public hasDisplayText()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasDisplayText:Z

    return v0
.end method

.method public hasPageDomain()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasPageDomain:Z

    return v0
.end method

.method public hasPageTitle()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasPageTitle:Z

    return v0
.end method

.method public hasPageUrl()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasPageUrl:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 195
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 199
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    :sswitch_0
    return-object p0

    .line 205
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/AttributionProtos$Attribution;->setPageUrl(Ljava/lang/String;)Lcom/google/majel/proto/AttributionProtos$Attribution;

    goto :goto_0

    .line 209
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/AttributionProtos$Attribution;->setPageTitle(Ljava/lang/String;)Lcom/google/majel/proto/AttributionProtos$Attribution;

    goto :goto_0

    .line 213
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/AttributionProtos$Attribution;->addSnippet(Ljava/lang/String;)Lcom/google/majel/proto/AttributionProtos$Attribution;

    goto :goto_0

    .line 217
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/AttributionProtos$Attribution;->setPageDomain(Ljava/lang/String;)Lcom/google/majel/proto/AttributionProtos$Attribution;

    goto :goto_0

    .line 221
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/majel/proto/AttributionProtos$Attribution;->setDisplayText(Ljava/lang/String;)Lcom/google/majel/proto/AttributionProtos$Attribution;

    goto :goto_0

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/AttributionProtos$Attribution;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayText(Ljava/lang/String;)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1
    .parameter "value"

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasDisplayText:Z

    .line 104
    iput-object p1, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->displayText_:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public setPageDomain(Ljava/lang/String;)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasPageDomain:Z

    .line 37
    iput-object p1, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageDomain_:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public setPageTitle(Ljava/lang/String;)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasPageTitle:Z

    .line 54
    iput-object p1, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageTitle_:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public setPageUrl(Ljava/lang/String;)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasPageUrl:Z

    .line 20
    iput-object p1, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageUrl_:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setSnippet(ILjava/lang/String;)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 75
    if-nez p2, :cond_0

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 79
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
    .line 130
    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasPageUrl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->getPageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasPageTitle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->getPageTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->getSnippetList()Ljava/util/List;

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

    check-cast v0, Ljava/lang/String;

    .line 137
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 139
    .end local v0           #element:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasPageDomain()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 140
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->getPageDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 142
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->hasDisplayText()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->getDisplayText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 145
    :cond_4
    return-void
.end method
