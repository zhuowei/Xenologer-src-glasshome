.class Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;
.super Ljava/lang/Object;
.source "TimelineCursorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/database/TimelineCursorManager;->asyncRead(ILcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

.field final synthetic val$callback:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;

.field final synthetic val$cursorNumber:J

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/database/TimelineCursorManager;JILcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->this$0:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    iput-wide p2, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->val$cursorNumber:J

    iput p4, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->val$position:I

    iput-object p5, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->val$callback:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 127
    invoke-static {}, Lcom/google/glass/util/Assert;->assertNotUiThread()V

    .line 131
    iget-object v7, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->this$0:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    #getter for: Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v7}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->access$000(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 135
    :try_start_0
    iget-wide v7, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->val$cursorNumber:J

    iget-object v9, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->this$0:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    #getter for: Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorCount:J
    invoke-static {v9}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->access$100(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    .line 185
    iget-object v7, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->this$0:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    #getter for: Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v7}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->access$000(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->this$0:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    #getter for: Lcom/google/glass/home/timeline/database/TimelineCursorManager;->itemCache:Landroid/util/LruCache;
    invoke-static {v7}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->access$200(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)Landroid/util/LruCache;

    move-result-object v7

    iget v8, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->val$position:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;

    .line 143
    .local v2, cached:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;
    iget-object v7, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->val$callback:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->val$callback:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;

    invoke-virtual {v7}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;->isCanceled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 185
    iget-object v7, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->this$0:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    #getter for: Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v7}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->access$000(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 148
    :cond_2
    if-nez v2, :cond_5

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, blob:[B
    const/4 v5, 0x0

    .line 151
    .local v5, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    const/4 v1, 0x0

    .line 153
    .local v1, bundleCoverStatus:I
    :try_start_2
    iget-object v7, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->this$0:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    #getter for: Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->access$300(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 154
    iget-object v7, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->this$0:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    #getter for: Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->access$300(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)Landroid/database/Cursor;

    move-result-object v7

    iget v8, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->val$position:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :try_start_3
    iget-object v7, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->this$0:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    #getter for: Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->access$300(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)Landroid/database/Cursor;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/timeline/TimelineHelper;->getProtobufBlob(Landroid/database/Cursor;)[B

    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineItem;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v5

    .line 164
    :try_start_4
    iget-object v7, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->this$0:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    #getter for: Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->access$300(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)Landroid/database/Cursor;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/timeline/TimelineHelper;->getBundleCoverStatus(Landroid/database/Cursor;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v1

    .line 168
    :cond_3
    if-nez v5, :cond_4

    .line 185
    iget-object v7, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->this$0:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    #getter for: Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v7}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->access$000(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 158
    :catch_0
    move-exception v4

    .line 159
    .local v4, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_5
    invoke-static {}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->access$400()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Invalid protocol buffer."

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 185
    iget-object v7, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->this$0:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    #getter for: Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v7}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->access$000(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 173
    .end local v4           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_4
    :try_start_6
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    .line 174
    .local v3, crc32:Ljava/util/zip/CRC32;
    invoke-virtual {v3, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 175
    invoke-virtual {v3, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 178
    new-instance v2, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;

    .end local v2           #cached:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v2, v5, v1, v7}, Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;ILjava/lang/Long;)V

    .line 179
    .restart local v2       #cached:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;
    iget-object v7, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->this$0:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    #getter for: Lcom/google/glass/home/timeline/database/TimelineCursorManager;->itemCache:Landroid/util/LruCache;
    invoke-static {v7}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->access$200(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)Landroid/util/LruCache;

    move-result-object v7

    iget v8, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->val$position:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v7, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->this$0:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    #getter for: Lcom/google/glass/home/timeline/database/TimelineCursorManager;->positionCache:Landroid/util/LruCache;
    invoke-static {v7}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->access$500(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)Landroid/util/LruCache;

    move-result-object v7

    new-instance v8, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v8, v5}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    iget v9, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->val$position:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 185
    .end local v0           #blob:[B
    .end local v1           #bundleCoverStatus:I
    .end local v3           #crc32:Ljava/util/zip/CRC32;
    .end local v5           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_5
    iget-object v7, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->this$0:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    #getter for: Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v7}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->access$000(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 189
    iget-object v7, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->val$callback:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadCallback;

    if-eqz v7, :cond_0

    .line 193
    move-object v6, v2

    .line 194
    .local v6, result:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;
    invoke-static {}, Lcom/google/glass/util/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v8, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1$1;

    invoke-direct {v8, p0, v6}, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1$1;-><init>(Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 185
    .end local v2           #cached:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;
    .end local v6           #result:Lcom/google/glass/home/timeline/TimelineItemLoader$ReadResult;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/google/glass/home/timeline/database/TimelineCursorManager$1;->this$0:Lcom/google/glass/home/timeline/database/TimelineCursorManager;

    #getter for: Lcom/google/glass/home/timeline/database/TimelineCursorManager;->cursorLock:Ljava/util/concurrent/locks/Lock;
    invoke-static {v8}, Lcom/google/glass/home/timeline/database/TimelineCursorManager;->access$000(Lcom/google/glass/home/timeline/database/TimelineCursorManager;)Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7
.end method
