.class public Lcom/google/glass/home/search/SoundSearchResultsActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "SoundSearchResultsActivity.java"


# static fields
.field public static final EXTRA_SOUND_SEARCH_RESPONSE_BYTES:Ljava/lang/String; = "soundSearchResponse"


# instance fields
.field private albumFooter:Lcom/google/glass/widget/TypophileTextView;

.field private answerView:Lcom/google/glass/widget/DynamicSizeTextView;

.field private handler:Landroid/os/Handler;

.field private imageFrame:Landroid/view/View;

.field private imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/search/SoundSearchResultsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/glass/home/search/SoundSearchResultsActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/search/SoundSearchResultsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/glass/home/search/SoundSearchResultsActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/search/SoundSearchResultsActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/home/search/SoundSearchResultsActivity;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 49
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResume()V

    .line 51
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/google/glass/home/search/SoundSearchResultsActivity;->handler:Landroid/os/Handler;

    .line 53
    invoke-virtual {p0}, Lcom/google/glass/home/search/SoundSearchResultsActivity;->getContentView()Landroid/view/View;

    move-result-object v2

    .line 54
    .local v2, content:Landroid/view/View;
    sget v7, Lcom/google/glass/home/R$id;->left_image_frame:I

    invoke-virtual {p0, v7}, Lcom/google/glass/home/search/SoundSearchResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/google/glass/home/search/SoundSearchResultsActivity;->imageFrame:Landroid/view/View;

    .line 55
    iget-object v7, p0, Lcom/google/glass/home/search/SoundSearchResultsActivity;->imageFrame:Landroid/view/View;

    sget v8, Lcom/google/glass/home/R$id;->image:I

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/google/glass/home/search/SoundSearchResultsActivity;->imageView:Landroid/widget/ImageView;

    .line 56
    sget v7, Lcom/google/glass/home/R$id;->answer:I

    invoke-virtual {p0, v7}, Lcom/google/glass/home/search/SoundSearchResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object v7, p0, Lcom/google/glass/home/search/SoundSearchResultsActivity;->answerView:Lcom/google/glass/widget/DynamicSizeTextView;

    .line 57
    sget v7, Lcom/google/glass/home/R$id;->answer_attribution:I

    invoke-virtual {p0, v7}, Lcom/google/glass/home/search/SoundSearchResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/glass/widget/TypophileTextView;

    iput-object v7, p0, Lcom/google/glass/home/search/SoundSearchResultsActivity;->albumFooter:Lcom/google/glass/widget/TypophileTextView;

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/home/search/SoundSearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "soundSearchResponse"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->parseFrom([B)Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 68
    .local v6, soundSearchResponse:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    invoke-virtual {v6}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->getResultCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/google/glass/home/search/SoundSearchResultsActivity;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "No sound search results in response"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v6           #soundSearchResponse:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v3

    .line 64
    .local v3, e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    invoke-virtual {p0}, Lcom/google/glass/home/search/SoundSearchResultsActivity;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Error parsing sound search response proto"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 73
    .end local v3           #e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v6       #soundSearchResponse:Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;
    :cond_1
    invoke-virtual {v6, v11}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->getResult(I)Lcom/google/audio/ears/proto/EarsService$EarsResult;

    move-result-object v4

    .line 76
    .local v4, earsResult:Lcom/google/audio/ears/proto/EarsService$EarsResult;
    invoke-virtual {v6, v11}, Lcom/google/audio/ears/proto/EarsService$EarsResultsResponse;->getResult(I)Lcom/google/audio/ears/proto/EarsService$EarsResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getMusicResult()Lcom/google/audio/ears/proto/EarsService$MusicResult;

    move-result-object v5

    .line 77
    .local v5, musicResult:Lcom/google/audio/ears/proto/EarsService$MusicResult;
    if-nez v5, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/google/glass/home/search/SoundSearchResultsActivity;->getTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "No music result in sound search result"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 89
    .local v1, builder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v5}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getTrack()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 92
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v5}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getArtist()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    .local v0, artist:Landroid/text/SpannableString;
    new-instance v7, Landroid/text/style/TextAppearanceSpan;

    sget v8, Lcom/google/glass/common/R$style;->OverlayGrayText:I

    invoke-direct {v7, p0, v8}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v8

    const/16 v9, 0x11

    invoke-virtual {v0, v7, v11, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 95
    const-string v7, "\n"

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 96
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 98
    iget-object v7, p0, Lcom/google/glass/home/search/SoundSearchResultsActivity;->answerView:Lcom/google/glass/widget/DynamicSizeTextView;

    invoke-virtual {v7, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v7, p0, Lcom/google/glass/home/search/SoundSearchResultsActivity;->albumFooter:Lcom/google/glass/widget/TypophileTextView;

    sget v8, Lcom/google/glass/home/R$string;->sound_search_album_footer:I

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->getAlbum()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/google/glass/home/search/SoundSearchResultsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v5}, Lcom/google/audio/ears/proto/EarsService$MusicResult;->hasAlbumArtUrl()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 105
    new-instance v7, Lcom/google/glass/home/search/SoundSearchResultsActivity$1;

    invoke-direct {v7, p0, v5}, Lcom/google/glass/home/search/SoundSearchResultsActivity$1;-><init>(Lcom/google/glass/home/search/SoundSearchResultsActivity;Lcom/google/audio/ears/proto/EarsService$MusicResult;)V

    new-array v8, v11, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Lcom/google/glass/home/search/SoundSearchResultsActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    :cond_3
    invoke-virtual {v4}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->hasTtsResponse()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 130
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v7

    invoke-virtual {v4}, Lcom/google/audio/ears/proto/EarsService$EarsResult;->getTtsResponse()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/glass/home/HomeApplication;->speakText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 136
    sget v0, Lcom/google/glass/home/R$layout;->voice_search_text_response_answer:I

    return v0
.end method
