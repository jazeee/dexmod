.class final Lcom/samsung/android/sdk/healthdata/ay;
.super Ljava/lang/Object;
.source "IHealthDataObserver.java"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/aw;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/ay;->a:Landroid/os/IBinder;

    .line 63
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/ay;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final onChange(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 74
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 76
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IHealthDataObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/ay;->a:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
