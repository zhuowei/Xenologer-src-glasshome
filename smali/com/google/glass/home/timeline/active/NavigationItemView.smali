.class public Lcom/google/glass/home/timeline/active/NavigationItemView;
.super Lcom/google/glass/timeline/active/ActiveItemView;
.source "NavigationItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private destinationNameView:Landroid/widget/TextView;

.field private iconLoader:Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;

.field private iconView:Landroid/widget/ImageView;

.field private messageView:Landroid/widget/TextView;

.field private timeRemainingView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/glass/home/timeline/active/NavigationItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/active/NavigationItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/active/ActiveItemView;-><init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    .line 37
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/home/timeline/active/NavigationItemView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setTextOrHide(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "text"

    .prologue
    .line 82
    if-eqz p2, :cond_0

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onConfirm()Z
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/NavigationItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/maps/NavigationLauncher;->bringNavigationToForeground(Landroid/content/Context;)V

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public onLoad()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/active/NavigationItemView;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/NavigationItemView;->onParametersChanged(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method protected onParametersChanged(Landroid/os/Bundle;)V
    .locals 5
    .parameter "parameters"

    .prologue
    const/4 v3, 0x1

    .line 59
    invoke-static {p1}, Lcom/google/glass/maps/NavigationActiveItemParams;->fromBundle(Landroid/os/Bundle;)Lcom/google/glass/maps/NavigationActiveItemParams;

    move-result-object v0

    .line 60
    .local v0, params:Lcom/google/glass/maps/NavigationActiveItemParams;
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->iconLoader:Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->iconLoader:Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;

    invoke-virtual {v1, v3}, Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;->cancel(Z)Z

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->getIconUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 64
    new-instance v1, Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;

    iget-object v2, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->iconView:Landroid/widget/ImageView;

    invoke-direct {v1, v2}, Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->iconLoader:Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;

    .line 65
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->iconLoader:Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->getIconUri()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/glass/home/timeline/active/NavigationItemView$IconLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/glass/home/timeline/active/NavigationItemView;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->destinationNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->getDestinationName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/glass/home/timeline/active/NavigationItemView;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->timeRemainingView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/glass/maps/NavigationActiveItemParams;->getTimeRemaining()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/glass/home/timeline/active/NavigationItemView;->setTextOrHide(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 73
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->iconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onViewInflated()V
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/google/glass/home/R$id;->turn_icon:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/NavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->iconView:Landroid/widget/ImageView;

    .line 47
    sget v0, Lcom/google/glass/home/R$id;->message:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/NavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->messageView:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/google/glass/home/R$id;->destination_name:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/NavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->destinationNameView:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/google/glass/home/R$id;->time_remaining:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/active/NavigationItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/NavigationItemView;->timeRemainingView:Landroid/widget/TextView;

    .line 50
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/google/glass/home/R$layout;->navigation_item:I

    return v0
.end method
