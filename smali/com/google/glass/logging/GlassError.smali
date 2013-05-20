.class public final enum Lcom/google/glass/logging/GlassError;
.super Ljava/lang/Enum;
.source "GlassError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/logging/GlassError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/logging/GlassError;

.field public static final enum BLUETOOTH_MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

.field public static final enum CAMERA_ERROR:Lcom/google/glass/logging/GlassError;

.field public static final enum HEAP_ADDR_ERROR:Lcom/google/glass/logging/GlassError;

.field public static final enum MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

.field private static final TAG:Ljava/lang/String;

.field public static final enum TOUCHPAD_ERROR:Lcom/google/glass/logging/GlassError;


# instance fields
.field public final name:Ljava/lang/String;

.field public final recoveryAction:Lcom/google/glass/util/Feedback$RecoveryAction;

.field public final shouldBugreport:Z

.field public final shouldScreenshot:Z

.field public final signature:Ljava/lang/String;

.field public final userEventData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 18
    new-instance v0, Lcom/google/glass/logging/GlassError;

    const-string v1, "CAMERA_ERROR"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "Camera error"

    sget-object v5, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_REBOOT:Lcom/google/glass/util/Feedback$RecoveryAction;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "9"

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZLjava/lang/String;)V

    sput-object v0, Lcom/google/glass/logging/GlassError;->CAMERA_ERROR:Lcom/google/glass/logging/GlassError;

    .line 21
    new-instance v0, Lcom/google/glass/logging/GlassError;

    const-string v1, "TOUCHPAD_ERROR"

    const/4 v2, 0x1

    const-string v3, "Unable to find or reset touchpad device"

    const-string v4, "Touchpad error"

    sget-object v5, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_SHUTDOWN:Lcom/google/glass/util/Feedback$RecoveryAction;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "10"

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZLjava/lang/String;)V

    sput-object v0, Lcom/google/glass/logging/GlassError;->TOUCHPAD_ERROR:Lcom/google/glass/logging/GlassError;

    .line 24
    new-instance v0, Lcom/google/glass/logging/GlassError;

    const-string v1, "MEM_HEAP_ERROR"

    const/4 v2, 0x2

    const-string v3, "@@@ ABORTING: HEAP MEMORY CORRUPTION"

    const-string v4, "Memory heap error"

    sget-object v5, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/util/Feedback$RecoveryAction;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "12"

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZLjava/lang/String;)V

    sput-object v0, Lcom/google/glass/logging/GlassError;->MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

    .line 27
    new-instance v0, Lcom/google/glass/logging/GlassError;

    const-string v1, "HEAP_ADDR_ERROR"

    const/4 v2, 0x3

    const-string v3, "@@@ ABORTING: INVALID HEAP ADDRESS"

    const-string v4, "Heap address error"

    sget-object v5, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/util/Feedback$RecoveryAction;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "13"

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZLjava/lang/String;)V

    sput-object v0, Lcom/google/glass/logging/GlassError;->HEAP_ADDR_ERROR:Lcom/google/glass/logging/GlassError;

    .line 43
    new-instance v0, Lcom/google/glass/logging/GlassError;

    const-string v1, "BLUETOOTH_MEM_HEAP_ERROR"

    const/4 v2, 0x4

    const-string v3, ">>> com.google.glass.bluetooth <<<"

    const-string v4, "Bluetooth memory heap error"

    sget-object v5, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_REBOOT:Lcom/google/glass/util/Feedback$RecoveryAction;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZLjava/lang/String;)V

    sput-object v0, Lcom/google/glass/logging/GlassError;->BLUETOOTH_MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/glass/logging/GlassError;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/glass/logging/GlassError;->CAMERA_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/glass/logging/GlassError;->TOUCHPAD_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/glass/logging/GlassError;->MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/glass/logging/GlassError;->HEAP_ADDR_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/glass/logging/GlassError;->BLUETOOTH_MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/logging/GlassError;->$VALUES:[Lcom/google/glass/logging/GlassError;

    .line 48
    const-class v0, Lcom/google/glass/logging/GlassError;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/GlassError;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "signature"
    .parameter "name"
    .parameter "recoveryAction"
    .parameter "shouldBugreport"
    .parameter "shouldScreenshot"
    .parameter "userEventData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/Feedback$RecoveryAction;",
            "ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput-object p3, p0, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/google/glass/logging/GlassError;->name:Ljava/lang/String;

    .line 72
    iput-object p5, p0, Lcom/google/glass/logging/GlassError;->recoveryAction:Lcom/google/glass/util/Feedback$RecoveryAction;

    .line 73
    iput-boolean p6, p0, Lcom/google/glass/logging/GlassError;->shouldBugreport:Z

    .line 74
    iput-boolean p7, p0, Lcom/google/glass/logging/GlassError;->shouldScreenshot:Z

    .line 75
    iput-object p8, p0, Lcom/google/glass/logging/GlassError;->userEventData:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static report(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V
    .locals 6
    .parameter "context"
    .parameter "error"

    .prologue
    .line 86
    sget-object v0, Lcom/google/glass/logging/GlassError;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/glass/logging/GlassError;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p1, Lcom/google/glass/logging/GlassError;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/logging/GlassError;->recoveryAction:Lcom/google/glass/util/Feedback$RecoveryAction;

    iget-boolean v3, p1, Lcom/google/glass/logging/GlassError;->shouldBugreport:Z

    iget-boolean v4, p1, Lcom/google/glass/logging/GlassError;->shouldScreenshot:Z

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/glass/util/Feedback;->show(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZ[Ljava/lang/String;)V

    .line 90
    iget-object v0, p1, Lcom/google/glass/logging/GlassError;->userEventData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->BUGREPORT_SENT:Lcom/google/glass/logging/UserEventAction;

    iget-object v2, p1, Lcom/google/glass/logging/GlassError;->userEventData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/logging/GlassError;
    .locals 1
    .parameter "name"

    .prologue
    .line 17
    const-class v0, Lcom/google/glass/logging/GlassError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/logging/GlassError;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/logging/GlassError;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/glass/logging/GlassError;->$VALUES:[Lcom/google/glass/logging/GlassError;

    invoke-virtual {v0}, [Lcom/google/glass/logging/GlassError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/logging/GlassError;

    return-object v0
.end method
