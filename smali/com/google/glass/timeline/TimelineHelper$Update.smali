.class public abstract Lcom/google/glass/timeline/TimelineHelper$Update;
.super Ljava/lang/Object;
.source "TimelineHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/TimelineHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Update"
.end annotation


# instance fields
.field private updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/timeline/TimelineHelper$Update;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/google/glass/timeline/TimelineHelper$Update;->execute()V

    return-void
.end method

.method private execute()V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/glass/timeline/TimelineHelper$Update;->onExecute()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/TimelineHelper$Update;->updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 188
    return-void
.end method


# virtual methods
.method public getItem()Lcom/google/googlex/glass/common/proto/TimelineItem;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineHelper$Update;->updatedItem:Lcom/google/googlex/glass/common/proto/TimelineItem;

    return-object v0
.end method

.method public abstract onExecute()Lcom/google/googlex/glass/common/proto/TimelineItem;
.end method
