.class Lcom/google/android/glass/timeline/ITimelineManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITimelineManager.java"

# interfaces
.implements Lcom/google/android/glass/timeline/ITimelineManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/glass/timeline/ITimelineManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .parameter "remote"

    .prologue
    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/android/glass/timeline/ITimelineManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 93
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/glass/timeline/ITimelineManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelLiveCard(II)V
    .registers 8
    .parameter "pid"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 132
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 134
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.google.android.glass.timeline.ITimelineManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v2, p0, Lcom/google/android/glass/timeline/ITimelineManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 138
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_24

    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 144
    return-void

    .line 141
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    const-string v0, "com.google.android.glass.timeline.ITimelineManager"

    return-object v0
.end method

.method public registerHost(Lcom/google/android/glass/timeline/ITimelineHost;)V
    .registers 7
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 151
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 153
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.google.android.glass.timeline.ITimelineManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 154
    if-eqz p1, :cond_27

    invoke-interface {p1}, Lcom/google/android/glass/timeline/ITimelineHost;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 155
    iget-object v2, p0, Lcom/google/android/glass/timeline/ITimelineManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    .line 159
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 162
    return-void

    .line 154
    :cond_27
    const/4 v2, 0x0

    goto :goto_13

    .line 159
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public updateLiveCard(Lcom/google/android/glass/timeline/LiveCardDescriptor;)V
    .registers 7
    .parameter "descriptor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 108
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 110
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.google.android.glass.timeline.ITimelineManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 111
    if-eqz p1, :cond_28

    .line 112
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/glass/timeline/LiveCardDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    :goto_17
    iget-object v2, p0, Lcom/google/android/glass/timeline/ITimelineManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 119
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2d

    .line 122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 125
    return-void

    .line 116
    :cond_28
    const/4 v2, 0x0

    :try_start_29
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_17

    .line 122
    :catchall_2d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
