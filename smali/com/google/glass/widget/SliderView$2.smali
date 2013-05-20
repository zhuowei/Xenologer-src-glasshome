.class Lcom/google/glass/widget/SliderView$2;
.super Ljava/lang/Object;
.source "SliderView.java"

# interfaces
.implements Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/SliderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/SliderView;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/SliderView;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/glass/widget/SliderView$2;->this$0:Lcom/google/glass/widget/SliderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocused(I)V
    .locals 0
    .parameter "selectedPosition"

    .prologue
    .line 74
    return-void
.end method

.method public onScaleChanged(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/glass/widget/SliderView$2;->this$0:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/SliderView;->setScale(F)V

    .line 92
    return-void
.end method

.method public onScrollPositionChanged(F)V
    .locals 1
    .parameter "position"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/widget/SliderView$2;->this$0:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/SliderView;->setProportionalIndex(F)V

    .line 87
    return-void
.end method

.method public onSettled(I)V
    .locals 0
    .parameter "selectedPosition"

    .prologue
    .line 78
    return-void
.end method

.method public onUnsettled(I)V
    .locals 0
    .parameter "selectedPosition"

    .prologue
    .line 82
    return-void
.end method
