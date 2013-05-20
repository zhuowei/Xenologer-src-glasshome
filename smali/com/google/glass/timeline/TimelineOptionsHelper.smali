.class public Lcom/google/glass/timeline/TimelineOptionsHelper;
.super Ljava/lang/Object;
.source "TimelineOptionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/TimelineOptionsHelper$8;,
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
    .line 53
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
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    .line 91
    iput-object p2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->iconProvider:Lcom/google/glass/util/IconProvider;

    .line 93
    invoke-static {p1}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    .line 94
    .local v0, app:Lcom/google/glass/app/GlassApplication;
    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 95
    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    .line 96
    new-instance v1, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v1}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    iput-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/app/GlassActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/timeline/TimelineHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/logging/UserEventHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/timeline/TimelineOptionsHelper;)Lcom/google/glass/sound/SoundManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method private addBroadcast(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 198
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

    .line 200
    return-void
.end method

.method private addCustom(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 0
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addBroadcast(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    .line 190
    return-void
.end method

.method private addDelete(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 242
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

    .line 244
    return-void
.end method

.method private addHangout(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 340
    const/4 v5, 0x0

    .line 341
    .local v5, description:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_error_in_a_call_no_hangout:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 346
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

    .line 349
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getHangoutHelper(Landroid/content/Context;)Lcom/google/glass/util/HangoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/HangoutHelper;->isInHangout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
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
    .line 131
    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$State;->DEFAULT:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    invoke-direct {p0, p3, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/MenuItem$State;)Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v0

    .line 133
    .local v0, menuValue:Lcom/google/googlex/glass/common/proto/MenuValue;
    sget-object v1, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->$SwitchMap$com$google$googlex$glass$common$proto$MenuItem$Action:[I

    invoke-virtual {p3}, Lcom/google/googlex/glass/common/proto/MenuItem;->getAction()Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 135
    :pswitch_0
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addCustom(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 138
    :pswitch_1
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addBroadcast(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 141
    :pswitch_2
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addReply(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    goto :goto_0

    .line 144
    :pswitch_3
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addReplyAll(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 147
    :pswitch_4
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addDelete(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 150
    :pswitch_5
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addShare(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    goto :goto_0

    .line 153
    :pswitch_6
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addReadAloud(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 156
    :pswitch_7
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addVoiceCall(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 159
    :pswitch_8
    invoke-virtual {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addNavigate(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 162
    :pswitch_9
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addSearch(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 165
    :pswitch_a
    invoke-direct {p0, p1, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMuteMic(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 168
    :pswitch_b
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addHangout(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 171
    :pswitch_c
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addViewWebsite(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_0

    .line 174
    :pswitch_d
    invoke-direct {p0, p1, v0, p3, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addTogglePinned(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    goto :goto_0

    .line 133
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

    .line 391
    new-instance v2, Lcom/google/glass/widget/OptionMenu$ItemState;

    invoke-direct {v2, v4, p2, p3}, Lcom/google/glass/widget/OptionMenu$ItemState;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 392
    .local v2, itemState:Lcom/google/glass/widget/OptionMenu$ItemState;
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/glass/widget/OptionMenu$ItemState;

    aput-object v2, v3, v4

    invoke-virtual {p0, p1, p6, v3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/Object;[Lcom/google/glass/widget/OptionMenu$ItemState;)I

    move-result v0

    .line 393
    .local v0, id:I
    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v1

    .line 394
    .local v1, item:Lcom/google/glass/widget/OptionMenu$Item;
    invoke-virtual {v1, p4}, Lcom/google/glass/widget/OptionMenu$Item;->setEnabled(Z)V

    .line 395
    invoke-virtual {v1, p5}, Lcom/google/glass/widget/OptionMenu$Item;->setDescription(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method private addMuteMic(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 8
    .parameter "menu"
    .parameter "menuItem"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 323
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v4}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 324
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v1, Lcom/google/glass/widget/OptionMenu$ItemState;

    sget v4, Lcom/google/glass/common/R$string;->phone_call_mute:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$drawable;->ic_microphone_medium:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v1, v6, v4, v5}, Lcom/google/glass/widget/OptionMenu$ItemState;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 327
    .local v1, muteState:Lcom/google/glass/widget/OptionMenu$ItemState;
    new-instance v3, Lcom/google/glass/widget/OptionMenu$ItemState;

    sget v4, Lcom/google/glass/common/R$string;->phone_call_unmute:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$drawable;->ic_microphone_off_medium:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {v3, v7, v4, v5}, Lcom/google/glass/widget/OptionMenu$ItemState;-><init>(ILjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 330
    .local v3, unmuteState:Lcom/google/glass/widget/OptionMenu$ItemState;
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/google/glass/widget/OptionMenu$ItemState;

    aput-object v1, v4, v6

    aput-object v3, v4, v7

    invoke-virtual {p0, p1, p2, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/Object;[Lcom/google/glass/widget/OptionMenu$ItemState;)I

    move-result v0

    .line 331
    .local v0, menuItemId:I
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/glass/util/MicrophoneHelper;->updateOptionMenuItem(Landroid/content/Context;Lcom/google/glass/widget/OptionMenu$Item;)V

    .line 332
    return-void
.end method

.method private addReadAloud(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 271
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

    .line 273
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

    .line 209
    invoke-static {p4}, Lcom/google/glass/timeline/TimelineHelper;->failedToSyncToCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
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

    .line 219
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
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

    .line 216
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

    .line 227
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
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

    .line 234
    :goto_0
    return-void

    .line 231
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
    .line 313
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

    .line 315
    return-void
.end method

.method private addShare(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 8
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"
    .parameter "timelineItem"

    .prologue
    .line 253
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/glass/entity/EntityHelper;->getMatchingShareTargets(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v7

    .line 255
    .local v7, shareTargets:Ljava/util/List;,"Ljava/util/List<Lcom/google/googlex/glass/common/proto/Entity;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
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

    .line 263
    :goto_0
    return-void

    .line 260
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

    .line 370
    invoke-virtual {p4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsPinned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
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

    .line 377
    :goto_0
    return-void

    .line 374
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
    .line 358
    sget v0, Lcom/google/glass/common/R$string;->timeline_menu_new_search:I

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

    .line 360
    return-void
.end method

.method private addVoiceCall(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 282
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->BLUETOOTH_HEADSET:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    const/4 v5, 0x0

    .line 284
    .local v5, description:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_error_in_a_call_no_call:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 289
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

    .line 293
    .end local v5           #description:Ljava/lang/String;
    :cond_1
    return-void

    .line 286
    .restart local v5       #description:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getHangoutHelper(Landroid/content/Context;)Lcom/google/glass/util/HangoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/HangoutHelper;->isInHangout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
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
    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->iconProvider:Lcom/google/glass/util/IconProvider;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuValue;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->iconProvider:Lcom/google/glass/util/IconProvider;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuValue;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/util/IconProvider;->getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 427
    :cond_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 428
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 430
    :cond_1
    return-object v0
.end method

.method private getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;
    .locals 1
    .parameter "value"
    .parameter "defaultResId"

    .prologue
    .line 434
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuValue;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuValue;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 439
    :goto_0
    return-object v0

    .line 436
    :cond_0
    if-eqz p2, :cond_1

    .line 437
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0, p2}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 439
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private getValueForState(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/MenuItem$State;)Lcom/google/googlex/glass/common/proto/MenuValue;
    .locals 3
    .parameter "item"
    .parameter "state"

    .prologue
    .line 414
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

    .line 415
    .local v1, value:Lcom/google/googlex/glass/common/proto/MenuValue;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/MenuValue;->getState()Lcom/google/googlex/glass/common/proto/MenuItem$State;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .line 419
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
    .line 581
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem;->hasBroadcastAction()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 582
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem;->getBroadcastAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 583
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "itemId"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    const-string v3, "menu_item_id"

    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/MenuItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCreator()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 586
    const-string v3, "creator"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 589
    :cond_0
    const-string v3, "share_target_count"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetCount()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 592
    invoke-virtual {p1, v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTarget(I)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v2

    .line 593
    .local v2, shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->createShareTargetExtraKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 595
    .end local v2           #shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_1
    iget-object v3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v3, v1}, Lcom/google/glass/app/GlassActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 596
    const/4 v3, 0x1

    .line 598
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
    .line 692
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->toBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v13

    .line 693
    .local v13, updatedItemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/glass/common/proto/MenuItem;->getRemoveWhenSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual {v13}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getMenuItemCount()I

    move-result v1

    if-ge v10, v1, :cond_0

    .line 695
    invoke-virtual {v13, v10}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->getMenuItem(I)Lcom/google/googlex/glass/common/proto/MenuItem;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/google/googlex/glass/common/proto/MenuItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 696
    invoke-virtual {v13, v10}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->removeMenuItem(I)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 701
    .end local v10           #i:I
    :cond_0
    invoke-virtual {v13}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v12

    .line 703
    .local v12, updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$State;->PENDING:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/MenuItem$State;)Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v11

    .line 704
    .local v11, pendingValue:Lcom/google/googlex/glass/common/proto/MenuValue;
    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$State;->CONFIRMED:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/MenuItem$State;)Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v8

    .line 705
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

    .line 710
    .local v14, userAction:Lcom/google/googlex/glass/common/proto/UserAction;
    if-eqz v11, :cond_6

    if-eqz v8, :cond_6

    .line 711
    sget-object v1, Lcom/google/googlex/glass/common/proto/MenuItem$State;->DEFAULT:Lcom/google/googlex/glass/common/proto/MenuItem$State;

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getValueForState(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/MenuItem$State;)Lcom/google/googlex/glass/common/proto/MenuValue;

    move-result-object v9

    .line 714
    .local v9, defaultValue:Lcom/google/googlex/glass/common/proto/MenuValue;
    const/4 v1, 0x0

    invoke-direct {p0, v11, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v3

    .line 715
    .local v3, pendingText:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    const/4 v1, 0x0

    invoke-direct {p0, v9, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v3

    .line 718
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v11, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 719
    .local v4, pendingIcon:Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_2

    .line 720
    sget v1, Lcom/google/glass/common/R$drawable;->ic_warning_medium:I

    invoke-direct {p0, v9, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 722
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v8, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v5

    .line 723
    .local v5, confirmedText:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 724
    const/4 v1, 0x0

    invoke-direct {p0, v9, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuText(Lcom/google/googlex/glass/common/proto/MenuValue;I)Ljava/lang/String;

    move-result-object v5

    .line 726
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v8, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 727
    .local v6, confirmedIcon:Landroid/graphics/drawable/Drawable;
    if-nez v6, :cond_4

    .line 728
    sget v1, Lcom/google/glass/common/R$drawable;->ic_warning_medium:I

    invoke-direct {p0, v9, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getMenuIcon(Lcom/google/googlex/glass/common/proto/MenuValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 731
    :cond_4
    new-instance v7, Lcom/google/glass/timeline/TimelineOptionsHelper$2;

    move-object/from16 v0, p2

    invoke-direct {v7, p0, v12, v14, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper$2;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    move-object v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/glass/timeline/TimelineOptionsHelper;->showConfirmationDialog(Lcom/google/googlex/glass/common/proto/MenuItem;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;)V

    .line 742
    .end local v3           #pendingText:Ljava/lang/String;
    .end local v4           #pendingIcon:Landroid/graphics/drawable/Drawable;
    .end local v5           #confirmedText:Ljava/lang/String;
    .end local v6           #confirmedIcon:Landroid/graphics/drawable/Drawable;
    .end local v9           #defaultValue:Lcom/google/googlex/glass/common/proto/MenuValue;
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 694
    .end local v8           #confirmedValue:Lcom/google/googlex/glass/common/proto/MenuValue;
    .end local v11           #pendingValue:Lcom/google/googlex/glass/common/proto/MenuValue;
    .end local v12           #updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v14           #userAction:Lcom/google/googlex/glass/common/proto/UserAction;
    .restart local v10       #i:I
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 740
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
    .line 766
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v7

    .line 767
    .local v7, itemId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v8

    .line 768
    .local v8, itemSourceId:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_delete_confirming:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 769
    .local v2, pendingText:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_delete_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 770
    .local v3, pendingIcon:Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    sget v1, Lcom/google/glass/common/R$string;->timeline_menu_delete_confirmed:I

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 771
    .local v4, confirmedText:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_done_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 773
    .local v5, confirmedIcon:Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->DELETE_INITIATED:Lcom/google/glass/logging/UserEventAction;

    invoke-static {v8}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 776
    new-instance v6, Lcom/google/glass/timeline/TimelineOptionsHelper$4;

    invoke-direct {v6, p0, v8, v7, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper$4;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;)V

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineOptionsHelper;->showConfirmationDialog(Lcom/google/googlex/glass/common/proto/MenuItem;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;)V

    .line 788
    const/4 v0, 0x1

    return v0
.end method

.method private onHangout(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 7
    .parameter "menuItem"
    .parameter "timelineItem"

    .prologue
    const/4 v3, 0x0

    .line 649
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {p0, v4}, Lcom/google/glass/timeline/TimelineOptionsHelper;->getHangoutHelper(Landroid/content/Context;)Lcom/google/glass/util/HangoutHelper;

    move-result-object v0

    .line 650
    .local v0, hangoutHelper:Lcom/google/glass/util/HangoutHelper;
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v4}, Lcom/google/glass/bluetooth/BluetoothHeadset;->isInCallOrCallSetup(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/google/glass/util/HangoutHelper;->isInHangout()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 651
    :cond_0
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    const-string v5, "In a call or hangout, not initiating a new one."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v4, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v5, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v4, v5}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 681
    :goto_0
    return v3

    .line 656
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->getId()Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, roomId:Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 658
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

    .line 663
    :goto_1
    const/4 v2, 0x0

    .line 664
    .local v2, target:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasCreator()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 665
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v2

    .line 666
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    const-string v5, "Using creator as invite target."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_2
    if-nez v2, :cond_3

    .line 670
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    const-string v5, "No timeline item creator found, falling back to use share target instead."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTargetCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 672
    invoke-virtual {p2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getShareTarget(I)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v2

    .line 676
    :cond_3
    if-nez v2, :cond_4

    .line 677
    sget-object v4, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    const-string v5, "No share target either.  Possibly a dev using adb to directly join a room?"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_4
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/HangoutHelper;->joinHangout(Ljava/lang/String;Lcom/google/googlex/glass/common/proto/Entity;Z)V

    .line 681
    const/4 v3, 0x1

    goto :goto_0

    .line 660
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
    .line 519
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/util/MicrophoneHelper;->toggleMute(Landroid/content/Context;)Z

    .line 520
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0, p1}, Lcom/google/glass/util/MicrophoneHelper;->updateOptionMenuItem(Landroid/content/Context;Lcom/google/glass/widget/OptionMenu$Item;)V

    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method private onNavigate(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 3
    .parameter "selectedTimelineItem"

    .prologue
    .line 567
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasLocation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    sget-object v0, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No location set for timeline item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", skipping navigation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v0, 0x0

    .line 572
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getLocation()Lcom/google/googlex/glass/common/proto/Location;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0, v1}, Lcom/google/glass/maps/NavigationLauncher;->navigate(Lcom/google/googlex/glass/common/proto/Location;Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private onSearch(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 4
    .parameter "selectedTimelineItem"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 529
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "proto/search"

    aput-object v3, v2, v0

    invoke-static {p1, v2}, Lcom/google/glass/timeline/TimelineHelper;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineItem;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 531
    sget-object v1, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    const-string v2, "Timeline item does not have a search proto attachment"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :goto_0
    return v0

    .line 535
    :cond_0
    new-instance v0, Lcom/google/glass/timeline/TimelineOptionsHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper$1;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    move v0, v1

    .line 559
    goto :goto_0
.end method

.method private onShare(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 6
    .parameter "selectedTimelineItem"

    .prologue
    const/4 v5, 0x1

    .line 606
    sget-object v2, Lcom/google/glass/timeline/TimelineProvider;->TIMELINE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 609
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    const-class v4, Lcom/google/glass/share/ShareActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 612
    .local v0, shareMenuIntent:Landroid/content/Intent;
    const-string v2, "item_id"

    new-instance v3, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v3, p1}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 614
    const-string v2, "update_timeline_share"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 615
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v2, v0, v5}, Lcom/google/glass/app/GlassActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 616
    return v5
.end method

.method private onTogglePinned(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 6
    .parameter "timelineItem"

    .prologue
    const/4 v5, 0x1

    .line 859
    invoke-static {}, Lcom/google/googlex/glass/common/proto/UserAction;->newBuilder()Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    move-result-object v1

    .line 860
    .local v1, userAction:Lcom/google/googlex/glass/common/proto/UserAction$Builder;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->toBuilder()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setModifiedTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 862
    .local v0, updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsPinned()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 863
    sget-object v2, Lcom/google/googlex/glass/common/proto/UserAction$Type;->UNPIN:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    .line 864
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 865
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->clearPinTime()Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 872
    :goto_0
    new-instance v2, Lcom/google/glass/timeline/TimelineOptionsHelper$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper$6;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Lcom/google/googlex/glass/common/proto/UserAction$Builder;)V

    invoke-static {v2}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 890
    return v5

    .line 867
    :cond_0
    sget-object v2, Lcom/google/googlex/glass/common/proto/UserAction$Type;->PIN:Lcom/google/googlex/glass/common/proto/UserAction$Type;

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/UserAction$Builder;->setType(Lcom/google/googlex/glass/common/proto/UserAction$Type;)Lcom/google/googlex/glass/common/proto/UserAction$Builder;

    .line 868
    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setIsPinned(Z)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setPinTime(J)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_0
.end method

.method private onViewWebSite(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 4
    .parameter "selectedTimelineItem"

    .prologue
    .line 503
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSendToPhoneUrl()Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    sget-object v2, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    const-string v3, "No web site url available."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v2, 0x0

    .line 511
    :goto_0
    return v2

    .line 509
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 510
    .local v0, browserIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v2, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 511
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private onVoiceCall(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 3
    .parameter "item"
    .parameter "timelineItem"

    .prologue
    .line 625
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

    .line 627
    :cond_0
    sget-object v1, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    const-string v2, "In a call or hangout, not initiating a new one."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)I

    .line 629
    const/4 v1, 0x0

    .line 640
    :goto_0
    return v1

    .line 634
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/MenuItem;->getId()Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, phoneNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 637
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    .line 639
    :cond_2
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v1, v0}, Lcom/google/glass/bluetooth/BluetoothHeadset;->attemptDial(Lcom/google/glass/app/GlassActivity;Ljava/lang/String;)Z

    .line 640
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
    .line 906
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

    new-instance v1, Lcom/google/glass/timeline/TimelineOptionsHelper$7;

    invoke-direct {v1, p0, p1, p6}, Lcom/google/glass/timeline/TimelineOptionsHelper$7;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/glass/timeline/TimelineOptionsHelper$OnConfirmedListener;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->show()V

    .line 929
    return-void
.end method


# virtual methods
.method public varargs addMenuItem(Lcom/google/glass/widget/OptionMenu;Ljava/lang/Object;[Lcom/google/glass/widget/OptionMenu$ItemState;)I
    .locals 2
    .parameter "menu"
    .parameter "extra"
    .parameter "itemStates"

    .prologue
    .line 407
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->getItemCount()I

    move-result v0

    .line 408
    .local v0, id:I
    invoke-virtual {p1, v0, p3}, Lcom/google/glass/widget/OptionMenu;->addItem(I[Lcom/google/glass/widget/OptionMenu$ItemState;)V

    .line 409
    invoke-virtual {p1, v0}, Lcom/google/glass/widget/OptionMenu;->getItem(I)Lcom/google/glass/widget/OptionMenu$Item;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/glass/widget/OptionMenu$Item;->setExtra(Ljava/lang/Object;)V

    .line 410
    return v0
.end method

.method protected addNavigate(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/MenuValue;Lcom/google/googlex/glass/common/proto/MenuItem;)V
    .locals 7
    .parameter "menu"
    .parameter "menuValue"
    .parameter "menuItem"

    .prologue
    .line 301
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

    .line 304
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v0}, Lcom/google/glass/maps/NavigationLauncher;->wakeUpNavigation(Landroid/content/Context;)V

    .line 305
    return-void
.end method

.method protected getGlassActivity()Lcom/google/glass/app/GlassActivity;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    return-object v0
.end method

.method getHangoutHelper(Landroid/content/Context;)Lcom/google/glass/util/HangoutHelper;
    .locals 1
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 946
    new-instance v0, Lcom/google/glass/util/HangoutHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/HangoutHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getTimelineHelper()Lcom/google/glass/timeline/TimelineHelper;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;

    return-object v0
.end method

.method protected getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;
    .locals 1

    .prologue
    .line 936
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

    .line 454
    if-nez p1, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v1

    .line 458
    :cond_1
    invoke-virtual {p2}, Lcom/google/glass/widget/OptionMenu$Item;->getExtra()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/MenuItem;

    .line 459
    .local v0, selectedMenuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    if-eqz v0, :cond_0

    .line 463
    sget-object v2, Lcom/google/glass/timeline/TimelineOptionsHelper$8;->$SwitchMap$com$google$googlex$glass$common$proto$MenuItem$Action:[I

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/MenuItem;->getAction()Lcom/google/googlex/glass/common/proto/MenuItem$Action;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/MenuItem$Action;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 493
    sget-object v2, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    const-string v3, "Action not handled."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 465
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onCustom(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 467
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onShare(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 469
    :pswitch_2
    invoke-direct {p0, p1, v0, p3}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onDelete(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/glass/timeline/TimelineOptionsHelper$TimelineItemDeletedListener;)Z

    move-result v1

    goto :goto_0

    .line 471
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReply(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 473
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReplyAll(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 475
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 477
    :pswitch_6
    invoke-direct {p0, p1, v0}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onBroadcast(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 479
    :pswitch_7
    invoke-direct {p0, v0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onVoiceCall(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 481
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onNavigate(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 483
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onSearch(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 485
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onMuteMic(Lcom/google/glass/widget/OptionMenu$Item;)Z

    move-result v1

    goto :goto_0

    .line 487
    :pswitch_b
    invoke-direct {p0, v0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onHangout(Lcom/google/googlex/glass/common/proto/MenuItem;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 489
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onViewWebSite(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 491
    :pswitch_d
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->onTogglePinned(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v1

    goto :goto_0

    .line 463
    nop

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
    .end packed-switch
.end method

.method public handlePrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 5
    .parameter "menu"
    .parameter "timelineItem"

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-virtual {p1}, Lcom/google/glass/widget/OptionMenu;->clearItems()V

    .line 110
    if-nez p2, :cond_1

    .line 111
    sget-object v3, Lcom/google/glass/timeline/TimelineOptionsHelper;->TAG:Ljava/lang/String;

    const-string v4, "No item to populate options."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    :goto_0
    return v2

    .line 116
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

    .line 117
    .local v1, menuItem:Lcom/google/googlex/glass/common/proto/MenuItem;
    invoke-direct {p0, p1, p2, v1}, Lcom/google/glass/timeline/TimelineOptionsHelper;->addMenuItem(Lcom/google/glass/widget/OptionMenu;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/MenuItem;)V

    goto :goto_1

    .line 120
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
    .line 751
    new-instance v0, Lcom/google/glass/timeline/TimelineOptionsHelper$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/timeline/TimelineOptionsHelper$3;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/googlex/glass/common/proto/UserAction;)V

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 757
    return-void
.end method

.method public onReadAloud(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 7
    .parameter "timelineItem"

    .prologue
    const/4 v4, 0x1

    .line 825
    const/4 v0, 0x0

    .line 826
    .local v0, isTranslationTts:Z
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->hasSendToPhoneUrl()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 827
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSendToPhoneUrl()Ljava/lang/String;

    move-result-object v3

    .line 828
    .local v3, uriStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 829
    .local v2, uri:Landroid/net/Uri;
    const-string v5, "translate.google.com"

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "/translate_tts"

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v4

    .line 831
    :goto_0
    if-eqz v0, :cond_0

    .line 832
    invoke-static {}, Lcom/google/glass/util/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/google/glass/timeline/TimelineOptionsHelper$5;

    invoke-direct {v6, p0, v3}, Lcom/google/glass/timeline/TimelineOptionsHelper$5;-><init>(Lcom/google/glass/timeline/TimelineOptionsHelper;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 841
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #uriStr:Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 844
    invoke-static {p1}, Lcom/google/glass/timeline/TimelineHelper;->formatSpeakableText(Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, textToSynthesize:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 846
    iget-object v5, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-static {v5}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/glass/app/GlassApplication;->speakText(Ljava/lang/String;)V

    .line 850
    .end local v1           #textToSynthesize:Ljava/lang/String;
    :cond_1
    return v4

    .line 829
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v3       #uriStr:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReply(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 5
    .parameter "timelineItem"

    .prologue
    const/4 v4, 0x1

    .line 795
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    sget-object v2, Lcom/google/glass/logging/UserEventAction;->REPLY_INITIATED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 797
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_SEND_VOICE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 798
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "REPLY_TO_ID"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    const-string v1, "should_finish_turn_screen_off"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 800
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 801
    return v4
.end method

.method public onReplyAll(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z
    .locals 5
    .parameter "timelineItem"

    .prologue
    const/4 v4, 0x1

    .line 808
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->userEventHelper:Lcom/google/glass/logging/UserEventHelper;

    sget-object v2, Lcom/google/glass/logging/UserEventAction;->REPLY_ALL_INITIATED:Lcom/google/glass/logging/UserEventAction;

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/timeline/TimelineHelper;->getRedactedSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 810
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.ACTION_SEND_VOICE_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 811
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "REPLY_TO_ID"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    const-string v1, "REPLY_ALL"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 813
    const-string v1, "should_finish_turn_screen_off"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 814
    iget-object v1, p0, Lcom/google/glass/timeline/TimelineOptionsHelper;->activity:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v1, v0}, Lcom/google/glass/app/GlassActivity;->startActivity(Landroid/content/Intent;)V

    .line 815
    return v4
.end method
