.class final Lcom/google/glass/util/FileSaver$3;
.super Ljava/lang/Object;
.source "FileSaver.java"

# interfaces
.implements Lcom/google/glass/util/FileSaver$Saver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/util/FileSaver;->newSaver(Ljava/io/File;)Lcom/google/glass/util/FileSaver$Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fileToSave:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/glass/util/FileSaver$3;->val$fileToSave:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEstimatedSizeBytes()J
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/glass/util/FileSaver$3;->val$fileToSave:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 9
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const-wide/16 v1, 0x0

    .line 91
    .local v1, bytesCopied:J
    instance-of v6, p1, Ljava/io/FileOutputStream;

    if-eqz v6, :cond_1

    .line 92
    iget-object v6, p0, Lcom/google/glass/util/FileSaver$3;->val$fileToSave:Ljava/io/File;

    check-cast p1, Ljava/io/FileOutputStream;

    .end local p1
    #calls: Lcom/google/glass/util/FileSaver;->copyWithChannels(Ljava/io/File;Ljava/io/FileOutputStream;)J
    invoke-static {v6, p1}, Lcom/google/glass/util/FileSaver;->access$000(Ljava/io/File;Ljava/io/FileOutputStream;)J

    move-result-wide v1

    .line 111
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/glass/util/FileSaver;->access$100()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/copySaver"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Copied "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes to cache."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 94
    .restart local p1
    :cond_1
    const/4 v4, 0x0

    .line 96
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/google/glass/util/FileSaver$3;->val$fileToSave:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .end local v4           #is:Ljava/io/InputStream;
    .local v5, is:Ljava/io/InputStream;
    const/high16 v6, 0x10

    :try_start_1
    new-array v0, v6, [B

    .line 98
    .local v0, buffer:[B
    const/4 v3, -0x1

    .line 100
    .local v3, bytesRead:I
    :goto_1
    const/4 v6, 0x0

    const/high16 v7, 0x10

    invoke-virtual {v5, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2

    .line 101
    const/4 v6, 0x0

    invoke-virtual {p1, v0, v6, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    int-to-long v6, v3

    add-long/2addr v1, v6

    goto :goto_1

    .line 105
    :cond_2
    if-eqz v5, :cond_0

    .line 106
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 105
    .end local v0           #buffer:[B
    .end local v3           #bytesRead:I
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_3

    .line 106
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v6

    .line 105
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_2
.end method
