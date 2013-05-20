.class public final Lcom/google/majel/proto/PeanutProtos$Url;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "PeanutProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/PeanutProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Url"
.end annotation


# static fields
.field public static final COOKIE_FIELD_NUMBER:I = 0x8

.field public static final DISPLAY_LINK_FIELD_NUMBER:I = 0x7

.field public static final HTML_FIELD_NUMBER:I = 0x5

.field public static final LINK_FIELD_NUMBER:I = 0x1

.field public static final RENDERED_LINK_FIELD_NUMBER:I = 0x2

.field public static final RENDERED_PAGE_FIELD_NUMBER:I = 0x3

.field public static final SEARCH_RESULTS_INFO_FIELD_NUMBER:I = 0x6

.field public static final TITLE_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private cookie_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/CookieProtos$MajelCookie;",
            ">;"
        }
    .end annotation
.end field

.field private displayLink_:Ljava/lang/String;

.field private hasDisplayLink:Z

.field private hasHtml:Z

.field private hasLink:Z

.field private hasRenderedLink:Z

.field private hasRenderedPage:Z

.field private hasSearchResultsInfo:Z

.field private hasTitle:Z

.field private html_:Ljava/lang/String;

.field private link_:Ljava/lang/String;

.field private renderedLink_:Ljava/lang/String;

.field private renderedPage_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private searchResultsInfo_:Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

.field private title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 777
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->link_:Ljava/lang/String;

    .line 794
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->displayLink_:Ljava/lang/String;

    .line 811
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedLink_:Ljava/lang/String;

    .line 828
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedPage_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 845
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->title_:Ljava/lang/String;

    .line 862
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->html_:Ljava/lang/String;

    .line 879
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->searchResultsInfo_:Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    .line 898
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie_:Ljava/util/List;

    .line 975
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cachedSize:I

    .line 772
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1087
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Url;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Url;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$Url;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Url;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1081
    new-instance v0, Lcom/google/majel/proto/PeanutProtos$Url;

    invoke-direct {v0}, Lcom/google/majel/proto/PeanutProtos$Url;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/PeanutProtos$Url;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Url;

    check-cast v0, Lcom/google/majel/proto/PeanutProtos$Url;

    return-object v0
.end method


# virtual methods
.method public addCookie(Lcom/google/majel/proto/CookieProtos$MajelCookie;)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .parameter "value"

    .prologue
    .line 915
    if-nez p1, :cond_0

    .line 916
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 919
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie_:Ljava/util/List;

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 922
    return-object p0
.end method

.method public final clear()Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1

    .prologue
    .line 930
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->clearLink()Lcom/google/majel/proto/PeanutProtos$Url;

    .line 931
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->clearDisplayLink()Lcom/google/majel/proto/PeanutProtos$Url;

    .line 932
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->clearRenderedLink()Lcom/google/majel/proto/PeanutProtos$Url;

    .line 933
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->clearRenderedPage()Lcom/google/majel/proto/PeanutProtos$Url;

    .line 934
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->clearTitle()Lcom/google/majel/proto/PeanutProtos$Url;

    .line 935
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->clearHtml()Lcom/google/majel/proto/PeanutProtos$Url;

    .line 936
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->clearSearchResultsInfo()Lcom/google/majel/proto/PeanutProtos$Url;

    .line 937
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->clearCookie()Lcom/google/majel/proto/PeanutProtos$Url;

    .line 938
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cachedSize:I

    .line 939
    return-object p0
.end method

.method public clearCookie()Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1

    .prologue
    .line 925
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie_:Ljava/util/List;

    .line 926
    return-object p0
.end method

.method public clearDisplayLink()Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1

    .prologue
    .line 803
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasDisplayLink:Z

    .line 804
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->displayLink_:Ljava/lang/String;

    .line 805
    return-object p0
.end method

.method public clearHtml()Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1

    .prologue
    .line 871
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasHtml:Z

    .line 872
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->html_:Ljava/lang/String;

    .line 873
    return-object p0
