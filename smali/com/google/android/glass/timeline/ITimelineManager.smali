.class public interface abstract Lcom/google/android/glass/timeline/ITimelineManager;
.super Ljava/lang/Object;
.source "ITimelineManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/glass/timeline/ITimelineManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelLiveCard(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerHost(Lcom/google/android/glass/timeline/ITimelineHost;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateLiveCard(Lcom/google/android/glass/timeline/LiveCardDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
