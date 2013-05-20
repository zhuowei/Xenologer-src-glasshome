.class Lcom/google/glass/util/IconProvider$Loader;
.super Ljava/lang/Object;
.source "IconProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/IconProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Loader"
.end annotation


# instance fields
.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/glass/util/IconProvider;

.field final uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/util/IconProvider;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "uri"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/glass/util/IconProvider$Loader;->this$0:Lcom/google/glass/util/IconProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/IconProvider$Loader;->listeners:Ljava/util/List;

    .line 112
    iput-object p2, p0, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    .line 113
    return-void
.end method


# virtual methods
.method addListener(Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 156
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 157
    iget-object v0, p0, Lcom/google/glass/util/IconProvider$Loader;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method load()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 135
    iget-object v4, p0, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    const-string v5, "android.resource"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 138
    .local v2, imageUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/glass/util/IconProvider$Loader;->this$0:Lcom/google/glass/util/IconProvider;

    #getter for: Lcom/google/glass/util/IconProvider;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/glass/util/IconProvider;->access$200(Lcom/google/glass/util/IconProvider;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 139
    .local v3, stream:Ljava/io/InputStream;
    iget-object v4, p0, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 152
    .end local v2           #imageUri:Landroid/net/Uri;
    .end local v3           #stream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/google/glass/util/IconProvider;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load local resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 144
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/google/glass/util/IconProvider;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_1
    iget-object v4, p0, Lcom/google/glass/util/IconProvider$Loader;->this$0:Lcom/google/glass/util/IconProvider;

    iget-object v5, p0, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    #calls: Lcom/google/glass/util/IconProvider;->loadFromDiskCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {v4, v5}, Lcom/google/glass/util/IconProvider;->access$400(Lcom/google/glass/util/IconProvider;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 152
    iget-object v4, p0, Lcom/google/glass/util/IconProvider$Loader;->this$0:Lcom/google/glass/util/IconProvider;

    iget-object v5, p0, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    #calls: Lcom/google/glass/util/IconProvider;->loadFromNetwork(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {v4, v5}, Lcom/google/glass/util/IconProvider;->access$500(Lcom/google/glass/util/IconProvider;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method notifyListeners(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "icon"

    .prologue
    .line 161
    invoke-static {}, Lcom/google/glass/util/Assert;->assertUiThread()V

    .line 162
    iget-object v2, p0, Lcom/google/glass/util/IconProvider$Loader;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;

    .line 163
    .local v1, listener:Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;
    invoke-virtual {v1, p1}, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 165
    .end local v1           #listener:Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;
    :cond_0
    return-void
.end method

.method startLoad()V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/google/glass/util/IconProvider$Loader$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/IconProvider$Loader$1;-><init>(Lcom/google/glass/util/IconProvider$Loader;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/IconProvider$Loader$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    return-void
.end method
