.class public abstract Lcom/samsung/android/sdk/healthdata/au;
.super Landroid/os/Binder;
.source "IHealth.java"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/at;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/sdk/healthdata/au;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/healthdata/at;
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
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/sdk/healthdata/at;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/sdk/healthdata/at;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/healthdata/av;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/healthdata/av;-><init>(Landroid/os/IBinder;)V

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
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 43
    :sswitch_0
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/au;->getUserProfile()Landroid/os/Bundle;

    move-result-object v0

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {v0, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 62
    :sswitch_2
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/healthdata/au;->getConnectionResult(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {v0, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    :sswitch_3
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 83
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/healthdata/au;->waitForInit(J)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    move-result-object v0

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    if-eqz v0, :cond_2

    .line 86
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {v0, p3, v2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 96
    :sswitch_4
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/au;->getIDeviceManager()Lcom/samsung/android/sdk/healthdata/aq;

    move-result-object v0

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/samsung/android/sdk/healthdata/aq;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    .line 104
    :sswitch_5
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/au;->getIDataResolver()Lcom/samsung/android/sdk/healthdata/ak;

    move-result-object v0

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/samsung/android/sdk/healthdata/ak;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 112
    :sswitch_6
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/au;->getIDataWatcher()Lcom/samsung/android/sdk/healthdata/an;

    move-result-object v0

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/samsung/android/sdk/healthdata/an;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 120
    :sswitch_7
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 123
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 128
    :goto_2
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/healthdata/au;->requestHealthDataPermissions(Landroid/os/Bundle;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    move-result-object v0

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v0, :cond_7

    .line 131
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    invoke-virtual {v0, p3, v2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    .line 126
    goto :goto_2

    .line 135
    :cond_7
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 141
    :sswitch_8
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 144
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 149
    :goto_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/healthdata/au;->isHealthDataPermissionAcquired(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v0, :cond_9

    .line 152
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    invoke-virtual {v0, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    .line 147
    goto :goto_3

    .line 156
    :cond_9
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    :sswitch_9
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/sdk/healthdata/au;->isKeyAccessible()Z

    move-result v0

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v0, :cond_a

    move v0, v2

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_a
    move v0, v3

    goto :goto_4

    .line 170
    :sswitch_a
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 173
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 178
    :goto_5
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/healthdata/au;->getConnectionResult2(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    if-eqz v0, :cond_c

    .line 181
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    invoke-virtual {v0, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_b
    move-object v0, v1

    .line 176
    goto :goto_5

    .line 185
    :cond_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 191
    :sswitch_b
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/healthdata/au;->getUserProfile2(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v0, :cond_d

    .line 197
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {v0, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 201
    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 207
    :sswitch_c
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 212
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    .line 218
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 219
    invoke-virtual {p0, v3, v0, v4, v5}, Lcom/samsung/android/sdk/healthdata/au;->waitForInit2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;J)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_e
    move-object v0, v1

    .line 215
    goto :goto_6

    .line 225
    :sswitch_d
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 230
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    move-object v4, v0

    .line 236
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 237
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 242
    :goto_8
    invoke-virtual {p0, v5, v4, v0}, Lcom/samsung/android/sdk/healthdata/au;->requestHealthDataPermissions2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    if-eqz v0, :cond_11

    .line 245
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    invoke-virtual {v0, p3, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_f
    move-object v4, v1

    .line 233
    goto :goto_7

    :cond_10
    move-object v0, v1

    .line 240
    goto :goto_8

    .line 249
    :cond_11
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 255
    :sswitch_e
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 260
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 265
    :goto_9
    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/sdk/healthdata/au;->isHealthDataPermissionAcquired2(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v0, :cond_13

    .line 268
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    invoke-virtual {v0, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_12
    move-object v0, v1

    .line 263
    goto :goto_9

    .line 272
    :cond_13
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
