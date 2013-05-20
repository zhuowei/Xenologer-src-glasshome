.class Lcom/google/glass/app/GlassActivity$3;
.super Ljava/lang/Object;
.source "GlassActivity.java"

# interfaces
.implements Lcom/google/glass/widget/OptionMenuDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/app/GlassActivity;->openOptionsMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastSelectedItem:Lcom/google/glass/widget/OptionMenu$Item;

.field final synthetic this$0:Lcom/google/glass/app/GlassActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 637
    iput-object p1, p0, Lcom/google/glass/app/GlassActivity$3;->this$0:Lcom/google/glass/app/GlassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraButtonPressed()Z
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$3;->this$0:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->onCameraButtonPressed()Z

    move-result v0

    return v0
.end method

.method public onClosed()V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$3;->lastSelectedItem:Lcom/google/glass/widget/OptionMenu$Item;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$3;->this$0:Lcom/google/glass/app/GlassActivity;

    iget-object v1, p0, Lcom/google/glass/app/GlassActivity$3;->lastSelectedItem:Lcom/google/glass/widget/OptionMenu$Item;

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z

    .line 654
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity$3;->lastSelectedItem:Lcom/google/glass/widget/OptionMenu$Item;

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$3;->this$0:Lcom/google/glass/app/GlassActivity;

    iget-object v1, p0, Lcom/google/glass/app/GlassActivity$3;->this$0:Lcom/google/glass/app/GlassActivity;

    #getter for: Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;
    invoke-static {v1}, Lcom/google/glass/app/GlassActivity;->access$100(Lcom/google/glass/app/GlassActivity;)Lcom/google/glass/widget/OptionMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->onOptionsMenuClosed(Lcom/google/glass/widget/OptionMenu;)V

    .line 657
    return-void
.end method

.method public onDisallowedInput()V
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$3;->this$0:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->onDisallowedInput()V

    .line 672
    return-void
.end method

.method public onItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 646
    iput-object p1, p0, Lcom/google/glass/app/GlassActivity$3;->lastSelectedItem:Lcom/google/glass/widget/OptionMenu$Item;

    .line 647
    const/4 v0, 0x1

    return v0
.end method

.method public shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$3;->this$0:Lcom/google/glass/app/GlassActivity;

    #calls: Lcom/google/glass/app/GlassActivity;->shouldAllowCameraButton()Z
    invoke-static {v0}, Lcom/google/glass/app/GlassActivity;->access$200(Lcom/google/glass/app/GlassActivity;)Z

    move-result v0

    return v0
.end method
