.class public abstract Lcom/samsung/android/sdk/healthdata/ar;
.super Landroid/os/Binder;
.source "IDeviceManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/aq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.sdk.healthdata.IDeviceManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/sdk/healthdata/ar;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/healthdata/aq;
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
    const-string v0, "com.samsung.android.sdk.healthdata.IDeviceManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/sdk/healthdata/aq;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/sdk/healthdata/aq;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/healthdata/as;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/healthdata/as;-><init>(Landroid/os/IBinder;)V

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
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 156
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 43
    :sswitch_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDeviceManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v2, "com.samsung.android.sdk.healthdata.IDeviceManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/ar;->getLocalDevice()Lcom/samsung/android/sdk/healthdata/HealthDevice;

    move-result-object v2

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {v2, p3, v1}, Lcom/samsung/android/sdk/healthdata/HealthDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 62
    :sswitch_2
    const-string v0, "com.samsung.android.sdk.healthdata.IDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/ar;->getAllRegisteredDevices()Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 70
    :sswitch_3
    const-string v2, "com.samsung.android.sdk.healthdata.IDeviceManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/healthdata/ar;->getRegisteredDevice(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;

    move-result-object v2

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    invoke-virtual {v2, p3, v1}, Lcom/samsung/android/sdk/healthdata/HealthDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 86
    :sswitch_4
    const-string v2, "com.samsung.android.sdk.healthdata.IDeviceManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/healthdata/ar;->getRegisteredDeviceByUuid(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;

    move-result-object v2

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v2, :cond_2

    .line 92
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {v2, p3, v1}, Lcom/samsung/android/sdk/healthdata/HealthDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 102
    :sswitch_5
    const-string v0, "com.samsung.android.sdk.healthdata.IDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDevice;

    .line 110
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/healthdata/ar;->registerDevice(Lcom/samsung/android/sdk/healthdata/HealthDevice;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 108
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 117
    :sswitch_6
    const-string v2, "com.samsung.android.sdk.healthdata.IDeviceManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sdk/healthdata/ar;->changeDeviceName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 129
    :sswitch_7
    const-string v2, "com.samsung.android.sdk.healthdata.IDeviceManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/healthdata/ar;->getDeviceByUuid(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;

    move-result-object v2

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v2, :cond_5

    .line 135
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {v2, p3, v1}, Lcom/samsung/android/sdk/healthdata/HealthDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 139
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 145
    :sswitch_8
    const-string v0, "com.samsung.android.sdk.healthdata.IDeviceManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 150
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/sdk/healthdata/ar;->getDeviceUuidsBy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
