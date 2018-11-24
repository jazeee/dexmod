.class public Lcom/dexcom/cgm/activities/notifications/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearNotification(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)V
    .locals 2
    .param p0    # Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->stopSound()V

    .line 29
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationManagerCompat;->cancel(I)V

    .line 30
    return-void
.end method

.method private static getAlertSettings()Lcom/dexcom/cgm/i/a/a;
    .locals 1

    .prologue
    .line 125
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getActiveAlertSettings()Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    return-object v0
.end method

.method private static getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    return-object v0
.end method

.method private static getNotificationSound(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)Lcom/dexcom/cgm/i/a/a/a;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->getAlertSettings()Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->toAlertKind()Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/i/a/a;->isAlertSilent(Lcom/dexcom/cgm/h/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    .line 104
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationManager$1;->$SwitchMap$com$dexcom$cgm$activities$notifications$NotificationResources$NotificationType:[I

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    sget-object v0, Lcom/dexcom/cgm/i/a/a/a;->ShortBeeps:Lcom/dexcom/cgm/i/a/a/a;

    goto :goto_0

    .line 107
    :pswitch_0
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->getAlertSettings()Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUrgentLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v0

    goto :goto_0

    .line 109
    :pswitch_1
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->getAlertSettings()Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v0

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->getAlertSettings()Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUserHigh()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v0

    goto :goto_0

    .line 113
    :pswitch_3
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->getAlertSettings()Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getRiseRate()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v0

    goto :goto_0

    .line 115
    :pswitch_4
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->getAlertSettings()Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getFallRate()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v0

    goto :goto_0

    .line 117
    :pswitch_5
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->getAlertSettings()Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getNoData()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v0

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static logNotificationToFlurry(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)V
    .locals 4

    .prologue
    .line 130
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setFlurryAlertType(Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/dexcom/cgm/d/e;->setFlurryAlertStartTime(J)V

    .line 138
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 140
    sget-object v1, Lcom/dexcom/cgm/activities/notifications/NotificationManager$1;->$SwitchMap$com$dexcom$cgm$activities$notifications$NotificationResources$NotificationType:[I

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 164
    :goto_0
    return-void

    .line 143
    :pswitch_0
    sget v1, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_Alert_FallRate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;)Lcom/flurry/android/e;

    goto :goto_0

    .line 146
    :pswitch_1
    sget v1, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_Alert_RiseRate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;)Lcom/flurry/android/e;

    goto :goto_0

    .line 149
    :pswitch_2
    sget v1, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_Alert_High:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;)Lcom/flurry/android/e;

    goto :goto_0

    .line 152
    :pswitch_3
    sget v1, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_Alert_Low:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;)Lcom/flurry/android/e;

    goto :goto_0

    .line 155
    :pswitch_4
    sget v1, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_Alert_UrgLow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;)Lcom/flurry/android/e;

    goto :goto_0

    .line 158
    :pswitch_5
    sget v1, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_Alert_OutRange:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;)Lcom/flurry/android/e;

    goto :goto_0

    .line 161
    :pswitch_6
    sget v1, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_SQL_NonRecoverable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;)Lcom/flurry/android/e;

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static sendAlertSettingsCorruptionNotification()V
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->AlertSettingsError:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->sendNotification(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;I)V

    goto :goto_0
.end method

.method public static sendDataCorruptionNotification()V
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SQLError:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->sendNotification(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;I)V

    goto :goto_0
.end method

.method public static sendNotification(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;I)V
    .locals 4

    .prologue
    .line 59
    invoke-static {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->getNotificationSound(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->isMuteOverrideEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    if-eqz v0, :cond_1

    sget-object v1, Lcom/dexcom/cgm/i/a/a/a;->VibrateOnly:Lcom/dexcom/cgm/i/a/a/a;

    if-eq v0, v1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->isCriticalAlert()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getActiveAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isAlwaysSoundEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a/a;->getDurationInSeconds()I

    move-result v1

    invoke-static {v1, p1}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->unmutePhone(II)V

    .line 74
    :cond_1
    invoke-static {p0, v0, p1}, Lcom/dexcom/cgm/activities/notifications/NotificationCreator;->createNotification(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;Lcom/dexcom/cgm/i/a/a/a;I)Landroid/app/Notification;

    move-result-object v0

    .line 76
    invoke-static {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->logNotificationToFlurry(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)V

    .line 78
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->getShuttingDownBoolean()Z

    move-result v1

    .line 81
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->toAlertKind()Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v2

    sget-object v3, Lcom/dexcom/cgm/h/a/a/a;->BluetoothRadioOff:Lcom/dexcom/cgm/h/a/a/a;

    if-ne v2, v3, :cond_2

    .line 83
    if-nez v1, :cond_3

    .line 88
    :cond_2
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->getNotificationManager()Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 90
    :cond_3
    return-void
.end method
