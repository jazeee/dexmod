.class public final Lcom/samsung/android/sdk/healthdata/HealthDataResolver;
.super Ljava/lang/Object;
.source "HealthDataResolver.java"


# instance fields
.field private final a:Lcom/samsung/android/sdk/healthdata/w;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/healthdata/w;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->a:Lcom/samsung/android/sdk/healthdata/w;

    .line 253
    iput-object p2, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->b:Landroid/os/Handler;

    .line 254
    return-void
.end method

.method private a()Lcom/samsung/android/sdk/healthdata/ak;
    .locals 2

    .prologue
    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->getInterface(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/at;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/healthdata/at;->getIDataResolver()Lcom/samsung/android/sdk/healthdata/ak;

    move-result-object v0

    .line 259
    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IDataResolver is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/dexcom/cgm/g/a;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_0
    return-object v0
.end method

.method private b()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 495
    :goto_0
    if-nez v0, :cond_1

    .line 496
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This thread has no looper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    .line 498
    :cond_1
    return-object v0
.end method


# virtual methods
.method public final aggregate(Lcom/samsung/android/sdk/healthdata/c;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/healthdata/c;",
            ")",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    instance-of v0, p1, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid aggregate request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->a()Lcom/samsung/android/sdk/healthdata/ak;

    move-result-object v0

    .line 479
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->b()Landroid/os/Looper;

    move-result-object v1

    .line 480
    check-cast p1, Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;

    .line 483
    :try_start_0
    new-instance v2, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {v2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>()V

    .line 484
    invoke-static {v2, v1}, Lcom/samsung/android/sdk/internal/healthdata/t;->getAsyncResultHolder(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Landroid/os/Looper;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v1

    .line 485
    iget-object v3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/healthdata/w;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2, p1}, Lcom/samsung/android/sdk/healthdata/ak;->aggregateData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/AggregateRequestImpl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    return-object v1

    .line 488
    :catch_0
    move-exception v0

    .line 489
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/dexcom/cgm/g/a;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final delete$51876236(Lcom/samsung/android/sdk/healthdata/c;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/healthdata/c;",
            ")",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 399
    instance-of v0, p1, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid request instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->a()Lcom/samsung/android/sdk/healthdata/ak;

    move-result-object v0

    .line 404
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->b()Landroid/os/Looper;

    move-result-object v1

    .line 405
    check-cast p1, Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;

    .line 408
    :try_start_0
    new-instance v2, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {v2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>()V

    .line 409
    invoke-static {v2, v1}, Lcom/samsung/android/sdk/internal/healthdata/t;->getAsyncResultHolder(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Landroid/os/Looper;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v1

    .line 410
    iget-object v3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/healthdata/w;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2, p1}, Lcom/samsung/android/sdk/healthdata/ak;->deleteData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/DeleteRequestImpl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    return-object v1

    .line 413
    :catch_0
    move-exception v0

    .line 414
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/dexcom/cgm/g/a;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final insert(Lcom/samsung/android/sdk/healthdata/s;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/healthdata/s;",
            ")",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    instance-of v0, p1, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid request instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->a()Lcom/samsung/android/sdk/healthdata/ak;

    move-result-object v2

    .line 292
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->b()Landroid/os/Looper;

    move-result-object v3

    .line 293
    check-cast p1, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;

    .line 295
    invoke-virtual {p1}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    new-instance v0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;-><init>(II)V

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/internal/healthdata/g;->createAndSetResult(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;Landroid/os/Looper;)Lcom/samsung/android/sdk/internal/healthdata/g;

    move-result-object v0

    .line 320
    :goto_0
    return-object v0

    .line 299
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthData;

    .line 300
    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/HealthData;->getBlobKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 301
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/healthdata/HealthData;->getBlob(Ljava/lang/String;)[B

    move-result-object v6

    .line 302
    if-eqz v6, :cond_3

    array-length v7, v6

    const v8, 0xfa000

    if-le v7, v8, :cond_3

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Blob data size is bigger than 1000KB : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_4
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthData;

    .line 311
    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/HealthData;->getBlobKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 312
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/internal/healthdata/t;->sendBlob(Lcom/samsung/android/sdk/healthdata/HealthData;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/TransactionTooLargeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_6
    :try_start_1
    new-instance v1, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {v1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>()V

    .line 317
    invoke-static {v1, v3}, Lcom/samsung/android/sdk/internal/healthdata/t;->getAsyncResultHolder(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Landroid/os/Looper;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v0

    .line 318
    iget-object v3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/healthdata/w;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1, p1}, Lcom/samsung/android/sdk/healthdata/ak;->insertData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/InsertRequestImpl;)V
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 323
    :catch_1
    move-exception v0

    .line 324
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/dexcom/cgm/g/a;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final read$3f524f8b(Lcom/samsung/android/sdk/healthdata/c;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/healthdata/c;",
            ")",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    instance-of v0, p1, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid request instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->a()Lcom/samsung/android/sdk/healthdata/ak;

    move-result-object v0

    .line 441
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->b()Landroid/os/Looper;

    move-result-object v1

    .line 442
    check-cast p1, Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;

    .line 445
    :try_start_0
    new-instance v2, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {v2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>()V

    .line 446
    invoke-static {v2, v1}, Lcom/samsung/android/sdk/internal/healthdata/t;->getAsyncResultHolder(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Landroid/os/Looper;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v1

    .line 447
    iget-object v3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/healthdata/w;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2, p1}, Lcom/samsung/android/sdk/healthdata/ak;->readData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/ReadRequestImpl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    return-object v1

    .line 450
    :catch_0
    move-exception v0

    .line 451
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/dexcom/cgm/g/a;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final update$7e959f18(Lcom/samsung/android/sdk/healthdata/c;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/healthdata/c;",
            ")",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    instance-of v0, p1, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid request instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->a()Lcom/samsung/android/sdk/healthdata/ak;

    move-result-object v1

    .line 351
    invoke-direct {p0}, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->b()Landroid/os/Looper;

    move-result-object v2

    .line 352
    check-cast p1, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;

    .line 354
    invoke-virtual {p1}, Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;->getDataObject()Lcom/samsung/android/sdk/healthdata/HealthData;

    move-result-object v3

    .line 356
    invoke-virtual {v3}, Lcom/samsung/android/sdk/healthdata/HealthData;->getBlobKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 357
    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/healthdata/HealthData;->getBlob(Ljava/lang/String;)[B

    move-result-object v5

    .line 358
    if-eqz v5, :cond_1

    array-length v6, v5

    const v7, 0xfa000

    if-le v6, v7, :cond_1

    .line 359
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Blob data size is bigger than 1000KB : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 365
    :cond_2
    :try_start_0
    invoke-virtual {v3}, Lcom/samsung/android/sdk/healthdata/HealthData;->getBlobKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 366
    invoke-static {v3, v0}, Lcom/samsung/android/sdk/internal/healthdata/t;->sendBlob(Lcom/samsung/android/sdk/healthdata/HealthData;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/TransactionTooLargeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 369
    :cond_3
    :try_start_1
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>()V

    .line 370
    invoke-static {v0, v2}, Lcom/samsung/android/sdk/internal/healthdata/t;->getAsyncResultHolder(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Landroid/os/Looper;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v2

    .line 371
    iget-object v3, p0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/healthdata/w;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0, p1}, Lcom/samsung/android/sdk/healthdata/ak;->updateData2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Lcom/samsung/android/sdk/internal/healthdata/UpdateRequestImpl;)V
    :try_end_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 373
    return-object v2

    .line 376
    :catch_1
    move-exception v0

    .line 377
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/dexcom/cgm/g/a;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
