.class final Lcom/samsung/android/sdk/healthdata/am;
.super Ljava/lang/Object;
.source "IDataResolver.java"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/ak;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/am;->a:Landroid/os/IBinder;

    .line 275
    return-void
.end method


# virtual methods
.method public final aggregateData(Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
    .locals 5

    .prologue
    .line 373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 377
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 378
    if-eqz p1, :cond_0

    .line 379
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 385
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/am;->a:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 386
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 387
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 398
    return-object v0

    .line 383
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 396
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 391
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final aggregateData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;)V
    .locals 5

    .prologue
    .line 521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 524
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 526
    if-eqz p2, :cond_0

    .line 527
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 533
    :goto_0
    if-eqz p3, :cond_1

    .line 534
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    const/4 v0, 0x0

    invoke-virtual {p3, v1, v0}, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 540
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/am;->a:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 541
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 545
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 546
    return-void

    .line 531
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 545
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 538
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/am;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public final deleteData(Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
    .locals 5

    .prologue
    .line 344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 348
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 349
    if-eqz p1, :cond_0

    .line 350
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 356
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/am;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 357
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 358
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 369
    return-object v0

    .line 354
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 362
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final deleteData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;)V
    .locals 5

    .prologue
    .line 492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 495
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    if-eqz p2, :cond_0

    .line 498
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 499
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 504
    :goto_0
    if-eqz p3, :cond_1

    .line 505
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    const/4 v0, 0x0

    invoke-virtual {p3, v1, v0}, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 511
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/am;->a:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 512
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 517
    return-void

    .line 502
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

    .line 509
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final insertData(Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
    .locals 5

    .prologue
    .line 315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 319
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 320
    if-eqz p1, :cond_0

    .line 321
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 327
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/am;->a:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 328
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 329
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    return-object v0

    .line 325
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 337
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 333
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final insertData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;)V
    .locals 5

    .prologue
    .line 463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 466
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    if-eqz p2, :cond_0

    .line 469
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 475
    :goto_0
    if-eqz p3, :cond_1

    .line 476
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    const/4 v0, 0x0

    invoke-virtual {p3, v1, v0}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 482
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/am;->a:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 483
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 488
    return-void

    .line 473
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 486
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 480
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final readData(Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
    .locals 5

    .prologue
    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 290
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 291
    if-eqz p1, :cond_0

    .line 292
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 298
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/am;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 299
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 300
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 311
    return-object v0

    .line 296
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 304
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final readData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;)V
    .locals 5

    .prologue
    .line 434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 437
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 439
    if-eqz p2, :cond_0

    .line 440
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 441
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 446
    :goto_0
    if-eqz p3, :cond_1

    .line 447
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    const/4 v0, 0x0

    invoke-virtual {p3, v1, v0}, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 453
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/am;->a:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 454
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 459
    return-void

    .line 444
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 457
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 451
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final updateData(Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;)Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
    .locals 5

    .prologue
    .line 402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 406
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 407
    if-eqz p1, :cond_0

    .line 408
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 414
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/am;->a:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 415
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 416
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    sget-object v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 427
    return-object v0

    .line 412
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 420
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final updateData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;)V
    .locals 5

    .prologue
    .line 550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 553
    :try_start_0
    const-string v0, "com.samsung.android.sdk.healthdata.IDataResolver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 555
    if-eqz p2, :cond_0

    .line 556
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 562
    :goto_0
    if-eqz p3, :cond_1

    .line 563
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    const/4 v0, 0x0

    invoke-virtual {p3, v1, v0}, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 569
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/am;->a:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 570
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 574
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 575
    return-void

    .line 560
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 573
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 574
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 567
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
