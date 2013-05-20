.class Lcom/google/glass/home/companion/CompanionConnection$1;
.super Ljava/lang/Object;
.source "CompanionConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/companion/CompanionConnection;->handleApiRequest(Lcom/google/glass/companion/Proto$ApiRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/companion/CompanionConnection;

.field final synthetic val$apiRequest:Lcom/google/glass/companion/Proto$ApiRequest;


# direct methods
.method constructor <init>(Lcom/google/glass/home/companion/CompanionConnection;Lcom/google/glass/companion/Proto$ApiRequest;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/google/glass/home/companion/CompanionConnection$1;->this$0:Lcom/google/glass/home/companion/CompanionConnection;

    iput-object p2, p0, Lcom/google/glass/home/companion/CompanionConnection$1;->val$apiRequest:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 468
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->COMPANION_API:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 469
    invoke-static {}, Lcom/google/glass/home/companion/CompanionConnection;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Companion api is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection$1;->val$apiRequest:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$ApiRequest;->getType()Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    move-result-object v1

    sget-object v2, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->INSERT_OR_UPDATE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    if-ne v1, v2, :cond_2

    .line 475
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection$1;->val$apiRequest:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-static {v1}, Lcom/google/glass/home/companion/CompanionHelper;->getItem(Lcom/google/glass/companion/Proto$ApiRequest;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v0

    .line 476
    .local v0, item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    if-eqz v0, :cond_0

    .line 477
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection$1;->this$0:Lcom/google/glass/home/companion/CompanionConnection;

    #getter for: Lcom/google/glass/home/companion/CompanionConnection;->service:Lcom/google/glass/home/companion/CompanionService;
    invoke-static {v1}, Lcom/google/glass/home/companion/CompanionConnection;->access$200(Lcom/google/glass/home/companion/CompanionConnection;)Lcom/google/glass/home/companion/CompanionService;

    move-result-object v1

    sget-object v2, Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;->COMPANION_API:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/home/companion/CompanionService;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;)V

    goto :goto_0

    .line 479
    .end local v0           #item:Lcom/google/googlex/glass/common/proto/TimelineItem;
    :cond_2
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection$1;->val$apiRequest:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$ApiRequest;->getType()Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    move-result-object v1

    sget-object v2, Lcom/google/glass/companion/Proto$ApiRequest$RequestType;->DELETE_TIMELINE_ITEM:Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    if-ne v1, v2, :cond_4

    .line 480
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection$1;->val$apiRequest:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$ApiRequest;->hasTimelineItem()Z

    move-result v1

    if-nez v1, :cond_3

    .line 481
    invoke-static {}, Lcom/google/glass/home/companion/CompanionConnection;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No timeline item specified to delete"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 484
    :cond_3
    iget-object v1, p0, Lcom/google/glass/home/companion/CompanionConnection$1;->this$0:Lcom/google/glass/home/companion/CompanionConnection;

    #getter for: Lcom/google/glass/home/companion/CompanionConnection;->timelineHelper:Lcom/google/glass/timeline/TimelineHelper;
    invoke-static {v1}, Lcom/google/glass/home/companion/CompanionConnection;->access$300(Lcom/google/glass/home/companion/CompanionConnection;)Lcom/google/glass/timeline/TimelineHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/companion/CompanionConnection$1;->this$0:Lcom/google/glass/home/companion/CompanionConnection;

    #getter for: Lcom/google/glass/home/companion/CompanionConnection;->service:Lcom/google/glass/home/companion/CompanionService;
    invoke-static {v2}, Lcom/google/glass/home/companion/CompanionConnection;->access$200(Lcom/google/glass/home/companion/CompanionConnection;)Lcom/google/glass/home/companion/CompanionService;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/home/companion/CompanionConnection$1;->val$apiRequest:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$ApiRequest;->getTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/glass/timeline/TimelineHelper;->deleteTimelineItem(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)V

    goto :goto_0

    .line 486
    :cond_4
    invoke-static {}, Lcom/google/glass/home/companion/CompanionConnection;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown request type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/home/companion/CompanionConnection$1;->val$apiRequest:Lcom/google/glass/companion/Proto$ApiRequest;

    invoke-virtual {v3}, Lcom/google/glass/companion/Proto$ApiRequest;->getType()Lcom/google/glass/companion/Proto$ApiRequest$RequestType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
