.class Lcom/google/glass/home/search/SoundSearchResultsActivity$1;
.super Landroid/os/AsyncTask;
.source "SoundSearchResultsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/search/SoundSearchResultsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/search/SoundSearchResultsActivity;

.field final synthetic val$musicResult:Lcom/google/audio/ears/proto/EarsService$MusicResult;


# direct methods
.method constructor <init>(Lcom/google/glass/home/search/SoundSearchResultsActivity;Lcom/google/audio/ears/proto/EarsService$MusicResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/glass/home/search/SoundSearchResultsActivity$1;->this$0:Lcom/google/glass/home/search/SoundSearchResultsActivity;

    iput-object p2, p0, Lcom/google/glass/home/search/SoundSearchResultsActivity$1;->val$musicResult:Lcom/google/audio/ears/proto/EarsService$MusicResult;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "params"

    .prologue
    .line 109
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/google/glass/home/search/SoundSearchResultsActivity$1;->val$musicResult:Lcom/google/audio/ears/proto/EarsService$MusicResult;

    invoke-virtual {v2}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 116
    :goto_0
    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Ljava/net/MalformedURLException;
    iget-object v1, p0, Lcom/google/glass/home/search/SoundSearchResultsActivity$1;->this$0:Lcom/google/glass/home/search/SoundSearchResultsActivity;

    #calls: Lcom/google/glass/home/search/SoundSearchResultsActivity;->getTag()Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/home/search/SoundSearchResultsActivity;->access$000(Lcom/google/glass/home/search/SoundSearchResultsActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Malformed album art URL"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .end local v0           #e:Ljava/net/MalformedURLException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    .line 114
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/glass/home/search/SoundSearchResultsActivity$1;->this$0:Lcom/google/glass/home/search/SoundSearchResultsActivity;

    #calls: Lcom/google/glass/home/search/SoundSearchResultsActivity;->getTag()Ljava/lang/String;
    invoke-static {v1}, Lcom/google/glass/home/search/SoundSearchResultsActivity;->access$100(Lcom/google/glass/home/search/SoundSearchResultsActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error loading album art"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/search/SoundSearchResultsActivity$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/glass/home/search/SoundSearchResultsActivity$1;->this$0:Lcom/google/glass/home/search/SoundSearchResultsActivity;

    #getter for: Lcom/google/glass/home/search/SoundSearchResultsActivity;->imageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/google/glass/home/search/SoundSearchResultsActivity;->access$200(Lcom/google/glass/home/search/SoundSearchResultsActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/home/search/SoundSearchResultsActivity$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
