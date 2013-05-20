.class public final Lcom/google/glass/hidden/HiddenCamera;
.super Ljava/lang/Object;
.source "HiddenCamera.java"


# static fields
.field public static final ACTION_CAMERA_BUTTON_DOWN:Ljava/lang/String; = "com.google.glass.action.CAMERA_BUTTON_DOWN"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/google/glass/hidden/HiddenCamera;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/hidden/HiddenCamera;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPostviewCallbackBuffer(Landroid/hardware/Camera;[B)V
    .locals 3
    .parameter "camera"
    .parameter "callbackBuffer"

    .prologue
    .line 36
    new-instance v0, Lcom/google/glass/hidden/MethodInvoker;

    const-string v1, "addPostviewCallbackBuffer"

    const-class v2, [B

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V

    .line 38
    .local v0, addPostviewCallbackBufferMethod:Lcom/google/glass/hidden/MethodInvoker;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public static startGoogleCameraMetering(Landroid/hardware/Camera;)Z
    .locals 2
    .parameter "camera"

    .prologue
    .line 25
    new-instance v0, Lcom/google/glass/hidden/MethodInvoker;

    const-string v1, "startGoogleCameraMetering"

    invoke-direct {v0, p0, v1}, Lcom/google/glass/hidden/MethodInvoker;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .local v0, startGoogleCameraMeteringMethod:Lcom/google/glass/hidden/MethodInvoker;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/glass/hidden/MethodInvoker;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
