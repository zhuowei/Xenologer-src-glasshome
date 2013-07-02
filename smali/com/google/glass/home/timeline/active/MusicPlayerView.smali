.class public final Lcom/google/glass/home/timeline/active/MusicPlayerView;
.super Lcom/google/glass/timeline/active/ActiveItemView;
.source "MusicPlayerView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private albumCoverImageView:Landroid/widget/ImageView;

.field private handler:Landroid/os/Handler;

.field private playerArtistName:Lcom/google/glass/widget/TypophileTextView;

.field private playerCurrentTime:Lcom/google/glass/widget/TypophileTextView;

.field private playerDuration:Lcom/google/glass/widget/TypophileTextView;

.field private playerDurationLayout:Landroid/widget/LinearLayout;

.field private playerSongTitle:Lcom/google/glass/widget/TypophileTextView;

.field private playstate:I

.field private progressSlider:Lcom/google/glass/widget/SliderView;

.field private rccIntent:Landroid/app/PendingIntent;

.field private transportControlFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/glass/home/timeline/active/MusicPlayerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->MUSIC:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/active/ActiveItemView;-><init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->handler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method private formatTime(J)Ljava/lang/String;
    .locals 7
    .parameter "ms"

    .prologue
    .line 210
    long-to-float v3, p1

    const/high16 v4, 0x447a

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 211
    .local v2, totalSeconds:I
    div-int/lit8 v0, v2, 0x3c

    .line 212
    .local v0, minutes:I
    rem-int/lit8 v1, v2, 0x3c

    .line 213
    .local v1, seconds:I
    const-string v3, "%2d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private rccSupports(I)Z
    .locals 1
    .parameter "flag"

    .prologue
    .line 311
    iget v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->transportControlFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendMediaButtonClick(I)V
    .locals 8
    .parameter "keyCode"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 179
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->rccIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_0

    .line 180
    sget-object v3, Lcom/google/glass/home/timeline/active/MusicPlayerView;->TAG:Ljava/lang/String;

    const-string v4, "sendMediaButtonClick(): No client is currently registered"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v6, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 185
    .local v2, keyEvent:Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 189
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->rccIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2           #keyEvent:Landroid/view/KeyEvent;
    invoke-direct {v2, v7, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 196
    .restart local v2       #keyEvent:Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 199
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->rccIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    sget-object v3, Lcom/google/glass/home/timeline/active/MusicPlayerView;->TAG:Ljava/lang/String;

    const-string v4, "Error sending intent for media button up: "

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 190
    .end local v0           #e:Landroid/app/PendingIntent$CanceledException;
    :catch_1
    move-exception v0

    .line 191
    .restart local v0       #e:Landroid/app/PendingIntent$CanceledException;
    sget-object v3, Lcom/google/glass/home/timeline/active/MusicPlayerView;->TAG:Ljava/lang/String;

    const-string v4, "Error sending intent for media button down: "

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/google/glass/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setProgressColor(Landroid/widget/ProgressBar;I)V
    .locals 5
    .parameter "bar"
    .parameter "color"

    .prologue
    const/4 v4, 0x0

    .line 227
    const/16 v3, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    .line 228
    .local v2, roundedCorners:[F
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v2, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 232
    .local v1, progressDrawable:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 235
    .local v0, progress:Landroid/graphics/drawable/ClipDrawable;
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    return-void

    .line 227
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method


# virtual methods
.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v0

    sget v1, Lcom/google/glass/home/R$id;->musicplayer_menu_play:I

    if-ne v0, v1, :cond_0

    .line 117
    const/16 v0, 0x7e

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->sendMediaButtonClick(I)V

    .line 127
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v0

    sget v1, Lcom/google/glass/home/R$id;->musicplayer_menu_pause:I

    if-ne v0, v1, :cond_1

    .line 119
    const/16 v0, 0x7f

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->sendMediaButtonClick(I)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v0

    sget v1, Lcom/google/glass/home/R$id;->musicplayer_menu_next:I

    if-ne v0, v1, :cond_2

    .line 121
    const/16 v0, 0x57

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->sendMediaButtonClick(I)V

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v0

    sget v1, Lcom/google/glass/home/R$id;->musicplayer_menu_previous:I

    if-ne v0, v1, :cond_3

    .line 123
    const/16 v0, 0x58

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->sendMediaButtonClick(I)V

    goto :goto_0

    .line 125
    :cond_3
    sget-object v0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->TAG:Ljava/lang/String;

    const-string v1, "Unknown action. Ignoring."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onParametersChanged(Landroid/os/Bundle;)V
    .locals 8
    .parameter "params"

    .prologue
    .line 132
    sget-object v5, Lcom/google/glass/home/timeline/active/MusicPlayerView;->TAG:Ljava/lang/String;

    const-string v6, "onParametersChanged"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    const-string v5, "playstate"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    const-string v5, "playstate"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playstate:I

    .line 135
    const-string v5, "rccIntent"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    iput-object v5, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->rccIntent:Landroid/app/PendingIntent;

    .line 138
    :cond_0
    const-string v5, "artist"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 139
    const-string v5, "artist"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, artistName:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerArtistName:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v5, v0}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .end local v0           #artistName:Ljava/lang/String;
    :cond_1
    const-string v5, "title"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 151
    const-string v5, "title"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerSongTitle:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v5, v4}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .end local v4           #title:Ljava/lang/String;
    :cond_2
    const-string v5, "duration"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 156
    const-string v5, "duration"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 157
    .local v2, duration:J
    iget-object v5, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerDuration:Lcom/google/glass/widget/TypophileTextView;

    invoke-direct {p0, v2, v3}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->formatTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .end local v2           #duration:J
    :cond_3
    const-string v5, "artwork"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 161
    const-string v5, "artwork"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 162
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 165
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    const-string v5, "flags"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 166
    const-string v5, "flags"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->transportControlFlags:I

    .line 168
    :cond_5
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    sget-object v0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareOptionsMenu, playstate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playstate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    sget v0, Lcom/google/glass/home/R$menu;->musicplayer_menu:I

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->inflateFrom(I)V

    .line 83
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->rccSupports(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget v0, Lcom/google/glass/home/R$id;->musicplayer_menu_next:I

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/glass/widget/OptionMenu$Item;->setVisible(Z)V

    .line 89
    :goto_0
    invoke-direct {p0, v4}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->rccSupports(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    sget v0, Lcom/google/glass/home/R$id;->musicplayer_menu_previous:I

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/glass/widget/OptionMenu$Item;->setVisible(Z)V

    .line 95
    :goto_1
    iget v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playstate:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 96
    sget v0, Lcom/google/glass/home/R$id;->musicplayer_menu_play:I

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/OptionMenu$Item;->setVisible(Z)V

    .line 97
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->rccSupports(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    sget v0, Lcom/google/glass/home/R$id;->musicplayer_menu_pause:I

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/glass/widget/OptionMenu$Item;->setVisible(Z)V

    .line 111
    :goto_2
    return v4

    .line 86
    :cond_0
    sget v0, Lcom/google/glass/home/R$id;->musicplayer_menu_next:I

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/OptionMenu$Item;->setVisible(Z)V

    goto :goto_0

    .line 92
    :cond_1
    sget v0, Lcom/google/glass/home/R$id;->musicplayer_menu_previous:I

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/OptionMenu$Item;->setVisible(Z)V

    goto :goto_1

    .line 100
    :cond_2
    sget v0, Lcom/google/glass/home/R$id;->musicplayer_menu_pause:I

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/OptionMenu$Item;->setVisible(Z)V

    goto :goto_2

    .line 103
    :cond_3
    sget v0, Lcom/google/glass/home/R$id;->musicplayer_menu_pause:I

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/OptionMenu$Item;->setVisible(Z)V

    .line 104
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->rccSupports(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    sget v0, Lcom/google/glass/home/R$id;->musicplayer_menu_play:I

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/glass/widget/OptionMenu$Item;->setVisible(Z)V

    goto :goto_2

    .line 107
    :cond_4
    sget v0, Lcom/google/glass/home/R$id;->musicplayer_menu_play:I

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->findItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/glass/widget/OptionMenu$Item;->setVisible(Z)V

    goto :goto_2
.end method

.method public onRemove()V
    .locals 3

    .prologue
    .line 172
    invoke-super {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->onRemove()V

    .line 173
    sget-object v0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->TAG:Ljava/lang/String;

    const-string v1, "onRemove"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method protected onViewInflated()V
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/google/glass/home/R$id;->cover_image:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->albumCoverImageView:Landroid/widget/ImageView;

    .line 68
    sget v0, Lcom/google/glass/home/R$id;->song_title:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerSongTitle:Lcom/google/glass/widget/TypophileTextView;

    .line 69
    sget v0, Lcom/google/glass/home/R$id;->artist_name:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerArtistName:Lcom/google/glass/widget/TypophileTextView;

    .line 71
    sget v0, Lcom/google/glass/home/R$id;->song_time:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerCurrentTime:Lcom/google/glass/widget/TypophileTextView;

    .line 72
    sget v0, Lcom/google/glass/home/R$id;->duration_layout:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerDurationLayout:Landroid/widget/LinearLayout;

    .line 73
    sget v0, Lcom/google/glass/home/R$id;->progress_slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->progressSlider:Lcom/google/glass/widget/SliderView;

    .line 74
    sget v0, Lcom/google/glass/home/R$id;->song_duration:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/MusicPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerDuration:Lcom/google/glass/widget/TypophileTextView;

    .line 75
    return-void
.end method

.method public provideContentView()I
    .locals 1

    .prologue
    .line 62
    sget v0, Lcom/google/glass/home/R$layout;->musicplayer:I

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->albumCoverImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 260
    return-void
.end method

.method public showOrHideProgressSlider(Z)V
    .locals 2
    .parameter "showFlag"

    .prologue
    .line 220
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/MusicPlayerView;->playerDurationLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    return-void

    .line 220
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public startUpdateProgressSlider()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public stopUpdateProgressSlider()V
    .locals 0

    .prologue
    .line 304
    return-void
.end method
