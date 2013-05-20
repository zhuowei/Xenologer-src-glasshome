.class public Lcom/google/glass/util/ScreenshotUtil;
.super Ljava/lang/Object;
.source "ScreenshotUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/ScreenshotUtil$1;,
        Lcom/google/glass/util/ScreenshotUtil$Screenshot;
    }
.end annotation


# static fields
.field private static final MAX_NUM_INTENT_EXTRA_BYTES:I = 0x7fc00

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/google/glass/util/ScreenshotUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/ScreenshotUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    return-void
.end method

.method public static captureCompressedScreenshotForIntent(Landroid/content/Context;)Lcom/google/glass/util/ScreenshotUtil$Screenshot;
    .locals 10
    .parameter "context"

    .prologue
    const v8, 0x7fc00

    const/4 v6, 0x0

    .line 112
    invoke-static {p0}, Lcom/google/glass/util/ScreenshotUtil;->captureScreenshot(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 113
    .local v5, screenshot:Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    .line 159
    :goto_0
    return-object v6

    .line 117
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    .local v1, compressedData:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 122
    .local v0, compressFormat:Landroid/graphics/Bitmap$CompressFormat;
    invoke-static {v0}, Lcom/google/glass/util/ScreenshotUtil;->getFileExtension(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, fileExtension:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 124
    sget-object v7, Lcom/google/glass/util/ScreenshotUtil;->TAG:Ljava/lang/String;

    const-string v8, "Failed to compress as PNG."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    .line 158
    .local v2, e:Ljava/io/IOException;
    sget-object v7, Lcom/google/glass/util/ScreenshotUtil;->TAG:Ljava/lang/String;

    const-string v8, "Failed to close stream."

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 129
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    if-gt v7, v8, :cond_2

    .line 130
    sget-object v6, Lcom/google/glass/util/ScreenshotUtil;->TAG:Ljava/lang/String;

    const-string v7, "Compressed as PNG."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v6, Lcom/google/glass/util/ScreenshotUtil$Screenshot;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v0, v3, v8}, Lcom/google/glass/util/ScreenshotUtil$Screenshot;-><init>([BLandroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Lcom/google/glass/util/ScreenshotUtil$1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 157
    :catch_1
    move-exception v2

    .line 158
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v7, Lcom/google/glass/util/ScreenshotUtil;->TAG:Ljava/lang/String;

    const-string v8, "Failed to close stream."

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 135
    .end local v2           #e:Ljava/io/IOException;
    :cond_2
    :try_start_4
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 136
    invoke-static {v0}, Lcom/google/glass/util/ScreenshotUtil;->getFileExtension(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object v3

    .line 137
    const/16 v4, 0x64

    .local v4, jpegQuality:I
    :goto_1
    if-ltz v4, :cond_5

    .line 138
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 139
    invoke-virtual {v5, v0, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 140
    sget-object v7, Lcom/google/glass/util/ScreenshotUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to compress as JPEG (quality "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 156
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 157
    :catch_2
    move-exception v2

    .line 158
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v7, Lcom/google/glass/util/ScreenshotUtil;->TAG:Ljava/lang/String;

    const-string v8, "Failed to close stream."

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 145
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    if-gt v7, v8, :cond_4

    .line 146
    sget-object v6, Lcom/google/glass/util/ScreenshotUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Compressed as JPEG (quality "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v6, Lcom/google/glass/util/ScreenshotUtil$Screenshot;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v0, v3, v8}, Lcom/google/glass/util/ScreenshotUtil$Screenshot;-><init>([BLandroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Lcom/google/glass/util/ScreenshotUtil$1;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 156
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 157
    :catch_3
    move-exception v2

    .line 158
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v7, Lcom/google/glass/util/ScreenshotUtil;->TAG:Ljava/lang/String;

    const-string v8, "Failed to close stream."

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 137
    .end local v2           #e:Ljava/io/IOException;
    :cond_4
    add-int/lit8 v4, v4, -0xa

    goto :goto_1

    .line 152
    :cond_5
    :try_start_8
    sget-object v7, Lcom/google/glass/util/ScreenshotUtil;->TAG:Ljava/lang/String;

    const-string v8, "Failed to compress. Exceeded size limit at lowest quality."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 156
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_0

    .line 157
    :catch_4
    move-exception v2

    .line 158
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v7, Lcom/google/glass/util/ScreenshotUtil;->TAG:Ljava/lang/String;

    const-string v8, "Failed to close stream."

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 155
    .end local v0           #compressFormat:Landroid/graphics/Bitmap$CompressFormat;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fileExtension:Ljava/lang/String;
    .end local v4           #jpegQuality:I
    :catchall_0
    move-exception v6

    .line 156
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 159
    :goto_2
    throw v6

    .line 157
    :catch_5
    move-exception v2

    .line 158
    .restart local v2       #e:Ljava/io/IOException;
    sget-object v7, Lcom/google/glass/util/ScreenshotUtil;->TAG:Ljava/lang/String;

    const-string v8, "Failed to close stream."

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static captureScreenshot(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"

    .prologue
    .line 97
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 98
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 99
    .local v1, windowManager:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 100
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Lcom/google/glass/util/HiddenApiHelper;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static getFileExtension(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    .locals 2
    .parameter "compressFormat"

    .prologue
    .line 165
    sget-object v0, Lcom/google/glass/util/ScreenshotUtil$1;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 171
    const-string v0, ""

    :goto_0
    return-object v0

    .line 167
    :pswitch_0
    const-string v0, ".png"

    goto :goto_0

    .line 169
    :pswitch_1
    const-string v0, ".jpg"

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
