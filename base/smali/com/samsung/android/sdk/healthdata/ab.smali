.class final Lcom/samsung/android/sdk/healthdata/ab;
.super Landroid/os/Handler;
.source "HealthDataStore.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/sdk/healthdata/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/healthdata/w;)V
    .locals 1

    .prologue
    .line 602
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 603
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/healthdata/ab;->a:Ljava/lang/ref/WeakReference;

    .line 604
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    .line 608
    iget-object v0, p0, Lcom/samsung/android/sdk/healthdata/ab;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/healthdata/w;

    .line 609
    if-nez v0, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 646
    :goto_1
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/healthdata/w;->a(Lcom/samsung/android/sdk/healthdata/w;I)V

    goto :goto_0

    .line 616
    :sswitch_0
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/w;->a:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, v0, Lcom/samsung/android/sdk/healthdata/w;->a:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    invoke-interface {v1}, Lcom/samsung/android/sdk/healthdata/HealthResultHolder;->cancel()V

    .line 618
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/sdk/healthdata/w;->a:Lcom/samsung/android/sdk/healthdata/HealthResultHolder;

    .line 619
    const-string v1, "HealthDataStore"

    const-string v2, "Init ResultHolder is canceled by time out"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 626
    :sswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pincode_activity_pkg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 627
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pincode_activity_class"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 628
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 630
    const/high16 v4, 0x400000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 631
    const-string v4, "type"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 632
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 633
    const-string v4, "HealthDataStore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Pop up PinCode activity pkg = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", classname = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->c(Lcom/samsung/android/sdk/healthdata/w;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_2

    .line 636
    const/high16 v1, 0x10000000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 638
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/sdk/healthdata/w;->c(Lcom/samsung/android/sdk/healthdata/w;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    const-string v1, "HealthDataStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Only this app cannot access with this "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 613
    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method
