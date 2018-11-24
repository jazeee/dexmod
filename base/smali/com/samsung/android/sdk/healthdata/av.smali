.class final Lcom/samsung/android/sdk/healthdata/av;
.super Ljava/lang/Object;
.source "IHealth.java"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/at;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/av;->a:Landroid/os/IBinder;

    .line 285
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/av;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final getConnectionResult(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 322
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/av;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 326
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 327
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 338
    return-object v0

    .line 331
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 336
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final getConnectionResult2(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 497
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 498
    if-eqz p1, :cond_0

    .line 499
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 505
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/av;->a:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 506
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 507
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 518
    return-object v0

    .line 503
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 511
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getIDataResolver()Lcom/samsung/android/sdk/healthdata/ak;
    .locals 5

    .prologue
    .line 382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 386
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/av;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 388
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 389
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/al;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/healthdata/ak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 392
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    return-object v0

    .line 392
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final getIDataWatcher()Lcom/samsung/android/sdk/healthdata/an;
    .locals 5

    .prologue
    .line 399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 403
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/av;->a:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 405
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 406
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/ao;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/healthdata/an;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 409
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 412
    return-object v0

    .line 409
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 410
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final getIDeviceManager()Lcom/samsung/android/sdk/healthdata/aq;
    .locals 5

    .prologue
    .line 365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 369
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/av;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 371
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 372
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/ar;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/healthdata/aq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 375
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    return-object v0

    .line 375
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final getUserProfile()Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 300
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/av;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 302
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 303
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 314
    return-object v0

    .line 307
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final getUserProfile2(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 528
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/av;->a:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 531
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 532
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 541
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    return-object v0

    .line 536
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 540
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 541
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final isHealthDataPermissionAcquired(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 449
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 450
    if-eqz p1, :cond_0

    .line 451
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 457
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/av;->a:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 458
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 459
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 470
    return-object v0

    .line 455
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 467
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 468
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 463
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final isHealthDataPermissionAcquired2(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 608
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 611
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 613
    if-eqz p2, :cond_0

    .line 614
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 615
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 620
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/av;->a:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 621
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 622
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 631
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 633
    return-object v0

    .line 618
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 630
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 631
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 626
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final isKeyAccessible()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 478
    :try_start_0
    const-string v3, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 479
    iget-object v3, p0, Lcom/samsung/android/sdk/healthdata/av;->a:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 480
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 481
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 484
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 487
    return v0

    .line 484
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final requestHealthDataPermissions(Landroid/os/Bundle;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
    .locals 5

    .prologue
    .line 416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 420
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 421
    if-eqz p1, :cond_0

    .line 422
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 428
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/av;->a:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 429
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 430
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 441
    return-object v0

    .line 426
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 438
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 439
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 434
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final requestHealthDataPermissions2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 574
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 576
    if-eqz p2, :cond_0

    .line 577
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 583
    :goto_0
    if-eqz p3, :cond_1

    .line 584
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    const/4 v0, 0x0

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 590
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/av;->a:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 591
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 592
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 593
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    :goto_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 603
    return-object v0

    .line 581
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 600
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 588
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 596
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final waitForInit(J)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
    .locals 5

    .prologue
    .line 342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 346
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 348
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/av;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 349
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 350
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 361
    return-object v0

    .line 354
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public final waitForInit2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;J)V
    .locals 5

    .prologue
    .line 547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 550
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IHealth"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 552
    if-eqz p2, :cond_0

    .line 553
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 559
    :goto_0
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 560
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/av;->a:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 561
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 566
    return-void

    .line 557
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 564
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 565
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
