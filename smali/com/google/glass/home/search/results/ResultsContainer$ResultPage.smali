.class public Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;
.super Ljava/lang/Object;
.source "ResultsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/search/results/ResultsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultPage"
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private optionMenu:Lcom/google/glass/widget/OptionMenu;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "optionMenu"
    .parameter "bundle"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;->view:Landroid/view/View;

    .line 76
    iput-object p2, p0, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;->optionMenu:Lcom/google/glass/widget/OptionMenu;

    .line 77
    iput-object p3, p0, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;->bundle:Landroid/os/Bundle;

    .line 78
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getOptionMenu()Lcom/google/glass/widget/OptionMenu;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;->optionMenu:Lcom/google/glass/widget/OptionMenu;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;->view:Landroid/view/View;

    return-object v0
.end method
