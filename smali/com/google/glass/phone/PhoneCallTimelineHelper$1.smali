.class Lcom/google/glass/phone/PhoneCallTimelineHelper$1;
.super Landroid/os/AsyncTask;
.source "PhoneCallTimelineHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/phone/PhoneCallTimelineHelper;->insertCallAsync(Lcom/google/glass/phone/PhoneCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

.field final synthetic val$call:Lcom/google/glass/phone/PhoneCall;

.field wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/google/glass/phone/PhoneCallTimelineHelper;Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    iput-object p2, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .parameter "params"

    .prologue
    const/4 v11, 0x0

    .line 59
    invoke-static {}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inserting an "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v4}, Lcom/google/glass/phone/PhoneCall;->isIncomingCall()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "incoming"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " call item."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v4, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    #getter for: Lcom/google/glass/phone/PhoneCallTimelineHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v4}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$200(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    #getter for: Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Lcom/google/glass/util/SettingsSecure;

    iget-object v7, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    #getter for: Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v4, v5, v6}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 63
    .local v0, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    iget-object v4, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    iget-object v5, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v5}, Lcom/google/glass/phone/PhoneCall;->getCallerId()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->sanitizeEntity(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    .line 64
    .local v1, entity:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreator(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 67
    iget-object v4, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v4}, Lcom/google/glass/phone/PhoneCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, phoneNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 72
    :cond_0
    #calls: Lcom/google/glass/phone/PhoneCallTimelineHelper;->addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$300(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Ljava/lang/String;)V

    .line 74
    iget-object v4, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v4}, Lcom/google/glass/phone/PhoneCall;->isMissedCall()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 75
    invoke-static {}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "This is a missed call."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v4, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    #getter for: Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$string;->phone_call_missed_call:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, text:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 82
    iget-object v4, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-virtual {v4}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->getTimelineHelper()Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    #getter for: Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v6

    sget-object v7, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->PHONE_CALL:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    invoke-virtual {v4, v5, v6, v7, v11}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 85
    return-object v11

    .line 59
    .end local v0           #builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .end local v1           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    .end local v2           #phoneNumber:Ljava/lang/String;
    .end local v3           #text:Ljava/lang/String;
    :cond_1
    const-string v4, "outgoing"

    goto/16 :goto_0

    .line 78
    .restart local v0       #builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .restart local v1       #entity:Lcom/google/googlex/glass/common/proto/Entity;
    .restart local v2       #phoneNumber:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    #getter for: Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/google/glass/common/R$string;->phone_call_total_time:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    iget-object v9, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v9}, Lcom/google/glass/phone/PhoneCall;->getCallRunTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->formatDuration(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #text:Ljava/lang/String;
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Releasing wake lock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 95
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 50
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 51
    invoke-static {}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Acquiring wake lock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    #getter for: Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 53
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-static {}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 54
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 55
    return-void
.end method
