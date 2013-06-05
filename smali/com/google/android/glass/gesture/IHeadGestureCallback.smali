.class public interface abstract Lcom/google/android/glass/gesture/IHeadGestureCallback;
.super Ljava/lang/Object;
.source "IHeadGestureCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/glass/gesture/IHeadGestureCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGestureDetected(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
