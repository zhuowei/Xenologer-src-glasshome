.class Lcom/google/glass/home/settings/ViewLicensesActivity$1;
.super Landroid/webkit/WebViewClient;
.source "ViewLicensesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/ViewLicensesActivity;->showHtml(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/ViewLicensesActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/ViewLicensesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/glass/home/settings/ViewLicensesActivity$1;->this$0:Lcom/google/glass/home/settings/ViewLicensesActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v1, 0x1

    .line 191
    iget-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity$1;->this$0:Lcom/google/glass/home/settings/ViewLicensesActivity;

    #getter for: Lcom/google/glass/home/settings/ViewLicensesActivity;->licenseSwitcher:Landroid/widget/ViewSwitcher;
    invoke-static {v0}, Lcom/google/glass/home/settings/ViewLicensesActivity;->access$300(Lcom/google/glass/home/settings/ViewLicensesActivity;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 192
    iget-object v0, p0, Lcom/google/glass/home/settings/ViewLicensesActivity$1;->this$0:Lcom/google/glass/home/settings/ViewLicensesActivity;

    #setter for: Lcom/google/glass/home/settings/ViewLicensesActivity;->licenseHasLoaded:Z
    invoke-static {v0, v1}, Lcom/google/glass/home/settings/ViewLicensesActivity;->access$402(Lcom/google/glass/home/settings/ViewLicensesActivity;Z)Z

    .line 193
    return-void
.end method
