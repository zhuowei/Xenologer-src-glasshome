.class Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;
.super Ljava/lang/Object;
.source "UploadSyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/sync/UploadSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadedBytesCounter"
.end annotation


# instance fields
.field private numBytes:J

.field final synthetic this$0:Lcom/google/glass/home/sync/UploadSyncHelper;


# direct methods
.method private constructor <init>(Lcom/google/glass/home/sync/UploadSyncHelper;)V
    .locals 2
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;->this$0:Lcom/google/glass/home/sync/UploadSyncHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;->numBytes:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/sync/UploadSyncHelper;Lcom/google/glass/home/sync/UploadSyncHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;-><init>(Lcom/google/glass/home/sync/UploadSyncHelper;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 631
    iget-wide v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;->numBytes:J

    return-wide v0
.end method

.method static synthetic access$114(Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 631
    iget-wide v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;->numBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/glass/home/sync/UploadSyncHelper$UploadedBytesCounter;->numBytes:J

    return-wide v0
.end method
