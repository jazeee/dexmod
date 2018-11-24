.class public abstract Lcom/samsung/android/sdk/healthdata/ao;
.super Landroid/os/Binder;
.source "IDataWatcher.java"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/an;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.sdk.healthdata.IDataWatcher"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/sdk/healthdata/ao;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/healthdata/an;
    .locals 2

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDataWatcher"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/sdk/healthdata/an;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/sdk/healthdata/an;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/healthdata/ap;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/healthdata/ap;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v1, "com.samsung.android.sdk.healthdata.IDataWatcher"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v1, "com.samsung.android.sdk.healthdata.IDataWatcher"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/healthdata/ax;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/healthdata/aw;

    move-result-object v2

    .line 53
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/healthdata/ao;->registerDataObserver(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/aw;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    :sswitch_2
    const-string v1, "com.samsung.android.sdk.healthdata.IDataWatcher"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/healthdata/ax;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/healthdata/aw;

    move-result-object v1

    .line 62
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/healthdata/ao;->unregisterDataObserver(Lcom/samsung/android/sdk/healthdata/aw;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    :sswitch_3
    const-string v1, "com.samsung.android.sdk.healthdata.IDataWatcher"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/healthdata/ax;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/healthdata/aw;

    move-result-object v3

    .line 75
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/sdk/healthdata/ao;->registerDataObserver2(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/aw;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 81
    :sswitch_4
    const-string v1, "com.samsung.android.sdk.healthdata.IDataWatcher"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/healthdata/ax;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/healthdata/aw;

    move-result-object v2

    .line 86
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/healthdata/ao;->unregisterDataObserver2(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/aw;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
