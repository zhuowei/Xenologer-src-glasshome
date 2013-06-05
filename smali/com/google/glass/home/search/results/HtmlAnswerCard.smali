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
    .line 105
    .local p3, actions:Ljava/util/List;,"Ljava/util/List<Lorg/json/JSONObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard;->displayHtml:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard;->ttsFormatString:Lcom/google/glass/home/search/results/HtmlAnswerCard$TtsFormatString;

    .line 108
    iput-object p3, p0, Lcom/google/glass/home/search/results/HtmlAnswerCard;->actions:Ljava/util/List;

    .line 109
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

    .line 78
    const-string v1, ""

    .line 81
    .local v1, actionName:Ljava/lang/String;
    :try_start_0
    const-string v3, "type"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v1}, Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;->valueOf(Ljava/lang/String;)Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v2

    .line 84
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

    .line 86
    .end local v2           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 87
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
    .locals 13
    .parameter "context"
    .parameter "spec"
    .parameter "menu"
    .parameter "bundle"

    .prologue
    .line 119
    invoke-static {p2}, Lcom/google/glass/home/search/results/HtmlAnswerCard;->actionTypeFromSpec(Lorg/json/JSONObject;)Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;

    move-result-object v1

    .line 120
    .local v1, action:Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;
    if-nez v1, :cond_0

    .line 121
    sget-object v10, Lcom/google/glass/home/search/results/HtmlAnswerCard;->TAG:Ljava/lang/String;

    const-string v11, "Not adding action from invalid spec."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 124
    :cond_0
    sget-object v10, Lcom/google/glass/home/search/results/HtmlAnswerCard$1;->$SwitchMap$com$google$glass$home$search$results$HtmlAnswerCard$ParsableActionType:[I

    invoke-virtual {v1}, Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 177
    sget-object v10, Lcom/google/glass/home/search/results/HtmlAnswerCard;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Don\'t know how to add validated menu action of type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    :pswitch_0
    const/4 v10, 0x4

    sget v11, Lcom/google/glass/home/R$string;->timeline_menu_navigate:I

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lcom/google/glass/home/R$drawable;->ic_navigate_medium:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11, v12}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    goto :goto_0

    .line 131
    :pswitch_1
    const/4 v10, 0x5

    sget v11, Lcom/google/glass/home/R$string;->timeline_menu_read_aloud:I

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lcom/google/glass/home/R$drawable;->ic_read_aloud_medium:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11, v12}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    goto :goto_0

    .line 137
    :pswitch_2
    :try_start_0
    const-string v10, "phoneNumber"

    invoke-virtual {p2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 138
    .local v9, phoneNumber:Ljava/lang/String;
    const-string v10, "PHONE_NUMBER_KEY"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/16 v10, 0x8

    sget v11, Lcom/google/glass/home/R$string;->timeline_menu_voice_call:I

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lcom/google/glass/home/R$drawable;->ic_phone_out_medium:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11, v12}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v9           #phoneNumber:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 145
    .local v3, e:Lorg/json/JSONException;
    goto :goto_0

    .line 150
    .end local v3           #e:Lorg/json/JSONException;
    :pswitch_3
    :try_start_1
    const-string v10, "address"

    invoke-virtual {p2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, address:Ljava/lang/String;
    const-string v10, "name"

    invoke-virtual {p2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, name:Ljava/lang/String;
    const-string v10, "lat"

    invoke-virtual {p2, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 153
    .local v4, lat:D
    const-string v10, "lng"

    invoke-virtual {p2, v10}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 154
    .local v6, lng:D
    const-string v10, "LOCATION_COORDINATES_KEY"

    const/4 v11, 0x2

    new-array v11, v11, [D

    const/4 v12, 0x0

    aput-wide v4, v11, v12

    const/4 v12, 0x1

    aput-wide v6, v11, v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 156
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 157
    const-string v10, "LOCATION_NAME_KEY"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_1
    const-string v10, "LOCATION_ADDRESS_KEY"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/16 v10, 0x9

    sget v11, Lcom/google/glass/home/R$string;->timeline_menu_navigate:I

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lcom/google/glass/home/R$drawable;->ic_navigate_medium:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11, v12}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 165
    .end local v2           #address:Ljava/lang/String;
    .end local v4           #lat:D
    .end local v6           #lng:D
    .end local v8           #name:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 168
    .restart local v3       #e:Lorg/json/JSONException;
    goto/16 :goto_0

    .line 159
    .end local v3           #e:Lorg/json/JSONException;
    .restart local v2       #address:Ljava/lang/String;
    .restart local v4       #lat:D
    .restart local v6       #lng:D
    .restart local v8       #name:Ljava/lang/String;
    :cond_1
    const-string v10, "LOCATION_NAME_KEY"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 172
    .end local v2           #address:Ljava/lang/String;
    .end local v4           #lat:D
    .end local v6           #lng:D
    .end local v8           #name:Ljava/lang/String;
    :pswitch_4
    const/16 v10, 0xa

    sget v11, Lcom/google/glass/home/R$string;->timeline_menu_expand_search:I

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lcom/google/glass/home/R$drawable;->web_results:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11, v12}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static makeActionOfType(Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;)Lorg/json/JSONObject;
    .locals 3
    .parameter "type"

    .prologue
    .line 245
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 247
    .local v0, spec:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-object v0

    .line 248
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static makeReadAloudActionSpec()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;->READ_ALOUD:Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;

    invoke-static {v0}, Lcom/google/glass/home/search/results/HtmlAnswerCard;->makeActionOfType(Lcom/google/glass/home/search/results/HtmlAnswerCard$ParsableActionType;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static makeSearchActionSpec()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 255
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
    .line 112
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

    .line 113
    .local v1, spec:Lorg/json/JSONObject;
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/google/glass/home/search/results/HtmlAnswerCard;->addMenuActionToResults(Landroid/content/Context;Lorg/json/JSONObject;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)V

    goto :goto_0

    .line 115
    .end local v1           #spec:Lorg/json/JSONObject;
    :cond_0
    return-void
.end method
