.class public interface abstract Lcom/google/android/glass/timeline/ITimelineHost;
.super Ljava/lang/Object;
.source "ITimelineHost.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/glass/timeline/ITimelineHost$Stub;
    }
.end annotation


# virtual methods
.method public abstract addLiveCard(Landroid/os/IBinder;Lcom/google/android/glass/timeline/LiveCardDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeLiveCard(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateLiveCard(Landroid/os/IBinder;Lcom/google/android/glass/timeline/LiveCardDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
