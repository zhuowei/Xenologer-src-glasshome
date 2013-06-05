.class public Lcom/google/glass/home/voice/VoiceMenu;
.super Landroid/widget/FrameLayout;
.source "VoiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;
    }
.end annotation


# static fields
.field private static final FADE_OUT_ALPHA:F = 0.2f

.field private static final MENU_ITEM_ANIMATE_IN_DELAY_MILLIS:J = 0x32L

.field private static final MENU_ITEM_ANIMATE_IN_DURATION_MILLIS:J = 0xdcL

.field private static final MENU_ITEM_SELECTION_ANIMATION_DURATION_MILLIS:J = 0x64L

.field private static final MENU_ITEM_SELECTION_DURATION_MILLIS:J = 0x3e8L

.field private static final MSG_ANIMATE_IN:I = 0x1

.field private static final MSG_END_SECONDARY_MENU_ITEM_SELECTION:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private mainMenu:Landroid/widget/LinearLayout;

.field private final mainMenuItemViews:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            "Lcom/google/glass/widget/TypophileTextView;",
            ">;"
        }
    .end annotation
.end field

.field private mainScrollView:Lcom/google/glass/home/voice/OverscrollView;

.field private menuItemsLayout:Landroid/widget/LinearLayout;

.field private secondaryMenuItemViews:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            "Lcom/google/glass/widget/TypophileTextView;",
            ">;"
        }
    .end annotation
.end field

.field private secondaryMenuLayout:Landroid/widget/LinearLayout;

.field private secondaryMenuScrollView:Lcom/google/glass/home/voice/OverscrollView;

.field private selectedMainMenuItem:Lcom/google/glass/widget/TypophileTextView;

.field private selectedSecondaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

.field private visibleScrollView:Lcom/google/glass/home/voice/OverscrollView;

