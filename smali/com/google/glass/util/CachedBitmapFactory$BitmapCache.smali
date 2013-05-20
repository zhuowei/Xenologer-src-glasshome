.class abstract Lcom/google/glass/util/CachedBitmapFactory$BitmapCache;
.super Landroid/util/LruCache;
.source "CachedBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/CachedBitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BitmapCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/util/CachedBitmapFactory;


# direct methods
.method public constructor <init>(Lcom/google/glass/util/CachedBitmapFactory;I)V
    .locals 0
    .parameter
    .parameter "maxSize"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/glass/util/CachedBitmapFactory$BitmapCache;->this$0:Lcom/google/glass/util/CachedBitmapFactory;

    .line 52
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    .line 53
    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    check-cast p2, Ljava/lang/String;

    .end local p2
    check-cast p3, Landroid/graphics/Bitmap;

    .end local p3
    check-cast p4, Landroid/graphics/Bitmap;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/glass/util/CachedBitmapFactory$BitmapCache;->entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "evicted"
    .parameter "path"
    .parameter "oldBitmap"
    .parameter "newBitmap"

    .prologue
    .line 57
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    return-void
.end method

.method public abstract provideBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method
