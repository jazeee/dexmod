.class final Lcom/samsung/android/sdk/internal/healthdata/o;
.super Ljava/lang/Object;
.source "ICallbackRegister.java"

# interfaces
.implements Lcom/samsung/android/sdk/internal/healthdata/m;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/o;->a:Landroid/os/IBinder;

    .line 73
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/o;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final cancel(I)V
    .locals 5

    .prologue
    .line 97
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 99
    :try_start_0
    const-string v0, "com.samsung.android.sdk.internal.healthdata.ICallbackRegister"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/o;->a:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final setCallback(ILcom/samsung/android/sdk/internal/healthdata/p;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 86
    :try_start_0
    const-string v2, "com.samsung.android.sdk.internal.healthdata.ICallbackRegister"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/samsung/android/sdk/internal/healthdata/p;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/o;->a:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
