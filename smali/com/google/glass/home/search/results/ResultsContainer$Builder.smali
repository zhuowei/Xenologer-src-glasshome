.class public Lcom/google/glass/home/search/results/ResultsContainer$Builder;
.super Ljava/lang/Object;
.source "ResultsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/search/results/ResultsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private isStartSoundSearchResult:Z

.field private final resultPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->resultPages:Ljava/util/List;

    return-void
.end method

.method public static fromView(Landroid/view/View;Landroid/content/Context;)Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 3
    .parameter "view"
    .parameter "context"

    .prologue
    .line 134
    new-instance v0, Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    invoke-direct {v0}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;-><init>()V

    .line 135
    .local v0, builder:Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    invoke-static {p1}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->getDefaultOptionMenu(Landroid/content/Context;)Lcom/google/glass/widget/OptionMenu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;

    .line 136
    invoke-virtual {v0}, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->build()Lcom/google/glass/home/search/results/ResultsContainer;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultOptionMenu(Landroid/content/Context;)Lcom/google/glass/widget/OptionMenu;
    .locals 4
    .parameter "context"

    .prologue
    .line 140
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->WEB_BROWSING:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    new-instance v0, Lcom/google/glass/widget/OptionMenu;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/OptionMenu;-><init>(Landroid/content/Context;)V

    .line 142
    .local v0, optionMenu:Lcom/google/glass/widget/OptionMenu;
    const/16 v1, 0xd

    sget v2, Lcom/google/glass/home/R$string;->timeline_menu_view_website:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$drawable;->browser_website:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    .line 146
    .end local v0           #optionMenu:Lcom/google/glass/widget/OptionMenu;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLocalResultOptionMenu(Landroid/content/Context;Z)Lcom/google/glass/widget/OptionMenu;
    .locals 4
    .parameter "context"
    .parameter "hasPhoneNumber"

    .prologue
    .line 151
    new-instance v0, Lcom/google/glass/widget/OptionMenu;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/OptionMenu;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, optionMenu:Lcom/google/glass/widget/OptionMenu;
    const/16 v1, 0x9

    sget v2, Lcom/google/glass/home/R$string;->timeline_menu_navigate:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$drawable;->ic_navigate_medium:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    .line 154
    if-eqz p1, :cond_0

    .line 155
    const/16 v1, 0x8

    sget v2, Lcom/google/glass/home/R$string;->timeline_menu_voice_call:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$drawable;->ic_phone_out_medium:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/widget/OptionMenu;->addItem(ILjava/lang/String;I)V

    .line 158
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->resultPages:Ljava/util/List;

    new-instance v1, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;

    invoke-direct {v1, p1, v2, v2}, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;-><init>(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-object p0
.end method

.method public addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    .locals 3
    .parameter "view"
    .parameter "optionMenu"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->resultPages:Ljava/util/List;

    new-instance v1, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;-><init>(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-object p0
.end method

.method public addView(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    .locals 2
    .parameter "view"
    .parameter "optionMenu"
    .parameter "bundle"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->resultPages:Ljava/util/List;

    new-instance v1, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/glass/home/search/results/ResultsContainer$ResultPage;-><init>(Landroid/view/View;Lcom/google/glass/widget/OptionMenu;Landroid/os/Bundle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-object p0
.end method

.method public build()Lcom/google/glass/home/search/results/ResultsContainer;
    .locals 4

    .prologue
    .line 130
    new-instance v0, Lcom/google/glass/home/search/results/ResultsContainer;

    iget-object v1, p0, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->resultPages:Ljava/util/List;

    iget-boolean v2, p0, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->isStartSoundSearchResult:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/home/search/results/ResultsContainer;-><init>(Ljava/util/List;ZLcom/google/glass/home/search/results/ResultsContainer$1;)V

    return-object v0
.end method

.method public setIsStartSoundSearchResult(Z)Lcom/google/glass/home/search/results/ResultsContainer$Builder;
    .locals 0
    .parameter "isStartSoundSearchResult"

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/google/glass/home/search/results/ResultsContainer$Builder;->isStartSoundSearchResult:Z

    .line 126
    return-object p0
.end method
