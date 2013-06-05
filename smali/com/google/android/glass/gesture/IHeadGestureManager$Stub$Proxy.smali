.class Lcom/google/android/glass/gesture/IHeadGestureManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IHeadGestureManager.java"

# interfaces
.implements Lcom/google/android/glass/gesture/IHeadGestureManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/glass/gesture/IHeadGestureManager$Stub;
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
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/glass/gesture/IHeadGestureManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 97
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/glass/gesture/IHeadGestureManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    const-string v0, "com.google.android.glass.gesture.IHeadGestureManager"

    return-object v0
.end method

.method public register(ILcom/google/android/glass/gesture/IHeadGestureCallback;)Z
    .registers 10
    .parameter "gesture"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 112
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 115
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.google.android.glass.gesture.IHeadGestureManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    if-eqz p2, :cond_32

    invoke-interface {p2}, Lcom/google/android/glass/gesture/IHeadGestureCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_18
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 118
    iget-object v4, p0, Lcom/google/android/glass/gesture/IHeadGestureManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 119
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 120
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_36

    move-result v4

    if-eqz v4, :cond_34

    .line 123
    .local v2, _result:Z
    :goto_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 126
    return v2

    .line 117
    .end local v2           #_result:Z
    :cond_32
    const/4 v4, 0x0

    goto :goto_18

    :cond_34
    move v2, v3

    .line 120
    goto :goto_2b

    .line 123
    :catchall_36
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public registerOneShot(ILcom/google/android/glass/gesture/IHeadGestureCallback;)Z
    .registers 9
    .parameter "gesture"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 135
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 138
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_9
    const-string v3, "com.google.android.glass.gesture.IHeadGestureManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    if-eqz p2, :cond_32

    invoke-interface {p2}, Lcom/google/android/glass/gesture/IHeadGestureCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 141
    iget-object v3, p0, Lcom/google/android/glass/gesture/IHeadGestureManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 143
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_34

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v2, 0x1

    .line 146
    .local v2, _result:Z
    :cond_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    return v2

    .line 140
    .end local v2           #_result:Z
    :cond_32
    const/4 v3, 0x0

    goto :goto_17

    .line 146
    :catchall_34
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 147
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public unregister(ILcom/google/android/glass/gesture/IHeadGestureCallback;)Z
    .registers 9
    .parameter "gesture"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 157
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 160
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_9
    const-string v3, "com.google.android.glass.gesture.IHeadGestureManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    if-eqz p2, :cond_32

    invoke-interface {p2}, Lcom/google/android/glass/gesture/IHeadGestureCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 163
    iget-object v3, p0, Lcom/google/android/glass/gesture/IHeadGestureManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 165
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_34

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v2, 0x1

    .line 168
    .local v2, _result:Z
    :cond_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 171
    return v2

    .line 162
    .end local v2           #_result:Z
    :cond_32
    const/4 v3, 0x0

    goto :goto_17

    .line 168
    :catchall_34
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
