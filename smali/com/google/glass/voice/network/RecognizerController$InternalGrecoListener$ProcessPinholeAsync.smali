.class Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;
.super Landroid/os/AsyncTask;
.source "RecognizerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessPinholeAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/speech/s3/PinholeStream$PinholeOutput;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

.field private volatile isFinished:Z

.field pinholePage:Lcom/google/glass/voice/network/PinholePage;

.field queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/s3/PinholeStream$PinholeOutput;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)V
    .locals 1
    .parameter

    .prologue
    .line 689
    iput-object p1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->isFinished:Z

    .line 691
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    .line 692
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->queue:Ljava/util/List;

    .line 693
    new-instance v0, Lcom/google/glass/voice/network/PinholePage;

    invoke-direct {v0}, Lcom/google/glass/voice/network/PinholePage;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Lcom/google/glass/voice/network/RecognizerController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 689
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;-><init>(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)V

    return-void
.end method

.method private handleFinishedWithNoDoc()V
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    const/4 v1, 0x0

    #setter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->parsingPinholeResults:Z
    invoke-static {v0, v1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$1002(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Z)Z

    .line 745
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    #getter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;
    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$800(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Lcom/google/glass/voice/network/VoiceSearchUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/network/VoiceSearchUi;->showDone()V

    .line 746
    return-void
.end method


# virtual methods
.method public addPinholeOutput(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    .locals 1
    .parameter "output"

    .prologue
    .line 719
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    #getter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->parsingPinholeResults:Z
    invoke-static {v0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$1000(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->queue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 689
    check-cast p1, [Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->doInBackground([Lcom/google/speech/s3/PinholeStream$PinholeOutput;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/google/speech/s3/PinholeStream$PinholeOutput;)Ljava/lang/Void;
    .locals 7
    .parameter "outputs"

    .prologue
    .line 697
    move-object v0, p1

    .local v0, arr$:[Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 698
    .local v4, pinholeOutput:Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    iget-object v5, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->queue:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 702
    .end local v4           #pinholeOutput:Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    :cond_0
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    #getter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->parsingPinholeResults:Z
    invoke-static {v5}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$1000(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 703
    invoke-virtual {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->processQueue()V

    .line 704
    const-wide/16 v5, 0x5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 706
    :catch_0
    move-exception v1

    .line 708
    .local v1, e:Ljava/lang/InterruptedException;
    iget-object v5, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    const/4 v6, 0x0

    #setter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->parsingPinholeResults:Z
    invoke-static {v5, v6}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$1002(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Z)Z

    .line 710
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method

.method public onDone()V
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->isFinished:Z

    .line 716
    return-void
.end method

.method public processQueue()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 725
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->queue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    if-eqz v1, :cond_2

    .line 726
    :cond_0
    iget-boolean v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->isFinished:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    if-nez v1, :cond_1

    .line 728
    invoke-direct {p0}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->handleFinishedWithNoDoc()V

    .line 741
    :cond_1
    :goto_0
    return-void

    .line 732
    :cond_2
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->queue:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .line 733
    .local v0, pinholeOutput:Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/network/PinholePage;->update(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V

    .line 734
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    const-string v2, "ans0"

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/network/PinholePage;->getPinholeDocumentByType(Ljava/lang/String;)Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    .line 735
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    if-eqz v1, :cond_1

    .line 736
    invoke-static {}, Lcom/google/glass/voice/network/RecognizerController;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Got a doc from the pinhole results."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    #getter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->voiceSearchUi:Lcom/google/glass/voice/network/VoiceSearchUi;
    invoke-static {v1}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$800(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;)Lcom/google/glass/voice/network/VoiceSearchUi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    invoke-virtual {v2}, Lcom/google/glass/voice/network/PinholePage$PinholeDocument;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/glass/voice/network/VoiceSearchUi;->onHtmlAnswerCardResult(Ljava/lang/String;)V

    .line 738
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->pinholePage:Lcom/google/glass/voice/network/PinholePage;

    .line 739
    iget-object v1, p0, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener$ProcessPinholeAsync;->this$1:Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;

    #setter for: Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->parsingPinholeResults:Z
    invoke-static {v1, v3}, Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;->access$1002(Lcom/google/glass/voice/network/RecognizerController$InternalGrecoListener;Z)Z

    goto :goto_0
.end method
