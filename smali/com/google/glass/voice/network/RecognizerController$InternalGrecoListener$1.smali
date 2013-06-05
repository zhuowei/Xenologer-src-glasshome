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
    .line 634
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    iput-object p2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 638
    new-instance v13, Lcom/google/glass/util/SearchQueryBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->val$query:Ljava/lang/String;

    invoke-direct {v13, v15}, Lcom/google/glass/util/SearchQueryBuilder;-><init>(Ljava/lang/String;)V

    .line 639
    .local v13, sqb:Lcom/google/glass/util/SearchQueryBuilder;
    invoke-virtual {v13}, Lcom/google/glass/util/SearchQueryBuilder;->addTransportParams()V

    .line 640
    const-string v15, "persist.search.server"

    const-string v16, ""

    invoke-static/range {v15 .. v16}, Lcom/google/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 641
    .local v12, sandboxId:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 642
    invoke-virtual {v13, v12}, Lcom/google/glass/util/SearchQueryBuilder;->setSandboxHost(Ljava/lang/String;)V

    .line 646
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 647
    .local v1, client:Lorg/apache/http/client/HttpClient;
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v13}, Lcom/google/glass/util/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 648
    .local v10, request:Lorg/apache/http/client/methods/HttpGet;
    new-instance v15, Lcom/google/glass/util/SearchQueryBuilder$LocationHelperImpl;

    invoke-direct {v15}, Lcom/google/glass/util/SearchQueryBuilder$LocationHelperImpl;-><init>()V

    invoke-virtual {v13, v15}, Lcom/google/glass/util/SearchQueryBuilder;->getHttpHeaders(Lcom/google/android/speech/helper/SpeechLocationHelper;)Ljava/util/Map;

    move-result-object v6

    .line 650
    .local v6, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 651
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 654
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Sending GWS request: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v13}, Lcom/google/glass/util/SearchQueryBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :try_start_0
    invoke-interface {v1, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 659
    .local v11, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    .line 660
    .local v14, status:Lorg/apache/http/StatusLine;
    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    const/16 v16, 0xc8

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    .line 661
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Invalid response from server: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #status:Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v3

    .line 679
    .local v3, e:Ljava/io/IOException;
    :try_start_1
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Exception sending GWS request"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    #getter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;
    invoke-static {v15}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$800(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Lcom/google/glass/voice/network/VoiceSearchUi;

    move-result-object v15

    invoke-interface {v15}, Lcom/google/glass/voice/network/VoiceSearchUi;->showDone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 682
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    const/16 v16, 0x0

    #setter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z
    invoke-static/range {v15 .. v16}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$902(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Z)Z

    .line 684
    .end local v3           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 665
    .restart local v11       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #status:Lorg/apache/http/StatusLine;
    :cond_2
    :try_start_2
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 666
    .local v8, is:Ljava/io/InputStream;
    new-instance v15, Ljava/io/InputStreamReader;

    sget-object v16, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v16

    invoke-direct {v15, v8, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v15}, Lcom/google/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v5

    .line 668
    .local v5, fullResponse:Ljava/lang/String;
    new-instance v9, Lcom/google/glass/voice/network/PinholePage;

    invoke-direct {v9}, Lcom/google/glass/voice/network/PinholePage;-><init>()V

    .line 669
    .local v9, pinholePage:Lcom/google/glass/voice/network/PinholePage;
    invoke-virtual {v9, v5}, Lcom/google/glass/voice/network/PinholePage;->updateDirectlyFromFullGwsResponse(Ljava/lang/String;)V

    .line 670
    const-string v15, "ans0"

    invoke-virtual {v9, v15}, Lcom/google/glass/voice/network/PinholePage;->getPinholeDocumentByType(Ljava/lang/String;)Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    move-result-object v2

    .line 672
    .local v2, doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    if-eqz v2, :cond_3

    .line 673
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Got a doc from the pinhole results."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    #getter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;
    invoke-static {v15}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$800(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Lcom/google/glass/voice/network/VoiceSearchUi;

    move-result-object v15

    invoke-virtual {v2}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/google/glass/voice/network/VoiceSearchUi;->onHtmlAnswerCardResult(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 682
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    const/16 v16, 0x0

    #setter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z
    invoke-static/range {v15 .. v16}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$902(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Z)Z

    goto :goto_1

    .line 676
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    #getter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;
    invoke-static {v15}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$800(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Lcom/google/glass/voice/network/VoiceSearchUi;

    move-result-object v15

    invoke-interface {v15}, Lcom/google/glass/voice/network/VoiceSearchUi;->showDone()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 682
    .end local v2           #doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    .end local v5           #fullResponse:Ljava/lang/String;
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #pinholePage:Lcom/google/glass/voice/network/PinholePage;
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #status:Lorg/apache/http/StatusLine;
    :catchall_0
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$1;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    #setter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->sendingThroughGws:Z
    invoke-static/range {v16 .. v17}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$902(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Z)Z

    throw v15
.end method
