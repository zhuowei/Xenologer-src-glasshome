.class Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;
.super Ljava/lang/Object;
.source "RecognizerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendGwsRequest(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    iput-object p2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 648
    new-instance v20, Lcom/google/glass/voice/network/SearchQueryBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->val$query:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/glass/voice/network/SearchQueryBuilder;-><init>(Ljava/lang/String;)V

    .line 649
    .local v20, sqb:Lcom/google/glass/voice/network/SearchQueryBuilder;
    invoke-virtual/range {v20 .. v20}, Lcom/google/glass/voice/network/SearchQueryBuilder;->addTransportParams()V

    .line 650
    const-string v22, "persist.search.server"

    const-string v23, ""

    invoke-static/range {v22 .. v23}, Lcom/google/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 651
    .local v19, sandboxId:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 652
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SearchQueryBuilder;->setSandboxHost(Ljava/lang/String;)V

    .line 656
    :cond_0
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 657
    .local v5, client:Lorg/apache/http/client/HttpClient;
    new-instance v17, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v20 .. v20}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 660
    .local v17, request:Lorg/apache/http/client/methods/HttpGet;
    new-instance v22, Lcom/google/glass/voice/network/SearchQueryBuilder$LocationHelperImpl;

    invoke-direct/range {v22 .. v22}, Lcom/google/glass/voice/network/SearchQueryBuilder$LocationHelperImpl;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SearchQueryBuilder;->getHttpHeaders(Lcom/google/android/speech/helper/SpeechLocationHelper;)Ljava/util/Map;

    move-result-object v12

    .line 662
    .local v12, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 663
    .local v9, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 666
    .end local v9           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    move-object/from16 v22, v0

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->cookies:Lcom/google/glass/voice/network/Cookies;
    invoke-static/range {v22 .. v22}, Lcom/google/glass/voice/network/RecognizerController;->access$800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/Cookies;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/google/glass/voice/network/Cookies;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 667
    .local v4, beforeCookie:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 668
    const-string v22, "Cookie"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_2
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/util/FormattingLogger;

    move-result-object v22

    const-string v23, "Sending GWS request: %s"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v20, v24, v25

    invoke-interface/range {v22 .. v24}, Lcom/google/glass/util/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    :try_start_0
    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 676
    .local v18, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    .line 677
    .local v21, status:Lorg/apache/http/StatusLine;
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v22

    const/16 v23, 0xc8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 678
    new-instance v22, Ljava/io/IOException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Invalid response from server: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    .end local v21           #status:Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v8

    .line 707
    .local v8, e:Ljava/io/IOException;
    :try_start_1
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/util/FormattingLogger;

    move-result-object v22

    const-string v23, "Exception sending GWS request"

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v8, v1, v2}, Lcom/google/glass/util/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    move-object/from16 v22, v0

    #getter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;
    invoke-static/range {v22 .. v22}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$900(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Lcom/google/glass/voice/network/VoiceInputCallback;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/google/glass/voice/network/VoiceInputCallback;->showDone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z
    invoke-static/range {v22 .. v23}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$1002(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Z)Z

    .line 712
    .end local v8           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 682
    .restart local v18       #response:Lorg/apache/http/HttpResponse;
    .restart local v21       #status:Lorg/apache/http/StatusLine;
    :cond_3
    :try_start_2
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    .line 683
    .local v3, allHeaders:[Lorg/apache/http/Header;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v6, cookieList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    array-length v0, v3

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v13, v0, :cond_5

    .line 685
    aget-object v11, v3, v13

    .line 686
    .local v11, h:Lorg/apache/http/Header;
    invoke-interface {v11}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "Set-Cookie"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 687
    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 690
    .end local v11           #h:Lorg/apache/http/Header;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->this$0:Lcom/google/glass/voice/network/RecognizerController;

    move-object/from16 v22, v0

    #getter for: Lcom/google/glass/voice/network/RecognizerController;->cookies:Lcom/google/glass/voice/network/Cookies;
    invoke-static/range {v22 .. v22}, Lcom/google/glass/voice/network/RecognizerController;->access$800(Lcom/google/glass/voice/network/RecognizerController;)Lcom/google/glass/voice/network/Cookies;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Lcom/google/glass/voice/network/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Lcom/google/glass/voice/network/Cookies;->setCookiesFromSetCookieHeaders(Ljava/lang/String;Ljava/util/List;)V

    .line 693
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    .line 694
    .local v15, is:Ljava/io/InputStream;
    new-instance v22, Ljava/io/InputStreamReader;

    sget-object v23, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v15, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static/range {v22 .. v22}, Lcom/google/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v10

    .line 696
    .local v10, fullResponse:Ljava/lang/String;
    new-instance v16, Lcom/google/glass/voice/network/PinholePage;

    invoke-direct/range {v16 .. v16}, Lcom/google/glass/voice/network/PinholePage;-><init>()V

    .line 697
    .local v16, pinholePage:Lcom/google/glass/voice/network/PinholePage;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/google/glass/voice/network/PinholePage;->updateDirectlyFromFullGwsResponse(Ljava/lang/String;)V

    .line 698
    const-string v22, "ans0"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/PinholePage;->getPinholeDocumentByType(Ljava/lang/String;)Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    move-result-object v7

    .line 700
    .local v7, doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    if-eqz v7, :cond_6

    .line 701
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Lcom/google/glass/util/FormattingLogger;

    move-result-object v22

    const-string v23, "Got a doc from the pinhole results."

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Lcom/google/glass/util/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    move-object/from16 v22, v0

    #getter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;
    invoke-static/range {v22 .. v22}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$900(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Lcom/google/glass/voice/network/VoiceInputCallback;

    move-result-object v22

    invoke-virtual {v7}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Lcom/google/glass/voice/network/VoiceInputCallback;->onHtmlAnswerCardResult(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 710
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    #setter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z
    invoke-static/range {v22 .. v23}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$1002(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Z)Z

    goto/16 :goto_1

    .line 704
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    move-object/from16 v22, v0

    #getter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceInputCallback:Lcom/google/glass/voice/network/VoiceInputCallback;
    invoke-static/range {v22 .. v22}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$900(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Lcom/google/glass/voice/network/VoiceInputCallback;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/google/glass/voice/network/VoiceInputCallback;->showDone()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 710
    .end local v3           #allHeaders:[Lorg/apache/http/Header;
    .end local v6           #cookieList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    .end local v10           #fullResponse:Ljava/lang/String;
    .end local v13           #i:I
    .end local v15           #is:Ljava/io/InputStream;
    .end local v16           #pinholePage:Lcom/google/glass/voice/network/PinholePage;
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    .end local v21           #status:Lorg/apache/http/StatusLine;
    :catchall_0
    move-exception v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z
    invoke-static/range {v23 .. v24}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$1002(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Z)Z

    throw v22
.end method
