.class public Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;
.super Ljava/lang/Object;
.source "HtmlAnswerCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/search/results/HtmlAnswerCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public implicitActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public final postInjectionHtml:Ljava/lang/StringBuilder;

.field public preInjectionHtml:Ljava/lang/String;

.field public ttsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    .line 193
    iput-object v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->preInjectionHtml:Ljava/lang/String;

    .line 194
    iput-object v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->ttsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->implicitActions:Ljava/util/List;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->actions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build(Lcom/google/glass/home/search/results/HtmlAnswerCard;)Lcom/google/glass/home/search/results/HtmlAnswerCard;
    .locals 7
    .parameter "commonContent"

    .prologue
    .line 202
    iget-object v5, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->preInjectionHtml:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v3, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->preInjectionHtml:Ljava/lang/String;

    .line 203
    .local v3, displayHtml:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_0

    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/google/glass/home/search/results/HtmlAnswerCard;->displayHtml:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 206
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    iget-object v2, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->ttsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    .line 209
    .local v2, builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 210
    iget-object v2, p1, Lcom/google/glass/home/search/results/HtmlAnswerCard;->ttsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    .line 213
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v1, builtActions:Ljava/util/List;,"Ljava/util/List<Lorg/json/JSONObject;>;"
    iget-object v5, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->implicitActions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 215
    .local v0, action:Lorg/json/JSONObject;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 202
    .end local v0           #action:Lorg/json/JSONObject;
    .end local v1           #builtActions:Ljava/util/List;,"Ljava/util/List<Lorg/json/JSONObject;>;"
    .end local v2           #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .end local v3           #displayHtml:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v3, ""

    goto :goto_0

    .line 217
    .restart local v1       #builtActions:Ljava/util/List;,"Ljava/util/List<Lorg/json/JSONObject;>;"
    .restart local v2       #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v3       #displayHtml:Ljava/lang/String;
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3
    if-eqz p1, :cond_5

    .line 218
    iget-object v5, p1, Lcom/google/glass/home/search/results/HtmlAnswerCard;->actions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 222
    .restart local v0       #action:Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "type"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "READ_ALOUD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 223
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 225
    :catch_0
    move-exception v5

    goto :goto_2

    .line 230
    .end local v0           #action:Lorg/json/JSONObject;
    :cond_5
    iget-object v5, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->actions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 231
    .restart local v0       #action:Lorg/json/JSONObject;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 235
    .end local v0           #action:Lorg/json/JSONObject;
    :cond_6
    if-eqz v2, :cond_7

    iget-object v5, v2, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, v2, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->lang:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/glass/voice/network/translate/NetworkTts;->isLanguageSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 237
    const/4 v5, 0x0

    invoke-static {}, Lcom/google/glass/home/search/results/HtmlAnswerCard;->makeReadAloudActionSpec()Lorg/json/JSONObject;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 240
    :cond_7
    new-instance v5, Lcom/google/glass/home/search/results/HtmlAnswerCard;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v2, v1, v6}, Lcom/google/glass/home/search/results/HtmlAnswerCard;-><init>(Ljava/lang/String;Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;Ljava/util/List;Lcom/google/glass/home/search/results/HtmlAnswerCard$1;)V

    return-object v5
.end method
