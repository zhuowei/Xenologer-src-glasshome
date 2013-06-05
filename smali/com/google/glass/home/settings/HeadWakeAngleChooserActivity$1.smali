.class Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "HeadWakeAngleChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->showConfirmationMessageThenFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity$1;->this$0:Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity$1;->this$0:Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;

    invoke-virtual {v0}, Lcom/google/glass/home/settings/HeadWakeAngleChooserActivity;->finish()V

    .line 185
    return-void
.end method
