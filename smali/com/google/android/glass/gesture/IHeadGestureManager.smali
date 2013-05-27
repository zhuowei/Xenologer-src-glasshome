.class public interface abstract Lcom/google/android/glass/gesture/IHeadGestureManager;
.super Ljava/lang/Object;
.source "IHeadGestureManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/glass/gesture/IHeadGestureManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract register(ILcom/google/android/glass/gesture/IHeadGestureCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerOneShot(ILcom/google/android/glass/gesture/IHeadGestureCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregister(ILcom/google/android/glass/gesture/IHeadGestureCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
