.class Lcom/google/glass/logging/AppErrorReporterActivity$1;
.super Ljava/lang/Object;
.source "AppErrorReporterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/AppErrorReporterActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/AppErrorReporterActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/logging/AppErrorReporterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/glass/logging/AppErrorReporterActivity$1;->this$0:Lcom/google/glass/logging/AppErrorReporterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/glass/logging/AppErrorReporterActivity$1;->this$0:Lcom/google/glass/logging/AppErrorReporterActivity;

    invoke-virtual {v0}, Lcom/google/glass/logging/AppErrorReporterActivity;->finish()V

    .line 80
    return-void
.end method
