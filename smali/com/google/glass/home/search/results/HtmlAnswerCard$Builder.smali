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

.field public getsImplicitSearchAction:Z

.field public final postInjectionHtml:Ljava/lang/StringBuilder;

.field public preInjectionHtml:Ljava/lang/String;

.field public ttsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    .line 219
    iput-object v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->preInjectionHtml:Ljava/lang/String;

    .line 220
    iput-object v1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->ttsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->getsImplicitSearchAction:Z

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->actions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build(Lcom/google/glass/home/search/results/HtmlAnswerCard;)Lcom/google/glass/home/search/results/HtmlAnswerCard;
    .locals 14
    .parameter "commonContent"

    .prologue
    .line 228
    iget-object v12, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->preInjectionHtml:Ljava/lang/String;

    if-eqz v12, :cond_5

    iget-object v7, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->preInjectionHtml:Ljava/lang/String;

    .line 229
    .local v7, displayHtml:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_0

    .line 230
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Lcom/google/glass/home/search/results/HtmlAnswerCard;->displayHtml:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 232
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->postInjectionHtml:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 234
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v4, builtActions:Ljava/util/List;,"Ljava/util/List<Lorg/json/JSONObject;>;"
    iget-boolean v12, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->getsImplicitSearchAction:Z

    if-eqz v12, :cond_1

    .line 236
    const/4 v12, 0x0

    invoke-static {}, Lcom/google/glass/home/search/results/HtmlAnswerCard;->makeSearchActionSpec()Lorg/json/JSONObject;

    move-result-object v13

    invoke-interface {v4, v12, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 244
    :cond_1
    iget-object v5, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->ttsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    .line 245
    .local v5, builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    const/4 v1, 0x0

    .line 246
    .local v1, addedExplicitTts:Z
    const/4 v2, 0x0

    .line 248
    .local v2, addedImplicitTts:Z
    if-eqz p1, :cond_8

    .line 249
    iget-object v12, p1, Lcom/google/glass/home/search/results/HtmlAnswerCard;->actions:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 251
    .local v0, action:Lorg/json/JSONObject;
    :try_start_0
    const-string v12, "type"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "READ_ALOUD"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 252
    iget-boolean v12, p1, Lcom/google/glass/home/search/results/HtmlAnswerCard;->builtWithImplicitTts:Z

    if-nez v12, :cond_2

    .line 253
    const-string v12, "value"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 254
    .local v11, ttsValue:Ljava/lang/String;
    const-string v10, "en"

    .line 255
    .local v10, ttsLang:Ljava/lang/String;
    const-string v12, "lang"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 256
    const-string v12, "lang"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 258
    :cond_3
    new-instance v6, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    invoke-direct {v6, v11, v10}, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v5           #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .local v6, builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    const/4 v1, 0x1

    .line 261
    :try_start_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-static {v10}, Lcom/google/glass/voice/network/translate/NetworkTts;->isLanguageSupported(Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v12

    if-nez v12, :cond_6

    :cond_4
    move-object v5, v6

    .line 262
    .end local v6           #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v5       #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    goto :goto_1

    .line 228
    .end local v0           #action:Lorg/json/JSONObject;
    .end local v1           #addedExplicitTts:Z
    .end local v2           #addedImplicitTts:Z
    .end local v4           #builtActions:Ljava/util/List;,"Ljava/util/List<Lorg/json/JSONObject;>;"
    .end local v5           #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .end local v7           #displayHtml:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #ttsLang:Ljava/lang/String;
    .end local v11           #ttsValue:Ljava/lang/String;
    :cond_5
    const-string v7, ""

    goto/16 :goto_0

    .line 264
    .restart local v0       #action:Lorg/json/JSONObject;
    .restart local v1       #addedExplicitTts:Z
    .restart local v2       #addedImplicitTts:Z
    .restart local v4       #builtActions:Ljava/util/List;,"Ljava/util/List<Lorg/json/JSONObject;>;"
    .restart local v6       #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v7       #displayHtml:Ljava/lang/String;
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #ttsLang:Ljava/lang/String;
    .restart local v11       #ttsValue:Ljava/lang/String;
    :cond_6
    :try_start_2
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v5, v6

    .line 265
    .end local v6           #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v5       #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    goto :goto_1

    .line 267
    .end local v10           #ttsLang:Ljava/lang/String;
    .end local v11           #ttsValue:Ljava/lang/String;
    :cond_7
    :try_start_3
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 269
    :catch_0
    move-exception v12

    goto :goto_1

    .line 274
    .end local v0           #action:Lorg/json/JSONObject;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_8
    iget-object v12, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;->actions:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 276
    .restart local v0       #action:Lorg/json/JSONObject;
    :try_start_4
    const-string v12, "type"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "READ_ALOUD"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 277
    const-string v12, "value"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 278
    .restart local v11       #ttsValue:Ljava/lang/String;
    const-string v10, "en"

    .line 279
    .restart local v10       #ttsLang:Ljava/lang/String;
    const-string v12, "lang"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 280
    const-string v12, "lang"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 282
    :cond_9
    new-instance v6, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    invoke-direct {v6, v11, v10}, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    .line 283
    .end local v5           #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v6       #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    const/4 v1, 0x1

    .line 285
    :try_start_5
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a

    invoke-static {v10}, Lcom/google/glass/voice/network/translate/NetworkTts;->isLanguageSupported(Ljava/lang/String;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    move-result v12

    if-nez v12, :cond_b

    :cond_a
    move-object v5, v6

    .line 286
    .end local v6           #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v5       #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    goto :goto_2

    .line 289
    .end local v10           #ttsLang:Ljava/lang/String;
    .end local v11           #ttsValue:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 291
    .local v8, e:Lorg/json/JSONException;
    :goto_3
    goto :goto_2

    .end local v5           #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .end local v8           #e:Lorg/json/JSONException;
    .restart local v6       #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v10       #ttsLang:Ljava/lang/String;
    .restart local v11       #ttsValue:Ljava/lang/String;
    :cond_b
    move-object v5, v6

    .line 293
    .end local v6           #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .end local v10           #ttsLang:Ljava/lang/String;
    .end local v11           #ttsValue:Ljava/lang/String;
    .restart local v5       #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    :cond_c
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 298
    .end local v0           #action:Lorg/json/JSONObject;
    :cond_d
    if-nez v1, :cond_f

    .line 299
    if-nez v5, :cond_e

    if-eqz p1, :cond_e

    .line 300
    iget-object v5, p1, Lcom/google/glass/home/search/results/HtmlAnswerCard;->ttsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    .line 302
    :cond_e
    if-eqz v5, :cond_f

    iget-object v12, v5, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_f

    iget-object v12, v5, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->lang:Ljava/lang/String;

    invoke-static {v12}, Lcom/google/glass/voice/network/translate/NetworkTts;->isLanguageSupported(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 304
    const/4 v12, 0x0

    invoke-static {v5}, Lcom/google/glass/home/search/results/HtmlAnswerCard;->makeReadAloudActionSpec(Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-interface {v4, v12, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 305
    const/4 v2, 0x1

    .line 309
    :cond_f
    new-instance v3, Lcom/google/glass/home/search/results/HtmlAnswerCard;

    const/4 v12, 0x0

    invoke-direct {v3, v7, v5, v4, v12}, Lcom/google/glass/home/search/results/HtmlAnswerCard;-><init>(Ljava/lang/String;Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;Ljava/util/List;Lcom/google/glass/home/search/results/HtmlAnswerCard$1;)V

    .line 310
    .local v3, built:Lcom/google/glass/home/search/results/HtmlAnswerCard;
    iput-boolean v2, v3, Lcom/google/glass/home/search/results/HtmlAnswerCard;->builtWithImplicitTts:Z

    .line 311
    return-object v3

    .line 289
    .end local v3           #built:Lcom/google/glass/home/search/results/HtmlAnswerCard;
    .end local v5           #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v0       #action:Lorg/json/JSONObject;
    .restart local v6       #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v10       #ttsLang:Ljava/lang/String;
    .restart local v11       #ttsValue:Ljava/lang/String;
    :catch_2
    move-exception v8

    move-object v5, v6

    .end local v6           #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v5       #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    goto :goto_3

    .line 269
    .end local v5           #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v6       #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    :catch_3
    move-exception v12

    move-object v5, v6

    .end local v6           #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    .restart local v5       #builtTts:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;
    goto/16 :goto_1
.end method
