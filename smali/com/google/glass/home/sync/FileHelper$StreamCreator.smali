.class interface abstract Lcom/google/glass/home/sync/FileHelper$StreamCreator;
.super Ljava/lang/Object;
.source "FileHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/sync/FileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "StreamCreator"
.end annotation


# virtual methods
.method public abstract createFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method
