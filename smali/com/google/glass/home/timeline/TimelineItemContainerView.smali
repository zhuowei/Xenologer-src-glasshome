.class public Lcom/google/glass/home/timeline/TimelineItemContainerView;
.super Landroid/widget/FrameLayout;
.source "TimelineItemContainerView.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/Card;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/TimelineItemContainerView$1;
    }
.end annotation


# instance fields
.field private bundleEntryPoint:Lcom/google/glass/timeline/TimelineItemId;

.field private card:Lcom/google/glass/horizontalscroll/Card;

.field private readMoreEntryPoint:Lcom/google/glass/timeline/TimelineItemId;

.field private state:Lcom/google/glass/horizontalscroll/Card$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    sget-object v0, Lcom/google/glass/horizontalscroll/Card$State;->UNLOADED:Lcom/google/glass/horizontalscroll/Card$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/Card$State;

    .line 50
    return-void
.end method


# virtual methods
.method public getBundleEntryPoint()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->bundleEntryPoint:Lcom/google/glass/timeline/TimelineItemId;

    return-object v0
.end method

.method public getReadMoreEntryPoint()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->readMoreEntryPoint:Lcom/google/glass/timeline/TimelineItemId;

    return-object v0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onConfirm()Z

    move-result v0

    .line 158
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTap()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onDoubleTap()Z

    move-result v0

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFocus()V
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/google/glass/horizontalscroll/Card$State;->FOCUSED:Lcom/google/glass/horizontalscroll/Card$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/Card$State;

    .line 124
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onFocus()V

    .line 127
    :cond_0
    return-void
.end method

.method public onLoad()V
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/google/glass/horizontalscroll/Card$State;->LOADED:Lcom/google/glass/horizontalscroll/Card$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/Card$State;

    .line 108
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onLoad()V

    .line 111
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0, p1}, Lcom/google/glass/horizontalscroll/Card;->onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v0

    .line 190
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0, p1}, Lcom/google/glass/horizontalscroll/Card;->onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z

    move-result v0

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSettled()V
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/google/glass/horizontalscroll/Card$State;->SETTLED:Lcom/google/glass/horizontalscroll/Card$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/Card$State;

    .line 140
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onSettled()V

    .line 143
    :cond_0
    return-void
.end method

.method public onUnfocus()V
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/google/glass/horizontalscroll/Card$State;->LOADED:Lcom/google/glass/horizontalscroll/Card$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/Card$State;

    .line 132
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onUnfocus()V

    .line 135
    :cond_0
    return-void
.end method

.method public onUnload()V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/google/glass/horizontalscroll/Card$State;->UNLOADED:Lcom/google/glass/horizontalscroll/Card$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/Card$State;

    .line 116
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onUnload()V

    .line 119
    :cond_0
    return-void
.end method

.method public onUnsettled()V
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/google/glass/horizontalscroll/Card$State;->FOCUSED:Lcom/google/glass/horizontalscroll/Card$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/Card$State;

    .line 148
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onUnsettled()V

    .line 151
    :cond_0
    return-void
.end method

.method public removeContainedCard()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setContainedCard(Lcom/google/glass/horizontalscroll/Card;)V

    .line 55
    return-void
.end method

.method public setBundleEntryPoint(Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 0
    .parameter "bundleEntryPoint"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->bundleEntryPoint:Lcom/google/glass/timeline/TimelineItemId;

    .line 196
    return-void
.end method

.method public setContainedCard(Lcom/google/glass/horizontalscroll/Card;)V
    .locals 2
    .parameter "scrollItem"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eq v0, p1, :cond_2

    .line 62
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemContainerView$1;->$SwitchMap$com$google$glass$horizontalscroll$Card$State:[I

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/Card$State;

    invoke-virtual {v1}, Lcom/google/glass/horizontalscroll/Card$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 82
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz p1, :cond_1

    .line 83
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemContainerView$1;->$SwitchMap$com$google$glass$horizontalscroll$Card$State:[I

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/Card$State;

    invoke-virtual {v1}, Lcom/google/glass/horizontalscroll/Card$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 101
    :cond_1
    :goto_1
    :pswitch_1
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    .line 103
    :cond_2
    return-void

    .line 67
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onUnload()V

    goto :goto_0

    .line 70
    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onUnfocus()V

    .line 71
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onUnload()V

    goto :goto_0

    .line 74
    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onUnsettled()V

    .line 75
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onUnfocus()V

    .line 76
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->onUnload()V

    goto :goto_0

    .line 87
    :pswitch_5
    invoke-interface {p1}, Lcom/google/glass/horizontalscroll/Card;->onLoad()V

    goto :goto_1

    .line 90
    :pswitch_6
    invoke-interface {p1}, Lcom/google/glass/horizontalscroll/Card;->onLoad()V

    .line 91
    invoke-interface {p1}, Lcom/google/glass/horizontalscroll/Card;->onFocus()V

    goto :goto_1

    .line 94
    :pswitch_7
    invoke-interface {p1}, Lcom/google/glass/horizontalscroll/Card;->onLoad()V

    .line 95
    invoke-interface {p1}, Lcom/google/glass/horizontalscroll/Card;->onFocus()V

    .line 96
    invoke-interface {p1}, Lcom/google/glass/horizontalscroll/Card;->onSettled()V

    goto :goto_1

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 83
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setReadMoreEntryPoint(Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 0
    .parameter "readMoreEntryPoint"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->readMoreEntryPoint:Lcom/google/glass/timeline/TimelineItemId;

    .line 206
    return-void
.end method

.method public shouldSuppressSingleTapSound()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->card:Lcom/google/glass/horizontalscroll/Card;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/Card;->shouldSuppressSingleTapSound()Z

    move-result v0

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
