.class public abstract Lcom/google/glass/home/timeline/TimelineActivity;
.super Lcom/google/glass/app/GlassActivity;
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
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 123
    return-void
.end method

.method private transferScreenOffExtras(Landroid/content/Intent;)V
    .locals 4
    .parameter "outgoing"

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 272
    .local v0, incoming:Landroid/content/Intent;
    const-string v1, "screen_turned_on"

    const-string v2, "screen_turned_on"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    invoke-static {v0, p1}, Lcom/google/glass/util/ScreenOffGesture;->copyScreenOffGesture(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 276
    invoke-static {v0}, Lcom/google/glass/util/ScreenOffGesture;->clearScreenOffGesture(Landroid/content/Intent;)V

    .line 277
    return-void
.end method


# virtual methods
.method protected getTimelineOptionsHelper()Lcom/google/glass/timeline/TimelineOptionsHelper;
    .locals 1

    .prologue
    .line 280
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
    .line 207
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 208
    if-eqz p3, :cond_0

    const-string v0, "item_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "item_id"

    const-string v2, "item_id"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->finishAndTurnScreenOff()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreate(Landroid/os/Bundle;)V

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
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onFingerCountChanged(IZ)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onNewIntent(Landroid/content/Intent;)V

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

    .line 178
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .local v2, selectedView:Landroid/view/View;
    move-object v1, v2

    .line 179
    check-cast v1, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    .line 180
    .local v1, selectedHorizontalScrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;
    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 201
    :goto_0
    return v3

    .line 186
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getExtra()Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_MORE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    if-ne v3, v5, :cond_1

    .line 187
    new-instance v5, Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedItemParent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {v5, v3}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-static {p0, v5}, Lcom/google/glass/timeline/TimelineHelper;->readMore(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V

    move v3, v4

    .line 189
    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getExtra()Ljava/lang/Object;

    move-result-object v0

    .line 193
    .local v0, extra:Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 194
    const/4 v3, 0x0

    goto :goto_0

    .line 198
    :cond_2
    instance-of v3, v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    invoke-static {v3}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 201
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

.method protected onPause()V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->deactivate()V

    .line 94
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->stopSpeaking()V

    .line 96
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPause()V

    .line 97
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->shouldStopSpeakingOnUserAction()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/home/HomeApplication;->stopSpeaking()V

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->clearItems()V

    .line 153
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .local v2, selectedView:Landroid/view/View;
    move-object v1, v2

    .line 154
    check-cast v1, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;

    .line 155
    .local v1, selectedHorizontalScrollItem:Lcom/google/glass/horizontalscroll/HorizontalScrollItem;
    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/google/glass/horizontalscroll/HorizontalScrollItem;->onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    :goto_0
    return v4

    .line 161
    :cond_1
    iget-object v6, p0, Lcom/google/glass/home/timeline/TimelineActivity;->optionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v6, p1, v3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->handlePrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    .line 164
    if-eqz v2, :cond_2

    .line 165
    sget v3, Lcom/google/glass/home/R$id;->tag_item_read_more:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    move v0, v4

    .line 166
    .local v0, canReadMore:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getItemCount()I

    move-result v3

    sget v6, Lcom/google/glass/home/R$string;->timeline_menu_read_more:I

    invoke-virtual {p0, v6}, Lcom/google/glass/home/timeline/TimelineActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/google/glass/home/R$drawable;->ic_document_medium:I

    invoke-virtual {p1, v5, v3, v6, v7}, Lcom/google/glass/widget/OptionMenu;->insertItem(IILjava/lang/String;I)V

    .line 169
    invoke-virtual {p1, v5}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v3

    sget-object v6, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_MORE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v3, v6}, Lcom/google/glass/widget/OptionMenu$Item;->setExtra(Ljava/lang/Object;)V

    .line 173
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

    .line 165
    goto :goto_1

    :cond_4
    move v3, v5

    .line 173
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
    .line 102
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

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResume()V

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
    .line 113
    sget-object v0, Lcom/google/glass/home/timeline/TimelineActivity$1;->$SwitchMap$com$google$glass$input$SwipeDirection:[I

    invoke-virtual {p2}, Lcom/google/glass/input/SwipeDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)V

    .line 126
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassActivity;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    return v0

    .line 116
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->shouldStopSpeakingOnUserAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->stopSpeaking()V

    goto :goto_0

    .line 113
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
    .line 225
    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->OK_GLASS:Lcom/google/glass/voice/VoiceCommand;

    if-ne p1, v1, :cond_1

    .line 229
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->NATIVE_APP_VOICE:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-static {}, Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;->getInstance()Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/home/voice/NativeAppVoiceMenuHelper;->getMainMenuConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/TimelineActivity;->preloadVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 235
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 236
    sget-object v1, Lcom/google/glass/logging/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/logging/UserEventAction;

    const-string v2, "1"

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/home/timeline/TimelineActivity;->logUserEvent(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 242
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/home/voice/VoiceMainMenuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/TimelineActivity;->transferScreenOffExtras(Landroid/content/Intent;)V

    .line 244
    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/TimelineActivity;->startActivity(Landroid/content/Intent;)V

    .line 245
    const/4 v1, 0x1

    .line 248
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return v1

    .line 232
    :cond_0
    invoke-static {}, Lcom/google/glass/voice/VoiceConfig;->getMainMenuConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/TimelineActivity;->preloadVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0

    .line 247
    :cond_1
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

    .line 248
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected shouldAllowLongPress()Z
    .locals 4

    .prologue
    .line 256
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
    .line 267
    const/4 v0, 0x1

    return v0
.end method
