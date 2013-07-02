.class final Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$9;
.super Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;
.source "VoiceMenuCommandItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->newReplyItem(Landroid/content/Context;Lcom/google/glass/voice/NotificationVoiceCommandHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/glass/home/voice/menu/VoiceMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$helper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

.field final synthetic val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;


# direct methods
.method varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;I[Lcom/google/glass/home/voice/menu/Requirement;Lcom/google/glass/voice/NotificationVoiceCommandHelper;Lcom/google/googlex/glass/common/proto/TimelineItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter
    .parameter

    .prologue
    .line 322
    iput-object p4, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$9;->val$helper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    iput-object p5, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$9;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;-><init>(Lcom/google/glass/voice/VoiceCommand;I[Lcom/google/glass/home/voice/menu/Requirement;)V

    return-void
.end method


# virtual methods
.method public onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V
    .locals 3
    .parameter "environment"
    .parameter "spoken"

    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;->onTrigger(Lcom/google/glass/home/voice/menu/VoiceMenuEnvironment;Z)V

    .line 326
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$9;->val$helper:Lcom/google/glass/voice/NotificationVoiceCommandHelper;

    sget-object v1, Lcom/google/glass/voice/VoiceCommand;->REPLY:Lcom/google/glass/voice/VoiceCommand;

    iget-object v2, p0, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem$9;->val$timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/NotificationVoiceCommandHelper;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    .line 327
    return-void
.end method
