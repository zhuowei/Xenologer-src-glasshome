.class Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PinholePage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/PinholePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClassedElementExtractor"
.end annotation


# instance fields
.field private final matchingElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/PinholePage$ElementExtraction;",
            ">;"
        }
    .end annotation
.end field

.field private numRecording:I

.field private final queryClassNames:Ljava/util/List;
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
.method private constructor <init>([Ljava/lang/String;)V
    .locals 6
    .parameter "classNames"

    .prologue
    .line 324
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 320
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->queryClassNames:Ljava/util/List;

    .line 321
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->matchingElements:Ljava/util/List;

    .line 322
    const/4 v4, 0x0

    iput v4, p0, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->numRecording:I

    .line 325
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 326
    .local v3, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->queryClassNames:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;Lcom/google/glass/voice/network/PinholePage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->matchingElements:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 4
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 397
    iget v3, p0, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->numRecording:I

    if-nez v3, :cond_1

    .line 404
    :cond_0
    return-void

    .line 400
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 401
    .local v0, chars:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->matchingElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;

    .line 402
    .local v2, recorder:Lcom/google/glass/voice/network/PinholePage$ElementExtraction;
    invoke-virtual {v2, v0}, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->characters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"

    .prologue
    .line 384
    iget v3, p0, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->numRecording:I

    if-nez v3, :cond_1

    .line 393
    :cond_0
    return-void

    .line 387
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, endTag:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->matchingElements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;

    .line 389
    .local v2, recorder:Lcom/google/glass/voice/network/PinholePage$ElementExtraction;
    #getter for: Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->recording:Z
    invoke-static {v2}, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->access$400(Lcom/google/glass/voice/network/PinholePage$ElementExtraction;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->endTag(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 390
    iget v3, p0, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->numRecording:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->numRecording:I

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 17
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attrs"

    .prologue
    .line 334
    const-string v15, "class"

    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Lorg/xml/sax/Attributes;->getIndex(Ljava/lang/String;)I

    move-result v2

    .line 335
    .local v2, classIndex:I
    if-ltz v2, :cond_4

    .line 336
    const/4 v9, 0x0

    .line 337
    .local v9, newElementMatchesQuery:Z
    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, classes:[Ljava/lang/String;
    move-object v1, v3

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    move v7, v6

    .end local v6           #i$:I
    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v4, v1, v7

    .line 339
    .local v4, classname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->queryClassNames:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v7           #i$:I
    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 340
    .local v11, queryClassname:Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 344
    const-string v15, "gls-tts"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->numRecording:I

    if-nez v15, :cond_0

    .line 345
    :cond_1
    const/4 v9, 0x1

    .line 350
    .end local v11           #queryClassname:Ljava/lang/String;
    :cond_2
    if-eqz v9, :cond_6

    .line 354
    .end local v4           #classname:Ljava/lang/String;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_3
    if-eqz v9, :cond_4

    .line 355
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->matchingElements:Ljava/util/List;

    new-instance v16, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;

    invoke-direct/range {v16 .. v16}, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;-><init>()V

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->numRecording:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->numRecording:I

    .line 361
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #classes:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v9           #newElementMatchesQuery:Z
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->numRecording:I

    if-nez v15, :cond_7

    .line 380
    :cond_5
    return-void

    .line 338
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v3       #classes:[Ljava/lang/String;
    .restart local v4       #classname:Ljava/lang/String;
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v8       #len$:I
    .restart local v9       #newElementMatchesQuery:Z
    :cond_6
    add-int/lit8 v6, v7, 0x1

    .local v6, i$:I
    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto :goto_0

    .line 368
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #classes:[Ljava/lang/String;
    .end local v4           #classname:Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #newElementMatchesQuery:Z
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v14, startTagBuilder:Ljava/lang/StringBuilder;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "<"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v10

    .line 371
    .local v10, numAttributes:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v10, :cond_8

    .line 372
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "=\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 374
    :cond_8
    const-string v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 377
    .local v13, startTag:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/glass/voice/network/PinholePage$ClassedElementExtractor;->matchingElements:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;

    .line 378
    .local v12, recorder:Lcom/google/glass/voice/network/PinholePage$ElementExtraction;
    invoke-virtual {v12, v13}, Lcom/google/glass/voice/network/PinholePage$ElementExtraction;->startTag(Ljava/lang/String;)V

    goto :goto_2
.end method
