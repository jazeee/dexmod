.class final Lcom/dexcom/cgm/d;
.super Ljava/lang/Object;
.source "CgmApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/CgmApplication;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/CgmApplication;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/dexcom/cgm/d;->a:Lcom/dexcom/cgm/CgmApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 378
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/d;->a:Lcom/dexcom/cgm/CgmApplication;

    invoke-virtual {v0}, Lcom/dexcom/cgm/CgmApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/d;->a:Lcom/dexcom/cgm/CgmApplication;

    .line 379
    invoke-virtual {v1}, Lcom/dexcom/cgm/CgmApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 385
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/d;->a:Lcom/dexcom/cgm/CgmApplication;

    const v2, 0x7f0a0088

    .line 387
    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/CgmApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/d;->a:Lcom/dexcom/cgm/CgmApplication;

    const v4, 0x7f0a033c

    .line 388
    invoke-virtual {v2, v4}, Lcom/dexcom/cgm/CgmApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v6, p0, Lcom/dexcom/cgm/d;->a:Lcom/dexcom/cgm/CgmApplication;

    const v7, 0x7f0a0097

    .line 392
    invoke-virtual {v6, v7}, Lcom/dexcom/cgm/CgmApplication;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 387
    invoke-interface/range {v0 .. v7}, Lcom/dexcom/cgm/share/ShareService;->updateRuntimeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/dexcom/cgm/d;->a:Lcom/dexcom/cgm/CgmApplication;

    iget-object v1, p0, Lcom/dexcom/cgm/d;->a:Lcom/dexcom/cgm/CgmApplication;

    invoke-virtual {v1}, Lcom/dexcom/cgm/CgmApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/CgmApplication;->access$200(Lcom/dexcom/cgm/CgmApplication;Landroid/content/Context;)Lcom/dexcom/cgm/model/PhoneInformation;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logDeviceInfo(Lcom/dexcom/cgm/model/PhoneInformation;)V

    .line 397
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    const-class v0, Lcom/dexcom/cgm/CgmApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Update Runtime Info Thread Interrupted!"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    :catch_1
    move-exception v0

    .line 383
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
