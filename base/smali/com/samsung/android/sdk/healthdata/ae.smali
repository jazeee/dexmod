.class public final Lcom/samsung/android/sdk/healthdata/ae;
.super Ljava/lang/Object;
.source "HealthDeviceManager.java"


# instance fields
.field private final a:Lcom/samsung/android/sdk/healthdata/w;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/healthdata/w;)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/ae;->a:Lcom/samsung/android/sdk/healthdata/w;

    .line 149
    return-void
.end method

.method private a()Lcom/samsung/android/sdk/healthdata/aq;
    .locals 2

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/ae;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->getInterface(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/at;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/healthdata/at;->getIDeviceManager()Lcom/samsung/android/sdk/healthdata/aq;

    move-result-object v0

    .line 154
    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IDeviceManager is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/dexcom/cgm/g/a;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_0
    return-object v0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 409
    if-nez p0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lcom/dexcom/cgm/g/a;->getNullArgumentMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->a()Lcom/samsung/android/sdk/healthdata/aq;

    move-result-object v0

    .line 416
    if-nez v0, :cond_0

    .line 417
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal store connection state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_0
    return-void
.end method


# virtual methods
.method public final changeCustomName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 396
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/ae;->a(Ljava/lang/String;)V

    .line 397
    invoke-static {p2}, Lcom/samsung/android/sdk/healthdata/ae;->a(Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->b()V

    .line 399
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->a()Lcom/samsung/android/sdk/healthdata/aq;

    move-result-object v0

    .line 402
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/healthdata/aq;->changeDeviceName(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 403
    :catch_0
    move-exception v0

    .line 404
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/dexcom/cgm/g/a;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getAllDevices()Ljava/util/List;
    .locals 2
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
    .line 192
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->b()V

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->a()Lcom/samsung/android/sdk/healthdata/aq;

    move-result-object v0

    .line 196
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/sdk/healthdata/aq;->getAllRegisteredDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/dexcom/cgm/g/a;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getDeviceBySeed(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;
    .locals 2

    .prologue
    .line 243
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/ae;->a(Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->b()V

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->a()Lcom/samsung/android/sdk/healthdata/aq;

    move-result-object v0

    .line 248
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/healthdata/aq;->getRegisteredDevice(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/dexcom/cgm/g/a;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getDeviceByUuid(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;
    .locals 2

    .prologue
    .line 267
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/ae;->a(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->b()V

    .line 269
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->a()Lcom/samsung/android/sdk/healthdata/aq;

    move-result-object v0

    .line 272
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/healthdata/aq;->getRegisteredDeviceByUuid(Ljava/lang/String;)Lcom/samsung/android/sdk/healthdata/HealthDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/dexcom/cgm/g/a;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getDeviceUuidsByCustomName(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/ae;->a(Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->b()V

    .line 323
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->a()Lcom/samsung/android/sdk/healthdata/aq;

    move-result-object v0

    .line 326
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/healthdata/aq;->getDeviceUuidsBy(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/dexcom/cgm/g/a;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getDeviceUuidsByGroup(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->b()V

    .line 299
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->a()Lcom/samsung/android/sdk/healthdata/aq;

    move-result-object v0

    .line 302
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/healthdata/aq;->getDeviceUuidsBy(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/dexcom/cgm/g/a;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getDeviceUuidsByManufacturer(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/ae;->a(Ljava/lang/String;)V

    .line 370
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->b()V

    .line 371
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->a()Lcom/samsung/android/sdk/healthdata/aq;

    move-result-object v0

    .line 374
    const/4 v1, 0x3

    :try_start_0
    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/healthdata/aq;->getDeviceUuidsBy(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/dexcom/cgm/g/a;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getDeviceUuidsByModel(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/ae;->a(Ljava/lang/String;)V

    .line 346
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->b()V

    .line 347
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->a()Lcom/samsung/android/sdk/healthdata/aq;

    move-result-object v0

    .line 350
    const/4 v1, 0x2

    :try_start_0
    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/healthdata/aq;->getDeviceUuidsBy(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/dexcom/cgm/g/a;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getLocalDevice()Lcom/samsung/android/sdk/healthdata/HealthDevice;
    .locals 2

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->b()V

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->a()Lcom/samsung/android/sdk/healthdata/aq;

    move-result-object v0

    .line 177
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/sdk/healthdata/aq;->getLocalDevice()Lcom/samsung/android/sdk/healthdata/HealthDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/dexcom/cgm/g/a;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final registerDevice(Lcom/samsung/android/sdk/healthdata/HealthDevice;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 215
    if-nez p1, :cond_0

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Lcom/dexcom/cgm/g/a;->getNullArgumentMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->a()Lcom/samsung/android/sdk/healthdata/aq;

    move-result-object v0

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/ae;->b()V

    .line 223
    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/healthdata/aq;->registerDevice(Lcom/samsung/android/sdk/healthdata/HealthDevice;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/dexcom/cgm/g/a;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
