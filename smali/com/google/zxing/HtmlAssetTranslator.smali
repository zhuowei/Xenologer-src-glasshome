.class public final Lcom/google/zxing/HtmlAssetTranslator;
.super Ljava/lang/Object;
.source "HtmlAssetTranslator.java"


# static fields
.field private static final COMMA:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/HtmlAssetTranslator;->COMMA:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    array-length v6, p0

    const/4 v7, 0x3

    if-ge v6, v7, :cond_1

    .line 70
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Usage: HtmlAssetTranslator android/assets/ (all|lang1[,lang2 ...]) (all|file1.html[ file2.html ...])"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void

    .line 74
    :cond_1
    new-instance v0, Ljava/io/File;

    const/4 v6, 0x0

    aget-object v6, p0, v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, assetsDir:Ljava/io/File;
    const/4 v6, 0x1

    aget-object v6, p0, v6

    invoke-static {v0, v6}, Lcom/google/zxing/HtmlAssetTranslator;->parseLanguagesToTranslate(Ljava/io/File;Ljava/lang/CharSequence;)Ljava/util/Collection;

    move-result-object v4

    .line 76
    .local v4, languagesToTranslate:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    array-length v8, p0

    invoke-interface {v6, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 77
    .local v5, restOfArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v5}, Lcom/google/zxing/HtmlAssetTranslator;->parseFileNamesToTranslate(Ljava/io/File;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    .line 78
    .local v1, fileNamesToTranslate:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 79
    .local v3, language:Ljava/lang/String;
    invoke-static {v0, v3, v1}, Lcom/google/zxing/HtmlAssetTranslator;->translateOneLanguage(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private static parseFileNamesToTranslate(Ljava/io/File;Ljava/util/List;)Ljava/util/Collection;
    .locals 10
    .parameter "assetsDir"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, restOfArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v4, fileNamesToTranslate:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v8, "all"

    const/4 v9, 0x0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 104
    new-instance v5, Ljava/io/File;

    const-string v8, "html-en"

    invoke-direct {v5, p0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    .local v5, htmlEnAssetDir:Ljava/io/File;
    new-instance v2, Lcom/google/zxing/HtmlAssetTranslator$2;

    invoke-direct {v2}, Lcom/google/zxing/HtmlAssetTranslator$2;-><init>()V

    .line 111
    .local v2, fileFilter:Ljava/io/FileFilter;
    invoke-virtual {v5, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v1, v0, v6

    .line 112
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 115
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fileFilter:Ljava/io/FileFilter;
    .end local v5           #htmlEnAssetDir:Ljava/io/File;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 116
    .local v3, fileName:Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 119
    .end local v3           #fileName:Ljava/lang/String;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_1
    return-object v4
.end method

.method private static parseLanguagesToTranslate(Ljava/io/File;Ljava/lang/CharSequence;)Ljava/util/Collection;
    .locals 8
    .parameter "assetsDir"
    .parameter "languageArg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v4, languages:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v6, "all"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    new-instance v1, Lcom/google/zxing/HtmlAssetTranslator$1;

    invoke-direct {v1}, Lcom/google/zxing/HtmlAssetTranslator$1;-><init>()V

    .line 92
    .local v1, fileFilter:Ljava/io/FileFilter;
    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v0, v2

    .line 93
    .local v3, languageDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #fileFilter:Ljava/io/FileFilter;
    .end local v2           #i$:I
    .end local v3           #languageDir:Ljava/io/File;
    .end local v5           #len$:I
    :cond_0
    sget-object v6, Lcom/google/zxing/HtmlAssetTranslator;->COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 98
    :cond_1
    return-object v4
.end method

.method private static shouldTranslate(Lorg/w3c/dom/Node;)Z
    .locals 7
    .parameter "node"

    .prologue
    const/4 v5, 0x0

    .line 209
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 210
    .local v0, attributes:Lorg/w3c/dom/NamedNodeMap;
    if-eqz v0, :cond_1

    .line 211
    const-string v6, "class"

    invoke-interface {v0, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 212
    .local v1, classAttribute:Lorg/w3c/dom/Node;
    if-eqz v1, :cond_1

    .line 213
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, textContent:Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v6, "notranslate"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 232
    .end local v1           #classAttribute:Lorg/w3c/dom/Node;
    .end local v4           #textContent:Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 219
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, nodeName:Ljava/lang/String;
    const-string v6, "script"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 224
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    .line 225
    .restart local v4       #textContent:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 226
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 227
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 228
    const/4 v5, 0x1

    goto :goto_0

    .line 226
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static translateOneFile(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 25
    .parameter "language"
    .parameter "targetHtmlDir"
    .parameter "sourceFile"
    .parameter "translationTextTranslated"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    .local v6, destFile:Ljava/io/File;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 154
    .local v8, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 155
    .local v3, builder:Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 162
    .local v7, document:Lorg/w3c/dom/Document;
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v18

    .line 163
    .local v18, rootElement:Lorg/w3c/dom/Element;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Element;->normalize()V

    .line 165
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 166
    .local v14, nodes:Ljava/util/Queue;,"Ljava/util/Queue<Lorg/w3c/dom/Node;>;"
    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Queue;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_2

    .line 169
    invoke-interface {v14}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Node;

    .line 170
    .local v13, node:Lorg/w3c/dom/Node;
    invoke-static {v13}, Lcom/google/zxing/HtmlAssetTranslator;->shouldTranslate(Lorg/w3c/dom/Node;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 171
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 172
    .local v4, children:Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    move/from16 v0, v23

    if-ge v9, v0, :cond_1

    .line 173
    invoke-interface {v4, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 156
    .end local v3           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #children:Lorg/w3c/dom/NodeList;
    .end local v7           #document:Lorg/w3c/dom/Document;
    .end local v9           #i:I
    .end local v13           #node:Lorg/w3c/dom/Node;
    .end local v14           #nodes:Ljava/util/Queue;,"Ljava/util/Queue<Lorg/w3c/dom/Node;>;"
    .end local v18           #rootElement:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v16

    .line 157
    .local v16, pce:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v23, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 158
    .end local v16           #pce:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v19

    .line 159
    .local v19, sae:Lorg/xml/sax/SAXException;
    new-instance v23, Ljava/io/IOException;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 176
    .end local v19           #sae:Lorg/xml/sax/SAXException;
    .restart local v3       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7       #document:Lorg/w3c/dom/Document;
    .restart local v13       #node:Lorg/w3c/dom/Node;
    .restart local v14       #nodes:Ljava/util/Queue;,"Ljava/util/Queue<Lorg/w3c/dom/Node;>;"
    .restart local v18       #rootElement:Lorg/w3c/dom/Element;
    :cond_1
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 177
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v20

    .line 178
    .local v20, text:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_0

    .line 179
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/google/zxing/StringsResourceTranslator;->translateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 180
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x20

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x20

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v13, v0}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    .end local v13           #node:Lorg/w3c/dom/Node;
    .end local v20           #text:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v21

    .line 186
    .local v21, translateText:Lorg/w3c/dom/Node;
    const-string v23, "p"

    move-object/from16 v0, v23

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 187
    .local v15, paragraph:Lorg/w3c/dom/Node;
    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 188
    const-string v23, "body"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 189
    .local v2, body:Lorg/w3c/dom/Node;
    invoke-interface {v2, v15}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 193
    :try_start_1
    invoke-static {}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->newInstance()Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v17

    .line 202
    .local v17, registry:Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;
    const-string v23, "LS"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;->getDOMImplementation(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementation;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/ls/DOMImplementationLS;

    .line 203
    .local v12, impl:Lorg/w3c/dom/ls/DOMImplementationLS;
    invoke-interface {v12}, Lorg/w3c/dom/ls/DOMImplementationLS;->createLSSerializer()Lorg/w3c/dom/ls/LSSerializer;

    move-result-object v22

    .line 204
    .local v22, writer:Lorg/w3c/dom/ls/LSSerializer;
    invoke-virtual {v6}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v7, v1}, Lorg/w3c/dom/ls/LSSerializer;->writeToURI(Lorg/w3c/dom/Node;Ljava/lang/String;)Z

    .line 205
    return-void

    .line 194
    .end local v12           #impl:Lorg/w3c/dom/ls/DOMImplementationLS;
    .end local v17           #registry:Lorg/w3c/dom/bootstrap/DOMImplementationRegistry;
    .end local v22           #writer:Lorg/w3c/dom/ls/LSSerializer;
    :catch_2
    move-exception v5

    .line 195
    .local v5, cnfe:Ljava/lang/ClassNotFoundException;
    new-instance v23, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v23

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 196
    .end local v5           #cnfe:Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v11

    .line 197
    .local v11, ie:Ljava/lang/InstantiationException;
    new-instance v23, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v23

    invoke-direct {v0, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v23

    .line 198
    .end local v11           #ie:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v10

    .line 199
    .local v10, iae:Ljava/lang/IllegalAccessException;
    new-instance v23, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v23

    invoke-direct {v0, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v23
.end method

.method private static translateOneLanguage(Ljava/io/File;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 10
    .parameter "assetsDir"
    .parameter "language"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    .local p2, filesToTranslate:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "html-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .local v6, targetHtmlDir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 127
    new-instance v1, Ljava/io/File;

    const-string v8, "html-en"

    invoke-direct {v1, p0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    .local v1, englishHtmlDir:Ljava/io/File;
    const-string v8, "Translated by Google Translate."

    invoke-static {v8, p1}, Lcom/google/zxing/StringsResourceTranslator;->translateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, translationTextTranslated:Ljava/lang/String;
    new-instance v8, Lcom/google/zxing/HtmlAssetTranslator$3;

    invoke-direct {v8, p2}, Lcom/google/zxing/HtmlAssetTranslator$3;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v8}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 139
    .local v5, sourceFiles:[Ljava/io/File;
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 140
    .local v4, sourceFile:Ljava/io/File;
    invoke-static {p1, v6, v4, v7}, Lcom/google/zxing/HtmlAssetTranslator;->translateOneFile(Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    .end local v4           #sourceFile:Ljava/io/File;
    :cond_0
    return-void
.end method
