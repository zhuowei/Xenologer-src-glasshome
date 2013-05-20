.class Lcom/google/glass/home/search/BitmapSoundLevelsView$1;
.super Ljava/lang/Object;
.source "BitmapSoundLevelsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/search/BitmapSoundLevelsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/search/BitmapSoundLevelsView;


# direct methods
.method constructor <init>(Lcom/google/glass/home/search/BitmapSoundLevelsView;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/glass/home/search/BitmapSoundLevelsView$1;->this$0:Lcom/google/glass/home/search/BitmapSoundLevelsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/glass/home/search/BitmapSoundLevelsView$1;->this$0:Lcom/google/glass/home/search/BitmapSoundLevelsView;

    invoke-virtual {v0}, Lcom/google/glass/home/search/BitmapSoundLevelsView;->invalidate()V

    .line 69
    return-void
.end method