.end method

.method public clearLink()Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasLink:Z

    .line 787
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->link_:Ljava/lang/String;

    .line 788
    return-object p0
.end method

.method public clearRenderedLink()Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1

    .prologue
    .line 820
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasRenderedLink:Z

    .line 821
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedLink_:Ljava/lang/String;

    .line 822
    return-object p0
.end method

.method public clearRenderedPage()Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1

    .prologue
    .line 837
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasRenderedPage:Z

    .line 838
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedPage_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 839
    return-object p0
.end method

.method public clearSearchResultsInfo()Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1

    .prologue
    .line 891
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasSearchResultsInfo:Z

    .line 892
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->searchResultsInfo_:Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    .line 893
    return-object p0
.end method

.method public clearTitle()Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1

    .prologue
    .line 854
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasTitle:Z

    .line 855
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->title_:Ljava/lang/String;

    .line 856
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 978
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cachedSize:I

    if-gez v0, :cond_0

    .line 980
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->getSerializedSize()I

    .line 982
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cachedSize:I

    return v0
.end method

.method public getCookie(I)Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 1
    .parameter "index"

    .prologue
    .line 905
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    return-object v0
.end method

.method public getCookieCount()I
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCookieList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/majel/proto/CookieProtos$MajelCookie;",
            ">;"
        }
    .end annotation

    .prologue
    .line 901
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie_:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->displayLink_:Ljava/lang/String;

    return-object v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->html_:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->link_:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderedLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedLink_:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderedPage()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedPage_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSearchResultsInfo()Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->searchResultsInfo_:Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 987
    const/4 v2, 0x0

    .line 988
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->hasLink()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 989
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->getLink()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 992
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->hasRenderedLink()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 993
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->getRenderedLink()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 996
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->hasRenderedPage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 997
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->getRenderedPage()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1000
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->hasTitle()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1001
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1004
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->hasHtml()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1005
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->getHtml()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1008
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->hasSearchResultsInfo()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1009
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->getSearchResultsInfo()Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1012
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->hasDisplayLink()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1013
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->getDisplayLink()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1016
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->getCookieList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    .line 1017
    .local v0, element:Lcom/google/majel/proto/CookieProtos$MajelCookie;
    const/16 v3, 0x8

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 1020
    .end local v0           #element:Lcom/google/majel/proto/CookieProtos$MajelCookie;
    :cond_7
    iput v2, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cachedSize:I

    .line 1021
    return v2
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDisplayLink()Z
    .locals 1

    .prologue
    .line 796
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasDisplayLink:Z

    return v0
.end method

.method public hasHtml()Z
    .locals 1

    .prologue
    .line 864
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasHtml:Z

    return v0
.end method

.method public hasLink()Z
    .locals 1

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasLink:Z

    return v0
.end method

.method public hasRenderedLink()Z
    .locals 1

    .prologue
    .line 813
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasRenderedLink:Z

    return v0
.end method

.method public hasRenderedPage()Z
    .locals 1

    .prologue
    .line 830
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasRenderedPage:Z

    return v0
.end method

.method public hasSearchResultsInfo()Z
    .locals 1

    .prologue
    .line 880
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasSearchResultsInfo:Z

    return v0
.end method

