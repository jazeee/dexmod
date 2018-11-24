.class public abstract Lcom/samsung/android/sdk/healthdata/al;
.super Landroid/os/Binder;
.source "IDataResolver.java"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/ak;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/sdk/healthdata/al;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/healthdata/ak;
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
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/sdk/healthdata/ak;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/sdk/healthdata/ak;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/healthdata/am;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/healthdata/am;-><init>(Landroid/os/IBinder;)V

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
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 267
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;

    .line 56
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/healthdata/al;->readData(Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    move-result-object v0

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {v0, p3, v3}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    move v0, v3

    .line 65
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 54
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 69
    :sswitch_2
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;

    .line 77
    :goto_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/healthdata/al;->insertData(Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    move-result-object v0

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v0, p3, v3}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4
    move v0, v3

    .line 86
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 75
    goto :goto_3

    .line 84
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 90
    :sswitch_3
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;

    .line 98
    :goto_5
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/healthdata/al;->deleteData(Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    move-result-object v0

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v0, :cond_5

    .line 101
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    invoke-virtual {v0, p3, v3}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    move v0, v3

    .line 107
    goto :goto_0

    :cond_4
    move-object v0, v1

    .line 96
    goto :goto_5

    .line 105
    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 111
    :sswitch_4
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 114
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;

    .line 119
    :goto_7
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/healthdata/al;->aggregateData(Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    move-result-object v0

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v0, :cond_7

    .line 122
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {v0, p3, v3}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8
    move v0, v3

    .line 128
    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    .line 117
    goto :goto_7

    .line 126
    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 132
    :sswitch_5
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 135
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;

    .line 140
    :goto_9
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/healthdata/al;->updateData(Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    move-result-object v0

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v0, :cond_9

    .line 143
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {v0, p3, v3}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a
    move v0, v3

    .line 149
    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    .line 138
    goto :goto_9

    .line 147
    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 153
    :sswitch_6
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 158
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    move-object v2, v0

    .line 164
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 165
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;

    .line 170
    :goto_c
    invoke-virtual {p0, v4, v2, v0}, Lcom/samsung/android/sdk/healthdata/al;->readData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 172
    goto/16 :goto_0

    :cond_a
    move-object v2, v1

    .line 161
    goto :goto_b

    :cond_b
    move-object v0, v1

    .line 168
    goto :goto_c

    .line 176
    :sswitch_7
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 181
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    move-object v2, v0

    .line 187
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 188
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;

    .line 193
    :goto_e
    invoke-virtual {p0, v4, v2, v0}, Lcom/samsung/android/sdk/healthdata/al;->insertData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 195
    goto/16 :goto_0

    :cond_c
    move-object v2, v1

    .line 184
    goto :goto_d

    :cond_d
    move-object v0, v1

    .line 191
    goto :goto_e

    .line 199
    :sswitch_8
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 204
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    move-object v2, v0

    .line 210
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 211
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;

    .line 216
    :goto_10
    invoke-virtual {p0, v4, v2, v0}, Lcom/samsung/android/sdk/healthdata/al;->deleteData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 218
    goto/16 :goto_0

    :cond_e
    move-object v2, v1

    .line 207
    goto :goto_f

    :cond_f
    move-object v0, v1

    .line 214
    goto :goto_10

    .line 222
    :sswitch_9
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    .line 227
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    move-object v2, v0

    .line 233
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    .line 234
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;

    .line 239
    :goto_12
    invoke-virtual {p0, v4, v2, v0}, Lcom/samsung/android/sdk/healthdata/al;->aggregateData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;)V

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 241
    goto/16 :goto_0

    :cond_10
    move-object v2, v1

    .line 230
    goto :goto_11

    :cond_11
    move-object v0, v1

    .line 237
    goto :goto_12

    .line 245
    :sswitch_a
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 250
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;

    move-object v2, v0

    .line 256
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 257
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;

    .line 262
    :goto_14
    invoke-virtual {p0, v4, v2, v0}, Lcom/samsung/android/sdk/healthdata/al;->updateData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    .line 264
    goto/16 :goto_0

    :cond_12
    move-object v2, v1

    .line 253
    goto :goto_13

    :cond_13
    move-object v0, v1

    .line 260
    goto :goto_14

    .line 39
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
