.class Lcom/google/glass/util/IconProvider$1;
.super Ljava/lang/Object;
.source "IconProvider.java"

# interfaces
.implements Lcom/google/glass/util/CachedFilesManager$Loader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/IconProvider;->loadFromDiskCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
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
.field final synthetic this$0:Lcom/google/glass/util/IconProvider;


# direct methods
.method constructor <init>(Lcom/google/glass/util/IconProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/glass/util/IconProvider$1;->this$0:Lcom/google/glass/util/IconProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "filePath"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$1;->this$0:Lcom/google/glass/util/IconProvider;

    #getter for: Lcom/google/glass/util/IconProvider;->width:I
    invoke-static {v0}, Lcom/google/glass/util/IconProvider;->access$600(Lcom/google/glass/util/IconProvider;)I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/util/IconProvider$1;->this$0:Lcom/google/glass/util/IconProvider;

    #getter for: Lcom/google/glass/util/IconProvider;->height:I
    invoke-static {v1}, Lcom/google/glass/util/IconProvider;->access$700(Lcom/google/glass/util/IconProvider;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/glass/util/CachedBitmapFactory;->loadBitmapFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/google/glass/util/IconProvider$1;->load(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