.field private voiceMenuListener:Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/google/glass/home/voice/VoiceMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/voice/VoiceMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/voice/VoiceMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Lcom/google/glass/home/voice/VoiceMenu$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/VoiceMenu$1;-><init>(Lcom/google/glass/home/voice/VoiceMenu;)V

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->handler:Landroid/os/Handler;

    .line 109
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->mainMenuItemViews:Ljava/util/LinkedHashMap;

    .line 130
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$layout;->voice_menu:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 132
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMenu;->initViews()V

    .line 133
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->mainScrollView:Lcom/google/glass/home/voice/OverscrollView;

    invoke-direct {p0, v0}, Lcom/google/glass/home/voice/VoiceMenu;->setVisibleScrollView(Lcom/google/glass/home/voice/OverscrollView;)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/voice/VoiceMenu;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/VoiceMenu;->animateIn(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/voice/VoiceMenu;)Ljava/util/LinkedHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->secondaryMenuItemViews:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/voice/VoiceMenu;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/glass/home/voice/VoiceMenu;->showSecondaryMenu(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/home/voice/VoiceMenu;)Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->voiceMenuListener:Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/voice/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->selectedSecondaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/voice/VoiceMenu;)Lcom/google/glass/widget/TypophileTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->selectedMainMenuItem:Lcom/google/glass/widget/TypophileTextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/home/voice/VoiceMenu;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->menuItemsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addMainMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;)V
    .locals 2
    .parameter "voiceMenuItem"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/home/voice/VoiceMenu;->newMenuItem(Ljava/lang/String;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v0

    .line 144
    .local v0, menuItem:Lcom/google/glass/widget/TypophileTextView;
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu;->mainMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu;->menuItemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    return-void
.end method

.method private animateIn(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 179
    return-void
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 157
    sget v0, Lcom/google/glass/home/R$id;->main_menu:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->mainMenu:Landroid/widget/LinearLayout;

    .line 158
    sget v0, Lcom/google/glass/home/R$id;->voice_menu_selected_main_menu_item:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->selectedMainMenuItem:Lcom/google/glass/widget/TypophileTextView;

    .line 160
    sget v0, Lcom/google/glass/home/R$id;->voice_menu_selected_secondary_menu_item:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->selectedSecondaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

    .line 163
    sget v0, Lcom/google/glass/home/R$id;->voice_menu_main_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/voice/OverscrollView;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->mainScrollView:Lcom/google/glass/home/voice/OverscrollView;

    .line 164
    sget v0, Lcom/google/glass/home/R$id;->voice_menu_items:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->menuItemsLayout:Landroid/widget/LinearLayout;

    .line 166
    sget v0, Lcom/google/glass/home/R$id;->voice_menu_secondary_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/voice/OverscrollView;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->secondaryMenuScrollView:Lcom/google/glass/home/voice/OverscrollView;

    .line 167
    sget v0, Lcom/google/glass/home/R$id;->voice_menu_secondary_menu_layout:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->secondaryMenuLayout:Landroid/widget/LinearLayout;

    .line 168
    return-void
.end method

.method private newMenuItem(Ljava/lang/String;)Lcom/google/glass/widget/TypophileTextView;
    .locals 4
    .parameter "text"

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/glass/home/R$layout;->voice_menu_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    .line 239
    .local v0, view:Lcom/google/glass/widget/TypophileTextView;
    invoke-virtual {v0, p1}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    return-object v0
.end method

.method private populateLayoutWithItems(Landroid/widget/LinearLayout;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .locals 5
    .parameter "layout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            "Lcom/google/glass/widget/TypophileTextView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, items:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/glass/home/voice/menu/VoiceMenuItem;>;"
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 224
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 226
    .local v3, menuItems:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Lcom/google/glass/home/voice/menu/VoiceMenuItem;Lcom/google/glass/widget/TypophileTextView;>;"
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 227
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    .line 228
    .local v1, item:Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/glass/home/voice/VoiceMenu;->newMenuItem(Ljava/lang/String;)Lcom/google/glass/widget/TypophileTextView;

    move-result-object v2

    .line 229
    .local v2, menuItem:Lcom/google/glass/widget/TypophileTextView;
    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 232
    .end local v1           #item:Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    .end local v2           #menuItem:Lcom/google/glass/widget/TypophileTextView;
    :cond_0
    return-object v3
.end method

.method private promoteMenuItem(Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/home/voice/OverscrollView;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "menuItem"
    .parameter "menuItemScrollView"
    .parameter "postAnimationRunnable"

    .prologue
    .line 319
    new-instance v0, Lcom/google/glass/home/voice/VoiceMenu$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/glass/home/voice/VoiceMenu$4;-><init>(Lcom/google/glass/home/voice/VoiceMenu;Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/home/voice/OverscrollView;Ljava/lang/Runnable;)V

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/voice/VoiceMenu;->selectMainMenuItem(Lcom/google/glass/widget/TypophileTextView;Ljava/lang/Runnable;)V

    .line 343
    return-void
.end method

.method private selectMainMenuItem(Lcom/google/glass/widget/TypophileTextView;Ljava/lang/Runnable;)V
    .locals 7
    .parameter "menuItem"
    .parameter "postAnimationRunnable"

    .prologue
    .line 352
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/google/glass/widget/TypophileTextView;->setEnabled(Z)V

    .line 354
    iget-object v4, p0, Lcom/google/glass/home/voice/VoiceMenu;->mainMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 355
    .local v2, mainMenuItemViews:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/widget/TypophileTextView;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 357
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 358
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/widget/TypophileTextView;

    .line 360
    .local v3, t:Lcom/google/glass/widget/TypophileTextView;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_0

    .line 361
    new-instance v1, Lcom/google/glass/home/voice/VoiceMenu$5;

    invoke-direct {v1, p0, p2, v3}, Lcom/google/glass/home/voice/VoiceMenu$5;-><init>(Lcom/google/glass/home/voice/VoiceMenu;Ljava/lang/Runnable;Lcom/google/glass/widget/TypophileTextView;)V

    .line 374
    .local v1, listener:Landroid/animation/Animator$AnimatorListener;
    :goto_1
    invoke-virtual {v3}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const v5, 0x3e4ccccd

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v1           #listener:Landroid/animation/Animator$AnimatorListener;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #listener:Landroid/animation/Animator$AnimatorListener;
    goto :goto_1

    .line 379
    .end local v1           #listener:Landroid/animation/Animator$AnimatorListener;
    .end local v3           #t:Lcom/google/glass/widget/TypophileTextView;
    :cond_1
    return-void
.end method

.method private selectSecondaryMenuItem(Lcom/google/glass/widget/TypophileTextView;Ljava/util/LinkedHashMap;)V
    .locals 6
    .parameter "secondaryMenuItem"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/widget/TypophileTextView;",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            "Lcom/google/glass/widget/TypophileTextView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p2, menuItems:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Lcom/google/glass/home/voice/menu/VoiceMenuItem;Lcom/google/glass/widget/TypophileTextView;>;"
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    .line 297
    .local v1, t:Lcom/google/glass/widget/TypophileTextView;
    if-eq v1, p1, :cond_0

    .line 298
    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const v3, 0x3e4ccccd

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 304
    .end local v1           #t:Lcom/google/glass/widget/TypophileTextView;
    :cond_1
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMenu;->handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/home/voice/VoiceMenu;->handler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 307
    return-void
.end method

.method private setVisibleScrollView(Lcom/google/glass/home/voice/OverscrollView;)V
    .locals 0
    .parameter "scrollView"

    .prologue
    .line 245
    iput-object p1, p0, Lcom/google/glass/home/voice/VoiceMenu;->visibleScrollView:Lcom/google/glass/home/voice/OverscrollView;

    .line 246
    return-void
.end method

.method private showSecondaryMenu(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, menuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/voice/menu/VoiceMenuItem;>;"
    const/4 v6, 0x0

    .line 204
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMenu;->mainMenu:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMenu;->mainScrollView:Lcom/google/glass/home/voice/OverscrollView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/glass/home/voice/OverscrollView;->setVisibility(I)V

    .line 208
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMenu;->secondaryMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 209
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMenu;->secondaryMenuScrollView:Lcom/google/glass/home/voice/OverscrollView;

    invoke-virtual {v2, v6}, Lcom/google/glass/home/voice/OverscrollView;->setVisibility(I)V

    .line 211
    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMenu;->secondaryMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    .line 212
    .local v1, menuItem:Lcom/google/glass/widget/TypophileTextView;
    invoke-direct {p0, v1}, Lcom/google/glass/home/voice/VoiceMenu;->animateIn(Landroid/view/View;)V

    goto :goto_0

    .line 214
    .end local v1           #menuItem:Lcom/google/glass/widget/TypophileTextView;
    :cond_0
    return-void
.end method

.method private updateEnabledState(Ljava/util/LinkedHashMap;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<+",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            "Lcom/google/glass/widget/TypophileTextView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, viewsByItem:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<+Lcom/google/glass/home/voice/menu/VoiceMenuItem;Lcom/google/glass/widget/TypophileTextView;>;"
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    .line 261
    .local v1, item:Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/widget/TypophileTextView;

    iget-object v3, p0, Lcom/google/glass/home/voice/VoiceMenu;->voiceMenuListener:Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;

    invoke-virtual {v1, v3}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->isEnabled(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/TypophileTextView;->setEnabled(Z)V

    goto :goto_0

    .line 263
    .end local v1           #item:Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->visibleScrollView:Lcom/google/glass/home/voice/OverscrollView;

    return-object v0
.end method

.method public onConfirm()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 413
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->currentItems:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceMenu;->getVisibleScrollView()Lcom/google/glass/home/voice/OverscrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/home/voice/OverscrollView;->getItem()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu;->voiceMenuListener:Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->trigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZZ)V

    .line 414
    return v3
.end method

.method public onConnectivityChanged(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->mainMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Lcom/google/glass/home/voice/VoiceMenu;->updateEnabledState(Ljava/util/LinkedHashMap;)V

    .line 254
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 6
    .parameter "command"

    .prologue
    const/4 v2, 0x1

    .line 400
    iget-object v3, p0, Lcom/google/glass/home/voice/VoiceMenu;->currentItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    .line 401
    .local v1, menuItem:Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    invoke-virtual {v1, p1}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->matches(Lcom/google/glass/voice/VoiceCommand;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 402
    iget-object v3, p0, Lcom/google/glass/home/voice/VoiceMenu;->voiceMenuListener:Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;

    invoke-virtual {v1, v3, v2, v2}, Lcom/google/glass/home/voice/menu/VoiceMenuItem;->trigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;ZZ)V

    .line 409
    .end local v1           #menuItem:Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    :goto_0
    return v2

    .line 407
    :cond_1
    sget-object v2, Lcom/google/glass/home/voice/VoiceMenu;->TAG:Ljava/lang/String;

    const-string v3, "No matching menu item found."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v2, 0x5

    sget-object v3, Lcom/google/glass/home/voice/VoiceMenu;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; items: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/home/voice/VoiceMenu;->currentItems:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 409
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public selectMainMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;)V
    .locals 2
    .parameter "mainMenuItem"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->mainMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/voice/VoiceMenu;->selectMainMenuItem(Lcom/google/glass/widget/TypophileTextView;Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method public selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 2
    .parameter "menuItem"
    .parameter "postAnimationRunnable"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->mainMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu;->mainScrollView:Lcom/google/glass/home/voice/OverscrollView;

    invoke-direct {p0, v0, v1, p2}, Lcom/google/glass/home/voice/VoiceMenu;->promoteMenuItem(Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/home/voice/OverscrollView;Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method

.method public selectMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/util/List;)V
    .locals 4
    .parameter "menuItem"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p2, secondaryMenu:Ljava/util/List;,"Ljava/util/List<+Lcom/google/glass/home/voice/menu/VoiceMenuItem;>;"
    invoke-static {p2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 183
    .local v0, menuItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/glass/home/voice/menu/VoiceMenuItem;>;"
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu;->secondaryMenuLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Lcom/google/glass/home/voice/VoiceMenu;->populateLayoutWithItems(Landroid/widget/LinearLayout;Ljava/util/Collection;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu;->secondaryMenuItemViews:Ljava/util/LinkedHashMap;

    .line 184
    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->currentItems:Ljava/util/List;

    .line 185
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu;->secondaryMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v1}, Lcom/google/glass/home/voice/VoiceMenu;->updateEnabledState(Ljava/util/LinkedHashMap;)V

    .line 186
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu;->secondaryMenuScrollView:Lcom/google/glass/home/voice/OverscrollView;

    invoke-direct {p0, v1}, Lcom/google/glass/home/voice/VoiceMenu;->setVisibleScrollView(Lcom/google/glass/home/voice/OverscrollView;)V

    .line 188
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu;->mainMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/widget/TypophileTextView;

    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceMenu;->mainScrollView:Lcom/google/glass/home/voice/OverscrollView;

    new-instance v3, Lcom/google/glass/home/voice/VoiceMenu$2;

    invoke-direct {v3, p0, v0}, Lcom/google/glass/home/voice/VoiceMenu$2;-><init>(Lcom/google/glass/home/voice/VoiceMenu;Ljava/util/List;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/google/glass/home/voice/VoiceMenu;->promoteMenuItem(Lcom/google/glass/widget/TypophileTextView;Lcom/google/glass/home/voice/OverscrollView;Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method public selectSecondaryMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 5
    .parameter "item"
    .parameter "postAnimationRunnable"

    .prologue
    const/4 v4, 0x0

    .line 270
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu;->secondaryMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TypophileTextView;

    .line 271
    .local v0, secondaryMenuItem:Lcom/google/glass/widget/TypophileTextView;
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu;->secondaryMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/voice/VoiceMenu;->selectSecondaryMenuItem(Lcom/google/glass/widget/TypophileTextView;Ljava/util/LinkedHashMap;)V

    .line 272
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu;->selectedSecondaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu;->selectedSecondaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v0}, Lcom/google/glass/widget/TypophileTextView;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/google/glass/home/voice/VoiceMenu;->secondaryMenuScrollView:Lcom/google/glass/home/voice/OverscrollView;

    invoke-virtual {v3, v4}, Lcom/google/glass/home/voice/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/TypophileTextView;->setTranslationY(F)V

    .line 275
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu;->selectedSecondaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v1, v4}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu;->secondaryMenuScrollView:Lcom/google/glass/home/voice/OverscrollView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/glass/home/voice/OverscrollView;->setVisibility(I)V

    .line 277
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceMenu;->selectedSecondaryMenuItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v1}, Lcom/google/glass/widget/TypophileTextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xdc

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/google/glass/home/voice/VoiceMenu$3;

    invoke-direct {v2, p0, p2}, Lcom/google/glass/home/voice/VoiceMenu$3;-><init>(Lcom/google/glass/home/voice/VoiceMenu;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 290
    return-void
.end method

.method public setListener(Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;)V
    .locals 1
    .parameter "voiceMenuListener"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/glass/home/voice/VoiceMenu;->voiceMenuListener:Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;

    .line 138
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->mainScrollView:Lcom/google/glass/home/voice/OverscrollView;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/voice/OverscrollView;->setListener(Lcom/google/glass/home/voice/OverscrollView$OverscrollViewListener;)V

    .line 139
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->secondaryMenuScrollView:Lcom/google/glass/home/voice/OverscrollView;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/voice/OverscrollView;->setListener(Lcom/google/glass/home/voice/OverscrollView$OverscrollViewListener;)V

    .line 140
    return-void
.end method

.method public setShouldHighlightSelectedItem(Z)V
    .locals 2
    .parameter "shouldHighlight"

    .prologue
    const/4 v1, 0x0

    .line 395
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->secondaryMenuScrollView:Lcom/google/glass/home/voice/OverscrollView;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/OverscrollView;->setShouldHighlightSelectedItem(Z)V

    .line 396
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->mainScrollView:Lcom/google/glass/home/voice/OverscrollView;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/voice/OverscrollView;->setShouldHighlightSelectedItem(Z)V

    .line 397
    return-void
.end method

.method public setTopLevelMenuItems(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, mainMenuItems:Ljava/util/List;,"Ljava/util/List<+Lcom/google/glass/home/voice/menu/VoiceMenuItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/home/voice/menu/VoiceMenuItem;

    .line 150
    .local v1, mainMenuItem:Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    invoke-direct {p0, v1}, Lcom/google/glass/home/voice/VoiceMenu;->addMainMenuItem(Lcom/google/glass/home/voice/menu/VoiceMenuItem;)V

    goto :goto_0

    .line 153
    .end local v1           #mainMenuItem:Lcom/google/glass/home/voice/menu/VoiceMenuItem;
    :cond_0
    iput-object p1, p0, Lcom/google/glass/home/voice/VoiceMenu;->currentItems:Ljava/util/List;

    .line 154
    return-void
.end method

.method public showError(Lcom/google/glass/app/GlassError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->voiceMenuListener:Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceMenu;->voiceMenuListener:Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;

    invoke-interface {v0, p1}, Lcom/google/glass/home/voice/VoiceMenu$VoiceMenuListener;->onError(Lcom/google/glass/app/GlassError;)V

    .line 421
    :cond_0
    return-void
.end method

.method public showMainMenu()V
    .locals 7

    .prologue
    const/16 v5, 0x8

    .line 382
    iget-object v4, p0, Lcom/google/glass/home/voice/VoiceMenu;->selectedMainMenuItem:Lcom/google/glass/widget/TypophileTextView;

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/TypophileTextView;->setVisibility(I)V

    .line 383
    iget-object v4, p0, Lcom/google/glass/home/voice/VoiceMenu;->secondaryMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 386
    const-wide/16 v0, 0x0

    .line 387
    .local v0, delayMillis:J
    iget-object v4, p0, Lcom/google/glass/home/voice/VoiceMenu;->mainMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/widget/TypophileTextView;

    .line 388
    .local v3, menuItem:Lcom/google/glass/widget/TypophileTextView;
    const-wide/16 v4, 0x32

    add-long/2addr v0, v4

    .line 389
    iget-object v4, p0, Lcom/google/glass/home/voice/VoiceMenu;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/glass/home/voice/VoiceMenu;->handler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-static {v5, v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 391
    .end local v3           #menuItem:Lcom/google/glass/widget/TypophileTextView;
    :cond_0
    iget-object v4, p0, Lcom/google/glass/home/voice/VoiceMenu;->mainMenuItemViews:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/home/voice/VoiceMenu;->currentItems:Ljava/util/List;

    .line 392
    return-void
.end method
