.class public Lcom/google/glass/home/GCMIntentService;
.super Lcom/google/android/gcm/GCMBaseIntentService;
.source "GCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/GCMIntentService$2;
    }
.end annotation


# static fields
.field public static final ACTION_RETRY_GCM_REGISTER:Ljava/lang/String; = "retry_gcm_register"

.field private static final ANDROID_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final ANDROID_ID_SELECTION:Ljava/lang/String; = "name=?"

.field private static final ANDROID_ID_SELECTION_ARGS:[Ljava/lang/String; = null

.field public static final GCM_SENDER_ID:Ljava/lang/String; = "229668747847"

.field private static final GSERVICES_CONTENT_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    const-class v0, Lcom/google/glass/home/GCMIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/GCMIntentService;->TAG:Ljava/lang/String;

    .line 49
    const-string v0, "content://com.google.android.gsf.gservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/GCMIntentService;->GSERVICES_CONTENT_URI:Landroid/net/Uri;

    .line 51
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/home/GCMIntentService;->ANDROID_ID_PROJECTION:[Ljava/lang/String;

    .line 53
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/glass/home/GCMIntentService;->ANDROID_ID_SELECTION_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "229668747847"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>([Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    invoke-static {p0}, Lcom/google/glass/home/GCMIntentService;->getGsfDeviceId(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Lcom/google/glass/net/ProtoResponseHandler;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lcom/google/glass/home/GCMIntentService;->dispatch(Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Lcom/google/glass/net/ProtoResponseHandler;)V

    return-void
.end method

.method private static dispatch(Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Lcom/google/glass/net/ProtoResponseHandler;)V
    .locals 7
    .parameter "requestDispatcher"
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/net/ProtoRequestDispatcher;",
            "Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<",
            "Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p2, responseHandler:Lcom/google/glass/net/ProtoResponseHandler;,"Lcom/google/glass/net/ProtoResponseHandler<Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;>;"
    const/4 v6, 0x1

    .line 247
    .local v6, isImmediate:Z
    sget-object v1, Lcom/google/glass/net/ServerConstants$Action;->GCM_REGISTRATION:Lcom/google/glass/net/ServerConstants$Action;

    const/4 v3, 0x1

    sget-object v4, Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/glass/net/ProtoRequestDispatcher;->dispatch(Lcom/google/glass/net/ServerConstants$Action;Lcom/google/protobuf/AbstractMessage;ZLcom/google/protobuf/Parser;Lcom/google/glass/net/ProtoResponseHandler;)Z

    .line 249
    return-void
.end method

.method private static getGsfDeviceId(Landroid/content/Context;)J
    .locals 11
    .parameter "context"

    .prologue
    .line 121
    const-wide/16 v6, 0x0

    .line 122
    .local v6, androidId:J
    const/4 v8, 0x0

    .line 124
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/home/GCMIntentService;->GSERVICES_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/glass/home/GCMIntentService;->ANDROID_ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "name=?"

    sget-object v4, Lcom/google/glass/home/GCMIntentService;->ANDROID_ID_SELECTION_ARGS:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 126
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/google/glass/home/GCMIntentService;->ANDROID_ID_PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 129
    .local v10, value:Ljava/lang/String;
    if-eqz v10, :cond_2

    :try_start_1
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    .line 135
    .end local v10           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 136
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_1
    return-wide v6

    .line 129
    .restart local v10       #value:Ljava/lang/String;
    :cond_2
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v9

    .line 131
    .local v9, e:Ljava/lang/NumberFormatException;
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 135
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .end local v10           #value:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 136
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static isRegisteredWithGlassServer(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/lang/String;Lcom/google/glass/net/ProtoResponseHandler;)V
    .locals 3
    .parameter "requestDispatcher"
    .parameter "registrationId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/net/ProtoRequestDispatcher;",
            "Ljava/lang/String;",
            "Lcom/google/glass/net/ProtoResponseHandler",
            "<",
            "Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p2, responseHandler:Lcom/google/glass/net/ProtoResponseHandler;,"Lcom/google/glass/net/ProtoResponseHandler<Lcom/google/googlex/glass/common/proto/C2DMRegistrationResponse;>;"
    sget-object v1, Lcom/google/glass/home/GCMIntentService;->TAG:Ljava/lang/String;

    const-string v2, "Checking if registered with Glass server."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->CHECK_REGISTERED:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->setAction(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->setRegistrationId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    .line 239
    .local v0, requestBuilder:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/google/glass/home/GCMIntentService;->dispatch(Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Lcom/google/glass/net/ProtoResponseHandler;)V

    .line 240
    return-void
.end method

.method public static registerWithGlassServer(Lcom/google/glass/home/HomeApplication;Ljava/lang/String;)V
    .locals 2
    .parameter "application"
    .parameter "registrationId"

    .prologue
    .line 146
    sget-object v0, Lcom/google/glass/home/GCMIntentService;->TAG:Ljava/lang/String;

    const-string v1, "Registering with Glass server."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/google/glass/home/GCMIntentService;->TAG:Ljava/lang/String;

    const-string v1, "Cannot make a request without registration ID."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :goto_0
    return-void

    .line 153
    :cond_0
    new-instance v0, Lcom/google/glass/home/GCMIntentService$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/home/GCMIntentService$1;-><init>(Lcom/google/glass/home/HomeApplication;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/GCMIntentService$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private static unregisterWithGlassServer(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/lang/String;)V
    .locals 3
    .parameter "requestDispatcher"
    .parameter "registrationId"

    .prologue
    .line 212
    sget-object v1, Lcom/google/glass/home/GCMIntentService;->TAG:Ljava/lang/String;

    const-string v2, "Unregistering from Glass server."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    sget-object v1, Lcom/google/glass/home/GCMIntentService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot make a request without registration ID."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-static {}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;->newBuilder()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;->UNREGISTER:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;

    invoke-virtual {v1, v2}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->setAction(Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Action;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->setRegistrationId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;

    move-result-object v0

    .line 224
    .local v0, requestBuilder:Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest$Builder;->build()Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;

    move-result-object v1

    new-instance v2, Lcom/google/glass/net/SimpleProtoResponseHandler;

    invoke-direct {v2}, Lcom/google/glass/net/SimpleProtoResponseHandler;-><init>()V

    invoke-static {p0, v1, v2}, Lcom/google/glass/home/GCMIntentService;->dispatch(Lcom/google/glass/net/ProtoRequestDispatcher;Lcom/google/googlex/glass/common/proto/C2DMRegistrationRequest;Lcom/google/glass/net/ProtoResponseHandler;)V

    goto :goto_0
.end method


# virtual methods
.method protected onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "errorId"

    .prologue
    .line 76
    sget-object v0, Lcom/google/glass/home/GCMIntentService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An error has occurred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-eqz p2, :cond_1

    const-string v0, "AUTHENTICATION_FAILED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PHONE_REGISTRATION_ERROR"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "retry_gcm_register"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/home/GCMIntentService;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    :cond_1
    return-void
.end method

.method protected onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 88
    sget-object v2, Lcom/google/glass/home/GCMIntentService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v2, "p"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    const-string v2, "p"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, payload:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "com.google.glass.sync.GCM_SYNC"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    const-string v2, "timeline_sync"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "timeline_sync_ttl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    :cond_0
    const-string v2, "com.google.glass.timeline"

    invoke-static {p1, v2, v0}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 110
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #payload:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 99
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v1       #payload:Ljava/lang/String;
    :cond_2
    const-string v2, "share_target_sync"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    const-string v2, "com.google.glass.entity"

    invoke-static {p1, v2, v0}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 101
    :cond_3
    const-string v2, "report_location"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 102
    const-string v2, "com.google.glass.location"

    invoke-static {p1, v2, v0}, Lcom/google/glass/sync/SyncHelper;->triggerSync(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 103
    :cond_4
    const-string v2, "remote_wipe"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.glass.deviceadmin.REMOTE_WIPE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/google/glass/home/GCMIntentService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method protected onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "registrationId"

    .prologue
    .line 64
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/glass/home/GCMIntentService;->registerWithGlassServer(Lcom/google/glass/home/HomeApplication;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method protected onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "registrationId"

    .prologue
    .line 70
    invoke-static {p0}, Lcom/google/glass/home/HomeApplication;->from(Landroid/content/Context;)Lcom/google/glass/home/HomeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/home/HomeApplication;->getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/glass/home/GCMIntentService;->unregisterWithGlassServer(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/lang/String;)V

    .line 72
    return-void
.end method
