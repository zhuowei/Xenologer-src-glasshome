.class public Lcom/google/glass/logging/LoggingApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "LoggingApplication.java"


# static fields
.field private static final CACHED_FILES_DIRECTORY:Ljava/lang/String; = null

.field private static final MAX_NUM_SDCARD_ATTACHMENTS:I = 0x2710

.field private static final MAX_SIZE_SDCARD_FILES:J = 0x40000000L


# instance fields
.field private companionMessenger:Lcom/google/glass/util/RemoteMessenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "glass_bugreports"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/LoggingApplication;->CACHED_FILES_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/logging/LoggingApplication;
    .locals 3
    .parameter "context"

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, applicationContext:Landroid/content/Context;
    instance-of v1, v0, Lcom/google/glass/logging/LoggingApplication;

    if-eqz v1, :cond_0

    .line 58
    check-cast v0, Lcom/google/glass/logging/LoggingApplication;

    .end local v0           #applicationContext:Landroid/content/Context;
    return-object v0

    .line 60
    .restart local v0       #applicationContext:Landroid/content/Context;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The context must be a child of the LoggingApplication context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getCompanionMessenger()Lcom/google/glass/util/RemoteMessenger;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/logging/LoggingApplication;->companionMessenger:Lcom/google/glass/util/RemoteMessenger;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/glass/app/GlassApplication;->onCreate()V

    .line 47
    new-instance v0, Lcom/google/glass/util/RemoteMessenger;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.companion.MESSENGER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/google/glass/util/RemoteMessenger;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/google/glass/logging/LoggingApplication;->companionMessenger:Lcom/google/glass/util/RemoteMessenger;

    .line 49
    return-void
.end method

.method protected setupCachedFilesManager()V
    .locals 5

    .prologue
    .line 67
    new-instance v0, Lcom/google/glass/util/CachedFilesManager;

    sget-object v1, Lcom/google/glass/logging/LoggingApplication;->CACHED_FILES_DIRECTORY:Ljava/lang/String;

    const-wide/32 v2, 0x40000000

    const/16 v4, 0x2710

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/glass/util/CachedFilesManager;-><init>(Ljava/lang/String;JI)V

    invoke-static {v0}, Lcom/google/glass/util/CachedFilesManager;->setSharedInstance(Lcom/google/glass/util/CachedFilesManager;)V

    .line 69
    return-void
.end method
