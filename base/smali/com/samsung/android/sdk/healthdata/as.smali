.class final Lcom/samsung/android/sdk/healthdata/as;
.super Ljava/lang/Object;
.source "IDeviceManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/aq;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/as;->a:Landroid/os/IBinder;

    .line 164
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/as;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final changeDeviceName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 288
    :try_start_0
    const-string v3, "com.samsung.android.sdk.healthdata.IDeviceManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object v3, p0, Lcom/samsung/android/sdk/healthdata/as;->a:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 292
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 293
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 296
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 299
    return v0

    .line 296
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final getAllRegisteredDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 201
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDeviceManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/as;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 203
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 204
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 207
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 210
    return-object v0

    .line 207
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final getDeviceByUuid(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;
    .locals 5

    .prologue
    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 307
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDeviceManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/as;->a:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 310
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 311
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 322
    return-object v0

    .line 315
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final getDeviceUuidsBy(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 330
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDeviceManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/as;->a:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 334
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 335
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 338
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 341
    return-object v0

    .line 338
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final getLocalDevice()Lcom/samsung/android/sdk/healthdata/HealthDevice;
    .locals 5

    .prologue
    .line 175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 179
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDeviceManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/as;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 181
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 182
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 193
    return-object v0

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final getRegisteredDevice(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;
    .locals 5

    .prologue
    .line 214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 218
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDeviceManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/as;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 221
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 222
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 233
    return-object v0

    .line 226
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final getRegisteredDeviceByUuid(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;
    .locals 5

    .prologue
    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 241
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDeviceManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/as;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 244
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 245
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/samsung/android/sdk/healthdata/HealthDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    return-object v0

    .line 249
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final registerDevice(Lcom/samsung/android/sdk/healthdata/HealthDevice;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 264
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDeviceManager"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 265
    if-eqz p1, :cond_0

    .line 266
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sdk/healthdata/HealthDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/as;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 273
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 274
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 277
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 280
    return-object v0

    .line 270
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
