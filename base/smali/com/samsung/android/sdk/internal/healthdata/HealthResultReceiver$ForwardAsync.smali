.class public Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;
.super Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;
.source "HealthResultReceiver.java"


# instance fields
.field private a:Lcom/samsung/android/sdk/internal/healthdata/p;

.field private b:Lcom/samsung/android/sdk/internal/healthdata/x;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 349
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;-><init>(B)V

    .line 351
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/l;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/internal/healthdata/l;-><init>(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;B)V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->a:Lcom/samsung/android/sdk/internal/healthdata/p;

    .line 352
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 353
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;-><init>(Landroid/os/Parcel;B)V

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/internal/healthdata/q;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/internal/healthdata/p;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->a:Lcom/samsung/android/sdk/internal/healthdata/p;

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 362
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 341
    .line 1393
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->b:Lcom/samsung/android/sdk/internal/healthdata/x;

    if-nez v0, :cond_1

    .line 1394
    :cond_0
    :goto_0
    return-void

    .line 1397
    :cond_1
    const-class v0, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1398
    const-string v0, "type"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1399
    packed-switch v0, :pswitch_data_0

    .line 1416
    const-string v0, "parcel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    .line 1417
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->b:Lcom/samsung/android/sdk/internal/healthdata/x;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/sdk/internal/healthdata/x;->onReceiveHealthResult(ILcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    .line 1421
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->b:Lcom/samsung/android/sdk/internal/healthdata/x;

    goto :goto_0

    .line 1401
    :pswitch_0
    const-string v0, "parcel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$ReadResult;

    .line 1402
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->b:Lcom/samsung/android/sdk/internal/healthdata/x;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/sdk/internal/healthdata/x;->onReceiveHealthResult(ILcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    goto :goto_1

    .line 1405
    :pswitch_1
    const-string v0, "parcel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/HealthDataResolver$AggregateResult;

    .line 1406
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->b:Lcom/samsung/android/sdk/internal/healthdata/x;

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/sdk/internal/healthdata/x;->onReceiveHealthResult(ILcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    goto :goto_1

    .line 1409
    :pswitch_2
    const-string v0, "PERMISSION_RESULT_COUNT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1410
    const-string v1, "PERMISSION_RESULT_COUNT"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1411
    const-string v1, "type"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1412
    new-instance v1, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;

    invoke-direct {v1, p2, v0}, Lcom/samsung/android/sdk/healthdata/HealthPermissionManager$PermissionResult;-><init>(Landroid/os/Bundle;I)V

    .line 1413
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->b:Lcom/samsung/android/sdk/internal/healthdata/x;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/internal/healthdata/x;->onReceiveHealthResult(ILcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    goto :goto_1

    .line 1399
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 427
    return-void
.end method

.method public isSync()Z
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public registerListener(Lcom/samsung/android/sdk/internal/healthdata/x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
            ">(",
            "Lcom/samsung/android/sdk/internal/healthdata/x",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 387
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->b:Lcom/samsung/android/sdk/internal/healthdata/x;

    .line 388
    return-void
.end method

.method public send(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->a:Lcom/samsung/android/sdk/internal/healthdata/p;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/p;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 366
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 368
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/HealthResultReceiver$ForwardAsync;->a:Lcom/samsung/android/sdk/internal/healthdata/p;

    invoke-interface {v0}, Lcom/samsung/android/sdk/internal/healthdata/p;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 370
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    return-void
.end method
