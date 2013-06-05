.class public Lcom/google/glass/home/search/PinholePageDebugActivity;
.super Landroid/app/Activity;
.source "PinholePageDebugActivity.java"


# static fields
.field private static final FILE_TO_LOAD:Ljava/lang/String; = "file_to_load"

.field private static final HTML_EXTENSION:Ljava/lang/String; = "._h"

.field private static final NUM_RUNS:I = 0x14

.field private static final PROTO_EXTENSION:Ljava/lang/String; = ".pb"

.field private static final TAG:Ljava/lang/String;

.field private static htmlCount:I

.field private static protoCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    const-class v0, Lcom/google/glass/home/search/PinholePageDebugActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/search/PinholePageDebugActivity;->TAG:Ljava/lang/String;

    .line 39
    sput v1, Lcom/google/glass/home/search/PinholePageDebugActivity;->protoCount:I

    .line 40
    sput v1, Lcom/google/glass/home/search/PinholePageDebugActivity;->htmlCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static getResponseFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 113
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

    .line 114
    .local v1, root:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 117
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    .local v0, file:Ljava/io/File;
    return-object v0
.end method

.method private static loadS3Response(Ljava/lang/String;)[B
    .locals 8
    .parameter "fileName"

    .prologue
    .line 99
    invoke-static {p0}, Lcom/google/glass/home/search/PinholePageDebugActivity;->getResponseFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 100
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v4, v5

    .line 101
    .local v4, length:I
    new-array v0, v4, [B

    .line 103
    .local v0, bytes:[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 104
    .local v3, fos:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileInputStream;->read([BII)I

    .line 105
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v3           #fos:Ljava/io/FileInputStream;
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, e:Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/home/search/PinholePageDebugActivity;->TAG:Ljava/lang/String;

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


# virtual methods
.method protected onResume()V
    .locals 29

    .prologue
    .line 46
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onResume()V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/search/PinholePageDebugActivity;->getIntent()Landroid/content/Intent;

    move-result-object v25

    const-string v26, "file_to_load"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 50
    .local v7, fileToLoad:Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/s3/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v19, root:Ljava/io/File;
    const-wide/16 v23, 0x0

    .line 52
    .local v23, timeSpentUpdating:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 53
    .local v9, fullTimeStart:J
    sget-object v25, Lcom/google/glass/home/search/PinholePageDebugActivity;->TAG:Ljava/lang/String;

    const-string v26, "S3ProtoLoading starting"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v16, outputs:Ljava/util/List;,"Ljava/util/List<Lcom/google/speech/s3/PinholeStream$PinholeOutput;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 58
    .local v8, files:[Ljava/io/File;
    move-object v3, v8

    .local v3, arr$:[Ljava/io/File;
    array-length v14, v3

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v14, :cond_2

    aget-object v13, v3, v12

    .line 60
    .local v13, inFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, fileName:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1

    const-string v25, ".pb"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 63
    invoke-static {v6}, Lcom/google/glass/home/search/PinholePageDebugActivity;->loadS3Response(Ljava/lang/String;)[B

    move-result-object v20

    .line 64
    .local v20, s3ResponseBytes:[B
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    if-nez v25, :cond_0

    .line 65
    new-instance v25, Ljava/lang/RuntimeException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Can\'t find the file /sdcard/s3/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 68
    :cond_0
    :try_start_0
    invoke-static/range {v20 .. v20}, Lcom/google/speech/s3/PinholeStream$PinholeOutput;->parseFrom([B)Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    move-result-object v17

    .line 69
    .local v17, pinholeOutput:Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v17           #pinholeOutput:Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    .end local v20           #s3ResponseBytes:[B
    :cond_1
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 70
    .restart local v20       #s3ResponseBytes:[B
    :catch_0
    move-exception v5

    .line 71
    .local v5, e:Ljava/lang/Exception;
    sget-object v25, Lcom/google/glass/home/search/PinholePageDebugActivity;->TAG:Ljava/lang/String;

    const-string v26, "Exception parsing proto file"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 75
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #fileName:Ljava/lang/String;
    .end local v13           #inFile:Ljava/io/File;
    .end local v20           #s3ResponseBytes:[B
    :cond_2
    sget-object v25, Lcom/google/glass/home/search/PinholePageDebugActivity;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Number of files loaded into memory: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v11, 0x0

    .end local v12           #i$:I
    .local v11, i:I
    :goto_2
    const/16 v25, 0x14

    move/from16 v0, v25

    if-ge v11, v0, :cond_5

    .line 78
    new-instance v18, Lcom/google/glass/voice/network/PinholePage;

    invoke-direct/range {v18 .. v18}, Lcom/google/glass/voice/network/PinholePage;-><init>()V

    .line 79
    .local v18, pinholePage:Lcom/google/glass/voice/network/PinholePage;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 80
    .local v21, start:J
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .line 81
    .local v15, output:Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/google/glass/voice/network/PinholePage;->update(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V

    .line 82
    const-string v25, "ans0"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/PinholePage;->getPinholeDocumentByType(Ljava/lang/String;)Lcom/google/glass/voice/network/PinholePage$PinholeDocument;

    move-result-object v4

    .line 84
    .local v4, doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    if-eqz v4, :cond_3

    .line 88
    .end local v4           #doc:Lcom/google/glass/voice/network/PinholePage$PinholeDocument;
    .end local v15           #output:Lcom/google/speech/s3/PinholeStream$PinholeOutput;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v25, v25, v21

    add-long v23, v23, v25

    .line 77
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 92
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v18           #pinholePage:Lcom/google/glass/voice/network/PinholePage;
    .end local v21           #start:J
    :cond_5
    sget-object v25, Lcom/google/glass/home/search/PinholePageDebugActivity;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Time spent updating: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " fullTime: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    sub-long v27, v27, v9

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/home/search/PinholePageDebugActivity;->finish()V

    .line 95
    return-void
.end method
