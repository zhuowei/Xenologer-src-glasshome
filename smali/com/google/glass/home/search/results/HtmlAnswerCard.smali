.class public Lcom/google/glass/home/search/results/HtmlAnswerCard;
.super Ljava/lang/Object;
.source "HtmlAnswerCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/search/results/HtmlAnswerCard$1;,
        Lcom/google/glass/home/search/results/HtmlAnswerCard$Builder;,
        Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;,
        Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;,
        Lcom/google/glass/home/search/results/HtmlAnswerCard$DisplayContext;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field actions:Ljava/util/List;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public builtWithImplicitTts:Z

.field public final displayHtml:Ljava/lang/String;

.field public final ttsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/glass/home/search/results/HtmlAnswerCard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCard;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;Ljava/util/List;)V
    .locals 0
    .parameter "displayHtml"
    .parameter "ttsFormatString"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p3, actions:Ljava/util/List;,"Ljava/util/List<Lorg/json/JSONObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard;->displayHtml:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard;->ttsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    .line 120
    iput-object p3, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard;->actions:Ljava/util/List;

    .line 121
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;Ljava/util/List;Lcom/google/glass/home/search/results/HtmlAnswerCard$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/search/results/HtmlAnswerCard;-><init>(Ljava/lang/String;Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;Ljava/util/List;)V

    return-void
.end method

