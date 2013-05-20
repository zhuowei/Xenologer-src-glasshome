.class public interface abstract Lcom/google/glass/horizontalscroll/HorizontalScrollItem;
.super Ljava/lang/Object;
.source "HorizontalScrollItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/horizontalscroll/HorizontalScrollItem$State;
    }
.end annotation


# virtual methods
.method public abstract getBundleId()Lcom/google/glass/timeline/TimelineItemId;
.end method

.method public abstract onConfirm(Lcom/google/glass/app/GlassActivity;)Z
.end method

.method public abstract onDoubleTap(Lcom/google/glass/app/GlassActivity;)Z
.end method

.method public abstract onFocus()V
.end method

.method public abstract onLoad()V
.end method

.method public abstract onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
.end method

.method public abstract onPrepareOptionsMenu(Lcom/google/glass/widget/OptionMenu;)Z
.end method

.method public abstract onSettled()V
.end method

.method public abstract onUnfocus()V
.end method

.method public abstract onUnload()V
.end method

.method public abstract onUnsettled()V
.end method

.method public abstract shouldSuppressSingleTapSound()Z
.end method
