.class public interface abstract Lcom/google/glass/home/timeline/TimelineItemLoader;
.super Ljava/lang/Object;
.source "TimelineItemLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;,
        Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/google/glass/home/timeline/TimelineItemLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/google/glass/home/timeline/TimelineItemLoader$1;

    invoke-direct {v0}, Lcom/google/glass/home/timeline/TimelineItemLoader$1;-><init>()V

    sput-object v0, Lcom/google/glass/home/timeline/TimelineItemLoader;->EMPTY:Lcom/google/glass/home/timeline/TimelineItemLoader;

    return-void
.end method


# virtual methods
.method public abstract asyncRead(ILcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;)V
.end method

.method public abstract find(Lcom/google/glass/timeline/TimelineItemId;)I
.end method

.method public abstract getCount()I
.end method
