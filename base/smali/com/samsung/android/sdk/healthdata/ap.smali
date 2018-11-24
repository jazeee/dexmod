.class final Lcom/samsung/android/sdk/healthdata/ap;
.super Ljava/lang/Object;
.source "IDataWatcher.java"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/an;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/ap;->a:Landroid/os/IBinder;

    .line 99
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/ap;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final registerDataObserver(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/aw;)V
    .locals 5

    .prologue
    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 113
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDataWatcher"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/sdk/healthdata/aw;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/ap;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 117
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 122
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final registerDataObserver2(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/aw;)V
    .locals 5

    .prologue
    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 146
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDataWatcher"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/samsung/android/sdk/healthdata/aw;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/ap;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 151
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 156
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final unregisterDataObserver(Lcom/samsung/android/sdk/healthdata/aw;)V
    .locals 5

    .prologue
    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 129
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDataWatcher"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 130
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/sdk/healthdata/aw;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/ap;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 132
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 136
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final unregisterDataObserver2(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/aw;)V
    .locals 5

    .prologue
    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 163
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDataWatcher"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/sdk/healthdata/aw;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/ap;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 167
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 172
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
