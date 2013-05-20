.class Lcom/google/glass/horizontalscroll/HorizontallyTuggableView$2;
.super Landroid/widget/BaseAdapter;
.source "HorizontallyTuggableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->setView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;


# direct methods
.method constructor <init>(Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView$2;->this$0:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 84
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView$2;->this$0:Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;

    #getter for: Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->view:Landroid/view/View;
    invoke-static {v0}, Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;->access$000(Lcom/google/glass/horizontalscroll/HorizontallyTuggableView;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
