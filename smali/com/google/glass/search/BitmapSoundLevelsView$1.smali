.class Lcom/google/glass/search/BitmapSoundLevelsView$1;
.super Ljava/lang/Object;
.source "BitmapSoundLevelsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/search/BitmapSoundLevelsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/search/BitmapSoundLevelsView;


# direct methods
.method constructor <init>(Lcom/google/glass/search/BitmapSoundLevelsView;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/glass/search/BitmapSoundLevelsView$1;->this$0:Lcom/google/glass/search/BitmapSoundLevelsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/search/BitmapSoundLevelsView$1;->this$0:Lcom/google/glass/search/BitmapSoundLevelsView;

    invoke-virtual {v0}, Lcom/google/glass/search/BitmapSoundLevelsView;->invalidate()V

    .line 70
    return-void
.end method
