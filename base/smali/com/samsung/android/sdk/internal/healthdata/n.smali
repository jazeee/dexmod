.class public abstract Lcom/samsung/android/sdk/internal/healthdata/n;
.super Landroid/os/Binder;
.source "ICallbackRegister.java"

# interfaces
.implements Lcom/samsung/android/sdk/internal/healthdata/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.sdk.internal.healthdata.ICallbackRegister"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/sdk/internal/healthdata/n;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/internal/healthdata/m;
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
    const-string v0, "com.samsung.android.sdk.internal.healthdata.ICallbackRegister"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/sdk/internal/healthdata/m;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/m;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/o;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/internal/healthdata/o;-><init>(Landroid/os/IBinder;)V

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
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v1, "com.samsung.android.sdk.internal.healthdata.ICallbackRegister"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v1, "com.samsung.android.sdk.internal.healthdata.ICallbackRegister"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/internal/healthdata/q;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/internal/healthdata/p;

    move-result-object v2

    .line 53
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/sdk/internal/healthdata/n;->setCallback(ILcom/samsung/android/sdk/internal/healthdata/p;)V

    goto :goto_0

    .line 58
    :sswitch_2
    const-string v1, "com.samsung.android.sdk.internal.healthdata.ICallbackRegister"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/internal/healthdata/n;->cancel(I)V

    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
