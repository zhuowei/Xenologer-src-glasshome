.class public final enum Lcom/google/glass/logging/GlassError;
.super Ljava/lang/Enum;
.source "GlassError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/logging/GlassError$1;,
        Lcom/google/glass/logging/GlassError$ErrorAttachment;,
        Lcom/google/glass/logging/GlassError$ReportAction;
    }
.end annotation

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

.field public static final enum AUDIO_CONTENTION_ERROR:Lcom/google/glass/logging/GlassError;

.field public static final enum BLUETOOTH_MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

.field public static final enum CAMERA_ERROR:Lcom/google/glass/logging/GlassError;

.field public static final enum HEAP_ADDR_ERROR:Lcom/google/glass/logging/GlassError;

.field public static final enum MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

.field private static final TAG:Ljava/lang/String;

.field public static final enum TOUCHPAD_ERROR:Lcom/google/glass/logging/GlassError;


# instance fields
.field public final errorAttachments:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/google/glass/logging/GlassError$ErrorAttachment;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final recoveryAction:Lcom/google/glass/util/Feedback$RecoveryAction;

.field public final reportAction:Lcom/google/glass/logging/GlassError$ReportAction;

.field public final signature:Ljava/lang/String;

.field public final userEventData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x3

    const/4 v3, 0x0

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/google/glass/logging/GlassError;

    const-string v1, "CAMERA_ERROR"

    const-string v4, "Camera error"

    sget-object v5, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_REBOOT:Lcom/google/glass/util/Feedback$RecoveryAction;

    sget-object v6, Lcom/google/glass/logging/GlassError$ReportAction;->SEND_BUGREPORT:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v7, "9"

    new-array v8, v14, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    sget-object v9, Lcom/google/glass/logging/GlassError$ErrorAttachment;->FULL_BUGREPORT:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v9, v8, v2

    sget-object v9, Lcom/google/glass/logging/GlassError$ErrorAttachment;->VOICE_NOTE:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v9, v8, v13

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v0, Lcom/google/glass/logging/GlassError;->CAMERA_ERROR:Lcom/google/glass/logging/GlassError;

    .line 25
    new-instance v4, Lcom/google/glass/logging/GlassError;

    const-string v5, "TOUCHPAD_ERROR"

    const-string v7, "Unable to find or reset touchpad device"

    const-string v8, "Touchpad error"

    sget-object v9, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_SHUTDOWN:Lcom/google/glass/util/Feedback$RecoveryAction;

    sget-object v10, Lcom/google/glass/logging/GlassError$ReportAction;->SEND_BUGREPORT:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v11, "10"

    new-array v12, v14, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->FULL_BUGREPORT:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v12, v2

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->VOICE_NOTE:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v12, v13

    move v6, v13

    invoke-direct/range {v4 .. v12}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v4, Lcom/google/glass/logging/GlassError;->TOUCHPAD_ERROR:Lcom/google/glass/logging/GlassError;

    .line 31
    new-instance v4, Lcom/google/glass/logging/GlassError;

    const-string v5, "MEM_HEAP_ERROR"

    const-string v7, "@@@ ABORTING: HEAP MEMORY CORRUPTION"

    const-string v8, "Memory heap error"

    sget-object v9, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/util/Feedback$RecoveryAction;

    sget-object v10, Lcom/google/glass/logging/GlassError$ReportAction;->SEND_BUGREPORT:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v11, "12"

    new-array v12, v14, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->FULL_BUGREPORT:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v12, v2

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->VOICE_NOTE:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v12, v13

    move v6, v14

    invoke-direct/range {v4 .. v12}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v4, Lcom/google/glass/logging/GlassError;->MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

    .line 37
    new-instance v4, Lcom/google/glass/logging/GlassError;

    const-string v5, "HEAP_ADDR_ERROR"

    const-string v7, "@@@ ABORTING: INVALID HEAP ADDRESS"

    const-string v8, "Heap address error"

    sget-object v9, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/util/Feedback$RecoveryAction;

    sget-object v10, Lcom/google/glass/logging/GlassError$ReportAction;->SEND_BUGREPORT:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v11, "13"

    new-array v12, v14, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->FULL_BUGREPORT:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v12, v2

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->VOICE_NOTE:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    aput-object v0, v12, v13

    move v6, v15

    invoke-direct/range {v4 .. v12}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v4, Lcom/google/glass/logging/GlassError;->HEAP_ADDR_ERROR:Lcom/google/glass/logging/GlassError;

    .line 43
    new-instance v4, Lcom/google/glass/logging/GlassError;

    const-string v5, "AUDIO_CONTENTION_ERROR"

    const/4 v6, 0x4

    const-string v8, "Audio Contention Error"

    sget-object v9, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/util/Feedback$RecoveryAction;

    sget-object v10, Lcom/google/glass/logging/GlassError$ReportAction;->EVENT_ONLY:Lcom/google/glass/logging/GlassError$ReportAction;

    const-string v11, "14"

    new-array v12, v2, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    move-object v7, v3

    invoke-direct/range {v4 .. v12}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v4, Lcom/google/glass/logging/GlassError;->AUDIO_CONTENTION_ERROR:Lcom/google/glass/logging/GlassError;

    .line 60
    new-instance v4, Lcom/google/glass/logging/GlassError;

    const-string v5, "BLUETOOTH_MEM_HEAP_ERROR"

    const/4 v6, 0x5

    const-string v7, ">>> com.google.glass.bluetooth <<<"

    const-string v8, "Bluetooth memory heap error"

    sget-object v9, Lcom/google/glass/util/Feedback$RecoveryAction;->SHOULD_REBOOT:Lcom/google/glass/util/Feedback$RecoveryAction;

    sget-object v10, Lcom/google/glass/logging/GlassError$ReportAction;->NONE:Lcom/google/glass/logging/GlassError$ReportAction;

    new-array v12, v2, [Lcom/google/glass/logging/GlassError$ErrorAttachment;

    move-object v11, v3

    invoke-direct/range {v4 .. v12}, Lcom/google/glass/logging/GlassError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V

    sput-object v4, Lcom/google/glass/logging/GlassError;->BLUETOOTH_MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/glass/logging/GlassError;

    sget-object v1, Lcom/google/glass/logging/GlassError;->CAMERA_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/glass/logging/GlassError;->TOUCHPAD_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/glass/logging/GlassError;->MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v1, v0, v14

    sget-object v1, Lcom/google/glass/logging/GlassError;->HEAP_ADDR_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v1, v0, v15

    const/4 v1, 0x4

    sget-object v2, Lcom/google/glass/logging/GlassError;->AUDIO_CONTENTION_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/logging/GlassError;->BLUETOOTH_MEM_HEAP_ERROR:Lcom/google/glass/logging/GlassError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/logging/GlassError;->$VALUES:[Lcom/google/glass/logging/GlassError;

    .line 79
    const-class v0, Lcom/google/glass/logging/GlassError;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/GlassError;->TAG:Ljava/lang/String;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;Lcom/google/glass/logging/GlassError$ReportAction;Ljava/lang/String;[Lcom/google/glass/logging/GlassError$ErrorAttachment;)V
    .locals 1
    .parameter
    .parameter
    .parameter "signature"
    .parameter "name"
    .parameter "recoveryAction"
    .parameter "reportAction"
    .parameter "userEventData"
    .parameter "errorAttachments"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/Feedback$RecoveryAction;",
            "Lcom/google/glass/logging/GlassError$ReportAction;",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/glass/logging/GlassError$ErrorAttachment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput-object p3, p0, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lcom/google/glass/logging/GlassError;->name:Ljava/lang/String;

    .line 107
    iput-object p5, p0, Lcom/google/glass/logging/GlassError;->recoveryAction:Lcom/google/glass/util/Feedback$RecoveryAction;

    .line 108
    iput-object p6, p0, Lcom/google/glass/logging/GlassError;->reportAction:Lcom/google/glass/logging/GlassError$ReportAction;

    .line 109
    iput-object p7, p0, Lcom/google/glass/logging/GlassError;->userEventData:Ljava/lang/String;

    .line 110
    array-length v0, p8

    if-nez v0, :cond_0

    .line 112
    const-class v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/GlassError;->errorAttachments:Ljava/util/EnumSet;

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {p8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/GlassError;->errorAttachments:Ljava/util/EnumSet;

    goto :goto_0
.end method

.method private static logUserEvent(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V
    .locals 3
    .parameter "context"
    .parameter "error"

    .prologue
    .line 156
    invoke-static {p0}, Lcom/google/glass/app/GlassApplication;->from(Landroid/content/Context;)Lcom/google/glass/app/GlassApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/app/GlassApplication;->getUserEventHelper()Lcom/google/glass/logging/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/logging/UserEventAction;->BUGREPORT_SENT:Lcom/google/glass/logging/UserEventAction;

    iget-object v2, p1, Lcom/google/glass/logging/GlassError;->userEventData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/logging/UserEventHelper;->log(Lcom/google/glass/logging/UserEventAction;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static report(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V
    .locals 7
    .parameter "context"
    .parameter "error"

    .prologue
    .line 130
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

    .line 132
    sget-object v0, Lcom/google/glass/logging/GlassError$1;->$SwitchMap$com$google$glass$logging$GlassError$ReportAction:[I

    iget-object v1, p1, Lcom/google/glass/logging/GlassError;->reportAction:Lcom/google/glass/logging/GlassError$ReportAction;

    invoke-virtual {v1}, Lcom/google/glass/logging/GlassError$ReportAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 150
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected report action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/glass/logging/GlassError;->reportAction:Lcom/google/glass/logging/GlassError$ReportAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 136
    :pswitch_0
    iget-object v1, p1, Lcom/google/glass/logging/GlassError;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/glass/logging/GlassError;->recoveryAction:Lcom/google/glass/util/Feedback$RecoveryAction;

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->FULL_BUGREPORT:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    invoke-virtual {p1, v0}, Lcom/google/glass/logging/GlassError;->shouldAttach(Lcom/google/glass/logging/GlassError$ErrorAttachment;)Z

    move-result v3

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->SCREENSHOT:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    invoke-virtual {p1, v0}, Lcom/google/glass/logging/GlassError;->shouldAttach(Lcom/google/glass/logging/GlassError$ErrorAttachment;)Z

    move-result v4

    sget-object v0, Lcom/google/glass/logging/GlassError$ErrorAttachment;->VOICE_NOTE:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    invoke-virtual {p1, v0}, Lcom/google/glass/logging/GlassError;->shouldAttach(Lcom/google/glass/logging/GlassError$ErrorAttachment;)Z

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/glass/util/Feedback;->show(Landroid/content/Context;Ljava/lang/String;Lcom/google/glass/util/Feedback$RecoveryAction;ZZZ[Ljava/lang/String;)V

    .line 145
    :pswitch_1
    iget-object v0, p1, Lcom/google/glass/logging/GlassError;->userEventData:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 146
    invoke-static {p0, p1}, Lcom/google/glass/logging/GlassError;->logUserEvent(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V

    .line 148
    :cond_0
    :pswitch_2
    return-void

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/logging/GlassError;
    .locals 1
    .parameter "name"

    .prologue
    .line 18
    const-class v0, Lcom/google/glass/logging/GlassError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/logging/GlassError;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/logging/GlassError;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/logging/GlassError;->$VALUES:[Lcom/google/glass/logging/GlassError;

    invoke-virtual {v0}, [Lcom/google/glass/logging/GlassError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/logging/GlassError;

    return-object v0
.end method


# virtual methods
.method public shouldAttach(Lcom/google/glass/logging/GlassError$ErrorAttachment;)Z
    .locals 1
    .parameter "errorAttachment"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/logging/GlassError;->errorAttachments:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