.method public hasTitle()Z
    .locals 1

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasTitle:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 943
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1029
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1030
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1034
    invoke-virtual {p0, p1, v0}, Lcom/google/majel/proto/PeanutProtos$Url;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1035
    :sswitch_0
    return-object p0

    .line 1040
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Url;->setLink(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Url;

    goto :goto_0

    .line 1044
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Url;->setRenderedLink(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Url;

    goto :goto_0

    .line 1048
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Url;->setRenderedPage(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/majel/proto/PeanutProtos$Url;

    goto :goto_0

    .line 1052
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Url;->setTitle(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Url;

    goto :goto_0

    .line 1056
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Url;->setHtml(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Url;

    goto :goto_0

    .line 1060
    :sswitch_6
    new-instance v1, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    invoke-direct {v1}, Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;-><init>()V

    .line 1061
    .local v1, value:Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1062
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$Url;->setSearchResultsInfo(Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;)Lcom/google/majel/proto/PeanutProtos$Url;

    goto :goto_0

    .line 1066
    .end local v1           #value:Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/majel/proto/PeanutProtos$Url;->setDisplayLink(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Url;

    goto :goto_0

    .line 1070
    :sswitch_8
    new-instance v1, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    invoke-direct {v1}, Lcom/google/majel/proto/CookieProtos$MajelCookie;-><init>()V

    .line 1071
    .local v1, value:Lcom/google/majel/proto/CookieProtos$MajelCookie;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1072
    invoke-virtual {p0, v1}, Lcom/google/majel/proto/PeanutProtos$Url;->addCookie(Lcom/google/majel/proto/CookieProtos$MajelCookie;)Lcom/google/majel/proto/PeanutProtos$Url;

    goto :goto_0

    .line 1030
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
    .line 769
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/PeanutProtos$Url;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/majel/proto/PeanutProtos$Url;

    move-result-object v0

    return-object v0
.end method

.method public setCookie(ILcom/google/majel/proto/CookieProtos$MajelCookie;)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 908
    if-nez p2, :cond_0

    .line 909
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->cookie_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 912
    return-object p0
.end method

.method public setDisplayLink(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .parameter "value"

    .prologue
    .line 798
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasDisplayLink:Z

    .line 799
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Url;->displayLink_:Ljava/lang/String;

    .line 800
    return-object p0
.end method

.method public setHtml(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .parameter "value"

    .prologue
    .line 866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasHtml:Z

    .line 867
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Url;->html_:Ljava/lang/String;

    .line 868
    return-object p0
.end method

.method public setLink(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .parameter "value"

    .prologue
    .line 781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasLink:Z

    .line 782
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Url;->link_:Ljava/lang/String;

    .line 783
    return-object p0
.end method

.method public setRenderedLink(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .parameter "value"

    .prologue
    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasRenderedLink:Z

    .line 816
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedLink_:Ljava/lang/String;

    .line 817
    return-object p0
.end method

.method public setRenderedPage(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .parameter "value"

    .prologue
    .line 832
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasRenderedPage:Z

    .line 833
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Url;->renderedPage_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 834
    return-object p0
.end method

.method public setSearchResultsInfo(Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .parameter "value"

    .prologue
    .line 883
    if-nez p1, :cond_0

    .line 884
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 886
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasSearchResultsInfo:Z

    .line 887
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Url;->searchResultsInfo_:Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    .line 888
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/majel/proto/PeanutProtos$Url;
    .locals 1
    .parameter "value"

    .prologue
    .line 849
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/majel/proto/PeanutProtos$Url;->hasTitle:Z

    .line 850
    iput-object p1, p0, Lcom/google/majel/proto/PeanutProtos$Url;->title_:Ljava/lang/String;

    .line 851
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
    .line 949
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->hasLink()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 950
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 952
    :cond_0
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->hasRenderedLink()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 953
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->getRenderedLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 955
    :cond_1
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->hasRenderedPage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 956
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->getRenderedPage()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 958
    :cond_2
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->hasTitle()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 959
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 961
    :cond_3
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->hasHtml()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 962
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->getHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 964
    :cond_4
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->hasSearchResultsInfo()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 965
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->getSearchResultsInfo()Lcom/google/majel/proto/PeanutProtos$SearchResultsInfo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 967
    :cond_5
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->hasDisplayLink()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 968
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->getDisplayLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 970
    :cond_6
    invoke-virtual {p0}, Lcom/google/majel/proto/PeanutProtos$Url;->getCookieList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    .line 971
    .local v0, element:Lcom/google/majel/proto/CookieProtos$MajelCookie;
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 973
    .end local v0           #element:Lcom/google/majel/proto/CookieProtos$MajelCookie;
    :cond_7
    return-void
.end method
