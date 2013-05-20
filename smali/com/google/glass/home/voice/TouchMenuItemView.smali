.class public Lcom/google/glass/home/voice/TouchMenuItemView;
.super Landroid/widget/FrameLayout;
.source "TouchMenuItemView.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/HorizontalScrollItem;


# instance fields
.field private final environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

.field private icon:Landroid/widget/ImageView;

.field private label:Landroid/widget/TextView;

.field private voiceMenuItem:Lcom/google/glass/home/voice/menu/VoiceMenuItem;


# direct methods
.method public constructor <init>(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)V
    .locals 2
    .parameter "environment"

    .prologue
    .line 28
    invoke-interface {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;->getContext()Lcom/google/glass/app/GlassActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/google/glass/home/voice/TouchMenuItemView;->environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    .line 31
    invoke-virtual {p0}, Lcom/google/glass/home/voice/TouchMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$layout;->option_menu_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    sget v0, Lcom/google/glass/home/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/TouchMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/home/voice/TouchMenuItemView;->icon:Landroid/widget/ImageView;

    .line 33
    sget v0, Lcom/google/glass/home/R$id;->label:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/TouchMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/home/voice/TouchMenuItemView;->label:Landroid/widget/TextView;

    .line 34
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/glass/home/voice/menu/VoiceMenuItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/glass/home/voice/TouchMenuItemView;->voiceMenuItem:Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    .line 38
    invoke-virtual {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->getContextIconId()I

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMenuItemView;->icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->getContextIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/home/voice/TouchMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->getContextLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, labelText:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/google/glass/home/voice/TouchMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMenuItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void

    .line 41
    .end local v0           #labelText:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMenuItemView;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public getBundleId()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfirm(Lcom/google/glass/app/GlassActivity;)Z
    .locals 3
    .parameter "activity"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/glass/home/voice/TouchMenuItemView;->voiceMenuItem:Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    iget-object v1, p0, Lcom/google/glass/home/voice/TouchMenuItemView;->environment:Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public onDoubleTap(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public onFocus()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onLoad()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public onSettled()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onUnfocus()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onUnload()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onUnsettled()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public shouldSuppressSingleTapSound()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method
