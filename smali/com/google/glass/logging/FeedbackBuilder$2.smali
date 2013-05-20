.class final Lcom/google/glass/logging/FeedbackBuilder$2;
.super Ljava/lang/Object;
.source "FeedbackBuilder.java"

# interfaces
.implements Lcom/google/glass/util/FileSaver$Saver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/FeedbackBuilder;->saveAndAttachScreenshot(Lcom/google/glass/util/ScreenshotUtil$Screenshot;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$screenshot:Lcom/google/glass/util/ScreenshotUtil$Screenshot;


# direct methods
.method constructor <init>(Lcom/google/glass/util/ScreenshotUtil$Screenshot;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/glass/logging/FeedbackBuilder$2;->val$screenshot:Lcom/google/glass/util/ScreenshotUtil$Screenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEstimatedSizeBytes()J
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackBuilder$2;->val$screenshot:Lcom/google/glass/util/ScreenshotUtil$Screenshot;

    iget-object v0, v0, Lcom/google/glass/util/ScreenshotUtil$Screenshot;->compressedData:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/glass/logging/FeedbackBuilder$2;->val$screenshot:Lcom/google/glass/util/ScreenshotUtil$Screenshot;

    iget-object v0, v0, Lcom/google/glass/util/ScreenshotUtil$Screenshot;->compressedData:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 214
    return-void
.end method
