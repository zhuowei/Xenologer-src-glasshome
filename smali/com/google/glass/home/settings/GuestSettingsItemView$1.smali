.class Lcom/google/glass/home/settings/GuestSettingsItemView$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "GuestSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/settings/GuestSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/GuestSettingsItemView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/GuestSettingsItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/glass/home/settings/GuestSettingsItemView$1;->this$0:Lcom/google/glass/home/settings/GuestSettingsItemView;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/home/settings/GuestSettingsItemView$1;->this$0:Lcom/google/glass/home/settings/GuestSettingsItemView;

    #calls: Lcom/google/glass/home/settings/GuestSettingsItemView;->toggleGuestMode()V
    invoke-static {v0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->access$000(Lcom/google/glass/home/settings/GuestSettingsItemView;)V

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public onDone()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/home/settings/GuestSettingsItemView$1;->this$0:Lcom/google/glass/home/settings/GuestSettingsItemView;

    #calls: Lcom/google/glass/home/settings/GuestSettingsItemView;->toggleGuestMode()V
    invoke-static {v0}, Lcom/google/glass/home/settings/GuestSettingsItemView;->access$000(Lcom/google/glass/home/settings/GuestSettingsItemView;)V

    .line 54
    return-void
.end method
