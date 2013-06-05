.class Lcom/google/glass/home/timeline/active/SettingsCoverView$2;
.super Ljava/lang/Object;
.source "SettingsCoverView.java"

# interfaces
.implements Lcom/google/glass/bluetooth/BluetoothTetheringState$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/active/SettingsCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$2;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothTetheringStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 80
    iget-object v1, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$2;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    #setter for: Lcom/google/glass/home/timeline/active/SettingsCoverView;->isTethered:Z
    invoke-static {v1, v0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$102(Lcom/google/glass/home/timeline/active/SettingsCoverView;Z)Z

    .line 81
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/SettingsCoverView$2;->this$0:Lcom/google/glass/home/timeline/active/SettingsCoverView;

    #calls: Lcom/google/glass/home/timeline/active/SettingsCoverView;->updateConnectivity()V
    invoke-static {v0}, Lcom/google/glass/home/timeline/active/SettingsCoverView;->access$000(Lcom/google/glass/home/timeline/active/SettingsCoverView;)V

    .line 82
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
