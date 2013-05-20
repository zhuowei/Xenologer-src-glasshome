.class Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;
.super Ljava/lang/Object;
.source "BaseHorizontalScrollView.java"

# interfaces
.implements Lcom/google/glass/input/ItemScroller$Scrollable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView.2;"
    iput-object p1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem()F
    .locals 1

    .prologue
    .line 201
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView.2;"
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F
    invoke-static {v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$100(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v0

    return v0
.end method

.method public getNumberOfItems()I
    .locals 1

    .prologue
    .line 292
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView.2;"
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->hasData()Z
    invoke-static {v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$700(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 295
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getItemCount()I
    invoke-static {v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$800(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)I

    move-result v0

    goto :goto_0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 300
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView.2;"
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentScale:F
    invoke-static {v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$1400(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v0

    return v0
.end method

.method public setItem(F)V
    .locals 16
    .parameter "item"

    .prologue
    .line 206
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView.2;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z
    invoke-static {v11}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$200(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 207
    invoke-static {}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$300()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setItem("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") while deactivated."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F
    invoke-static {v11}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$100(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v5

    .line 213
    .local v5, lastScrollerPosition:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPositionUpdateTime:D
    invoke-static {v11}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$400(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)D

    move-result-wide v6

    .line 214
    .local v6, lastScrollerPositionUpdateTime:D
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isSettled()Z
    invoke-static {v11}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$500(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v10

    .line 217
    .local v10, wasSettled:Z
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    long-to-double v11, v11

    const-wide v13, 0x41cdcd6500000000L

    div-double v3, v11, v13

    .line 220
    .local v3, currentTime:D
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move/from16 v0, p1

    #setter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F
    invoke-static {v11, v0}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$102(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;F)F

    .line 221
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #setter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPositionUpdateTime:D
    invoke-static {v11, v3, v4}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$402(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;D)D

    .line 224
    const-wide/16 v11, 0x0

    cmpl-double v11, v6, v11

    if-lez v11, :cond_2

    cmpl-double v11, v3, v6

    if-lez v11, :cond_2

    .line 226
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F
    invoke-static {v12}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$100(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v12

    sub-float/2addr v12, v5

    float-to-double v12, v12

    sub-double v14, v3, v6

    div-double/2addr v12, v14

    double-to-float v12, v12

    #setter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollVelocity:F
    invoke-static {v11, v12}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$602(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;F)F

    .line 231
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F
    invoke-static {v11}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$100(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 232
    .local v9, position:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->hasData()Z
    invoke-static {v11}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$700(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 235
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->getItemCount()I
    invoke-static {v11}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$800(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)I

    move-result v2

    .line 236
    .local v2, count:I
    if-ltz v9, :cond_3

    if-lt v9, v2, :cond_4

    .line 237
    :cond_3
    invoke-static {}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$300()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid position reported from item scroller; item count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; reported position: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " (rounded to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    if-gez v9, :cond_8

    .line 240
    const/4 v9, 0x0

    .line 254
    .end local v2           #count:I
    :cond_4
    :goto_1
    int-to-float v11, v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F
    invoke-static {v12}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$100(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x4420

    mul-float/2addr v11, v12

    float-to-int v8, v11

    .line 257
    .local v8, offset:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->selectedPosition:I
    invoke-static {v11}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$900(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)I

    move-result v11

    if-eq v11, v9, :cond_5

    .line 258
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    const/4 v12, 0x1

    #calls: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->internalSetSelectedPosition(IZ)V
    invoke-static {v11, v9, v12}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$1000(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;IZ)V

    .line 259
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    const/4 v12, 0x0

    #calls: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->updateViewsInternal(Z)Z
    invoke-static {v11, v12}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$1100(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;Z)Z

    move-result v1

    .line 260
    .local v1, changedViews:Z
    invoke-static {v1}, Lcom/google/glass/util/Assert;->assertTrue(Z)V

    .line 263
    if-eqz v10, :cond_5

    .line 264
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onSettledInternal()V
    invoke-static {v11}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$1200(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 269
    .end local v1           #changedViews:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentTranslation:I
    invoke-static {v11}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$1300(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)I

    move-result v11

    if-eq v11, v8, :cond_6

    .line 270
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentScale:F
    invoke-static {v12}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$1400(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v12

    #calls: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->setTranslationAndScale(IF)V
    invoke-static {v11, v8, v12}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$1500(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;IF)V

    .line 274
    :cond_6
    if-eqz v10, :cond_a

    .line 275
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isSettled()Z
    invoke-static {v11}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$500(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 276
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onUnsettledInternal()V
    invoke-static {v11}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$1600(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 285
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->positionListener:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;
    invoke-static {v11}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$1700(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;

    move-result-object v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F
    invoke-static {v11}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$100(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v11

    cmpl-float v11, v11, v5

    if-eqz v11, :cond_0

    .line 286
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->positionListener:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;
    invoke-static {v11}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$1700(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->scrollerPosition:F
    invoke-static {v12}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$100(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v12

    invoke-interface {v11, v12}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;->onScrollPositionChanged(F)V

    goto/16 :goto_0

    .line 242
    .end local v8           #offset:I
    .restart local v2       #count:I
    :cond_8
    add-int/lit8 v9, v2, -0x1

    goto/16 :goto_1

    .line 248
    .end local v2           #count:I
    :cond_9
    if-eqz v9, :cond_4

    .line 249
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 279
    .restart local v8       #offset:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isSettled()Z
    invoke-static {v11}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$500(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 280
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onSettledInternal()V
    invoke-static {v11}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$1200(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    goto :goto_2
.end method

.method public setScale(F)V
    .locals 4
    .parameter "scale"

    .prologue
    .line 305
    .local p0, this:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;,"Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView.2;"
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isActivated:Z
    invoke-static {v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$200(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 306
    invoke-static {}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScale("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") while deactivated."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentScale:F
    invoke-static {v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$1400(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)F

    move-result v1

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isSettled()Z
    invoke-static {v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$500(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v0

    .line 316
    .local v0, wasSettled:Z
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    iget-object v2, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->currentTranslation:I
    invoke-static {v2}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$1300(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)I

    move-result v2

    #calls: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->setTranslationAndScale(IF)V
    invoke-static {v1, v2, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$1500(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;IF)V

    .line 319
    if-eqz v0, :cond_3

    .line 320
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isSettled()Z
    invoke-static {v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$500(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 321
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onUnsettledInternal()V
    invoke-static {v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$1600(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    .line 330
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->positionListener:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;
    invoke-static {v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$1700(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #getter for: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->positionListener:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;
    invoke-static {v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$1700(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$PositionListener;->onScaleChanged(F)V

    goto :goto_0

    .line 324
    :cond_3
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->isSettled()Z
    invoke-static {v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$500(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 325
    iget-object v1, p0, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView$2;->this$0:Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;

    #calls: Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->onSettledInternal()V
    invoke-static {v1}, Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;->access$1200(Lcom/google/glass/horizontalscroll/BaseHorizontalScrollView;)V

    goto :goto_1
.end method
