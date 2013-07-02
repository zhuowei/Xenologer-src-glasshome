.class public Lcom/google/glass/home/timeline/FilteredEntityCard;
.super Lcom/google/glass/horizontalscroll/FrameLayoutCard;
.source "FilteredEntityCard.java"


# instance fields
.field private final entity:Lcom/google/googlex/glass/common/proto/Entity;

.field private imageView:Landroid/widget/ImageView;

.field private previouslyFocused:Z

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;Landroid/graphics/Bitmap;)V
    .locals 10
    .parameter "context"
    .parameter "entity"
    .parameter "existingImage"

    .prologue
    const/4 v9, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;-><init>(Landroid/content/Context;)V

    .line 38
    iput-boolean v9, p0, Lcom/google/glass/home/timeline/FilteredEntityCard;->previouslyFocused:Z

    .line 42
    iput-object p2, p0, Lcom/google/glass/home/timeline/FilteredEntityCard;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$layout;->filtered_entity_card:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    sget v1, Lcom/google/glass/home/R$id;->image:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/FilteredEntityCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/glass/home/timeline/FilteredEntityCard;->imageView:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 47
    .local v8, metrics:Landroid/util/DisplayMetrics;
    if-nez p3, :cond_1

    .line 48
    new-instance v0, Lcom/google/glass/util/EntityImageDownloadTask;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/FilteredEntityCard;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/glass/home/timeline/FilteredEntityCard;->imageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    iget v5, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/util/EntityImageDownloadTask;-><init>(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/Entity;Landroid/widget/ImageView;Landroid/widget/TextView;II)V

    .line 50
    .local v0, imageDownloadTask:Lcom/google/glass/util/EntityImageDownloadTask;
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/Entity;->getImageUrlCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 51
    sget v1, Lcom/google/glass/home/R$drawable;->ic_anon_big:I

    invoke-virtual {v0, v1}, Lcom/google/glass/util/EntityImageDownloadTask;->setDefaultImageResId(I)V

    .line 53
    :cond_0
    invoke-static {v0}, Lcom/google/glass/util/DeferredContentLoader;->load(Lcom/google/glass/util/DeferredContentLoader$LoadingTask;)V

    .line 58
    .end local v0           #imageDownloadTask:Lcom/google/glass/util/EntityImageDownloadTask;
    :goto_0
    sget v1, Lcom/google/glass/home/R$id;->text:I

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/FilteredEntityCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/glass/home/timeline/FilteredEntityCard;->textView:Landroid/widget/TextView;

    .line 59
    invoke-static {p2}, Lcom/google/glass/entity/EntityHelper;->getFirstName(Lcom/google/googlex/glass/common/proto/Entity;)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, firstName:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/home/timeline/FilteredEntityCard;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/FilteredEntityCard;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$string;->voice_menu_hey_person_hint:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v7, v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-void

    .line 55
    .end local v7           #firstName:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/google/glass/home/timeline/FilteredEntityCard;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public onFocus()V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;->onFocus()V

    .line 66
    iget-boolean v1, p0, Lcom/google/glass/home/timeline/FilteredEntityCard;->previouslyFocused:Z

    if-nez v1, :cond_0

    .line 68
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 69
    .local v0, textViewAnim:Landroid/view/animation/Animation;
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/FilteredEntityCard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$integer;->activity_animation_duration_ms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 70
    iget-object v1, p0, Lcom/google/glass/home/timeline/FilteredEntityCard;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/home/timeline/FilteredEntityCard;->previouslyFocused:Z

    .line 74
    .end local v0           #textViewAnim:Landroid/view/animation/Animation;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 96
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getExtra()Ljava/lang/Object;

    move-result-object v1

    .line 97
    .local v1, extra:Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    if-eqz v3, :cond_1

    .line 98
    new-instance v0, Lcom/google/glass/home/voice/menu/BasicVoiceMenuEnvironment;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/FilteredEntityCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/app/GlassVoiceActivity;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassVoiceActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/glass/home/voice/menu/BasicVoiceMenuEnvironment;-><init>(Lcom/google/glass/app/GlassVoiceActivity;)V

    .local v0, environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;
    move-object v2, v1

    .line 100
    check-cast v2, Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    .line 101
    .local v2, messageItem:Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    invoke-virtual {v2, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->requirementsSatisfied(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/google/glass/home/timeline/FilteredEntityCard;->entity:Lcom/google/googlex/glass/common/proto/Entity;

    sget-object v4, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;->MESSAGE:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;

    invoke-static {v3, v4}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->newContactMenuItem(Lcom/google/googlex/glass/common/proto/Entity;Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment$EntityCommand;)Lcom/google/glass/home/voice/menu/EntityMenuItem;

    move-result-object v3

    invoke-virtual {v3, v0, v5, v5}, Lcom/google/glass/home/voice/menu/EntityMenuItem;->trigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZZ)V

    .line 105
    :cond_0
    const/4 v3, 0x1

    .line 107
    .end local v0           #environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;
    .end local v2           #messageItem:Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    :goto_0
    return v3

    :cond_1
    invoke-super {p0, p1}, Lcom/google/glass/horizontalscroll/FrameLayoutCard;->onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v3

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x1

    .line 78
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->clearItems()V

    .line 79
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/FilteredEntityCard;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newSendMessageItem()Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    move-result-object v2

    .line 81
    .local v2, messageItem:Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    invoke-virtual {v2}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->getContextIconId()I

    move-result v4

    .line 82
    .local v4, resId:I
    const/4 v1, 0x0

    .line 83
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 86
    :cond_0
    new-instance v3, Lcom/google/glass/widget/OptionMenu$Item;

    const/4 v5, 0x0

    invoke-virtual {v2, v0}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->getContextLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6, v1}, Lcom/google/glass/widget/OptionMenu$Item;-><init>(ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 88
    .local v3, optionMenuItem:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v3, v7}, Lcom/google/glass/widget/OptionMenu$Item;->setSuppressTapSound(Z)V

    .line 89
    invoke-virtual {v3, v2}, Lcom/google/glass/widget/OptionMenu$Item;->setExtra(Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p1, v3}, Lcom/google/glass/widget/OptionMenu;->addItem(Lcom/google/glass/widget/OptionMenu$Item;)V

    .line 91
    return v7
.end method
