.class Lcom/google/glass/util/CachedBitmapFactory$2;
.super Ljava/lang/Object;
.source "CachedBitmapFactory.java"

# interfaces
.implements Lcom/google/glass/util/CachedFilesManager$Loader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/CachedBitmapFactory;->loadBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/util/CachedFilesManager$Loader",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/CachedBitmapFactory;

.field final synthetic val$minHeight:I

.field final synthetic val$minWidth:I


# direct methods
.method constructor <init>(Lcom/google/glass/util/CachedBitmapFactory;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/google/glass/util/CachedBitmapFactory$2;->this$0:Lcom/google/glass/util/CachedBitmapFactory;

    iput p2, p0, Lcom/google/glass/util/CachedBitmapFactory$2;->val$minWidth:I

    iput p3, p0, Lcom/google/glass/util/CachedBitmapFactory$2;->val$minHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 221
    iget v0, p0, Lcom/google/glass/util/CachedBitmapFactory$2;->val$minWidth:I

    iget v1, p0, Lcom/google/glass/util/CachedBitmapFactory$2;->val$minHeight:I

    invoke-static {p1, v0, v1}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmapFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/google/glass/util/CachedBitmapFactory$2;->load(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
