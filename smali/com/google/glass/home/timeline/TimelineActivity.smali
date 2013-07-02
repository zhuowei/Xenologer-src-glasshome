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
.field public static final EXTRA_ITEM_TO_DELETE:Ljava/lang/String; = "ITEM_TO_DELETE"


# instance fields
.field private iconProvider:Lcom/google/glass/util/IconProvider;

.field private notificationState:Lcom/google/glass/home/timeline/NotificationState;

.field private optionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

.field private shouldShowVoiceMenuImmediately:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/glass/app/GlassVoiceActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/google/glass/home/timeline/NotificationState;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/NotificationState;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineActivity;->notificationState:Lcom/google/glass/home/timeline/NotificationState;

    return-void
.end method


# virtual methods
.method protected getNotificationState()Lcom/google/glass/home/timeline/NotificationState;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineActivity;->notificationState:Lcom/google/glass/home/timeline/NotificationState;

    return-object v0
.end method

.method protected getTimelineOptionsHelper()Lcom/google/glass/timeline/TimelineOptionsHelper;
    .locals 1

    .prologue
    .line 350
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

.method public isNotification()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineActivity;->notificationState:Lcom/google/glass/home/timeline/NotificationState;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/NotificationState;->isNotification()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 281
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 282
    if-eqz p3, :cond_0

    const-string v0, "item_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "item_id"

    const-string v2, "item_id"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->finishAndTurnScreenOff()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
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

    .line 72
    new-instance v0, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;

    iget-object v1, p0, Lcom/google/glass/home/timeline/TimelineActivity;->iconProvider:Lcom/google/glass/util/IconProvider;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/timeline/HomeTimelineOptionsHelper;-><init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/util/IconProvider;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/TimelineActivity;->optionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    .line 73
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .parameter "dismissAction"

    .prologue
    .line 119
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->stopSpeaking()V

    .line 121
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 1
    .parameter "count"
    .parameter "wentDown"

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassVoiceActivity;->onFingerCountChanged(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_0
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
    .line 80
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/TimelineActivity;->setIntent(Landroid/content/Intent;)V

    .line 82
    if-eqz p1, :cond_0

    const-string v0, "screen_turned_on"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/google/glass/net/NetworkUtil;->checkNetwork()V

    .line 86
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 12
    .parameter "selectedOptionMenuItem"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 223
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    .local v3, selectedView:Landroid/view/View;
    move-object v2, v3

    .line 224
    check-cast v2, Lcom/google/glass/horizontalscroll/Card;

    .line 225
    .local v2, selectedCard:Lcom/google/glass/horizontalscroll/Card;
    if-eqz v3, :cond_0

    invoke-interface {v2, p1}, Lcom/google/glass/horizontalscroll/Card;->onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    .line 269
    :goto_0
    return v8

    .line 231
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getExtra()Ljava/lang/Object;

    move-result-object v8

    sget-object v11, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_MORE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    if-ne v8, v11, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedItemParent()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 233
    .local v4, timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v4}, Lcom/google/glass/home/timeline/TimelineItemAdapter;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    move-result-object v5

    .line 234
    .local v5, type:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    sget-object v8, Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;->HTML:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;

    if-ne v5, v8, :cond_1

    .line 235
    new-instance v10, Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedItemParent()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {v10, v8}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-static {p0, v10}, Lcom/google/glass/timeline/TimelineHelper;->readMoreHtml(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V

    :goto_1
    move v8, v9

    .line 241
    goto :goto_0

    .line 238
    :cond_1
    new-instance v10, Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedItemParent()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {v10, v8}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-static {p0, v10}, Lcom/google/glass/timeline/TimelineHelper;->readMoreText(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;)V

    goto :goto_1

    .line 245
    .end local v4           #timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v5           #type:Lcom/google/glass/home/timeline/TimelineItemAdapter$ViewType;
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getExtra()Ljava/lang/Object;

    move-result-object v8

    sget-object v11, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->PLAY_VIDEO:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    if-ne v8, v11, :cond_5

    .line 246
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 247
    .local v1, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    sget-object v8, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/google/glass/timeline/TimelineHelper;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 249
    .local v7, videoAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/Attachment;->hasId()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 250
    const-string v8, "timeline_id"

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v8, v10}, Lcom/google/glass/timeline/TimelineHelper;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    move v8, v9

    .line 257
    goto :goto_0

    .line 252
    :cond_4
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-virtual {v8}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, url:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 254
    const-string v8, "video_url"

    invoke-static {p0, v8, v6}, Lcom/google/glass/timeline/TimelineHelper;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 260
    .end local v1           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v6           #url:Ljava/lang/String;
    .end local v7           #videoAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    :cond_5
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu$Item;->getExtra()Ljava/lang/Object;

    move-result-object v0

    .line 261
    .local v0, extra:Ljava/lang/Object;
    if-nez v0, :cond_6

    move v8, v10

    .line 262
    goto/16 :goto_0

    .line 266
    :cond_6
    instance-of v8, v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    invoke-static {v8}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 269
    iget-object v9, p0, Lcom/google/glass/home/timeline/TimelineActivity;->optionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedItemParent()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/googlex/glass/common/proto/TimelineItem;

    const/4 v10, 0x0

    invoke-virtual {v9, v8, p1, v10}, Lcom/google/glass/timeline/TimelineOptionsHelper;->handleOptionsItemSelected(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/widget/OptionMenu$Item;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;)Z

    move-result v8

    goto/16 :goto_0
.end method

