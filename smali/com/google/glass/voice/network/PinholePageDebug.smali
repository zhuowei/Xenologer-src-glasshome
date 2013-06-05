.class public Lcom/google/glass/voice/network/PinholePageDebug;
.super Ljava/lang/Object;
.source "PinholePageDebug.java"


# static fields
.field private static final HTML_EXTENSION:Ljava/lang/String; = "._h"

.field private static final PROTO_EXTENSION:Ljava/lang/String; = ".pb"

.field private static final TAG:Ljava/lang/String;

.field private static htmlCount:I

.field private static protoCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    const-class v0, Lcom/google/glass/voice/network/PinholePageDebug;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/PinholePageDebug;->TAG:Ljava/lang/String;

    .line 22
    sput v1, Lcom/google/glass/voice/network/PinholePageDebug;->protoCount:I

    .line 23
    sput v1, Lcom/google/glass/voice/network/PinholePageDebug;->htmlCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getResponseFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 78
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/s3/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, root:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 82
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    .local v0, file:Ljava/io/File;
    return-object v0
.end method

.method private static htmlFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "recognizedText"

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/google/glass/voice/network/PinholePageDebug;->htmlCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "._h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/google/glass/voice/network/PinholePageDebug;->htmlCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "._h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 60
    :cond_0
    return-object p0
.end method

.method private static protoFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "recognizedText"

    .prologue
    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/google/glass/voice/network/PinholePageDebug;->protoCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/google/glass/voice/network/PinholePageDebug;->protoCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 35
    :cond_0
    return-object p0
.end method

.method public static resetCounts()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput v0, Lcom/google/glass/voice/network/PinholePageDebug;->protoCount:I

    .line 27
    sput v0, Lcom/google/glass/voice/network/PinholePageDebug;->htmlCount:I

    .line 28
    return-void
.end method

.method public static saveHtmlResponseProto(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "response"
    .parameter "recognizedText"

    .prologue
    .line 65
    invoke-static {p1}, Lcom/google/glass/voice/network/PinholePageDebug;->htmlFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, fileName:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/google/glass/voice/network/PinholePageDebug;->getResponseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 68
    .local v1, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 69
    .local v3, fos:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 70
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 71
    sget v4, Lcom/google/glass/voice/network/PinholePageDebug;->htmlCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/google/glass/voice/network/PinholePageDebug;->htmlCount:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1           #file:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/voice/network/PinholePageDebug;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to save "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static saveS3ResponseProto([BLjava/lang/String;)V
    .locals 7
    .parameter "s3Response"
    .parameter "recognizedText"

    .prologue
    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    const-string p1, "empty"

    .line 43
    :cond_0
    invoke-static {p1}, Lcom/google/glass/voice/network/PinholePageDebug;->protoFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, fileName:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/google/glass/voice/network/PinholePageDebug;->getResponseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 46
    .local v1, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 47
    .local v3, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 48
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 49
    sget v4, Lcom/google/glass/voice/network/PinholePageDebug;->protoCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/google/glass/voice/network/PinholePageDebug;->protoCount:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1           #file:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/voice/network/PinholePageDebug;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to save "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
