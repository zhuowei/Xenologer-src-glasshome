.class public final Lcom/google/glass/home/settings/ViewLicensesActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "ViewLicensesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader;
    }
.end annotation


# static fields
.field private static final ACTIVITY_NAME_LIGHTCYCLE:Ljava/lang/String; = "com.google.android.apps.lightcycle.glass.GlassPanoramaViewActivity"

.field private static final DEFAULT_LICENSE_PATH:Ljava/lang/String; = "/system/etc/NOTICE.html.gz"

.field private static final FLING_VELOCITY_SCALE:I = 0x32

.field private static final LIGHTCYCLE_EXTRA_REQUIRED_STRING:Ljava/lang/String; = "required_string"

.field private static final MENU_ID_MEET_THE_TEAM:I = 0x1

.field private static final MIN_FLING_VELOCITY:I = 0xc

.field private static final PACKAGE_NAME_LIGHTCYCLE:Ljava/lang/String; = "com.google.android.apps.lightcycle.glass"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lastAccumulatorX:F

.field private licenseHasLoaded:Z

.field private licenseMessage:Lcom/google/glass/widget/TypophileTextView;

.field private licenseSwitcher:Landroid/widget/ViewSwitcher;

.field private licenseWebView:Landroid/webkit/WebView;

.field private lightcycleIntent:Landroid/content/Intent;

.field private progressSlider:Lcom/google/glass/widget/SliderView;

.field private swipeDelta:F

.field private tapCount:I

.field private tapSounds:[Lcom/google/glass/sound/SoundManager$SoundId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/glass/home/settings/ViewLicensesActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/settings/ViewLicensesActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 68
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/glass/sound/SoundManager$SoundId;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE1:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE2:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE3:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE4:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE5:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE6:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE7:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE8:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SCALE_RESOLVE:Lcom/google/glass/sound/SoundManager$SoundId;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->tapSounds:[Lcom/google/glass/sound/SoundManager$SoundId;

    .line 119
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/glass/home/settings/ViewLicensesActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/home/settings/ViewLicensesActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/glass/home/settings/ViewLicensesActivity;->showHtml(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/home/settings/ViewLicensesActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/glass/home/settings/ViewLicensesActivity;->showError()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/home/settings/ViewLicensesActivity;)Landroid/widget/ViewSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->licenseSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/glass/home/settings/ViewLicensesActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->licenseHasLoaded:Z

    return p1
.end method

.method private showError()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->licenseMessage:Lcom/google/glass/widget/TypophileTextView;

    sget v1, Lcom/google/glass/home/R$string;->deviceinfo_licenses_error:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TypophileTextView;->setText(I)V

    .line 202
    iget-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 203
    iget-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->licenseSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 204
    return-void
.end method

.method private showHtml(Ljava/lang/String;)V
    .locals 7
    .parameter "html"

    .prologue
    .line 182
    const-string v0, "<head>.*</head>"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 183
    .local v6, matcher:Ljava/util/regex/Matcher;
    const-string v0, "<head><link rel=\"stylesheet\" type=\"text/css\" href=\"licenses.css\" /></head>"

    invoke-virtual {v6, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->licenseWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/glass/home/settings/ViewLicensesActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/settings/ViewLicensesActivity$1;-><init>(Lcom/google/glass/home/settings/ViewLicensesActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 196
    iget-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->licenseWebView:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method


# virtual methods
.method public onConfirm()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 248
    iget-boolean v1, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->licenseHasLoaded:Z

    if-nez v1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/google/glass/home/settings/ViewLicensesActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 260
    :goto_0
    return v0

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/settings/ViewLicensesActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->tapSounds:[Lcom/google/glass/sound/SoundManager$SoundId;

    iget v3, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->tapCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->tapCount:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 255
    iget v1, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->tapCount:I

    iget-object v2, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->tapSounds:[Lcom/google/glass/sound/SoundManager$SoundId;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 256
    iput v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->tapCount:I

    .line 257
    invoke-virtual {p0}, Lcom/google/glass/home/settings/ViewLicensesActivity;->openOptionsMenu()V

    .line 260
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    sget v0, Lcom/google/glass/home/R$id;->license_switcher:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/ViewLicensesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->licenseSwitcher:Landroid/widget/ViewSwitcher;

    .line 91
    sget v0, Lcom/google/glass/home/R$id;->license_message:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/ViewLicensesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->licenseMessage:Lcom/google/glass/widget/TypophileTextView;

    .line 92
    sget v0, Lcom/google/glass/home/R$id;->license_web_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/ViewLicensesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->licenseWebView:Landroid/webkit/WebView;

    .line 93
    sget v0, Lcom/google/glass/home/R$id;->license_slider:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/ViewLicensesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    .line 97
    iget-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->licenseWebView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 98
    iget-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->licenseWebView:Landroid/webkit/WebView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 100
    iput-boolean v3, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->licenseHasLoaded:Z

    .line 101
    new-instance v0, Lcom/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader;

    const-string v1, "/system/etc/NOTICE.html.gz"

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader;-><init>(Lcom/google/glass/home/settings/ViewLicensesActivity;Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/settings/ViewLicensesActivity$LicenseFileLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    iget-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->progressSlider:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->startIndeterminate()V

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->lightcycleIntent:Landroid/content/Intent;

    .line 105
    iget-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->lightcycleIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.apps.lightcycle.glass"

    const-string v2, "com.google.android.apps.lightcycle.glass.GlassPanoramaViewActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->lightcycleIntent:Landroid/content/Intent;

    const-string v1, "required_string"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 230
    sget v0, Lcom/google/glass/home/R$string;->meet_the_team:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/ViewLicensesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$drawable;->ic_sphere_pano_medium:I

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    .line 232
    return v2
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 3
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 268
    if-nez p1, :cond_0

    iget v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->swipeDelta:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4140

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->licenseWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->swipeDelta:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->flingScroll(II)V

    .line 271
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->swipeDelta:F

    .line 272
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassActivity;->onFingerCountChanged(IZ)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 237
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 238
    iget-object v1, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->lightcycleIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/google/glass/home/settings/ViewLicensesActivity;->startActivity(Landroid/content/Intent;)V

    .line 239
    invoke-virtual {p0}, Lcom/google/glass/home/settings/ViewLicensesActivity;->finish()V

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 5
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipeX"
    .parameter "numSwipeY"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 210
    cmpl-float v1, p2, v2

    if-nez v1, :cond_0

    .line 211
    iput v2, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->lastAccumulatorX:F

    .line 225
    :goto_0
    return v4

    .line 216
    :cond_0
    iget v1, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->lastAccumulatorX:F

    sub-float v1, p2, v1

    iput v1, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->swipeDelta:F

    .line 217
    iput p2, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->lastAccumulatorX:F

    .line 218
    iget-object v1, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->licenseWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->swipeDelta:F

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 221
    .local v0, newScrollY:I
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->licenseWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3, v0}, Landroid/webkit/WebView;->scrollTo(II)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResume()V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity;->tapCount:I

    .line 114
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/google/glass/home/R$layout;->view_licenses_activity:I

    return v0
.end method
