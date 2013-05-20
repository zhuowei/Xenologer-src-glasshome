.class public final Lcom/google/glass/gesture/HeadGestureUtils;
.super Ljava/lang/Object;
.source "HeadGestureUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;
    }
.end annotation


# static fields
.field public static final EXTRA_HEAD_GESTURE:Ljava/lang/String; = "gesture"

.field public static final LOG_HEAD_GESTURE:Ljava/lang/String; = "com.google.glass.LOG_HEAD_GESTURE"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/google/glass/gesture/HeadGestureUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/gesture/HeadGestureUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static getHeadGesture(Landroid/content/Intent;)Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;
    .locals 6
    .parameter "headGestureIntent"

    .prologue
    .line 38
    const-string v3, "gesture"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, gestureName:Ljava/lang/String;
    sget-object v1, Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;->NO_GESTURE:Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;

    .line 41
    .local v1, gesture:Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;
    if-eqz v2, :cond_0

    .line 42
    :try_start_0
    invoke-static {v2}, Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;->valueOf(Ljava/lang/String;)Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    :cond_0
    :goto_0
    return-object v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/google/glass/gesture/HeadGestureUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extra for the recognized HeadGesture: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was unknown!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v1, Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;->NO_GESTURE:Lcom/google/glass/gesture/HeadGestureUtils$HeadGesture;

    goto :goto_0
.end method
