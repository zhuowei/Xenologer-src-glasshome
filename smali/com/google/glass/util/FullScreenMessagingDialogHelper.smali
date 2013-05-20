.class public Lcom/google/glass/util/FullScreenMessagingDialogHelper;
.super Ljava/lang/Object;
.source "FullScreenMessagingDialogHelper.java"


# static fields
.field private static final ACTION_SHOW_MESSAGE:Ljava/lang/String; = "com.google.glass.action.MESSAGE"

#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_ICON:I = 0x0

.field private static final EXTRA_ICON:Ljava/lang/String; = "ICON"

.field private static final EXTRA_MESSAGE:Ljava/lang/String; = "MESSAGE"

.field private static final EXTRA_SUB_MESSAGE:Ljava/lang/String; = "SUB_MESSAGE"

.field private static final EXTRA_TURN_SCREEN_ON:Ljava/lang/String; = "TURN_SCREEN_ON"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/google/glass/common/R$drawable;->ic_exclamation_big:I

    sput v0, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->DEFAULT_ICON:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->context:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private getDefaultIcon()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 136
    iget-object v1, p0, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/common/R$drawable;->ic_exclamation_big:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 138
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "icon"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 128
    sget v1, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->DEFAULT_ICON:I

    if-ne v1, p1, :cond_0

    .line 129
    sget p1, Lcom/google/glass/common/R$drawable;->ic_exclamation_big:I

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 132
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getIconFromIntent(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "intent"

    .prologue
    .line 104
    if-nez p1, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 107
    :cond_1
    const-string v1, "ICON"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 108
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessageFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "intent"

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MESSAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubMessageFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "intent"

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "SUB_MESSAGE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTurnScreenOnFromIntent(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 119
    if-nez p1, :cond_0

    .line 122
    :goto_0
    return v0

    :cond_0
    const-string v1, "TURN_SCREEN_ON"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public showFullScreenMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 44
    sget v0, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->DEFAULT_ICON:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->showFullScreenMessage(Ljava/lang/String;IZ)V

    .line 45
    return-void
.end method

.method public showFullScreenMessage(Ljava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "icon"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->showFullScreenMessage(Ljava/lang/String;IZ)V

    .line 55
    return-void
.end method

.method public showFullScreenMessage(Ljava/lang/String;IZ)V
    .locals 1
    .parameter "message"
    .parameter "icon"
    .parameter "turnScreenOn"

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->showFullScreenMessage(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 63
    return-void
.end method

.method public showFullScreenMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "message"
    .parameter "subMessage"

    .prologue
    .line 49
    sget v0, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->DEFAULT_ICON:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->showFullScreenMessage(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 50
    return-void
.end method

.method public showFullScreenMessage(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 3
    .parameter "message"
    .parameter "subMessage"
    .parameter "icon"
    .parameter "turnScreenOn"

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 72
    const-string v1, "MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const-string v1, "SUB_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    :cond_0
    const-string v1, "ICON"

    invoke-virtual {p0, p3}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    const-string v1, "TURN_SCREEN_ON"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method
