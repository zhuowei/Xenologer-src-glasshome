.class public Lcom/google/glass/home/voice/VoiceContextMenuActivity;
.super Lcom/google/glass/home/voice/VoiceMenuActivity;
.source "VoiceContextMenuActivity.java"


# instance fields
.field private incomingCallCommandListener:Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;

.field private timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private voiceConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;-><init>()V

    .line 30
    new-instance v0, Lcom/google/glass/home/voice/VoiceContextMenuActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/voice/VoiceContextMenuActivity$1;-><init>(Lcom/google/glass/home/voice/VoiceContextMenuActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->incomingCallCommandListener:Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;

    return-void
.end method

.method private loadExtras()V
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 94
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 95
    const-string v1, "voice_config"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/VoiceConfigDescriptor;

    iput-object v1, p0, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;

    .line 96
    const-string v1, "timeline_item"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineItem;

    iput-object v1, p0, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    if-nez v1, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No timeline item specified in intent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;

    if-nez v1, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No voice config extra specified in intent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_2
    return-void
.end method


# virtual methods
.method public getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;

    return-object v0
.end method

.method public getPrimaryMenuItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/home/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    sget-object v1, Lcom/google/glass/voice/VoiceConfigDescriptor;->NOTIFICATION:Lcom/google/glass/voice/VoiceConfigDescriptor;

    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceConfigDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    new-instance v0, Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    new-instance v1, Lcom/google/glass/timeline/TimelineOptionsHelper;

    new-instance v2, Lcom/google/glass/util/IconProvider;

    invoke-direct {v2, p0}, Lcom/google/glass/util/IconProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p0, v2}, Lcom/google/glass/timeline/TimelineOptionsHelper;-><init>(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/util/IconProvider;)V

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;-><init>(Lcom/google/glass/app/GlassVoiceActivity;Lcom/google/glass/timeline/TimelineOptionsHelper;)V

    .line 65
    .local v0, helper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {p0, v0, v1}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->getNotificationContextMenuItems(Landroid/content/Context;Lcom/google/glass/voice/NotificationVoiceCommandHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v1

    .line 77
    .end local v0           #helper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;
    :goto_0
    return-object v1

    .line 66
    :cond_0
    sget-object v1, Lcom/google/glass/voice/VoiceConfigDescriptor;->SHARE:Lcom/google/glass/voice/VoiceConfigDescriptor;

    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceConfigDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-static {p0, v1}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->getShareContextMenuItems(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 69
    :cond_1
    sget-object v1, Lcom/google/glass/voice/VoiceConfigDescriptor;->INCOMING_CALL:Lcom/google/glass/voice/VoiceConfigDescriptor;

    iget-object v2, p0, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/VoiceConfigDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    iget-object v1, p0, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->incomingCallCommandListener:Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;

    invoke-static {p0, v1}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->getIncomingCallContextMenuItems(Landroid/content/Context;Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$VoiceMenuCommandItemListener;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to load voice context menu for unknown voice config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->voiceConfig:Lcom/google/glass/voice/VoiceConfigDescriptor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->loadExtras()V

    .line 49
    invoke-super {p0, p1}, Lcom/google/glass/home/voice/VoiceMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/glass/home/voice/VoiceContextMenuActivity;->loadExtras()V

    .line 55
    invoke-super {p0}, Lcom/google/glass/home/voice/VoiceMenuActivity;->onResume()V

    .line 56
    return-void
.end method
