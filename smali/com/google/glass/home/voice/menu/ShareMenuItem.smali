.class public Lcom/google/glass/home/voice/menu/ShareMenuItem;
.super Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;
.source "ShareMenuItem.java"


# instance fields
.field private timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;


# direct methods
.method public varargs constructor <init>(Lcom/google/glass/voice/VoiceCommand;ILcom/google/googlex/glass/common/proto/TimelineItem;[Lcom/google/glass/home/voice/menu/Requirement;)V
    .locals 0
    .parameter "command"
    .parameter "stringId"
    .parameter "timelineItem"
    .parameter "requirements"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p4}, Lcom/google/glass/home/voice/menu/VoiceMenuCommandItem;-><init>(Lcom/google/glass/voice/VoiceCommand;I[Lcom/google/glass/home/voice/menu/Requirement;)V

    .line 17
    iput-object p3, p0, Lcom/google/glass/home/voice/menu/ShareMenuItem;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 18
    return-void
.end method


# virtual methods
.method public getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/glass/home/voice/menu/ShareMenuItem;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method
