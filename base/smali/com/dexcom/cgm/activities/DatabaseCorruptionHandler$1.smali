.class final Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler$1;
.super Ljava/lang/Object;
.source "DatabaseCorruptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 49
    invoke-static {}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->isAppInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->sendDataCorruptionNotification()V

    .line 80
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android.resource://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/raw/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->access$000()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 56
    const-string v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 57
    if-eqz v0, :cond_1

    .line 59
    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 64
    :cond_1
    sget-object v0, Lcom/dexcom/cgm/i/a/a/a;->ShortBeeps:Lcom/dexcom/cgm/i/a/a/a;

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a/a;->getDurationInSeconds()I

    move-result v0

    invoke-static {}, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->access$100()I

    move-result v2

    invoke-static {v0, v2}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->unmutePhone(II)V

    .line 66
    invoke-static {}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;->createSQLErrorDialog(Landroid/app/Activity;)V

    .line 69
    :try_start_0
    invoke-static {v1}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->playSound(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/dexcom/cgm/model/AudioStreamFocusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_1
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getBulkDataService()Lcom/dexcom/cgm/bulkdata/BulkDataService;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/bulkdata/BulkDataService;->onFatalException()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
