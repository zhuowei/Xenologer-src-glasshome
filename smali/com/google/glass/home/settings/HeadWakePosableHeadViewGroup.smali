.class public Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;
.super Landroid/widget/RelativeLayout;
.source "HeadWakePosableHeadViewGroup.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final baseLayer:Landroid/widget/ImageView;

.field private final capLayer:Landroid/widget/ImageView;

.field enabled:Z

.field private final headLayer:Landroid/widget/ImageView;

.field private initialImageSizeCached:Z

.field private maxHeight:I

.field private maxWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "style"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->enabled:Z

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->initialImageSizeCached:Z

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/home/R$layout;->posable_head_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    sget v0, Lcom/google/glass/home/R$id;->head_wake_icon_base:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->baseLayer:Landroid/widget/ImageView;

    .line 55
    sget v0, Lcom/google/glass/home/R$id;->head_wake_icon_head:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->headLayer:Landroid/widget/ImageView;

    .line 56
    sget v0, Lcom/google/glass/home/R$id;->head_wake_icon_cap:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->capLayer:Landroid/widget/ImageView;

    .line 57
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 64
    iget-boolean v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->initialImageSizeCached:Z

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->baseLayer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->maxWidth:I

    .line 66
    iget-object v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->baseLayer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->maxHeight:I

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->initialImageSizeCached:Z

    .line 68
    sget-object v0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base image size w,h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->maxWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->maxHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->maxWidth:I

    iget v1, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->maxWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->maxHeight:I

    iget v2, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->maxHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->maxWidth:I

    .line 73
    sget-object v0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->maxWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->maxWidth:I

    iget v1, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->maxHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->setMeasuredDimension(II)V

    .line 79
    return-void
.end method

.method public setHeadAngleDegs(F)V
    .locals 2
    .parameter "angleDegs"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->headLayer:Landroid/widget/ImageView;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 104
    return-void
.end method

.method public setHeadWakeEnabled(Z)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->baseLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->headLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->capLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->invalidate()V

    .line 99
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->headLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/google/glass/home/settings/HeadWakePosableHeadViewGroup;->capLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
