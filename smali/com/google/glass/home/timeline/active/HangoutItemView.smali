.class public Lcom/google/glass/home/timeline/active/HangoutItemView;
.super Lcom/google/glass/timeline/active/ActiveItemView;
.source "HangoutItemView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final hangoutHelper:Lcom/google/glass/util/HangoutHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/google/glass/home/timeline/active/HangoutItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/active/HangoutItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->HANGOUT:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/active/ActiveItemView;-><init>(Landroid/content/Context;Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)V

    .line 27
    new-instance v0, Lcom/google/glass/util/HangoutHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/HangoutHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/active/HangoutItemView;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    .line 28
    return-void
.end method


# virtual methods
.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v0

    sget v1, Lcom/google/glass/home/R$id;->hangout_menu_resume:I

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HangoutItemView;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/HangoutHelper;->bringHangoutToForeground()V

    .line 50
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getItemId()I

    move-result v0

    sget v1, Lcom/google/glass/home/R$id;->hangout_menu_exit:I

    if-ne v0, v1, :cond_1

    .line 46
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HangoutItemView;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/HangoutHelper;->exitOngoingHangout()V

    goto :goto_0

    .line 48
    :cond_1
    sget-object v0, Lcom/google/glass/home/timeline/active/HangoutItemView;->TAG:Ljava/lang/String;

    const-string v1, "Unknown action. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 37
    sget v0, Lcom/google/glass/home/R$menu;->hangout_menu:I

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->inflateFrom(I)V

    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public onRemove()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/glass/timeline/active/ActiveItemView;->onRemove()V

    .line 56
    sget-object v0, Lcom/google/glass/home/timeline/active/HangoutItemView;->TAG:Ljava/lang/String;

    const-string v1, "onRemove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HangoutItemView;->hangoutHelper:Lcom/google/glass/util/HangoutHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/HangoutHelper;->exitOngoingHangout()V

    .line 58
    return-void
.end method

.method public provideContentView()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/google/glass/home/R$layout;->hangout_item:I

    return v0
.end method
