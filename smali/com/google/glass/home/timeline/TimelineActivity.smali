.class public abstract Lcom/google/glass/home/timeline/TimelineActivity;
.super Lcom/google/glass/app/GlassVoiceActivity;
.source "TimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/TimelineActivity$1;
    }
.end annotation


# static fields
.field public static final EXTRA_FROM_SCREEN_OFF_NOTIFICATION:Ljava/lang/String; = "from_screen_off_notification"

.field public static final EXTRA_ITEM_TO_DELETE:Ljava/lang/String; = "ITEM_TO_DELETE"


# instance fields
.field private iconProvider:Lcom/google/glass/util/IconProvider;

.field private optionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;-><init>()V

    .line 130
    return-void
.end method

.method private transferScreenOffExtras(Landroid/content/Intent;)V
    .locals 4
    .parameter "outgoing"

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 293
    .local v0, incoming:Landroid/content/Intent;
    const-string v1, "screen_turned_on"

    const-string v2, "screen_turned_on"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    invoke-static {v0, p1}, Lcom/google/glass/util/ScreenOffGesture;->copyScreenOffGesture(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 297
    invoke-static {v0}, Lcom/google/glass/util/ScreenOffGesture;->clearScreenOffGesture(Landroid/content/Intent;)V

    .line 298
    return-void
.end method


# virtual methods
.method protected getTimelineOptionsHelper()Lcom/google/glass/timeline/TimelineOptionsHelper;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineActivity;->optionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    return-object v0
.end method

.method protected abstract getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView",
            "<*",
            "Lcom/google/googlex/glass/common/proto/TimelineItem;",
            ">;"
        }
    .end annotation
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 231
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 232
    if-eqz p3, :cond_0

    const-string v0, "item_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "item_id"

    const-string v2, "item_id"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->finishAndTurnScreenOff()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    new-instance v0, Lcom/google/glass/util/IconProvider;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$dimen;->timeline_menu_item_icon_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/glass/home/R$dimen;->timeline_menu_item_icon_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/IconProvider;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineActivity;->iconProvider:Lcom/google/glass/util/IconProvider;

    .line 63
    new-instance v0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineActivity;->iconProvider:Lcom/google/glass/util/IconProvider;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;-><init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/util/IconProvider;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineActivity;->optionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    .line 64
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 99
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->stopSpeaking()V

    .line 101
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 3
    .parameter "count"
    .parameter "wentDown"

    .prologue
    const/4 v0, 0x1

    .line 138
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassVoiceActivity;->onFingerCountChanged(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    :goto_0
    return v0

    .line 142
    :cond_0
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->PEOPLE_GRID:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 145
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.people.PEOPLE_UI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/TimelineActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onFingerCountChanged(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->setIntent(Landroid/content/Intent;)V

    .line 73
    if-eqz p1, :cond_0

    const-string v0, "screen_turned_on"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 77
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 6
    .parameter "selectedOptionMenuItem"

    .prologue
    const/4 v4, 0x1

    .line 196
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .local v2, selectedView:Landroid/view/View;
    move-object v1, v2

    .line 197
    check-cast v1, Lcom/google/glass/horizontalscroll/Card;

    .line 198
    .local v1, selectedCard:Lcom/google/glass/horizontalscroll/Card;
    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lcom/google/glass/horizontalscroll/Card;->onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 219
    :goto_0
    return v3

    .line 204
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getExtra()Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_MORE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    if-ne v3, v5, :cond_1

    .line 205
    new-instance v5, Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedItemParent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {v5, v3}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-static {p0, v5}, Lcom/google/glass/timeline/TimelineHelper;->readMore(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V

    move v3, v4

    .line 207
    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getExtra()Ljava/lang/Object;

    move-result-object v0

    .line 211
    .local v0, extra:Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 212
    const/4 v3, 0x0

    goto :goto_0

    .line 216
    :cond_2
    instance-of v3, v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    invoke-static {v3}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 219
    iget-object v4, p0, Lcom/google/glass/home/timeline/TimelineActivity;->optionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedItemParent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, p1, v5}, Lcom/google/glass/timeline/TimelineOptionsHelper;->handleOptionsItemSelected(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/widget/OptionMenu$Item;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;)Z

    move-result v3

    goto :goto_0
.end method

.method public onOptionsMenuCanceled(Lcom/google/glass/widget/OptionMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->onOptionsMenuCanceled(Lcom/google/glass/widget/OptionMenu;)V

    .line 226
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/TimelineActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 227
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->deactivate()V

    .line 92
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onPause()V

    .line 93
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->shouldStopSpeakingOnUserAction()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/home/HomeApplication;->stopSpeaking()V

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->clearItems()V

    .line 171
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .local v2, selectedView:Landroid/view/View;
    move-object v1, v2

    .line 172
    check-cast v1, Lcom/google/glass/horizontalscroll/Card;

    .line 173
    .local v1, selectedCard:Lcom/google/glass/horizontalscroll/Card;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/google/glass/horizontalscroll/Card;->onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    :goto_0
    return v4

    .line 179
    :cond_1
    iget-object v6, p0, Lcom/google/glass/home/timeline/TimelineActivity;->optionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v6, p1, v3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->handlePrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    .line 182
    if-eqz v2, :cond_2

    .line 183
    sget v3, Lcom/google/glass/home/R$id;->tag_item_read_more:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    move v0, v4

    .line 184
    .local v0, canReadMore:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getItemCount()I

    move-result v3

    sget v6, Lcom/google/glass/home/R$string;->timeline_menu_read_more:I

    invoke-virtual {p0, v6}, Lcom/google/glass/home/timeline/TimelineActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/google/glass/home/R$drawable;->ic_document_medium:I

    invoke-virtual {p1, v5, v3, v6, v7}, Lcom/google/glass/widget/OptionMenu;->insertItem(IILjava/lang/String;I)V

    .line 187
    invoke-virtual {p1, v5}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v3

    sget-object v6, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_MORE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v3, v6}, Lcom/google/glass/widget/OptionMenu$Item;->setExtra(Ljava/lang/Object;)V

    .line 191
    .end local v0           #canReadMore:Z
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getItemCount()I

    move-result v3

    if-lez v3, :cond_4

    move v3, v4

    :goto_2
    move v4, v3

    goto :goto_0

    :cond_3
    move v0, v5

    .line 183
    goto :goto_1

    :cond_4
    move v3, v5

    .line 191
    goto :goto_2
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 8
    .parameter "fingerCount"
    .parameter "accumulatorX"
    .parameter "accumulatorY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "numSwipesX"
    .parameter "numSwipesY"

    .prologue
    .line 107
    invoke-super/range {p0 .. p7}, Lcom/google/glass/app/GlassVoiceActivity;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onResume()V

    .line 84
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->activate()V

    .line 85
    return-void
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 117
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassVoiceActivity;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    .line 120
    :cond_0
    sget-object v0, Lcom/google/glass/home/timeline/TimelineActivity$1;->$SwitchMap$com$google$glass$input$SwipeDirection:[I

    invoke-virtual {p2}, Lcom/google/glass/input/SwipeDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    .line 133
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassVoiceActivity;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0

    .line 123
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->shouldStopSpeakingOnUserAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->stopSpeaking()V

    goto :goto_1

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 4
    .parameter "command"

    .prologue
    .line 249
    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->OK_GLASS:Lcom/google/glass/voice/VoiceCommand;

    if-ne p1, v1, :cond_0

    .line 254
    sget-object v1, Lcom/google/glass/voice/VoiceConfigDescriptor;->MAIN_MENU:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/TimelineActivity;->preloadVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 256
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 257
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/logging/UserEventAction;

    const-string v2, "1"

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/home/timeline/TimelineActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/home/voice/VoiceMainMenuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/TimelineActivity;->transferScreenOffExtras(Landroid/content/Intent;)V

    .line 265
    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/TimelineActivity;->startActivity(Landroid/content/Intent;)V

    .line 266
    const/4 v1, 0x1

    .line 269
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized voice command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected shouldAllowLongPress()Z
    .locals 4

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getZoomOutFactor()F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldStopSpeakingOnUserAction()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x1

    return v0
.end method
