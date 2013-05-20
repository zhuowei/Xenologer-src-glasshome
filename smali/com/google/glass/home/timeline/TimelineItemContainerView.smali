.class public Lcom/google/glass/home/timeline/TimelineItemContainerView;
.super Landroid/widget/FrameLayout;
.source "TimelineItemContainerView.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/HorizontalScrollItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/TimelineItemContainerView$1;
    }
.end annotation


# instance fields
.field private bundleId:Lcom/google/glass/timeline/TimelineItemId;

.field private scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

.field private state:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    sget-object v0, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->UNLOADED:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    .line 45
    return-void
.end method


# virtual methods
.method public getBundleId()Lcom/google/glass/timeline/TimelineItemId;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->bundleId:Lcom/google/glass/timeline/TimelineItemId;

    return-object v0
.end method

.method public onConfirm(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    invoke-interface {v0, p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onConfirm(Lcom/google/glass/app/GlassActivity;)Z

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTap(Lcom/google/glass/app/GlassActivity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    invoke-interface {v0, p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onDoubleTap(Lcom/google/glass/app/GlassActivity;)Z

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFocus()V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->FOCUSED:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    .line 119
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onFocus()V

    .line 122
    :cond_0
    return-void
.end method

.method public onLoad()V
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->LOADED:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    .line 103
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onLoad()V

    .line 106
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    invoke-interface {v0, p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v0

    .line 185
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
    .line 174
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    invoke-interface {v0, p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z

    move-result v0

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSettled()V
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->SETTLED:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    .line 135
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onSettled()V

    .line 138
    :cond_0
    return-void
.end method

.method public onUnfocus()V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->LOADED:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    .line 127
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onUnfocus()V

    .line 130
    :cond_0
    return-void
.end method

.method public onUnload()V
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->UNLOADED:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    .line 111
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onUnload()V

    .line 114
    :cond_0
    return-void
.end method

.method public onUnsettled()V
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->FOCUSED:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    .line 143
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onUnsettled()V

    .line 146
    :cond_0
    return-void
.end method

.method public removeScrollItem()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/TimelineItemContainerView;->setScrollItem(Lcom/google/glass/horizontalscroll/HorizontalScrollItem;)V

    .line 50
    return-void
.end method

.method public setBundleId(Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 0
    .parameter "bundleId"

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->bundleId:Lcom/google/glass/timeline/TimelineItemId;

    .line 191
    return-void
.end method

.method public setScrollItem(Lcom/google/glass/horizontalscroll/HorizontalScrollItem;)V
    .locals 2
    .parameter "scrollItem"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    if-eq v0, p1, :cond_2

    .line 57
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemContainerView$1;->$SwitchMap$com$google$glass$horizontalscroll$HorizontalScrollItem$State:[I

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    invoke-virtual {v1}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 77
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz p1, :cond_1

    .line 78
    sget-object v0, Lcom/google/glass/home/timeline/TimelineItemContainerView$1;->$SwitchMap$com$google$glass$horizontalscroll$HorizontalScrollItem$State:[I

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->state:Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;

    invoke-virtual {v1}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 96
    :cond_1
    :goto_1
    :pswitch_1
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    .line 98
    :cond_2
    return-void

    .line 62
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onUnload()V

    goto :goto_0

    .line 65
    :pswitch_3
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onUnfocus()V

    .line 66
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onUnload()V

    goto :goto_0

    .line 69
    :pswitch_4
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onUnsettled()V

    .line 70
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onUnfocus()V

    .line 71
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onUnload()V

    goto :goto_0

    .line 82
    :pswitch_5
    invoke-interface {p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onLoad()V

    goto :goto_1

    .line 85
    :pswitch_6
    invoke-interface {p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onLoad()V

    .line 86
    invoke-interface {p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onFocus()V

    goto :goto_1

    .line 89
    :pswitch_7
    invoke-interface {p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onLoad()V

    .line 90
    invoke-interface {p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onFocus()V

    .line 91
    invoke-interface {p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onSettled()V

    goto :goto_1

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 78
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public shouldSuppressSingleTapSound()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineItemContainerView;->scrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    invoke-interface {v0}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->shouldSuppressSingleTapSound()Z

    move-result v0

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
