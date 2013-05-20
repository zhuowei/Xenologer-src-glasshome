.class final Lcom/google/glass/timeline/TimelineHelper$5;
.super Ljava/lang/Object;
.source "TimelineHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItemAsync(Lcom/google/glass/timeline/TimelineHelper$Update;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$update:Lcom/google/glass/timeline/TimelineHelper$Update;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineHelper$Update;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineHelper$5;->val$update:Lcom/google/glass/timeline/TimelineHelper$Update;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineHelper$5;->val$update:Lcom/google/glass/timeline/TimelineHelper$Update;

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->atomicUpdateTimelineItem(Lcom/google/glass/timeline/TimelineHelper$Update;)V

    .line 540
    return-void
.end method
