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
    .line 52
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
    .line 52
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 14
    .parameter "params"

    .prologue
    const/4 v13, 0x0

    .line 66
    invoke-static {}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inserting an "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v6}, Lcom/google/glass/phone/PhoneCall;->isIncomingCall()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "incoming"

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " call item."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v6, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    #getter for: Lcom/google/glass/phone/PhoneCallTimelineHelper;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v6}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$200(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    #getter for: Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/google/glass/util/SettingsSecure;

    iget-object v9, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    #getter for: Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;
    invoke-static {v9}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {v6, v7, v8}, Lcom/google/glass/timeline/TimelineHelper;->createTimelineItemBuilder(Landroid/content/Context;Lcom/google/glass/util/SettingsSecure;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 71
    .local v0, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    sget-object v6, Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;->COMPANIONWARE:Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;

    invoke-virtual {v0, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setSourceType(Lcom/google/googlex/glass/common/proto/TimelineItem$SourceType;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 74
    iget-object v6, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    iget-object v7, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v7}, Lcom/google/glass/phone/PhoneCall;->getCallerId()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->sanitizeEntity(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v1

    .line 75
    .local v1, entity:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setCreator(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 79
    iget-object v6, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v6}, Lcom/google/glass/phone/PhoneCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, phoneNumber:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 82
    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 86
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 88
    const-string v4, "companion:com.google.glass.companion.sms"

    .line 90
    .local v4, smsCompanionwareId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->build()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v3

    .line 96
    .local v3, shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addShareTarget(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 99
    .end local v3           #shareTarget:Lcom/google/googlex/glass/common/proto/Entity;
    .end local v4           #smsCompanionwareId:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    #calls: Lcom/google/glass/phone/PhoneCallTimelineHelper;->addMenuItems(Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Ljava/lang/String;)V
    invoke-static {v6, v0, v2}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$300(Lcom/google/glass/phone/PhoneCallTimelineHelper;Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;Ljava/lang/String;)V

    .line 101
    iget-object v6, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v6}, Lcom/google/glass/phone/PhoneCall;->isMissedCall()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 102
    invoke-static {}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "This is a missed call."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v6, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    #getter for: Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/google/glass/common/R$string;->phone_call_missed_call:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, text:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 110
    sget-object v6, Lcom/google/glass/phone/PhoneCallTimelineHelper;->PHONE_CALL_ATTACHMENT:Lcom/google/googlex/glass/common/proto/Attachment;

    invoke-virtual {v0, v6}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addAttachment(Lcom/google/googlex/glass/common/proto/Attachment;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 111
    iget-object v6, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    invoke-virtual {v6}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->getTimelineHelper()Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    #getter for: Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v8

    sget-object v9, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->PHONE_CALL:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    invoke-virtual {v6, v7, v8, v9, v13}, Lcom/google/glass/timeline/TimelineHelper;->insertTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/UserAction;)Landroid/net/Uri;

    .line 114
    return-object v13

    .line 66
    .end local v0           #builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .end local v1           #entity:Lcom/google/googlex/glass/common/proto/Entity;
    .end local v2           #phoneNumber:Ljava/lang/String;
    .end local v5           #text:Ljava/lang/String;
    :cond_2
    const-string v6, "outgoing"

    goto/16 :goto_0

    .line 105
    .restart local v0       #builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .restart local v1       #entity:Lcom/google/googlex/glass/common/proto/Entity;
    .restart local v2       #phoneNumber:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    #getter for: Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/google/glass/common/R$string;->phone_call_total_time:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    iget-object v11, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v11}, Lcom/google/glass/phone/PhoneCall;->getCallRunTime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->formatDuration(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #text:Ljava/lang/String;
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Releasing wake lock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 124
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 57
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 58
    invoke-static {}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Acquiring wake lock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->this$0:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    #getter for: Lcom/google/glass/phone/PhoneCallTimelineHelper;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$100(Lcom/google/glass/phone/PhoneCallTimelineHelper;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 60
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-static {}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 61
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallTimelineHelper$1;->wakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 62
    return-void
.end method