.method public onOptionsMenuCanceled(Lcom/google/glass/widget/OptionMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 275
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassVoiceActivity;->onOptionsMenuCanceled(Lcom/google/glass/widget/OptionMenu;)V

    .line 276
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/TimelineActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfigDescriptor;)V

    .line 277
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->deactivate()V

    .line 112
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onPause()V

    .line 113
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 175
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/home/HomeApplication;->stopSpeaking()V

    .line 178
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->clearItems()V

    .line 181
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    .local v3, selectedView:Landroid/view/View;
    move-object v2, v3

    .line 182
    check-cast v2, Lcom/google/glass/horizontalscroll/Card;

    .line 183
    .local v2, selectedCard:Lcom/google/glass/horizontalscroll/Card;
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Lcom/google/glass/horizontalscroll/Card;->onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    :goto_0
    return v6

    .line 189
    :cond_0
    iget-object v8, p0, Lcom/google/glass/home/timeline/TimelineActivity;->optionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v8, p1, v5}, Lcom/google/glass/timeline/TimelineOptionsHelper;->handlePrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    .line 194
    if-eqz v3, :cond_1

    .line 195
    sget v5, Lcom/google/glass/home/R$id;->tag_item_read_more:I

    invoke-virtual {v3, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    move v0, v6

    .line 196
    .local v0, canReadMore:Z
    :goto_1
    if-eqz v0, :cond_1

    .line 197
    iget-object v8, p0, Lcom/google/glass/home/timeline/TimelineActivity;->optionsHelper:Lcom/google/glass/timeline/TimelineOptionsHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v8, p1, v5}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addReadMore(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    .line 201
    .end local v0           #canReadMore:Z
    :cond_1
    sget-object v5, Lcom/google/glass/util/Labs$Feature;->VIDEO_PLAYER:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v5}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 206
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 207
    .local v1, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz v1, :cond_2

    .line 208
    sget-object v5, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_VIDEO_MIME_TYPES:[Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/google/glass/timeline/TimelineHelper;->getAttachmentsOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 211
    .local v4, videoAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 212
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getItemCount()I

    move-result v5

    sget v8, Lcom/google/glass/home/R$string;->timeline_menu_play_video:I

    invoke-virtual {p0, v8}, Lcom/google/glass/home/timeline/TimelineActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/google/glass/home/R$drawable;->ic_video_play_medium:I

    invoke-virtual {p1, v7, v5, v8, v9}, Lcom/google/glass/widget/OptionMenu;->insertItem(IILjava/lang/String;I)V

    .line 214
    invoke-virtual {p1, v7}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v5

    sget-object v8, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->PLAY_VIDEO:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v5, v8}, Lcom/google/glass/widget/OptionMenu$Item;->setExtra(Ljava/lang/Object;)V

    .line 218
    .end local v1           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v4           #videoAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Attachment;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getItemCount()I

    move-result v5

    if-lez v5, :cond_4

    move v5, v6

    :goto_2
    move v6, v5

    goto :goto_0

    :cond_3
    move v0, v7

    .line 195
    goto :goto_1

    :cond_4
    move v5, v7

    .line 218
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
    .line 127
    invoke-super/range {p0 .. p7}, Lcom/google/glass/app/GlassVoiceActivity;->onPrepareSwipe(IFFFFII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    .line 131
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
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-super {p0}, Lcom/google/glass/app/GlassVoiceActivity;->onResume()V

    .line 93
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/TimelineActivity;->setIsNotification(Z)V

    .line 96
    iput-boolean v2, p0, Lcom/google/glass/home/timeline/TimelineActivity;->shouldShowVoiceMenuImmediately:Z

    .line 104
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->activate()V

    .line 105
    return-void

    .line 98
    :cond_0
    const-string v1, "is_notification"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/TimelineActivity;->setIsNotification(Z)V

    .line 99
    const-string v1, "show_voice_menu"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/home/timeline/TimelineActivity;->shouldShowVoiceMenuImmediately:Z

    goto :goto_0
.end method

.method public onSwipe(ILcom/google/glass/input/SwipeDirection;)Z
    .locals 2
    .parameter "fingerCount"
    .parameter "direction"

    .prologue
    .line 137
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassVoiceActivity;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    .line 140
    :cond_0
    sget-object v0, Lcom/google/glass/home/timeline/TimelineActivity$1;->$SwitchMap$com$google$glass$input$SwipeDirection:[I

    invoke-virtual {p2}, Lcom/google/glass/input/SwipeDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 152
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTimelineView()Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    .line 153
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassVoiceActivity;->onSwipe(ILcom/google/glass/input/SwipeDirection;)Z

    move-result v0

    goto :goto_0

    .line 143
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->shouldStopSpeakingOnUserAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->stopSpeaking()V

    goto :goto_1

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Z
    .locals 3
    .parameter "command"

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized voice command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public setIsNotification(Z)V
    .locals 3
    .parameter "isNotification"

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting isNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    if-nez p1, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineActivity;->notificationState:Lcom/google/glass/home/timeline/NotificationState;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/NotificationState;->setIsNotification(Z)V

    .line 347
    return-void
.end method

.method public setShouldShowVoiceMenuImmediately(Z)V
    .locals 2
    .parameter "shouldShow"

    .prologue
    .line 333
    if-nez p1, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/TimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "show_voice_menu"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 337
    :cond_0
    iput-boolean p1, p0, Lcom/google/glass/home/timeline/TimelineActivity;->shouldShowVoiceMenuImmediately:Z

    .line 338
    return-void
.end method

.method protected shouldAllowLongPress()Z
    .locals 4

    .prologue
    .line 306
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

.method public shouldShowVoiceMenuImmediately()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/TimelineActivity;->shouldShowVoiceMenuImmediately:Z

    return v0
.end method

.method public shouldStopSpeakingOnUserAction()Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x1

    return v0
.end method