.method public static actionTypeFromSpec(Lorg/json/JSONObject;)Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;
    .locals 6
    .parameter "spec"

    .prologue
    const/4 v0, 0x0

    .line 85
    const-string v1, ""

    .line 88
    .local v1, actionName:Ljava/lang/String;
    :try_start_0
    const-string v3, "type"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1}, Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;->valueOf(Ljava/lang/String;)Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, e:Lorg/json/JSONException;
    sget-object v3, Lcom/google/glass/home/search/results/HtmlAnswerCard;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Menu action spec with no \'type\' field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 93
    .end local v2           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 94
    .local v2, e:Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/google/glass/home/search/results/HtmlAnswerCard;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Menu action spec with unrecognized \'type\' field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addMenuActionToResults(Landroid/content/Context;Lorg/json/JSONObject;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)V
    .locals 14
    .parameter "context"
    .parameter "spec"
    .parameter "menu"
    .parameter "bundle"

    .prologue
    .line 131
    invoke-static/range {p2 .. p2}, Lcom/google/glass/home/search/results/HtmlAnswerCard;->actionTypeFromSpec(Lorg/json/JSONObject;)Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;

    move-result-object v1

    .line 132
    .local v1, action:Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;
    if-nez v1, :cond_0

    .line 133
    sget-object v11, Lcom/google/glass/home/search/results/HtmlAnswerCard;->TAG:Ljava/lang/String;

    const-string v12, "Not adding action from invalid spec."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-void

    .line 136
    :cond_0
    sget-object v11, Lcom/google/glass/home/search/results/HtmlAnswerCard$1;->$SwitchMap$com$google$glass$home$search$results$HtmlAnswerCard$ParsableActionType:[I

    invoke-virtual {v1}, Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 203
    sget-object v11, Lcom/google/glass/home/search/results/HtmlAnswerCard;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Don\'t know how to add validated menu action of type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :pswitch_0
    const/4 v11, 0x4

    sget v12, Lcom/google/glass/home/R$string;->timeline_menu_navigate:I

    invoke-virtual {p1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/google/glass/home/R$drawable;->ic_navigate_medium:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12, v13}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    goto :goto_0

    .line 143
    :pswitch_1
    const/4 v11, 0x5

    sget v12, Lcom/google/glass/home/R$string;->timeline_menu_read_aloud:I

    invoke-virtual {p1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/google/glass/home/R$drawable;->ic_read_aloud_medium:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12, v13}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    goto :goto_0

    .line 149
    :pswitch_2
    :try_start_0
    const-string v11, "phoneNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 150
    .local v9, phoneNumber:Ljava/lang/String;
    const-string v11, "PHONE_NUMBER_KEY"

    move-object/from16 v0, p4

    invoke-virtual {v0, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/16 v11, 0x8

    sget v12, Lcom/google/glass/home/R$string;->timeline_menu_voice_call:I

    invoke-virtual {p1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/google/glass/home/R$drawable;->ic_phone_out_medium:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12, v13}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    .end local v9           #phoneNumber:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 157
    .local v3, e:Lorg/json/JSONException;
    goto :goto_0

    .line 162
    .end local v3           #e:Lorg/json/JSONException;
    :pswitch_3
    :try_start_1
    const-string v11, "address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, address:Ljava/lang/String;
    const-string v11, "name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 164
    .local v8, name:Ljava/lang/String;
    const-string v11, "lat"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 165
    .local v4, lat:D
    const-string v11, "lng"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 166
    .local v6, lng:D
    const-string v11, "LOCATION_COORDINATES_KEY"

    const/4 v12, 0x2

    new-array v12, v12, [D

    const/4 v13, 0x0

    aput-wide v4, v12, v13

    const/4 v13, 0x1

    aput-wide v6, v12, v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 168
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 169
    const-string v11, "LOCATION_NAME_KEY"

    move-object/from16 v0, p4

    invoke-virtual {v0, v11, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_1
    const-string v11, "LOCATION_ADDRESS_KEY"

    move-object/from16 v0, p4

    invoke-virtual {v0, v11, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/16 v11, 0x9

    sget v12, Lcom/google/glass/home/R$string;->timeline_menu_navigate:I

    invoke-virtual {p1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/google/glass/home/R$drawable;->ic_navigate_medium:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12, v13}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 177
    .end local v2           #address:Ljava/lang/String;
    .end local v4           #lat:D
    .end local v6           #lng:D
    .end local v8           #name:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 180
    .restart local v3       #e:Lorg/json/JSONException;
    goto/16 :goto_0

    .line 171
    .end local v3           #e:Lorg/json/JSONException;
    .restart local v2       #address:Ljava/lang/String;
    .restart local v4       #lat:D
    .restart local v6       #lng:D
    .restart local v8       #name:Ljava/lang/String;
    :cond_1
    const-string v11, "LOCATION_NAME_KEY"

    move-object/from16 v0, p4

    invoke-virtual {v0, v11, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 184
    .end local v2           #address:Ljava/lang/String;
    .end local v4           #lat:D
    .end local v6           #lng:D
    .end local v8           #name:Ljava/lang/String;
    :pswitch_4
    const/16 v11, 0xa

    sget v12, Lcom/google/glass/home/R$string;->timeline_menu_expand_search:I

    invoke-virtual {p1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/google/glass/home/R$drawable;->web_results:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12, v13}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 191
    :pswitch_5
    :try_start_2
    const-string v11, "url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    .line 197
    .local v10, url:Ljava/lang/String;
    const-string v11, "URL_KEY"

    move-object/from16 v0, p4

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/16 v11, 0xd

    sget v12, Lcom/google/glass/home/R$string;->timeline_menu_view_website:I

    invoke-virtual {p1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/google/glass/home/R$drawable;->browser_website:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12, v13}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 192
    .end local v10           #url:Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 195
    .restart local v3       #e:Lorg/json/JSONException;
    goto/16 :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static makeActionOfType(Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;)Lorg/json/JSONObject;
    .locals 3
    .parameter "type"

    .prologue
    .line 316
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 318
    .local v0, spec:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-object v0

    .line 319
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static makeReadAloudActionSpec(Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;)Lorg/json/JSONObject;
    .locals 3
    .parameter "tts"

    .prologue
    .line 330
    sget-object v1, Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;->READ_ALOUD:Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;

    invoke-static {v1}, Lcom/google/glass/home/search/results/HtmlAnswerCard;->makeActionOfType(Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;)Lorg/json/JSONObject;

    move-result-object v0

    .line 332
    .local v0, spec:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "value"

    iget-object v2, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v1, "lang"

    iget-object v2, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-object v0

    .line 334
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static makeSearchActionSpec()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 326
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;->SEARCH:Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;

    invoke-static {v0}, Lcom/google/glass/home/search/results/HtmlAnswerCard;->makeActionOfType(Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addMenuActionsToResults(Landroid/content/Context;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "menu"
    .parameter "bundle"

    .prologue
    .line 124
    iget-object v2, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard;->actions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 125
    .local v1, spec:Lorg/json/JSONObject;
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/google/glass/home/search/results/HtmlAnswerCard;->addMenuActionToResults(Landroid/content/Context;Lorg/json/JSONObject;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)V

    goto :goto_0

    .line 127
    .end local v1           #spec:Lorg/json/JSONObject;
    :cond_0
    return-void
.end method
