.class public Lcom/google/glass/voice/VoiceService;
.super Landroid/app/Service;
.source "VoiceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final binder:Landroid/os/IBinder;

.field private callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

.field private serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

.field private voiceEngine:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/glass/voice/VoiceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 101
    new-instance v0, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceService$VoiceServiceBinder;-><init>(Lcom/google/glass/voice/VoiceService;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->binder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/VoiceEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/VoiceService;)Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    return-object v0
.end method

.method public static getBackgroundExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->getBackgroundExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lcom/google/glass/voice/VoiceEngine;->getBackgroundThreadFactory()Lcom/google/glass/util/ThreadCheckThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method public static getContactEntities(Landroid/content/Context;)Ljava/util/Collection;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->getContactEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getMirrorCommandEntities(Landroid/content/Context;)Lcom/google/common/collect/Multimap;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity$Command$CommandType;",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->getMirrorCommandEntities(Landroid/content/Context;)Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoShareTargetEntities(Landroid/content/Context;)Ljava/util/Collection;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->getPhotoShareTargetEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getPlusShareTargetEntities(Landroid/content/Context;)Ljava/util/Collection;
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/googlex/glass/common/proto/Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->getPlusShareTargetEntities(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static hasContacts(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 110
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->hasContacts(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static hasPhotoShareTargets(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 120
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->hasPhotoShareTargets(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static hasPlusShareTargets(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 115
    invoke-static {p0}, Lcom/google/glass/voice/EntityUtils;->hasPlusShareTargets(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static setBackgroundExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .parameter "backgroundExecutor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 141
    invoke-static {p0}, Lcom/google/glass/voice/VoiceEngine;->setBackgroundExecutor(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 142
    return-void
.end method

.method public static setBackgroundThreadFactory(Lcom/google/glass/util/ThreadCheckThreadFactory;)V
    .locals 0
    .parameter "backgroundThreadFactory"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 156
    invoke-static {p0}, Lcom/google/glass/voice/VoiceEngine;->setBackgroundThreadFactory(Lcom/google/glass/util/ThreadCheckThreadFactory;)V

    .line 157
    return-void
.end method

.method public static setNetworkRecognitionDisabledForTest(Z)V
    .locals 0
    .parameter "networkRecognitionDisabled"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 161
    invoke-static {p0}, Lcom/google/glass/voice/VoiceEngine;->setNetworkRecognitionDisabledForTest(Z)V

    .line 162
    return-void
.end method


# virtual methods
.method areDynamicGrammarsInvalid()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->areDynamicGrammarsInvalid()Z

    move-result v0

    return v0
.end method

.method public getLastHotwordResult()Lcom/google/glass/voice/HotwordResult;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->getLastHotwordResult()Lcom/google/glass/voice/HotwordResult;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceConfigDescriptor()Lcom/google/glass/voice/VoiceConfigDescriptor;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->getCurrentConfigDescriptor()Lcom/google/glass/voice/VoiceConfigDescriptor;

    move-result-object v0

    return-object v0
.end method

.method invalidateGrammars(Ljava/lang/String;)V
    .locals 1
    .parameter "message"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceEngine;->invalidateGrammars(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->initializeInputStreams()V

    .line 168
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 180
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v1, "Creating VoiceService"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    new-instance v0, Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceEngine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    .line 183
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-direct {v0, v1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;-><init>(Lcom/google/glass/voice/VoiceEngine;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    .line 184
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    invoke-direct {v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    .line 186
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->initializeAsynchronously()V

    .line 187
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceEngine;->setListener(Lcom/google/glass/voice/VoiceServiceListener;)V

    .line 188
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 192
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v1, "Destroying VoiceService"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceEngine;->cleanupSynchronously()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->callbackBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;

    invoke-virtual {v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->close()V

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->serviceListenerBroadcaster:Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;

    invoke-virtual {v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceServiceListener;->close()V

    .line 202
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 203
    return-void
.end method

.method public overrideControllerForTesting(Lcom/google/glass/voice/network/RecognizerController;)V
    .locals 1
    .parameter "rc"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceEngine;->overrideControllerForTesting(Lcom/google/glass/voice/network/RecognizerController;)V

    .line 174
    return-void
.end method

.method publishCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 4
    .parameter "command"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 227
    sget-object v0, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    const-string v1, "publishCommand"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    const/4 v0, 0x3

    sget-object v1, Lcom/google/glass/voice/VoiceService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "publishCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/glass/util/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceEngine;->publishCommand(Lcom/google/glass/voice/VoiceCommand;)V

    .line 230
    return-void
.end method

.method setListener(Lcom/google/glass/voice/VoiceServiceListener;)V
    .locals 1
    .parameter "listener"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/glass/voice/VoiceService;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/VoiceEngine;->setListener(Lcom/google/glass/voice/VoiceServiceListener;)V

    .line 235
    return-void
.end method
