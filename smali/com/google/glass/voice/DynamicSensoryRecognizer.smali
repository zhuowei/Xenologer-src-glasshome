.class public Lcom/google/glass/voice/DynamicSensoryRecognizer;
.super Lcom/google/glass/voice/Sensory;
.source "DynamicSensoryRecognizer.java"


# static fields
.field private static final GRAMMAR_DISJUNCTION_OPERATOR:Ljava/lang/String; = "|"

.field public static final MAX_GRAMMAR_PHRASES:I = 0x14

.field private static final PARAM_A_DYNAMIC_PHRASESPOT:I = 0x19

.field private static final TAG:Ljava/lang/String; = "DynamicSensory"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "config"
    .parameter "phrases"
    .parameter "tags"

    .prologue
    const/16 v5, 0x14

    .line 59
    invoke-direct {p0}, Lcom/google/glass/voice/Sensory;-><init>()V

    .line 66
    array-length v0, p3

    if-le v0, v5, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many phrases ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", max "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->nativeInitPhrasespotDynamic()J

    move-result-wide v1

    .line 76
    .local v1, sensoryContext:J
    iget-object v0, p2, Lcom/google/glass/voice/VoiceConfig;->ltsFile:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0, p3}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->nativeNormalizeText(JLjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 84
    .local v7, normalizedPhrases:[Ljava/lang/String;
    invoke-static {v7}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->getValidPhrases([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, validPhrases:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 86
    .local v9, validTags:[Ljava/lang/String;
    if-eqz p4, :cond_1

    array-length v0, p4

    if-eqz v0, :cond_1

    .line 87
    invoke-static {v7, p4}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->getValidTags([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 90
    :cond_1
    invoke-direct {p0, v8, v9}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->generateGrammar([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->grammar:Ljava/lang/String;

    .line 91
    invoke-direct {p0, v8}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->generateGrammarWords([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, words:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->grammar:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v6, :cond_2

    array-length v0, v6

    if-nez v0, :cond_3

    .line 94
    :cond_2
    const-string v0, "DynamicSensory"

    const-string v3, "Error generating grammar, Sensory object not correctly initialized"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->sensoryContext:J

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_3
    iget-object v0, p2, Lcom/google/glass/voice/VoiceConfig;->recogFile:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p2, Lcom/google/glass/voice/VoiceConfig;->ltsFile:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->getPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->grammar:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->nativeCompileGrammar(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->sensoryContext:J

    goto :goto_0
.end method

.method private generateGrammar([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "phrases"
    .parameter "tags"

    .prologue
    const/4 v4, 0x0

    const/16 v9, 0x14

    const/4 v5, 0x0

    .line 157
    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_1

    .line 158
    :cond_0
    const-string v6, "DynamicSensory"

    const-string v7, "Null or empty array of phrases provided for grammar, returning null grammar"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    :goto_0
    return-object v4

    .line 162
    :cond_1
    array-length v6, p1

    if-le v6, v9, :cond_2

    .line 163
    const-string v6, "DynamicSensory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too many phrases ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", max "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), returning null grammar"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 168
    :cond_2
    if-eqz p2, :cond_3

    array-length v4, p1

    array-length v6, p2

    if-ne v4, v6, :cond_5

    :cond_3
    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v0, b:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v4, p1

    if-ge v1, v4, :cond_7

    .line 175
    const-string v4, "w"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    aget-object v4, p1, v1

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, wordsInPhrase:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    array-length v4, v3

    if-ge v2, v4, :cond_6

    .line 178
    aget-object v4, v3, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    if-eqz p2, :cond_4

    .line 183
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_4

    .line 184
    const-string v4, "%"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    aget-object v4, v3, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v4, "_tag_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    aget-object v4, p2, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_4
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0           #b:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #wordsInPhrase:[Ljava/lang/String;
    :cond_5
    move v4, v5

    .line 168
    goto :goto_1

    .line 193
    .restart local v0       #b:Ljava/lang/StringBuilder;
    .restart local v1       #i:I
    .restart local v2       #j:I
    .restart local v3       #wordsInPhrase:[Ljava/lang/String;
    :cond_6
    const-string v4, "; "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 197
    .end local v2           #j:I
    .end local v3           #wordsInPhrase:[Ljava/lang/String;
    :cond_7
    const-string v4, "g = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const/4 v1, 0x1

    :goto_4
    array-length v4, p1

    add-int/lit8 v4, v4, 0x1

    if-ge v1, v4, :cond_9

    .line 199
    const-string v4, "$w"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    array-length v4, p1

    if-ne v1, v4, :cond_8

    .line 201
    const-string v4, "; "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 203
    :cond_8
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 210
    :cond_9
    const/4 v1, 0x1

    :goto_6
    array-length v4, p1

    add-int/lit8 v4, v4, 0x1

    if-ge v1, v4, :cond_a

    .line 211
    const-string v4, "paramA: $w"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x19

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v4, "paramB: $w"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " -"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "; "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 216
    :cond_a
    const-string v4, "DynamicSensory"

    const-string v6, "Generated dynamic grammar"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v6, v5}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    const/4 v4, 0x3

    const-string v5, "DynamicSensory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dynamic grammar: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private generateGrammarWords([Ljava/lang/String;)[Ljava/lang/String;
    .locals 16
    .parameter "phrases"

    .prologue
    .line 234
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v13, v0

    if-nez v13, :cond_2

    .line 235
    :cond_0
    const-string v13, "DynamicSensory"

    const-string v14, "Null or empty array of phrases provided for grammar words, returning null words"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    const/4 v1, 0x0

    .line 261
    :cond_1
    :goto_0
    return-object v1

    .line 239
    :cond_2
    move-object/from16 v0, p1

    array-length v13, v0

    const/16 v14, 0x14

    if-le v13, v14, :cond_3

    .line 240
    const-string v13, "DynamicSensory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Too many phrases ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    array-length v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", max "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "), returning null grammar"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    const/4 v1, 0x0

    goto :goto_0

    .line 245
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v11, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p1

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_5

    aget-object v9, v2, v6

    .line 249
    .local v9, phrase:Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 250
    .local v12, wordsInPhrase:[Ljava/lang/String;
    move-object v3, v12

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_2
    if-ge v5, v8, :cond_4

    aget-object v10, v3, v5

    .line 251
    .local v10, word:Ljava/lang/String;
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 248
    .end local v10           #word:Ljava/lang/String;
    :cond_4
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_1

    .line 256
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v9           #phrase:Ljava/lang/String;
    .end local v12           #wordsInPhrase:[Ljava/lang/String;
    :cond_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    new-array v1, v13, [Ljava/lang/String;

    .line 257
    .local v1, arr:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_1

    .line 258
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v1, v4

    .line 257
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private static getValidPhrases([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "normalizedPhrases"

    .prologue
    .line 113
    invoke-static {p0, p0}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->getValuesWithNonEmptyKeys([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getValidTags([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "normalizedPhrases"
    .parameter "rawTags"

    .prologue
    .line 117
    invoke-static {p0, p1}, Lcom/google/glass/voice/DynamicSensoryRecognizer;->getValuesWithNonEmptyKeys([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getValuesWithNonEmptyKeys([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "keys"
    .parameter "values"

    .prologue
    .line 124
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v1

    .line 125
    .local v1, validValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 126
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 132
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method


# virtual methods
.method public activate()V
    .locals 4

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->sensoryContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 108
    invoke-super {p0}, Lcom/google/glass/voice/Sensory;->activate()V

    .line 110
    :cond_0
    return-void
.end method

.method getGrammarRuleCountForTests()I
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/voice/DynamicSensoryRecognizer;->grammar:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 1
    .parameter "literal"

    .prologue
    .line 266
    new-instance v0, Lcom/google/glass/voice/VoiceCommand;

    invoke-direct {v0, p1}, Lcom/google/glass/voice/VoiceCommand;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
