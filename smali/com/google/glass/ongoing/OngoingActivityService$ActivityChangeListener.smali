.class public interface abstract Lcom/google/glass/ongoing/OngoingActivityService$ActivityChangeListener;
.super Ljava/lang/Object;
.source "OngoingActivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/ongoing/OngoingActivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActivityChangeListener"
.end annotation


# virtual methods
.method public abstract onActivityAdded(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V
.end method

.method public abstract onActivityRemoved(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V
.end method

.method public abstract onActivityUpdated(Lcom/google/glass/ongoing/OngoingActivityService$ActivityRecord;)V
.end method
