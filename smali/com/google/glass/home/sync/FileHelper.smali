.class public Lcom/google/glass/home/sync/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/sync/FileHelper$StreamCreator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final streamCreator:Lcom/google/glass/home/sync/FileHelper$StreamCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/glass/home/sync/FileHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/sync/FileHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/home/sync/FileHelper;-><init>(Lcom/google/glass/home/sync/FileHelper$StreamCreator;)V

    .line 32
    return-void
.end method

.method constructor <init>(Lcom/google/glass/home/sync/FileHelper$StreamCreator;)V
    .locals 0
    .parameter "streamCreator"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/glass/home/sync/FileHelper;->streamCreator:Lcom/google/glass/home/sync/FileHelper$StreamCreator;

    .line 43
    return-void
.end method


# virtual methods
.method public toByteString(Ljava/io/File;)Lcom/google/protobuf/ByteString;
    .locals 7
    .parameter "file"

    .prologue
    const/4 v4, 0x0

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, buffer:[B
    const/4 v3, 0x0

    .line 56
    .local v3, stream:Ljava/io/FileInputStream;
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/home/sync/FileHelper;->streamCreator:Lcom/google/glass/home/sync/FileHelper$StreamCreator;

    if-nez v5, :cond_0

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 58
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    new-array v0, v5, [B

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, bytesRead:I
    :goto_1
    array-length v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    if-ge v1, v5, :cond_2

    .line 62
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v5

    add-int/2addr v1, v5

    goto :goto_1

    .line 56
    .end local v1           #bytesRead:I
    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/google/glass/home/sync/FileHelper;->streamCreator:Lcom/google/glass/home/sync/FileHelper$StreamCreator;

    invoke-interface {v5, p1}, Lcom/google/glass/home/sync/FileHelper$StreamCreator;->createFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v3

    goto :goto_0

    .line 63
    .restart local v1       #bytesRead:I
    :catch_0
    move-exception v2

    .line 64
    .local v2, e:Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/home/sync/FileHelper;->TAG:Ljava/lang/String;

    const-string v6, "Error reading bytes"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 71
    if-eqz v3, :cond_1

    .line 73
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 79
    .end local v1           #bytesRead:I
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    :goto_2
    return-object v4

    .line 74
    .restart local v1       #bytesRead:I
    .restart local v2       #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 75
    sget-object v5, Lcom/google/glass/home/sync/FileHelper;->TAG:Ljava/lang/String;

    const-string v6, "Failed to close stream"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 71
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    if-eqz v3, :cond_3

    .line 73
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 79
    .end local v1           #bytesRead:I
    :cond_3
    :goto_3
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v4

    goto :goto_2

    .line 74
    .restart local v1       #bytesRead:I
    :catch_2
    move-exception v2

    .line 75
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/home/sync/FileHelper;->TAG:Ljava/lang/String;

    const-string v6, "Failed to close stream"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 68
    .end local v1           #bytesRead:I
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 69
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_5
    sget-object v5, Lcom/google/glass/home/sync/FileHelper;->TAG:Ljava/lang/String;

    const-string v6, "Can\'t convert file to byte[]"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 71
    if-eqz v3, :cond_3

    .line 73
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 74
    :catch_4
    move-exception v2

    .line 75
    .local v2, e:Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/home/sync/FileHelper;->TAG:Ljava/lang/String;

    const-string v6, "Failed to close stream"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 71
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    .line 73
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 76
    :cond_4
    :goto_4
    throw v4

    .line 74
    :catch_5
    move-exception v2

    .line 75
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/home/sync/FileHelper;->TAG:Ljava/lang/String;

    const-string v6, "Failed to close stream"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method
