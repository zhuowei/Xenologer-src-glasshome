.class public Lcom/google/glass/timeline/TimelineOptionsHelper;
.super Ljava/lang/Object;
.source "TimelineOptionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/TimelineOptionsHelper$9;,
        Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;,
        Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE_SHARE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/google/glass/app/GlassActivity;

.field private final iconProvider:Lcom/google/glass/util/IconProvider;

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

.field private final userEventHelper:Lcom/google/glass/logging/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/google/glass/timeline/TimelineOptionsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/util/IconProvider;)V
    .locals 2
    .parameter "activity"
    .parameter "iconProvider"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    .line 92
    iput-object p2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->iconProvider:Lcom/google/glass/util/IconProvider;

    .line 94
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    .line 95
    .local v0, app:Lcom/google/glass/app/GlassApplication;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 96
    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    .line 97
    new-instance v1, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v1}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/logging/UserEventHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/sound/SoundManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method private addBroadcast(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_warning_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 204
    return-void
.end method

.method private addCustom(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 0
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 193
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addBroadcast(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    .line 194
    return-void
.end method

.method private addDelete(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 246
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_delete:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_delete_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method private addHangout(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 344
    const/4 v5, 0x0

    .line 345
    .local v5, description:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_error_in_a_call_no_hangout:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 350
    :cond_0
    :goto_0
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_hangout:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_hangout_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 353
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getHangoutHelper(Landroid/content/Context;)Lcom/google/glass/util/HangoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/HangoutHelper;->isInHangout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_error_in_a_hangout_no_hangout:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private addMenuItem(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 3
    .parameter "menu"
    .parameter "timelineItem"
    .parameter "menuItem"

    .prologue
    .line 132
    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$State;->DEFAULT:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    invoke-direct {p0, p3, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/MenuItem$State;)Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v0

    .line 134
    .local v0, menuValue:Lcom/google/googlex/glass/common/proto/MenuValue;
    sget-object v1, Lcom/google/glass/timeline/TimelineOptionsHelper$9;->$SwitchMap$com$google$googlex$glass$common$proto$MenuItem$Action:[I

    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/MenuItem;->getAction()Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 136
    :pswitch_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addCustom(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 139
    :pswitch_1
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addBroadcast(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 142
    :pswitch_2
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addReply(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    goto :goto_0

    .line 145
    :pswitch_3
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addReplyAll(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 148
    :pswitch_4
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addDelete(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 151
    :pswitch_5
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addShare(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    goto :goto_0

    .line 154
    :pswitch_6
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addReadAloud(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 157
    :pswitch_7
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addVoiceCall(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 160
    :pswitch_8
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addNavigate(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 163
    :pswitch_9
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addSearch(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 166
    :pswitch_a
    invoke-direct {p0, p1, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMuteMic(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 169
    :pswitch_b
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addHangout(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 172
    :pswitch_c
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addViewWebsite(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 175
    :pswitch_d
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addTogglePinned(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    goto :goto_0

    .line 178
    :pswitch_e
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addPlayVideo(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .parameter "menu"
    .parameter "label"
    .parameter "icon"
    .parameter "isEnabled"
    .parameter "description"
    .parameter "extra"

    .prologue
    const/4 v4, 0x0

    .line 434
    new-instance v2, Lcom/google/glass/widget/OptionMenu$ItemState;

    invoke-direct {v2, v4, p2, p3}, Lcom/google/glass/widget/OptionMenu$ItemState;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 435
    .local v2, itemState:Lcom/google/glass/widget/OptionMenu$ItemState;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/glass/widget/OptionMenu$ItemState;

    aput-object v2, v3, v4

    invoke-virtual {p0, p1, p6, v3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/Object;[Lcom/google/glass/widget/OptionMenu$ItemState;)I

    move-result v0

    .line 436
    .local v0, id:I
    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v1

    .line 437
    .local v1, item:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v1, p4}, Lcom/google/glass/widget/OptionMenu$Item;->setEnabled(Z)V

    .line 438
    invoke-virtual {v1, p5}, Lcom/google/glass/widget/OptionMenu$Item;->setDescription(Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method private addMuteMic(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 8
    .parameter "menu"
    .parameter "menuItem"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 327
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v4}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 328
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v1, Lcom/google/glass/widget/OptionMenu$ItemState;

    sget v4, Lcom/google/glass/common/R$string;->phone_call_mute:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$drawable;->ic_microphone_medium:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v1, v6, v4, v5}, Lcom/google/glass/widget/OptionMenu$ItemState;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 331
    .local v1, muteState:Lcom/google/glass/widget/OptionMenu$ItemState;
    new-instance v3, Lcom/google/glass/widget/OptionMenu$ItemState;

    sget v4, Lcom/google/glass/common/R$string;->phone_call_unmute:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$drawable;->ic_microphone_off_medium:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v3, v7, v4, v5}, Lcom/google/glass/widget/OptionMenu$ItemState;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 334
    .local v3, unmuteState:Lcom/google/glass/widget/OptionMenu$ItemState;
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/glass/widget/OptionMenu$ItemState;

    aput-object v1, v4, v6

    aput-object v3, v4, v7

    invoke-virtual {p0, p1, p2, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/Object;[Lcom/google/glass/widget/OptionMenu$ItemState;)I

    move-result v0

    .line 335
    .local v0, menuItemId:I
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/glass/util/MicrophoneHelper;->updateOptionMenuItem(Landroid/content/Context;Lcom/google/glass/widget/OptionMenu$Item;)V

    .line 336
    return-void
.end method

.method private addPlayVideo(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 373
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_play_video:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_video_play_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 375
    return-void
.end method

.method private addReadAloud(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 275
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_read_aloud:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_read_aloud_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method private addReply(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .parameter "timelineItem"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 213
    invoke-static {p4}, Lcom/google/glass/timeline/TimelineHelper;->failedToSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_retry:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_reply_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 223
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    sget v0, Lcom/google/glass/common/R$string;->phone_call_in_call:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_reply_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    :cond_1
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_reply:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_reply_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private addReplyAll(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    const/4 v5, 0x0

    .line 231
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    sget v0, Lcom/google/glass/common/R$string;->phone_call_in_call:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_reply_all_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_reply_all:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_reply_all_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private addSearch(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 317
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_expand_search:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_search_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method private addShare(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 8
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .parameter "timelineItem"

    .prologue
    .line 257
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/glass/entity/EntityHelper;->getMatchingShareTargets(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v7

    .line 259
    .local v7, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_share:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_share_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->sharing_no_share_targets:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 267
    :goto_0
    return-void

    .line 264
    :cond_0
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_share:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_share_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private addTogglePinned(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .parameter "timelineItem"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 385
    invoke-virtual {p4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_unpin:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_unpin_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 392
    :goto_0
    return-void

    .line 389
    :cond_0
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_pin:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_pin_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private addViewWebsite(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 362
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_view_website:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->browser_website:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 364
    return-void
.end method

.method private addVoiceCall(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 286
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    const/4 v5, 0x0

    .line 288
    .local v5, description:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_error_in_a_call_no_call:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 293
    :cond_0
    :goto_0
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_voice_call:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_phone_out_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 297
    .end local v5           #description:Ljava/lang/String;
    :cond_1
    return-void

    .line 290
    .restart local v5       #description:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getHangoutHelper(Landroid/content/Context;)Lcom/google/glass/util/HangoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/HangoutHelper;->isInHangout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_error_in_a_hangout_no_call:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "value"
    .parameter "defaultResId"

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->iconProvider:Lcom/google/glass/util/IconProvider;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuValue;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->iconProvider:Lcom/google/glass/util/IconProvider;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuValue;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/util/IconProvider;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 470
    :cond_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 471
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 473
    :cond_1
    return-object v0
.end method

.method private getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;
    .locals 1
    .parameter "value"
    .parameter "defaultResId"

    .prologue
    .line 477
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuValue;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuValue;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 482
    :goto_0
    return-object v0

    .line 479
    :cond_0
    if-eqz p2, :cond_1

    .line 480
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0, p2}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 482
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private getValueForState(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/MenuItem$State;)Lcom/google/googlex/glass/common/proto/MenuValue;
    .locals 3
    .parameter "item"
    .parameter "state"

    .prologue
    .line 457
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->getValueList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/MenuValue;

    .line 458
    .local v1, value:Lcom/google/googlex/glass/common/proto/MenuValue;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/MenuValue;->getState()Lcom/google/googlex/glass/common/proto/MenuItem$State;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 462
    .end local v1           #value:Lcom/google/googlex/glass/common/proto/MenuValue;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onBroadcast(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/MenuItem;)Z
    .locals 5
    .parameter "selectedTimelineItem"
    .parameter "selectedMenuItem"

    .prologue
    .line 672
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem;->hasBroadcastAction()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 673
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem;->getBroadcastAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 674
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "itemId"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    const-string v3, "menu_item_id"

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCreator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 677
    const-string v3, "creator"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 680
    :cond_0
    const-string v3, "share_target_count"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetCount()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 682
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 683
    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTarget(I)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v2

    .line 684
    .local v2, shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->createShareTargetExtraKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 686
    .end local v2           #shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_1
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v3, v1}, Lcom/google/glass/app/GlassActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 687
    const/4 v3, 0x1

    .line 689
    .end local v0           #i:I
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private onCustom(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/MenuItem;)Z
    .locals 15
    .parameter "timelineItem"
    .parameter "menuItem"

    .prologue
    .line 787
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->toBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v13

    .line 788
    .local v13, updatedItemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/MenuItem;->getRemoveWhenSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 789
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual {v13}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getMenuItemCount()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 790
    invoke-virtual {v13, v10}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getMenuItem(I)Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/MenuItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 791
    invoke-virtual {v13, v10}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->removeMenuItem(I)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 796
    .end local v10           #i:I
    :cond_0
    invoke-virtual {v13}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v12

    .line 798
    .local v12, updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$State;->PENDING:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/MenuItem$State;)Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v11

    .line 799
    .local v11, pendingValue:Lcom/google/googlex/glass/common/proto/MenuValue;
    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$State;->CONFIRMED:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/MenuItem$State;)Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v8

    .line 800
    .local v8, confirmedValue:Lcom/google/googlex/glass/common/proto/MenuValue;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->newBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/googlex/glass/common/proto/UserAction$Type;->CUSTOM:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/MenuItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setPayload(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->build()Lcom/google/googlex/glass/common/proto/UserAction;

    move-result-object v14

    .line 805
    .local v14, userAction:Lcom/google/googlex/glass/common/proto/UserAction;
    if-eqz v11, :cond_6

    if-eqz v8, :cond_6

    .line 806
    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$State;->DEFAULT:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/MenuItem$State;)Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v9

    .line 809
    .local v9, defaultValue:Lcom/google/googlex/glass/common/proto/MenuValue;
    const/4 v1, 0x0

    invoke-direct {p0, v11, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v3

    .line 810
    .local v3, pendingText:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 811
    const/4 v1, 0x0

    invoke-direct {p0, v9, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v3

    .line 813
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v11, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 814
    .local v4, pendingIcon:Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_2

    .line 815
    sget v1, Lcom/google/glass/common/R$drawable;->ic_warning_medium:I

    invoke-direct {p0, v9, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 817
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v8, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v5

    .line 818
    .local v5, confirmedText:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 819
    const/4 v1, 0x0

    invoke-direct {p0, v9, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v5

    .line 821
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v8, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 822
    .local v6, confirmedIcon:Landroid/graphics/drawable/Drawable;
    if-nez v6, :cond_4

    .line 823
    sget v1, Lcom/google/glass/common/R$drawable;->ic_warning_medium:I

    invoke-direct {p0, v9, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 826
    :cond_4
    new-instance v7, Lcom/google/glass/timeline/TimelineOptionsHelper$2;

    move-object/from16 v0, p2

    invoke-direct {v7, p0, v12, v14, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper$2;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    move-object v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/timeline/TimelineOptionsHelper;->showConfirmationDialog(Lcom/google/googlex/glass/common/proto/MenuItem;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;)V

    .line 837
    .end local v3           #pendingText:Ljava/lang/String;
    .end local v4           #pendingIcon:Landroid/graphics/drawable/Drawable;
    .end local v5           #confirmedText:Ljava/lang/String;
    .end local v6           #confirmedIcon:Landroid/graphics/drawable/Drawable;
    .end local v9           #defaultValue:Lcom/google/googlex/glass/common/proto/MenuValue;
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 789
    .end local v8           #confirmedValue:Lcom/google/googlex/glass/common/proto/MenuValue;
    .end local v11           #pendingValue:Lcom/google/googlex/glass/common/proto/MenuValue;
    .end local v12           #updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v14           #userAction:Lcom/google/googlex/glass/common/proto/UserAction;
    .restart local v10       #i:I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 835
    .end local v10           #i:I
    .restart local v8       #confirmedValue:Lcom/google/googlex/glass/common/proto/MenuValue;
    .restart local v11       #pendingValue:Lcom/google/googlex/glass/common/proto/MenuValue;
    .restart local v12       #updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .restart local v14       #userAction:Lcom/google/googlex/glass/common/proto/UserAction;
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {p0, v12, v14, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->notifyOnCustomMenuSelected(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_1
.end method

.method private onDelete(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;)Z
    .locals 9
    .parameter "timelineItem"
    .parameter "menuItem"
    .parameter "deletedListener"

    .prologue
    .line 861
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    .line 862
    .local v7, itemId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v8

    .line 863
    .local v8, itemSourceId:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_delete_confirming:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 864
    .local v2, pendingText:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_delete_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 865
    .local v3, pendingIcon:Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_delete_confirmed:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 866
    .local v4, confirmedText:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_done_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 868
    .local v5, confirmedIcon:Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->DELETE_INITIATED:Lcom/google/glass/logging/UserEventAction;

    invoke-static {v8}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 871
    new-instance v6, Lcom/google/glass/timeline/TimelineOptionsHelper$4;

    invoke-direct {v6, p0, v8, v7, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper$4;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;)V

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->showConfirmationDialog(Lcom/google/googlex/glass/common/proto/MenuItem;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;)V

    .line 883
    const/4 v0, 0x1

    return v0
.end method

.method private onHangout(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 7
    .parameter "menuItem"
    .parameter "timelineItem"

    .prologue
    const/4 v3, 0x0

    .line 744
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {p0, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getHangoutHelper(Landroid/content/Context;)Lcom/google/glass/util/HangoutHelper;

    move-result-object v0

    .line 745
    .local v0, hangoutHelper:Lcom/google/glass/util/HangoutHelper;
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v4}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/util/HangoutHelper;->isInHangout()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 746
    :cond_0
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    const-string v5, "In a call or hangout, not initiating a new one."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v5, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v4, v5}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 776
    :goto_0
    return v3

    .line 751
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->getId()Ljava/lang/String;

    move-result-object v1

    .line 752
    .local v1, roomId:Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 753
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Re-joining Hangout roomId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :goto_1
    const/4 v2, 0x0

    .line 759
    .local v2, target:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCreator()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 760
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v2

    .line 761
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    const-string v5, "Using creator as invite target."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_2
    if-nez v2, :cond_3

    .line 765
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    const-string v5, "No timeline item creator found, falling back to use share target instead."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 767
    invoke-virtual {p2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTarget(I)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v2

    .line 771
    :cond_3
    if-nez v2, :cond_4

    .line 772
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    const-string v5, "No share target either.  Possibly a dev using adb to directly join a room?"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_4
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/HangoutHelper;->joinHangout(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity;Z)V

    .line 776
    const/4 v3, 0x1

    goto :goto_0

    .line 755
    .end local v2           #target:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_5
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    const-string v5, "No room ID given, will create a new Hangout."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onMuteMic(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "selectedOptionMenuItem"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/util/MicrophoneHelper;->toggleMute(Landroid/content/Context;)Z

    .line 583
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0, p1}, Lcom/google/glass/util/MicrophoneHelper;->updateOptionMenuItem(Landroid/content/Context;Lcom/google/glass/widget/OptionMenu$Item;)V

    .line 584
    const/4 v0, 0x1

    return v0
.end method

.method private onNavigate(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 6
    .parameter "menuItem"
    .parameter "selectedTimelineItem"

    .prologue
    const/4 v2, 0x0

    .line 649
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasLocation()Z

    move-result v3

    if-nez v3, :cond_1

    .line 650
    sget-object v3, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No location set for timeline item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", skipping navigation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_0
    :goto_0
    return v2

    .line 654
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->hasTravelMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->getTravelMode()Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    move-result-object v1

    .line 656
    .local v1, travelMode:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;
    :goto_1
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getLocation()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/glass/maps/NavigationLauncher;->getNavigationIntent(Lcom/google/googlex/glass/common/proto/Location;Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;)Landroid/content/Intent;

    move-result-object v0

    .line 658
    .local v0, navigationIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 659
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v2, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 660
    const/4 v2, 0x1

    goto :goto_0

    .line 654
    .end local v0           #navigationIntent:Landroid/content/Intent;
    .end local v1           #travelMode:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;
    :cond_2
    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;->MOST_RECENTLY_USED:Lcom/google/googlex/glass/common/proto/MenuItem$TravelMode;

    goto :goto_1
.end method

.method private onPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 5
    .parameter "selectedTimelineItem"

    .prologue
    .line 565
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getAttachment(I)Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v0

    .line 566
    .local v0, attachment:Lcom/google/googlex/glass/common/proto/Attachment;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->getClientCachePath()Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, url:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 569
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    const-string v3, "video_url"

    invoke-static {v2, v3, v1}, Lcom/google/glass/timeline/TimelineHelper;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 570
    :cond_1
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/Attachment;->hasId()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    const-string v3, "timeline_id"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/glass/timeline/TimelineHelper;->playVideo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onSearch(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 5
    .parameter "selectedTimelineItem"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 592
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "proto/search"

    aput-object v4, v3, v1

    const-string v4, "application/glass+html"

    aput-object v4, v3, v2

    invoke-static {p1, v3}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 595
    sget-object v2, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    const-string v3, "Timeline item does not have a search proto or answer card HTML attachment"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :goto_0
    return v1

    .line 599
    :cond_0
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "application/glass+html"

    aput-object v4, v3, v1

    invoke-static {p1, v3}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z

    move-result v0

    .line 602
    .local v0, isAnswerCard:Z
    new-instance v1, Lcom/google/glass/timeline/TimelineOptionsHelper$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper$1;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;Z)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    move v1, v2

    .line 641
    goto :goto_0
.end method

.method private onTogglePinned(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 6
    .parameter "timelineItem"

    .prologue
    const/4 v5, 0x1

    .line 968
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->newBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v1

    .line 969
    .local v1, userAction:Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->toBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 971
    .local v0, updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 972
    sget-object v2, Lcom/google/googlex/glass/common/proto/UserAction$Type;->UNPIN:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    .line 973
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 974
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearPinTime()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 981
    :goto_0
    new-instance v2, Lcom/google/glass/timeline/TimelineOptionsHelper$7;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper$7;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/googlex/glass/common/proto/UserAction$Builder;)V

    invoke-static {v2}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 999
    return v5

    .line 976
    :cond_0
    sget-object v2, Lcom/google/googlex/glass/common/proto/UserAction$Type;->PIN:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    .line 977
    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 978
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_0
.end method

.method private onViewWebSite(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 4
    .parameter "selectedTimelineItem"

    .prologue
    .line 548
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSendToPhoneUrl()Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    sget-object v2, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    const-string v3, "No web site url available."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v2, 0x0

    .line 556
    :goto_0
    return v2

    .line 554
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 555
    .local v0, browserIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v2, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 556
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onVoiceCall(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 3
    .parameter "item"
    .parameter "timelineItem"

    .prologue
    .line 720
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v1}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {p0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getHangoutHelper(Landroid/content/Context;)Lcom/google/glass/util/HangoutHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/HangoutHelper;->isInHangout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    :cond_0
    sget-object v1, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    const-string v2, "In a call or hangout, not initiating a new one."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 724
    const/4 v1, 0x0

    .line 735
    :goto_0
    return v1

    .line 729
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 730
    .local v0, phoneNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 732
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 734
    :cond_2
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v1, v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->attemptDial(Lcom/google/glass/app/GlassActivity;Ljava/lang/String;)Z

    .line 735
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showConfirmationDialog(Lcom/google/googlex/glass/common/proto/MenuItem;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;)V
    .locals 3
    .parameter "menuItem"
    .parameter "pendingText"
    .parameter "pendingIcon"
    .parameter "confirmedText"
    .parameter "confirmedIcon"
    .parameter "listener"

    .prologue
    .line 1015
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-direct {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setAnimated(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/timeline/TimelineOptionsHelper$8;

    invoke-direct {v1, p0, p1, p6}, Lcom/google/glass/timeline/TimelineOptionsHelper$8;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 1038
    return-void
.end method


# virtual methods
.method public varargs addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/Object;[Lcom/google/glass/widget/OptionMenu$ItemState;)I
    .locals 2
    .parameter "menu"
    .parameter "extra"
    .parameter "itemStates"

    .prologue
    .line 450
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getItemCount()I

    move-result v0

    .line 451
    .local v0, id:I
    invoke-virtual {p1, v0, p3}, Lcom/google/glass/widget/OptionMenu;->addItem(I[Lcom/google/glass/widget/OptionMenu$ItemState;)V

    .line 452
    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/glass/widget/OptionMenu$Item;->setExtra(Ljava/lang/Object;)V

    .line 453
    return v0
.end method

.method protected addNavigate(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 305
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_navigate:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/google/glass/common/R$drawable;->ic_navigate_medium:I

    invoke-direct {p0, p2, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLjava/lang/String;Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationLauncher;->wakeUpNavigation(Landroid/content/Context;)V

    .line 309
    return-void
.end method

.method public addReadMore(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 8
    .parameter "menu"
    .parameter "timelineItem"

    .prologue
    const/4 v7, 0x0

    .line 402
    const/4 v3, 0x0

    .line 403
    .local v3, readMoreItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getMenuItemCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 404
    invoke-virtual {p2, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getMenuItem(I)Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v2

    .line 405
    .local v2, menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/MenuItem;->getAction()Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    move-result-object v4

    sget-object v5, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_MORE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    if-ne v4, v5, :cond_2

    .line 406
    move-object v3, v2

    .line 411
    .end local v2           #menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    :cond_0
    const/4 v0, 0x0

    .line 412
    .local v0, defaultValue:Lcom/google/googlex/glass/common/proto/MenuValue;
    if-eqz v3, :cond_1

    .line 413
    sget-object v4, Lcom/google/googlex/glass/common/proto/MenuItem$State;->DEFAULT:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    invoke-direct {p0, v3, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/MenuItem$State;)Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v0

    .line 416
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getItemCount()I

    move-result v4

    sget v5, Lcom/google/glass/common/R$string;->timeline_menu_read_more:I

    invoke-direct {p0, v0, v5}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/google/glass/common/R$drawable;->ic_document_medium:I

    invoke-direct {p0, v0, v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p1, v7, v4, v5, v6}, Lcom/google/glass/widget/OptionMenu;->insertItem(IILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 419
    invoke-virtual {p1, v7}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v4

    sget-object v5, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->READ_MORE:Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    invoke-virtual {v4, v5}, Lcom/google/glass/widget/OptionMenu$Item;->setExtra(Ljava/lang/Object;)V

    .line 420
    return-void

    .line 403
    .end local v0           #defaultValue:Lcom/google/googlex/glass/common/proto/MenuValue;
    .restart local v2       #menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected getGlassActivity()Lcom/google/glass/app/GlassActivity;
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    return-object v0
.end method

.method getHangoutHelper(Landroid/content/Context;)Lcom/google/glass/util/HangoutHelper;
    .locals 1
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1055
    new-instance v0, Lcom/google/glass/util/HangoutHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/HangoutHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getTimelineHelper()Lcom/google/glass/timeline/TimelineHelper;
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method protected getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    return-object v0
.end method

.method public handleOptionsItemSelected(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/widget/OptionMenu$Item;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;)Z
    .locals 4
    .parameter "selectedTimelineItem"
    .parameter "selectedOptionMenuItem"
    .parameter "deletedListener"

    .prologue
    const/4 v1, 0x0

    .line 497
    if-nez p1, :cond_1

    .line 539
    :cond_0
    :goto_0
    return v1

    .line 501
    :cond_1
    invoke-virtual {p2}, Lcom/google/glass/widget/OptionMenu$Item;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    .line 502
    .local v0, selectedMenuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    if-eqz v0, :cond_0

    .line 506
    sget-object v2, Lcom/google/glass/timeline/TimelineOptionsHelper$9;->$SwitchMap$com$google$googlex$glass$common$proto$MenuItem$Action:[I

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/MenuItem;->getAction()Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 538
    sget-object v2, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    const-string v3, "Action not handled."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 508
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onCustom(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 510
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onShare(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 512
    :pswitch_2
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onDelete(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;)Z

    move-result v1

    goto :goto_0

    .line 514
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReply(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 516
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReplyAll(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 518
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 520
    :pswitch_6
    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onBroadcast(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 522
    :pswitch_7
    invoke-direct {p0, v0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onVoiceCall(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 524
    :pswitch_8
    invoke-direct {p0, v0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onNavigate(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 526
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onSearch(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 528
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onMuteMic(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v1

    goto :goto_0

    .line 530
    :pswitch_b
    invoke-direct {p0, v0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onHangout(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 532
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onViewWebSite(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 534
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onTogglePinned(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 536
    :pswitch_e
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onPlayVideo(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 506
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public handlePrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 5
    .parameter "menu"
    .parameter "timelineItem"

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->clearItems()V

    .line 111
    if-nez p2, :cond_1

    .line 112
    sget-object v3, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    const-string v4, "No item to populate options."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    :goto_0
    return v2

    .line 117
    :cond_1
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getMenuItemList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/MenuItem;

    .line 118
    .local v1, menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    invoke-direct {p0, p1, p2, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_1

    .line 121
    .end local v1           #menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    :cond_2
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getItemCount()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected notifyOnCustomMenuSelected(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 1
    .parameter "updatedItem"
    .parameter "userAction"
    .parameter "menuItem"

    .prologue
    .line 846
    new-instance v0, Lcom/google/glass/timeline/TimelineOptionsHelper$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper$3;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;)V

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 852
    return-void
.end method

.method public onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 1
    .parameter "timelineItem"

    .prologue
    .line 914
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Z

    move-result v0

    return v0
.end method

.method public onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineItem;Z)Z
    .locals 6
    .parameter "timelineItem"
    .parameter "speakExtraContext"

    .prologue
    const/4 v3, 0x1

    .line 928
    const/4 v0, 0x0

    .line 929
    .local v0, isTranslationTts:Z
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSendToPhoneUrl()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 930
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSendToPhoneUrl()Ljava/lang/String;

    move-result-object v2

    .line 931
    .local v2, uriStr:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 932
    .local v1, uri:Landroid/net/Uri;
    const-string v4, "translate.google.com"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "/translate_tts"

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 934
    :goto_0
    if-eqz v0, :cond_0

    .line 935
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/google/glass/timeline/TimelineOptionsHelper$5;

    invoke-direct {v5, p0, v2}, Lcom/google/glass/timeline/TimelineOptionsHelper$5;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 944
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #uriStr:Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 945
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    new-instance v5, Lcom/google/glass/timeline/TimelineOptionsHelper$6;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper$6;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;Z)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 959
    :cond_1
    return v3

    .line 932
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #uriStr:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReply(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 5
    .parameter "timelineItem"

    .prologue
    const/4 v4, 0x1

    .line 888
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    sget-object v2, Lcom/google/glass/logging/UserEventAction;->REPLY_INITIATED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 890
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_SEND_VOICE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 891
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "trigger_method"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 893
    const-string v1, "REPLY_TO_ID"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 894
    const-string v1, "should_finish_turn_screen_off"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 895
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 896
    return v4
.end method

.method public onReplyAll(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 5
    .parameter "timelineItem"

    .prologue
    const/4 v4, 0x1

    .line 901
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    sget-object v2, Lcom/google/glass/logging/UserEventAction;->REPLY_ALL_INITIATED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 903
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_SEND_VOICE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 904
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "trigger_method"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 906
    const-string v1, "REPLY_TO_ID"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    const-string v1, "REPLY_ALL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 908
    const-string v1, "should_finish_turn_screen_off"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 909
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 910
    return v4
.end method

.method onShare(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 7
    .parameter "selectedTimelineItem"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 698
    sget-object v3, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 701
    .local v2, uri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    const-class v5, Lcom/google/glass/share/ShareActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.intent.action.EDIT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 704
    .local v1, shareMenuIntent:Landroid/content/Intent;
    const-string v3, "item_id"

    new-instance v4, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v4, p1}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 706
    const-string v3, "update_timeline_share"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 707
    sget-object v3, Lcom/google/glass/timeline/TimelineHelper;->SUPPORTED_MEDIA_MIME_TYPES:[Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z

    move-result v0

    .line 709
    .local v0, allowVoiceAnnotation:Z
    const-string v3, "voice_annotation"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 710
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v3, v1, v6}, Lcom/google/glass/app/GlassActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 711
    return v6
.end method
