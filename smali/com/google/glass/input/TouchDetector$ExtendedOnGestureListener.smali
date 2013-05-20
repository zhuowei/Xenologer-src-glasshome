.class public Lcom/google/glass/input/TouchDetector$ExtendedOnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/input/TouchDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendedOnGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method
