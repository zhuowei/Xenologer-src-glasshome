.class public Lcom/google/glass/camera/CameraHelper;
.super Ljava/lang/Object;
.source "CameraHelper.java"


# static fields
.field public static final ACTION_RECORD_CLIPLET:Ljava/lang/String; = "com.google.glass.action.RECORD_CLIPLET"

.field public static final ACTION_RECORD_VIDEO:Ljava/lang/String; = "com.google.glass.action.RECORD_VIDEO"

.field public static final ACTION_TAKE_PICTURE:Ljava/lang/String; = "com.google.glass.action.TAKE_PICTURE"

.field public static final ACTION_TAKE_PICTURE_FROM_SCREEN_OFF:Ljava/lang/String; = "com.google.glass.action.TAKE_PICTURE_FROM_SCREEN_OFF"

.field public static final EXTRA_SHOULD_PLAY_INITIAL_SOUND:Ljava/lang/String; = "should_play_initial_sound"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/google/glass/camera/CameraHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/CameraHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/glass/camera/CameraHelper;->context:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 91
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/google/glass/camera/CameraHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 93
    return-void
.end method


# virtual methods
.method public recordCliplet(ZZ)V
    .locals 2
    .parameter "shouldTurnScreenOff"
    .parameter "playInitialSound"

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.RECORD_CLIPLET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, recordClipletIntent:Landroid/content/Intent;
    const-string v1, "should_finish_turn_screen_off"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    const-string v1, "should_play_initial_sound"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    invoke-direct {p0, v0}, Lcom/google/glass/camera/CameraHelper;->startActivity(Landroid/content/Intent;)V

    .line 87
    return-void
.end method

.method public recordVideo(ZZ)V
    .locals 2
    .parameter "shouldTurnScreenOff"
    .parameter "playSound"

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.RECORD_VIDEO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, recordVideoIntent:Landroid/content/Intent;
    const-string v1, "should_finish_turn_screen_off"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    const-string v1, "should_play_initial_sound"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    invoke-direct {p0, v0}, Lcom/google/glass/camera/CameraHelper;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method public takePicture(ZZZ)V
    .locals 4
    .parameter "isScreenOff"
    .parameter "shouldTurnScreenOff"
    .parameter "suppressInitialSound"

    .prologue
    .line 47
    iget-object v2, p0, Lcom/google/glass/camera/CameraHelper;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/glass/camera/SharedCameraService;->prepareCamera(Landroid/content/Context;)V

    .line 51
    if-eqz p1, :cond_0

    const-string v0, "com.google.glass.action.TAKE_PICTURE_FROM_SCREEN_OFF"

    .line 52
    .local v0, action:Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, takePictureIntent:Landroid/content/Intent;
    const-string v2, "should_finish_turn_screen_off"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    const-string v3, "should_play_initial_sound"

    if-nez p3, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    invoke-direct {p0, v1}, Lcom/google/glass/camera/CameraHelper;->startActivity(Landroid/content/Intent;)V

    .line 57
    return-void

    .line 51
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #takePictureIntent:Landroid/content/Intent;
    :cond_0
    const-string v0, "com.google.glass.action.TAKE_PICTURE"

    goto :goto_0

    .line 55
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #takePictureIntent:Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
