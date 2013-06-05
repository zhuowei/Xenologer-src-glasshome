.class Lcom/google/glass/home/search/VoiceSearchResultsActivity$1;
.super Ljava/lang/Object;
.source "VoiceSearchResultsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/search/VoiceSearchResultsActivity;->onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

.field final synthetic val$networkUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/home/search/VoiceSearchResultsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$1;->this$0:Lcom/google/glass/home/search/VoiceSearchResultsActivity;

    iput-object p2, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$1;->val$networkUri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 361
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->getSharedInstance()Lcom/google/glass/voice/network/translate/NetworkTts;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/search/VoiceSearchResultsActivity$1;->val$networkUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/translate/NetworkTts;->requestTtsAndPlay(Ljava/lang/String;)Z

    .line 362
    return-void
.end method
