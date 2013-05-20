.class public Lcom/google/glass/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TIMESTAMP_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/glass/util/FileHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/FileHelper;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/google/glass/util/FileHelper$1;

    invoke-direct {v0}, Lcom/google/glass/util/FileHelper$1;-><init>()V

    sput-object v0, Lcom/google/glass/util/FileHelper;->TIMESTAMP_FORMAT:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyResourcesToFiles(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 16
    .parameter "context"
    .parameter "basePath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, resIdToFilename:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, basePathDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_0

    .line 54
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v13

    if-nez v13, :cond_0

    .line 55
    sget-object v13, Lcom/google/glass/util/FileHelper;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error creating base path: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    const/16 v13, 0x400

    new-array v2, v13, [B

    .line 60
    .local v2, buffer:[B
    const/4 v3, 0x0

    .line 61
    .local v3, bytesRead:I
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 62
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, destinationPath:Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 65
    .local v12, resId:I
    const/4 v10, 0x0

    .line 66
    .local v10, is:Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    .line 68
    .local v7, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 69
    .end local v10           #is:Ljava/io/BufferedInputStream;
    .local v11, is:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 70
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .local v8, fos:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v11, v2}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    if-ltz v3, :cond_2

    .line 71
    const/4 v13, -0x1

    if-ne v3, v13, :cond_4

    .line 82
    :cond_2
    if-eqz v11, :cond_3

    .line 84
    :try_start_3
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 90
    :cond_3
    :goto_2
    if-eqz v8, :cond_1

    .line 92
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v5

    .line 94
    .local v5, e:Ljava/io/IOException;
    sget-object v13, Lcom/google/glass/util/FileHelper;->TAG:Ljava/lang/String;

    invoke-static {v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 74
    .end local v5           #e:Ljava/io/IOException;
    :cond_4
    const/4 v13, 0x0

    :try_start_5
    invoke-virtual {v8, v2, v13, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 77
    :catch_1
    move-exception v5

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    move-object v10, v11

    .line 78
    .end local v11           #is:Ljava/io/BufferedInputStream;
    .restart local v5       #e:Ljava/io/IOException;
    .restart local v10       #is:Ljava/io/BufferedInputStream;
    :goto_3
    :try_start_6
    sget-object v13, Lcom/google/glass/util/FileHelper;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to copy file to: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 82
    if-eqz v10, :cond_5

    .line 84
    :try_start_7
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 90
    :cond_5
    :goto_4
    if-eqz v7, :cond_6

    .line 92
    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 99
    .end local v4           #destinationPath:Ljava/lang/String;
    .end local v5           #e:Ljava/io/IOException;
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v10           #is:Ljava/io/BufferedInputStream;
    .end local v12           #resId:I
    :cond_6
    :goto_5
    return-void

    .line 85
    .restart local v4       #destinationPath:Ljava/lang/String;
    .restart local v6       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    .restart local v12       #resId:I
    :catch_2
    move-exception v5

    .line 86
    .restart local v5       #e:Ljava/io/IOException;
    sget-object v13, Lcom/google/glass/util/FileHelper;->TAG:Ljava/lang/String;

    invoke-static {v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 85
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v11           #is:Ljava/io/BufferedInputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    .restart local v10       #is:Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v5

    .line 86
    sget-object v13, Lcom/google/glass/util/FileHelper;->TAG:Ljava/lang/String;

    invoke-static {v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 93
    :catch_4
    move-exception v5

    .line 94
    sget-object v13, Lcom/google/glass/util/FileHelper;->TAG:Ljava/lang/String;

    invoke-static {v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 82
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_6
    if-eqz v10, :cond_7

    .line 84
    :try_start_9
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 90
    :cond_7
    :goto_7
    if-eqz v7, :cond_8

    .line 92
    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 95
    :cond_8
    :goto_8
    throw v13

    .line 85
    :catch_5
    move-exception v5

    .line 86
    .restart local v5       #e:Ljava/io/IOException;
    sget-object v14, Lcom/google/glass/util/FileHelper;->TAG:Ljava/lang/String;

    invoke-static {v14, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 93
    .end local v5           #e:Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 94
    .restart local v5       #e:Ljava/io/IOException;
    sget-object v14, Lcom/google/glass/util/FileHelper;->TAG:Ljava/lang/String;

    invoke-static {v14, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 82
    .end local v5           #e:Ljava/io/IOException;
    .end local v10           #is:Ljava/io/BufferedInputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v13

    move-object v10, v11

    .end local v11           #is:Ljava/io/BufferedInputStream;
    .restart local v10       #is:Ljava/io/BufferedInputStream;
    goto :goto_6

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .end local v10           #is:Ljava/io/BufferedInputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v13

    move-object v7, v8

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11           #is:Ljava/io/BufferedInputStream;
    .restart local v10       #is:Ljava/io/BufferedInputStream;
    goto :goto_6

    .line 77
    :catch_7
    move-exception v5

    goto :goto_3

    .end local v10           #is:Ljava/io/BufferedInputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    :catch_8
    move-exception v5

    move-object v10, v11

    .end local v11           #is:Ljava/io/BufferedInputStream;
    .restart local v10       #is:Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method public static formatTimestamp(J)Ljava/lang/String;
    .locals 1
    .parameter "timestamp"

    .prologue
    .line 34
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/google/glass/util/FileHelper;->formatTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimestamp(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .parameter "date"

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/util/FileHelper;->TIMESTAMP_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
