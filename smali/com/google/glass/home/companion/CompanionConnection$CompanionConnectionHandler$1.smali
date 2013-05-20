.class Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler$1;
.super Ljava/lang/Object;
.source "CompanionConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->handleTimelineItemFromCompanion(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;

.field final synthetic val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

.field final synthetic val$itemType:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;


# direct methods
.method constructor <init>(Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler$1;->this$0:Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;

    iput-object p2, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    iput-object p3, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler$1;->val$itemType:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 109
    iget-object v4, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler$1;->val$item:Lcom/google/googlex/glass/common/proto/TimelineItem;

    .line 111
    .local v4, itemToInsert:Lcom/google/googlex/glass/common/proto/TimelineItem;
    invoke-static {v4}, Lcom/google/glass/timeline/TimelineHelper;->isCompanionSms(Lcom/google/googlex/glass/common/proto/TimelineItem;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 113
    iget-object v7, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler$1;->this$0:Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;

    #getter for: Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->service:Lcom/google/glass/home/companion/CompanionService;
    invoke-static {v7}, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->access$000(Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;)Lcom/google/glass/home/companion/CompanionService;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/google/glass/home/companion/CompanionHelper;->stripGlassSmsSignature(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v4

    .line 115
    invoke-static {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->newBuilder(Lcom/google/googlex/glass/common/proto/TimelineItem;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    move-result-object v0

    .line 116
    .local v0, builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v2

    .line 117
    .local v2, creator:Lcom/google/googlex/glass/common/proto/Entity;
    if-eqz v2, :cond_2

    .line 118
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineItem;->getCreator()Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlex/glass/common/proto/Entity;->getPhoneNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/glass/companion/CompanionUtils;->getSmsBundleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, bundleId:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->setBundleId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 121
    const/4 v7, 0x3

    invoke-static {}, Lcom/google/glass/home/companion/CompanionConnection;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set the bundle id to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/google/glass/util/LogHelper;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    .end local v1           #bundleId:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/google/glass/entity/EntityHelper;->getSharedInstance()Lcom/google/glass/entity/EntityHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler$1;->this$0:Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;

    #getter for: Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->service:Lcom/google/glass/home/companion/CompanionService;
    invoke-static {v8}, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->access$000(Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;)Lcom/google/glass/home/companion/CompanionService;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/google/glass/entity/EntityHelper;->getFirstEntityForUser(Landroid/content/Context;Z)Lcom/google/googlex/glass/common/proto/Entity;

    move-result-object v6

    .line 129
    .local v6, user:Lcom/google/googlex/glass/common/proto/Entity;
    if-eqz v6, :cond_0

    .line 130
    new-instance v5, Lcom/google/glass/util/SettingsSecure;

    iget-object v7, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler$1;->this$0:Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;

    #getter for: Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->service:Lcom/google/glass/home/companion/CompanionService;
    invoke-static {v7}, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->access$000(Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;)Lcom/google/glass/home/companion/CompanionService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/glass/home/companion/CompanionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/google/glass/util/SettingsSecure;-><init>(Landroid/content/ContentResolver;)V

    .line 131
    .local v5, settingsSecure:Lcom/google/glass/util/SettingsSecure;
    invoke-static {v6}, Lcom/google/googlex/glass/common/proto/Entity;->newBuilder(Lcom/google/googlex/glass/common/proto/Entity;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v7

    invoke-static {v5}, Lcom/google/glass/timeline/TimelineHelper;->getLocalTimelineItemSource(Lcom/google/glass/util/SettingsSecure;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/googlex/glass/common/proto/Entity$Builder;->setSource(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/Entity$Builder;

    move-result-object v3

    .line 133
    .local v3, entityBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    invoke-virtual {v0, v3}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->addShareTarget(Lcom/google/googlex/glass/common/proto/Entity$Builder;)Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;

    .line 136
    .end local v3           #entityBuilder:Lcom/google/googlex/glass/common/proto/Entity$Builder;
    .end local v5           #settingsSecure:Lcom/google/glass/util/SettingsSecure;
    :cond_0
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;->build()Lcom/google/googlex/glass/common/proto/TimelineItem;

    move-result-object v4

    .line 138
    .end local v0           #builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .end local v2           #creator:Lcom/google/googlex/glass/common/proto/Entity;
    .end local v6           #user:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_1
    iget-object v7, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler$1;->this$0:Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;

    #getter for: Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->service:Lcom/google/glass/home/companion/CompanionService;
    invoke-static {v7}, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;->access$000(Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler;)Lcom/google/glass/home/companion/CompanionService;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/home/companion/CompanionConnection$CompanionConnectionHandler$1;->val$itemType:Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;

    invoke-virtual {v7, v4, v8}, Lcom/google/glass/home/companion/CompanionService;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineItem;Lcom/google/glass/logging/UserEventAction$TimelineItemInserted;)V

    .line 139
    return-void

    .line 124
    .restart local v0       #builder:Lcom/google/googlex/glass/common/proto/TimelineItem$Builder;
    .restart local v2       #creator:Lcom/google/googlex/glass/common/proto/Entity;
    :cond_2
    invoke-static {}, Lcom/google/glass/home/companion/CompanionConnection;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Sms from companion should have creator specified"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
