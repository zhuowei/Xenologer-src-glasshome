.class public Lcom/google/glass/logging/FeedbackBuilder;
.super Ljava/lang/Object;
.source "FeedbackBuilder.java"


# static fields
.field private static final BUGREPORT_COMMAND:[Ljava/lang/String; = null

.field private static final BUGREPORT_FILE_EXTENSION:Ljava/lang/String; = ".txt"

.field public static final BUGREPORT_MIME_TYPE:Ljava/lang/String; = "text/plain"

.field private static final DISK_FREE_COMMAND:[Ljava/lang/String; = null

.field private static final DMESG_COMMAND:[Ljava/lang/String; = null

.field public static final FEEDBACK_GLASSWARE_SOURCE:Ljava/lang/String; = "api:710542303397"

.field private static final FPGA_REVISION_COMMAND:[Ljava/lang/String; = null

.field private static final FPGA_REVISION_FILE:Ljava/lang/String; = "/sys/devices/platform/omapdss/manager2/panel-notle-dpi/fpga_revision"

.field private static final GLASS_PACKAGE_PREFIX:Ljava/lang/String; = "com.google.glass."

.field private static final PERSISTENT_LOG_COMMAND_0:[Ljava/lang/String; = null

.field private static final PERSISTENT_LOG_COMMAND_1:[Ljava/lang/String; = null

.field private static final PERSISTENT_LOG_COMMAND_2:[Ljava/lang/String; = null

.field private static final PERSISTENT_LOG_FILE_0:Ljava/lang/String; = "/sdcard/logs/log_dump"

.field private static final PERSISTENT_LOG_FILE_1:Ljava/lang/String; = "/sdcard/logs/log_dump.1"

.field private static final PERSISTENT_LOG_FILE_2:Ljava/lang/String; = "/sdcard/logs/log_dump.2"

.field private static final PING_DOMAIN_COMMAND:[Ljava/lang/String; = null

.field private static final PING_IP_COMMAND:[Ljava/lang/String; = null

.field public static final SCREENSHOT_MIME_TYPE:Ljava/lang/String; = "image/png"

.field private static final TAG:Ljava/lang/String; = null

.field private static final TRACE_0_COMMAND:[Ljava/lang/String; = null

.field private static final TRACE_0_FILE:Ljava/lang/String; = "/sys/kernel/debug/remoteproc/omap-rproc.1/trace0"

.field private static final TRACE_1_COMMAND:[Ljava/lang/String; = null

.field private static final TRACE_1_FILE:Ljava/lang/String; = "/sys/kernel/debug/remoteproc/omap-rproc.1/trace1"

.field private static final TRACE_LAST_COMMAND:[Ljava/lang/String; = null

.field private static final TRACE_LAST_FILE:Ljava/lang/String; = "/sys/kernel/debug/remoteproc/omap-rproc.1/trace1_last"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    const-class v0, Lcom/google/glass/logging/FeedbackBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->TAG:Ljava/lang/String;

    .line 48
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "dmesg"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->DMESG_COMMAND:[Ljava/lang/String;

    .line 49
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "bugreport"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->BUGREPORT_COMMAND:[Ljava/lang/String;

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "cat"

    aput-object v1, v0, v2

    const-string v1, "/sys/kernel/debug/remoteproc/omap-rproc.1/trace0"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->TRACE_0_COMMAND:[Ljava/lang/String;

    .line 55
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "cat"

    aput-object v1, v0, v2

    const-string v1, "/sys/kernel/debug/remoteproc/omap-rproc.1/trace1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->TRACE_1_COMMAND:[Ljava/lang/String;

    .line 56
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "cat"

    aput-object v1, v0, v2

    const-string v1, "/sys/kernel/debug/remoteproc/omap-rproc.1/trace1_last"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->TRACE_LAST_COMMAND:[Ljava/lang/String;

    .line 59
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "cat"

    aput-object v1, v0, v2

    const-string v1, "/sys/devices/platform/omapdss/manager2/panel-notle-dpi/fpga_revision"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->FPGA_REVISION_COMMAND:[Ljava/lang/String;

    .line 60
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "df"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->DISK_FREE_COMMAND:[Ljava/lang/String;

    .line 64
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "cat"

    aput-object v1, v0, v2

    const-string v1, "/sdcard/logs/log_dump"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->PERSISTENT_LOG_COMMAND_0:[Ljava/lang/String;

    .line 65
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "cat"

    aput-object v1, v0, v2

    const-string v1, "/sdcard/logs/log_dump.1"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->PERSISTENT_LOG_COMMAND_1:[Ljava/lang/String;

    .line 66
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "cat"

    aput-object v1, v0, v2

    const-string v1, "/sdcard/logs/log_dump.2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->PERSISTENT_LOG_COMMAND_2:[Ljava/lang/String;

    .line 69
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "ping"

    aput-object v1, v0, v2

    const-string v1, "-c"

    aput-object v1, v0, v3

    const-string v1, "3"

    aput-object v1, v0, v4

    const-string v1, "8.8.8.8"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->PING_IP_COMMAND:[Ljava/lang/String;

    .line 71
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "ping"

    aput-object v1, v0, v2

    const-string v1, "-c"

    aput-object v1, v0, v3

    const-string v1, "3"

    aput-object v1, v0, v4

    const-string v1, "google.com"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/glass/logging/FeedbackBuilder;->PING_DOMAIN_COMMAND:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->BUGREPORT_COMMAND:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Lcom/google/glass/logging/FeedbackBuilder;->appendOutput(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->DISK_FREE_COMMAND:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->PERSISTENT_LOG_COMMAND_0:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->PERSISTENT_LOG_COMMAND_1:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->PERSISTENT_LOG_COMMAND_2:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/google/glass/logging/FeedbackBuilder;->getPinnedTimelineItemIds(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Lcom/google/glass/logging/FeedbackBuilder;->appendString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Lcom/google/glass/logging/FeedbackBuilder;->getConnectivity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->DMESG_COMMAND:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->TRACE_0_COMMAND:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->TRACE_1_COMMAND:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->TRACE_LAST_COMMAND:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->FPGA_REVISION_COMMAND:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/google/glass/logging/FeedbackBuilder;->getApkInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static appendOutput(Ljava/io/OutputStream;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "fos"
    .parameter "command"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 231
    invoke-static {p1}, Lcom/google/glass/util/CommandOutputCollector;->collectOutput([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, output:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 233
    const-string v1, "\n\nSTDOUT\n\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 234
    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    .line 235
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 237
    :cond_0
    const-string v1, "\n\nSTDERR\n\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 238
    aget-object v1, v0, v4

    if-eqz v1, :cond_1

    .line 239
    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 241
    :cond_1
    const-string v1, "\n\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 242
    return-void
.end method

.method private static appendString(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "fos"
    .parameter "string"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 227
    return-void
.end method

.method public static build(Landroid/content/Context;Lcom/google/glass/timeline/TimelineHelper;Ljava/lang/String;Lcom/google/glass/util/ScreenshotUtil$Screenshot;ZLcom/google/glass/logging/CompanionLogReader;[Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "timelineHelper"
    .parameter "name"
    .parameter "screenshot"
    .parameter "shouldBugreport"
    .parameter "companionLogReader"
    .parameter "additionalFiles"

    .prologue
    const/4 v7, 0x0

    .line 106
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 107
    sget-object v3, Lcom/google/glass/logging/FeedbackBuilder;->TAG:Ljava/lang/String;

    const-string v4, "Capturing bugreport..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v3, Lcom/google/glass/logging/FeedbackBuilder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Root URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/google/glass/net/ServerConstants;->getRootUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    sget-object v3, Lcom/google/glass/logging/FeedbackBuilder;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/google/glass/logging/FeedbackBuilder;->getLabSettings()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Lcom/google/glass/logging/FeedbackBuilder;->getBugId()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, bugId:Ljava/lang/String;
    new-instance v3, Lcom/google/glass/util/SettingsSecure;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p1, p0, v3}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v2

    .line 116
    .local v2, timelineItemBuilder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder()Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v3

    const-string v4, "api:710542303397"

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 120
    if-nez p2, :cond_0

    .line 121
    sget v3, Lcom/google/glass/logging/R$string;->bugreport_captured:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 126
    :goto_0
    invoke-static {p0, v0, p4, p5, p6}, Lcom/google/glass/logging/FeedbackBuilder;->captureAndAttachBugreport(Landroid/content/Context;Ljava/lang/String;ZLcom/google/glass/logging/CompanionLogReader;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 128
    const/4 v3, 0x0

    .line 158
    :goto_1
    return v3

    .line 123
    :cond_0
    invoke-virtual {v2, p2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->newBuilder()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v3

    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v4

    sget-object v5, Lcom/google/glass/util/CachedFilesManager$Type;->BUG_REPORT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-static {v0}, Lcom/google/glass/logging/FeedbackBuilder;->getBugreportFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v3

    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 138
    invoke-static {p3, v0}, Lcom/google/glass/logging/FeedbackBuilder;->saveAndAttachScreenshot(Lcom/google/glass/util/ScreenshotUtil$Screenshot;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    invoke-static {}, Lcom/google/googlex/glass/common/proto/Attachment;->newBuilder()Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v3

    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v4

    sget-object v5, Lcom/google/glass/util/CachedFilesManager$Type;->BUG_REPORT:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v6, p3, Lcom/google/glass/util/ScreenshotUtil$Screenshot;->fileExtension:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/google/glass/logging/FeedbackBuilder;->getScreenshotFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/util/CachedFilesManager;->getPath(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setClientCachePath(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v3

    const-string v4, "image/png"

    invoke-virtual {v3, v4}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->setContentType(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Attachment$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/glass/common/proto/Attachment$Builder;->build()Lcom/google/googlex/glass/common/proto/Attachment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 149
    :cond_2
    new-instance v3, Lcom/google/glass/timeline/TimelineHelper;

    invoke-direct {v3}, Lcom/google/glass/timeline/TimelineHelper;-><init>()V

    invoke-virtual {v2}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v4

    sget-object v5, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->BUG_REPORT:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    invoke-virtual {v3, p0, v4, v5, v7}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 152
    const-string v3, "ro.serialno"

    invoke-static {v3, v7}, Lcom/google/glass/util/HiddenApiHelper;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, serialNumber:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 154
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 157
    :cond_3
    sget-object v3, Lcom/google/glass/logging/FeedbackBuilder;->TAG:Ljava/lang/String;

    const-string v4, "Captured bugreport."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static captureAndAttachBugreport(Landroid/content/Context;Ljava/lang/String;ZLcom/google/glass/logging/CompanionLogReader;[Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "bugId"
    .parameter "shouldBugreport"
    .parameter "companionLogReader"
    .parameter "additionalFiles"

    .prologue
    .line 164
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->BUG_REPORT:Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-static {p1}, Lcom/google/glass/logging/FeedbackBuilder;->getBugreportFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/glass/logging/FeedbackBuilder$1;

    invoke-direct {v3, p2, p3, p0, p4}, Lcom/google/glass/logging/FeedbackBuilder$1;-><init>(ZLcom/google/glass/logging/CompanionLogReader;Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v0

    return v0
.end method

.method private static getApkInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "context"

    .prologue
    .line 258
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 260
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 261
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.google.glass."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 264
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 266
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Last update: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    iget-wide v8, v4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "First install: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    iget-wide v8, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Location: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Native libraries location: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 275
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v5           #packageManager:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 276
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v6, Lcom/google/glass/logging/FeedbackBuilder;->TAG:Ljava/lang/String;

    const-string v7, "Failed to get package info."

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    const-string v6, ""

    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    return-object v6

    .line 274
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #packageManager:Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1
.end method

.method private static getBugId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/glass/util/FileHelper;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBugreportFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "bugId"

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getConnectivity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/glass/logging/FeedbackBuilder;->PING_IP_COMMAND:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/glass/util/CommandOutputCollector;->collectOutput([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, sb:Ljava/lang/StringBuilder;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    sget-object v1, Lcom/google/glass/logging/FeedbackBuilder;->PING_DOMAIN_COMMAND:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/glass/util/CommandOutputCollector;->collectOutput([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDmesg(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 87
    sget-object v1, Lcom/google/glass/logging/FeedbackBuilder;->DMESG_COMMAND:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/glass/util/CommandOutputCollector;->collectOutput([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, output:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 89
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 91
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private static getLabSettings()Ljava/lang/String;
    .locals 8

    .prologue
    .line 294
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Lab settings {\n"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .local v5, labSettings:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/google/glass/util/Labs$Feature;->values()[Lcom/google/glass/util/Labs$Feature;

    move-result-object v0

    .local v0, arr$:[Lcom/google/glass/util/Labs$Feature;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v2, v0, v3

    .line 296
    .local v2, feature:Lcom/google/glass/util/Labs$Feature;
    invoke-static {v2}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v4

    .line 297
    .local v4, isEnabled:Z
    const-string v7, "\t"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v2}, Lcom/google/glass/util/Labs$Feature;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    if-eqz v4, :cond_1

    const-string v1, "on"

    .line 301
    .local v1, enabled:Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v2}, Lcom/google/glass/util/Labs$Feature;->getDefaultValue()Z

    move-result v7

    if-eq v4, v7, :cond_0

    .line 303
    const-string v7, " (changed from default)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_0
    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 300
    .end local v1           #enabled:Ljava/lang/String;
    :cond_1
    const-string v1, "off"

    goto :goto_1

    .line 307
    .end local v2           #feature:Lcom/google/glass/util/Labs$Feature;
    .end local v4           #isEnabled:Z
    :cond_2
    const-string v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static getPinnedTimelineItemIds(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 316
    invoke-static {p0}, Lcom/google/glass/timeline/TimelineHelper;->queryPinnedItems(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 318
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    .local v2, sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v1

    .line 322
    .local v1, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getIsDeleted()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "1"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 327
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 330
    if-eqz v0, :cond_1

    .line 331
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 334
    .end local v1           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    return-object v3

    .line 324
    .restart local v1       #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .restart local v2       #sb:Ljava/lang/StringBuilder;
    :cond_2
    :try_start_1
    const-string v3, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 330
    .end local v1           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_3
    if-eqz v0, :cond_4

    .line 331
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_4
    const-string v3, "no items"

    goto :goto_1

    .line 330
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_5

    .line 331
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3
.end method

.method private static getScreenshotFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "bugId"
    .parameter "fileExtension"

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static saveAndAttachScreenshot(Lcom/google/glass/util/ScreenshotUtil$Screenshot;Ljava/lang/String;)Z
    .locals 4
    .parameter "screenshot"
    .parameter "bugId"

    .prologue
    .line 203
    if-nez p0, :cond_0

    .line 204
    sget-object v0, Lcom/google/glass/logging/FeedbackBuilder;->TAG:Ljava/lang/String;

    const-string v1, "No screenshot found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v0, 0x0

    .line 208
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->BUG_REPORT:Lcom/google/glass/util/CachedFilesManager$Type;

    iget-object v2, p0, Lcom/google/glass/util/ScreenshotUtil$Screenshot;->fileExtension:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/google/glass/logging/FeedbackBuilder;->getScreenshotFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/glass/logging/FeedbackBuilder$2;

    invoke-direct {v3, p0}, Lcom/google/glass/logging/FeedbackBuilder$2;-><init>(Lcom/google/glass/util/ScreenshotUtil$Screenshot;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/CachedFilesManager$Type;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v0

    goto :goto_0
.end method
