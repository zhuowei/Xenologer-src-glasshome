.class Lcom/google/glass/util/CachedBitmapFactory$1;
.super Lcom/google/glass/util/CachedBitmapFactory$BitmapCache;
.source "CachedBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/CachedBitmapFactory;-><init>(Landroid/content/Context;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/CachedBitmapFactory;

.field final synthetic val$minHeight:I

.field final synthetic val$minWidth:I


# direct methods
.method constructor <init>(Lcom/google/glass/util/CachedBitmapFactory;III)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/glass/util/CachedBitmapFactory$1;->this$0:Lcom/google/glass/util/CachedBitmapFactory;

    iput p3, p0, Lcom/google/glass/util/CachedBitmapFactory$1;->val$minWidth:I

    iput p4, p0, Lcom/google/glass/util/CachedBitmapFactory$1;->val$minHeight:I

    invoke-direct {p0, p1, p2}, Lcom/google/glass/util/CachedBitmapFactory$BitmapCache;-><init>(Lcom/google/glass/util/CachedBitmapFactory;I)V

    return-void
.end method


# virtual methods
.method public provideBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "path"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/glass/util/CachedBitmapFactory$1;->this$0:Lcom/google/glass/util/CachedBitmapFactory;

    iget v1, p0, Lcom/google/glass/util/CachedBitmapFactory$1;->val$minWidth:I

    iget v2, p0, Lcom/google/glass/util/CachedBitmapFactory$1;->val$minHeight:I

    #calls: Lcom/google/glass/util/CachedBitmapFactory;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    invoke-static {v0, p1, v1, v2}, Lcom/google/glass/util/CachedBitmapFactory;->access$000(Lcom/google/glass/util/CachedBitmapFactory;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
