.class public Lcom/google/glass/voice/network/PinholePage;
.super Ljava/lang/Object;
.source "PinholePage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    }
.end annotation


# static fields
.field public static final END_OF_CARD_MARKER_ECT:Ljava/lang/String; = "eoc"

.field private static final GLASS_CARD_CLASS:Ljava/lang/String; = "gls-crd"

.field public static final MAIN_ANSWER_CARD_ECT:Ljava/lang/String; = "ans0"

.field private static final PELLET_SEPARATOR_PATTERN:Ljava/lang/String; = "/\\*\"\"\\*/"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private blobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/voice/network/PinholePage$PinholeDocument;",
            ">;"
        }
    .end annotation
.end field

.field private headerBuilder:Ljava/lang/StringBuilder;

.field private headerComplete:Z

.field private responseComplete:Z

.field private unparsedPelletFragment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/google/glass/voice/network/PinholePage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/PinholePage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage;->headerComplete:Z

    .line 66
    iput-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->headerBuilder:Ljava/lang/StringBuilder;

    .line 78
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    return-void
.end method

.method private addGwsBodyFragmentPellet(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "pellet"

    .prologue
    .line 139
    :try_start_0
    const-string v4, "u"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, url:Ljava/lang/String;
    const-string v4, "d"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, text:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    .line 142
    .local v0, blob:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    .end local v0           #blob:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    invoke-direct {v0, v3}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;-><init>(Ljava/lang/String;)V

    .line 144
    .restart local v0       #blob:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    iget-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_0
    #getter for: Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->text:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->access$000(Lcom/google/glass/voice/network/PinholePage$PinholeDocument;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0           #blob:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    .end local v2           #text:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, e:Lorg/json/JSONException;
    sget-object v4, Lcom/google/glass/voice/network/PinholePage;->TAG:Ljava/lang/String;

    const-string v5, "Couldn\'t parse gwsBodyFragment pellet."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    sget-object v4, Lcom/google/glass/voice/network/PinholePage;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleJsonBlobs(Ljava/lang/String;)V
    .locals 6
    .parameter "jsonBlob"

    .prologue
    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, source:Ljava/lang/String;
    const-string v4, ""

    iput-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    .line 89
    const-string v4, "/\\*\"\"\\*/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, pellets:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 91
    aget-object v4, v2, v0

    invoke-direct {p0, v4}, Lcom/google/glass/voice/network/PinholePage;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 92
    .local v1, pellet:Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 93
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_0

    iget-boolean v4, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    if-nez v4, :cond_0

    .line 94
    aget-object v4, v2, v0

    iput-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->unparsedPelletFragment:Ljava/lang/String;

    .line 90
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    sget-object v4, Lcom/google/glass/voice/network/PinholePage;->TAG:Ljava/lang/String;

    const-string v5, "Couldn\'t parse gwsBodyFragment pellet."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget-object v4, Lcom/google/glass/voice/network/PinholePage;->TAG:Ljava/lang/String;

    aget-object v5, v2, v0

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 100
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/glass/voice/network/PinholePage;->addGwsBodyFragmentPellet(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 103
    .end local v1           #pellet:Lorg/json/JSONObject;
    :cond_2
    return-void
.end method

.method private parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .parameter "source"

    .prologue
    .line 130
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-object v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPinholeDocumentByType(Ljava/lang/String;)Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    .locals 6
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 158
    const-string v4, "ans0"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 179
    :cond_0
    return-object v3

    .line 161
    :cond_1
    iget-boolean v4, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    if-eqz v4, :cond_0

    .line 165
    const/4 v3, 0x0

    .line 166
    .local v3, result:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    iget-object v4, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    .line 167
    .local v0, doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    if-nez v3, :cond_2

    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getBaseUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?ect="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ans0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, newUrl:Ljava/lang/String;
    new-instance v3, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    .end local v3           #result:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    invoke-direct {v3, v2}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;-><init>(Ljava/lang/String;)V

    .line 172
    .end local v2           #newUrl:Ljava/lang/String;
    .restart local v3       #result:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    :cond_2
    invoke-virtual {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 174
    #getter for: Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->text:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->access$000(Lcom/google/glass/voice/network/PinholePage$PinholeDocument;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->text:Ljava/lang/StringBuilder;
    invoke-static {v3}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->access$000(Lcom/google/glass/voice/network/PinholePage$PinholeDocument;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    #setter for: Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->text:Ljava/lang/StringBuilder;
    invoke-static {v3, v4}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->access$002(Lcom/google/glass/voice/network/PinholePage$PinholeDocument;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 176
    :cond_3
    #getter for: Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->text:Ljava/lang/StringBuilder;
    invoke-static {v3}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->access$000(Lcom/google/glass/voice/network/PinholePage$PinholeDocument;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getPinholeDocuments()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/glass/voice/network/PinholePage$PinholeDocument;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->blobs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    .locals 2
    .parameter "output"

    .prologue
    .line 106
    if-nez p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsHeaderComplete()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage;->headerComplete:Z

    .line 110
    iget-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage;->headerComplete:Z

    if-nez v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/google/glass/voice/network/PinholePage;->headerBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsHeaderFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_2
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsResponseComplete()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    .line 114
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->hasGwsBodyFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p1}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->getGwsBodyFragment()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/network/PinholePage;->handleJsonBlobs(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateDirectlyFromFullGwsResponse(Ljava/lang/String;)V
    .locals 2
    .parameter "response"

    .prologue
    const/4 v1, 0x1

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    iput-boolean v1, p0, Lcom/google/glass/voice/network/PinholePage;->headerComplete:Z

    .line 124
    iput-boolean v1, p0, Lcom/google/glass/voice/network/PinholePage;->responseComplete:Z

    .line 125
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/PinholePage;->handleJsonBlobs(Ljava/lang/String;)V

    goto :goto_0
.end method
