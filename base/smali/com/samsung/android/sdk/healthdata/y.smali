.class final Lcom/samsung/android/sdk/healthdata/y;
.super Ljava/lang/Object;
.source "HealthDataStore.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/samsung/android/sdk/healthdata/w;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/healthdata/w;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x2

    const v5, 0xf4df9

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 501
    const-string v0, "HealthDataStore"

    const-string v2, "Service for HealthDataStore is connected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {p2}, Lcom/samsung/android/sdk/healthdata/au;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sdk/healthdata/at;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/healthdata/w;->a(Lcom/samsung/android/sdk/healthdata/w;Lcom/samsung/android/sdk/healthdata/at;)Lcom/samsung/android/sdk/healthdata/at;

    .line 506
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 507
    const-string v2, "packageName"

    iget-object v4, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v4}, Lcom/samsung/android/sdk/healthdata/w;->c(Lcom/samsung/android/sdk/healthdata/w;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v2, "clientVersion"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 509
    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v2}, Lcom/samsung/android/sdk/healthdata/w;->c(Lcom/samsung/android/sdk/healthdata/w;)Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 510
    const-string v2, "userPasswordInputMode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 515
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v2}, Lcom/samsung/android/sdk/healthdata/w;->d(Lcom/samsung/android/sdk/healthdata/w;)I

    move-result v2

    const v4, 0x4630c0

    if-lt v2, v4, :cond_2

    .line 516
    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v2}, Lcom/samsung/android/sdk/healthdata/w;->e(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/at;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/healthdata/at;->getConnectionResult2(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 528
    :goto_1
    if-eqz v2, :cond_4

    .line 529
    const-string v0, "result"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 530
    const-string v4, "socketKey"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/healthdata/w;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 531
    const-string v4, "myUserId"

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/healthdata/w;->a(J)J

    .line 534
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 561
    const-string v1, "HealthDataStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HealthConnectionErrorResult code : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/healthdata/w;->disconnectService()V

    .line 563
    iget-object v1, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v1}, Lcom/samsung/android/sdk/healthdata/w;->b(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/ab;

    move-result-object v1

    invoke-virtual {v1, v0, v8, v9}, Lcom/samsung/android/sdk/healthdata/ab;->sendEmptyMessageDelayed(IJ)Z

    .line 565
    :cond_0
    :goto_3
    return-void

    .line 512
    :cond_1
    const-string v2, "userPasswordInputMode"

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 518
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->e(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/at;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v2}, Lcom/samsung/android/sdk/healthdata/w;->c(Lcom/samsung/android/sdk/healthdata/w;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v4, 0xf4df9

    invoke-interface {v0, v2, v4}, Lcom/samsung/android/sdk/healthdata/at;->getConnectionResult(Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 526
    goto :goto_1

    .line 522
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->a(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/z;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 523
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->a(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/z;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/healthdata/a;

    invoke-direct {v2, v1, v1}, Lcom/samsung/android/sdk/healthdata/a;-><init>(IZ)V

    invoke-interface {v0, v2}, Lcom/samsung/android/sdk/healthdata/z;->onConnectionFailed(Lcom/samsung/android/sdk/healthdata/a;)V

    .line 524
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    iput-object v3, v0, Lcom/samsung/android/sdk/healthdata/w;->a:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    :cond_3
    move-object v2, v3

    goto :goto_1

    .line 536
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->a(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->a(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/healthdata/z;->onConnected()V

    .line 538
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    iput-object v3, v0, Lcom/samsung/android/sdk/healthdata/w;->a:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    goto :goto_3

    .line 542
    :pswitch_1
    const-string v4, "HealthDataStore"

    const-string v5, "User password popup is required"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 544
    iput v0, v4, Landroid/os/Message;->what:I

    .line 545
    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 546
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->b(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/ab;

    move-result-object v0

    invoke-virtual {v0, v4, v8, v9}, Lcom/samsung/android/sdk/healthdata/ab;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 552
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    iget-object v2, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v2}, Lcom/samsung/android/sdk/healthdata/w;->f(Lcom/samsung/android/sdk/healthdata/w;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/samsung/android/sdk/healthdata/w;->a(Lcom/samsung/android/sdk/healthdata/w;J)Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 554
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->a(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->a(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/z;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/sdk/healthdata/a;

    invoke-direct {v2, v1, v1}, Lcom/samsung/android/sdk/healthdata/a;-><init>(IZ)V

    invoke-interface {v0, v2}, Lcom/samsung/android/sdk/healthdata/z;->onConnectionFailed(Lcom/samsung/android/sdk/healthdata/a;)V

    .line 556
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    iput-object v3, v0, Lcom/samsung/android/sdk/healthdata/w;->a:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    goto/16 :goto_3

    :cond_4
    move v0, v1

    goto/16 :goto_2

    .line 534
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 569
    const-string v0, "HealthDataStore"

    const-string v1, "Service for HealthDataStore is disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/healthdata/w;->a(Lcom/samsung/android/sdk/healthdata/w;Lcom/samsung/android/sdk/healthdata/at;)Lcom/samsung/android/sdk/healthdata/at;

    .line 572
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->a(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/z;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->a(Lcom/samsung/android/sdk/healthdata/w;)Lcom/samsung/android/sdk/healthdata/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sdk/healthdata/z;->onDisconnected()V

    .line 574
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/y;->a:Lcom/samsung/android/sdk/healthdata/w;

    iput-object v2, v0, Lcom/samsung/android/sdk/healthdata/w;->a:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    .line 576
    :cond_0
    return-void
.end method
