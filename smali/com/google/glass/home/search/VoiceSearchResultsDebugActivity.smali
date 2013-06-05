.class public Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;
.super Landroid/app/Activity;
.source "VoiceSearchResultsDebugActivity.java"


# static fields
.field private static final FILE_TO_LOAD:Ljava/lang/String; = "file_to_load"

.field private static final HTML_EXTENSION:Ljava/lang/String; = "._h"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static getResponseFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 137
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/vs/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, root:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 141
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v0, file:Ljava/io/File;
    return-object v0
.end method

.method private static htmlFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "recognizedText"

    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 91
    const-string v0, "._h"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "._h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 94
    :cond_0
    return-object p0
.end method

.method private static loadHtmlResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "fileName"

    .prologue
    .line 126
    invoke-static {p0}, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->getResponseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 127
    .local v1, file:Ljava/io/File;
    const-string v2, ""

    .line 129
    .local v2, result:Ljava/lang/String;
    :try_start_0
    const-string v3, "\n"

    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v3

    sget-object v4, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v4}, Lcom/google/common/io/Files;->readLines(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 133
    :goto_0
    return-object v2

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static loadMajelResponse(Ljava/lang/String;)[B
    .locals 8
    .parameter "fileName"

    .prologue
    .line 112
    invoke-static {p0}, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->getResponseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 113
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v4, v5

    .line 114
    .local v4, length:I
    new-array v0, v4, [B

    .line 116
    .local v0, bytes:[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 117
    .local v3, fos:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v3           #fos:Ljava/io/FileInputStream;
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static saveHtmlResponseProto(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "response"
    .parameter "recognizedText"

    .prologue
    .line 99
    invoke-static {p1}, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->htmlFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, fileName:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->getResponseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 102
    .local v1, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 103
    .local v3, fos:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 104
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1           #file:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->TAG:Ljava/lang/String;

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

.method public static saveMajelResponseProto([BLjava/lang/String;)V
    .locals 7
    .parameter "majelResponse"
    .parameter "recognizedText"

    .prologue
    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, "_"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, fileName:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->getResponseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 81
    .local v1, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 82
    .local v3, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 83
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1           #file:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->TAG:Ljava/lang/String;

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


# virtual methods
.method protected onResume()V
    .locals 8

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "file_to_load"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, fileToLoad:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.google.glass.ACTION_VIEW_VOICE_SEARCH_RESULT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, answer:Landroid/content/Intent;
    const-string v4, "startTime"

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 50
    const-string v4, "._h"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    invoke-static {v1}, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->loadHtmlResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, response:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find the file /sdcard/vs/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 56
    :cond_0
    const-string v4, "recognitionResult"

    const-string v5, "_"

    const-string v6, " "

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "._h"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v4, "cardResult"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    .end local v3           #response:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->finish()V

    .line 74
    return-void

    .line 61
    :cond_1
    invoke-static {v1}, Lcom/google/glass/home/search/VoiceSearchResultsDebugActivity;->loadMajelResponse(Ljava/lang/String;)[B

    move-result-object v2

    .line 62
    .local v2, majelResponseBytes:[B
    array-length v4, v2

    if-nez v4, :cond_2

    .line 63
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find the file /sdcard/vs/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 67
    :cond_2
    const-string v4, "recognitionResult"

    const-string v5, "_"

    const-string v6, " "

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v4, "majelResponse"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_0
.end method
