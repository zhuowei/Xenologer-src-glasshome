.class Lcom/google/glass/home/timeline/TimelineNotificationFilter$Result;
.super Ljava/lang/Object;
.source "TimelineNotificationFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/TimelineNotificationFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Result"
.end annotation


# instance fields
.field private final hasFutureNotification:Z

.field private final itemToNotify:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field private final numNotifications:I


# direct methods
.method constructor <init>(Lcom/google/googlex/glass/common/proto/TimelineItem;ZI)V
    .locals 0
    .parameter "itemToNotify"
    .parameter "hasFutureNotification"
    .parameter "numNotifications"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/glass/home/timeline/TimelineNotificationFilter$Result;->itemToNotify:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 53
    iput-boolean p2, p0, Lcom/google/glass/home/timeline/TimelineNotificationFilter$Result;->hasFutureNotification:Z

    .line 54
    iput p3, p0, Lcom/google/glass/home/timeline/TimelineNotificationFilter$Result;->numNotifications:I

    .line 55
    return-void
.end method


# virtual methods
.method public getItemToNotify()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationFilter$Result;->itemToNotify:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public getNumNotifications()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationFilter$Result;->numNotifications:I

    return v0
.end method

.method public hasFutureNotification()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/glass/home/timeline/TimelineNotificationFilter$Result;->hasFutureNotification:Z

    return v0
.end method
