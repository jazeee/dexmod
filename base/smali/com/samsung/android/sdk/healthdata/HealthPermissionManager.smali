.class public final Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;
.super Ljava/lang/Object;
.source "HealthPermissionManager.java"


# instance fields
.field private final a:Lcom/samsung/android/sdk/healthdata/w;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/healthdata/w;)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->a:Lcom/samsung/android/sdk/healthdata/w;

    .line 226
    return-void
.end method

.method private static a(Ljava/util/Set;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/sdk/healthdata/af;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 397
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 402
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/af;

    .line 403
    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/af;->getDataType()Ljava/lang/String;

    move-result-object v4

    .line 404
    if-nez v4, :cond_0

    .line 405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input argument includes null as a dataType of PermissionKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 409
    if-nez v1, :cond_1

    .line 410
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 411
    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/af;->getPermissionType()Lcom/samsung/android/sdk/healthdata/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/healthdata/ah;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 416
    :cond_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 420
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 421
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 422
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v6, v2, [I

    .line 423
    const/4 v2, 0x0

    .line 425
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 426
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v6, v2

    move v2, v3

    .line 427
    goto :goto_2

    .line 428
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_1

    .line 431
    :cond_4
    return-object v4
.end method

.method static synthetic a(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 213
    invoke-static {p0}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->b(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/android/sdk/healthdata/af;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 437
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 442
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 443
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 444
    if-eqz v4, :cond_0

    .line 448
    invoke-static {}, Lcom/samsung/android/sdk/healthdata/ah;->values()[Lcom/samsung/android/sdk/healthdata/ah;

    move-result-object v5

    array-length v6, v5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_0

    aget-object v7, v5, v1

    .line 449
    invoke-virtual {v7}, Lcom/samsung/android/sdk/healthdata/ah;->getValue()I

    move-result v8

    aget v8, v4, v8

    .line 450
    if-nez v8, :cond_2

    .line 451
    new-instance v8, Lcom/samsung/android/sdk/healthdata/af;

    invoke-direct {v8, v0, v7}, Lcom/samsung/android/sdk/healthdata/af;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/ah;)V

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    :cond_2
    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 453
    new-instance v8, Lcom/samsung/android/sdk/healthdata/af;

    invoke-direct {v8, v0, v7}, Lcom/samsung/android/sdk/healthdata/af;-><init>(Ljava/lang/String;Lcom/samsung/android/sdk/healthdata/ah;)V

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 458
    :cond_3
    return-object v2
.end method


# virtual methods
.method public final isPermissionAcquired(Ljava/util/Set;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/sdk/healthdata/af;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/android/sdk/healthdata/af;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input argument has no items"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->getInterface(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/at;

    move-result-object v0

    .line 377
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->a(Ljava/util/Set;)Landroid/os/Bundle;

    move-result-object v1

    .line 381
    :try_start_0
    const-string v2, "Health.Permission"

    const-string v3, "Checking the health data permissions are acquired..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/healthdata/w;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/sdk/healthdata/at;->isHealthDataPermissionAcquired2(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 386
    if-nez v0, :cond_2

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Binder error occurs during getting the result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :catch_0
    move-exception v0

    .line 391
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/dexcom/cgm/g/a;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 389
    :cond_2
    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->b(Landroid/os/Bundle;)Ljava/util/Map;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method public final requestPermissions(Ljava/util/Set;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/sdk/healthdata/af;",
            ">;)",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->requestPermissions(Ljava/util/Set;Landroid/app/Activity;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v0

    return-object v0
.end method

.method public final requestPermissions(Ljava/util/Set;Landroid/app/Activity;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/sdk/healthdata/af;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder",
            "<",
            "Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    if-nez p1, :cond_0

    .line 262
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The input argument has no items"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->getInterface(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/at;

    move-result-object v0

    .line 272
    invoke-static {p1}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->a(Ljava/util/Set;)Landroid/os/Bundle;

    move-result-object v1

    .line 275
    const-string v2, "Health.Permission"

    const-string v3, "Trying to acquire the health data permissions..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :try_start_0
    new-instance v2, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;

    invoke-direct {v2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>()V

    .line 279
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/internal/healthdata/t;->getAsyncResultHolder(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;Landroid/os/Looper;)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    move-result-object v3

    .line 281
    iget-object v4, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/healthdata/w;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2, v1}, Lcom/samsung/android/sdk/healthdata/at;->requestHealthDataPermissions2(Ljava/lang/String;Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 282
    if-eqz v0, :cond_2

    .line 283
    if-eqz p2, :cond_3

    .line 285
    :try_start_1
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 300
    :cond_2
    :goto_0
    return-object v3

    .line 287
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 302
    :catch_1
    move-exception v0

    .line 303
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Lcom/dexcom/cgm/g/a;->getRemoteExceptionMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :catch_2
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/healthdata/w;->a()Landroid/content/Context;

    move-result-object v1

    .line 293
    instance-of v2, v1, Landroid/app/Activity;

    if-nez v2, :cond_4

    .line 294
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 296
    :cond_4
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
