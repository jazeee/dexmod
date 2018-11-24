.class public Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;
.super Ljava/lang/Object;
.source "AlertLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final FIRST_ALARM:I = 0x0

.field private static final VIBRATE_FOR_1500_MILLISECONDS:I = 0x5dc

.field private static m_currentActivity:Landroid/app/Activity;


# instance fields
.field private m_activityResumeTime:Lcom/dexcom/cgm/k/j;

.field private final m_alertSystem:Lcom/dexcom/cgm/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->m_currentActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/a/f;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/dexcom/cgm/activities/notifications/NotificationSystem;->initialize(Lcom/dexcom/cgm/a/f;)V

    .line 48
    iput-object p1, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->m_alertSystem:Lcom/dexcom/cgm/a/f;

    .line 49
    new-instance v0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$1;-><init>(Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;)V

    invoke-interface {p1, v0}, Lcom/dexcom/cgm/a/f;->registerAlertCallback(Lcom/dexcom/cgm/a/g;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;)Lcom/dexcom/cgm/a/f;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->m_alertSystem:Lcom/dexcom/cgm/a/f;

    return-object v0
.end method

.method private acknowledgeNotificationsWithoutDialogs()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->m_alertSystem:Lcom/dexcom/cgm/a/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/a/f;->getAlertsCurrentlyOnDisplay()Ljava/lang/Iterable;

    move-result-object v0

    .line 153
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/a/l;

    .line 155
    invoke-virtual {v0}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v2

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->fromAlertKind(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    move-result-object v2

    .line 156
    if-nez v2, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v2

    invoke-static {v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logAlertAcknowledged(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 159
    iget-object v2, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->m_alertSystem:Lcom/dexcom/cgm/a/f;

    invoke-virtual {v0}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/dexcom/cgm/a/f;->acknowledgeAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    goto :goto_0

    .line 162
    :cond_1
    return-void
.end method

.method private cancelNotificationsAndAlertDialogs(Lcom/dexcom/cgm/a/l;)V
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p1}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/h/a/a/a;->fromInternal(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/activities/notifications/NotificationSystem;->clearNotification(Lcom/dexcom/cgm/h/a/a/a;)V

    .line 382
    :try_start_0
    invoke-virtual {p1}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;->cancelDialogForAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private clearNotificationsAndDisplayAlertDialogs(Landroid/app/Activity;)V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 95
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/NotificationSystem;->clearAllNotifications()V

    .line 96
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->acknowledgeNotificationsWithoutDialogs()V

    .line 97
    invoke-static {p1}, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->showAlertSettingsDatabaseCorruptionDialogIfNeeded(Landroid/app/Activity;)V

    .line 98
    iget-object v0, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->m_alertSystem:Lcom/dexcom/cgm/a/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/a/f;->getAlertsCurrentlyOnDisplay()Ljava/lang/Iterable;

    move-result-object v1

    .line 99
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 100
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 103
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/dexcom/cgm/a/l;

    .line 110
    instance-of v0, p1, Lcom/dexcom/cgm/activities/TrendActivity;

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 115
    invoke-virtual {p1, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 148
    :cond_0
    return-void

    .line 121
    :cond_1
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 123
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    move-result v0

    .line 124
    if-ne v0, v10, :cond_2

    move v7, v6

    .line 127
    :goto_1
    invoke-virtual {v8}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertSound;->None:Lcom/dexcom/cgm/model/enums/AlertSound;

    .line 131
    invoke-virtual {v8}, Lcom/dexcom/cgm/a/l;->getAlertStateRecord()Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/model/AlertStateRecord;->getDisplayedCount()I

    move-result v4

    .line 132
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getSpeakerType()Lcom/dexcom/cgm/model/enums/SpeakerType;

    move-result-object v5

    .line 126
    invoke-static/range {v0 .. v7}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logAlertReceived(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/model/enums/AlertSound;IIILcom/dexcom/cgm/model/enums/SpeakerType;ZZ)V

    .line 135
    invoke-direct {p0, v8}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->cancelNotificationsAndAlertDialogs(Lcom/dexcom/cgm/a/l;)V

    .line 136
    new-instance v0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$2;

    invoke-direct {v0, p0, v8}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$2;-><init>(Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;Lcom/dexcom/cgm/a/l;)V

    invoke-static {p1, v8, v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;->createDialogForAlert(Landroid/app/Activity;Lcom/dexcom/cgm/a/l;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    move v7, v2

    .line 124
    goto :goto_1
.end method

.method private createDialogForAlert(Lcom/dexcom/cgm/a/l;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 406
    new-instance v0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$3;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks$3;-><init>(Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;Lcom/dexcom/cgm/a/l;)V

    invoke-static {p2, p1, v0}, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;->createDialogForAlert(Landroid/app/Activity;Lcom/dexcom/cgm/a/l;Ljava/lang/Runnable;)V

    .line 418
    return-void
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->m_currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private getMaximumNotificationStreamVolume()I
    .locals 2

    .prologue
    .line 399
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 400
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 401
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public static isAppInBackground()Z
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->m_currentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playSoundAndVibrate(Lcom/dexcom/cgm/a/l;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 341
    invoke-virtual {p1}, Lcom/dexcom/cgm/a/l;->getAlertSound()Lcom/dexcom/cgm/model/enums/AlertSound;

    move-result-object v2

    .line 342
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->None:Lcom/dexcom/cgm/model/enums/AlertSound;

    if-ne v2, v0, :cond_0

    move v0, v1

    .line 374
    :goto_0
    return v0

    .line 346
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 347
    const-string v0, "vibrator"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 348
    const-wide/16 v4, 0x5dc

    invoke-virtual {v0, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 351
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertSound;->VibrateOnly:Lcom/dexcom/cgm/model/enums/AlertSound;

    if-ne v2, v0, :cond_1

    move v0, v1

    .line 353
    goto :goto_0

    .line 355
    :cond_1
    const-string v0, "audio"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "android.resource://"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/raw/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/enums/AlertSound;->getAlertSoundFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 358
    invoke-virtual {p1}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/model/enums/AlertKind;->isMuteOverrideEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 360
    invoke-virtual {v2}, Lcom/dexcom/cgm/model/enums/AlertSound;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dexcom/cgm/i/a/a/a;->valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/a/a;->getDurationInSeconds()I

    move-result v2

    .line 361
    invoke-virtual {p1}, Lcom/dexcom/cgm/a/l;->getAlertStateRecord()Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/model/AlertStateRecord;->getDisplayedCount()I

    move-result v3

    .line 363
    invoke-virtual {p1}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/model/enums/AlertKind;->isCriticalAlert()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v4

    .line 364
    invoke-virtual {v4}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v4

    .line 365
    invoke-interface {v4}, Lcom/dexcom/cgm/i/a;->getActiveAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v4

    .line 366
    invoke-virtual {v4}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isAlwaysSoundEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 368
    :cond_2
    invoke-static {v2, v3}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->unmutePhone(II)V

    .line 372
    :cond_3
    invoke-static {v1}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->playSound(Landroid/net/Uri;)V

    .line 374
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    goto/16 :goto_0
.end method


# virtual methods
.method public evAlertCallback(Lcom/dexcom/cgm/a/l;)V
    .locals 20

    .prologue
    .line 212
    const/4 v5, 0x0

    .line 214
    sget-object v19, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->m_currentActivity:Landroid/app/Activity;

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    .line 217
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v3

    invoke-static {v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logAlertCancelled(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 218
    invoke-direct/range {p0 .. p1}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->cancelNotificationsAndAlertDialogs(Lcom/dexcom/cgm/a/l;)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "notification"

    .line 224
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 225
    invoke-virtual {v3}, Landroid/app/NotificationManager;->getCurrentInterruptionFilter()I

    move-result v3

    .line 226
    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    const/4 v10, 0x1

    .line 228
    :goto_1
    invoke-static {}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->isAppInBackground()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 230
    invoke-static/range {p1 .. p1}, Lcom/dexcom/cgm/activities/notifications/NotificationSystem;->sendNotification(Lcom/dexcom/cgm/a/l;)V

    .line 231
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 232
    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 234
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertStateRecord()Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/model/AlertStateRecord;->getDisplayedCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 236
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 237
    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    .line 245
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v3

    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertSound()Lcom/dexcom/cgm/model/enums/AlertSound;

    move-result-object v4

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertStateRecord()Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dexcom/cgm/model/AlertStateRecord;->getDisplayedCount()I

    move-result v7

    .line 250
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getSpeakerType()Lcom/dexcom/cgm/model/enums/SpeakerType;

    move-result-object v8

    const/4 v9, 0x0

    .line 244
    invoke-static/range {v3 .. v10}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logAlertReceived(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/model/enums/AlertSound;IIILcom/dexcom/cgm/model/enums/SpeakerType;ZZ)V

    goto :goto_0

    .line 226
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 241
    :cond_3
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    .line 242
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    goto :goto_2

    .line 256
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v3

    invoke-static {v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->fromAlertKind(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 267
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertStateRecord()Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/model/AlertStateRecord;->getDisplayedCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 271
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v3

    invoke-static {v3}, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;->cancelDialogForAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 274
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->playSoundAndVibrate(Lcom/dexcom/cgm/a/l;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 289
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v3

    .line 290
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertSound()Lcom/dexcom/cgm/model/enums/AlertSound;

    move-result-object v4

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->getMaximumNotificationStreamVolume()I

    move-result v6

    .line 293
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertStateRecord()Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dexcom/cgm/model/AlertStateRecord;->getDisplayedCount()I

    move-result v7

    .line 294
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getSpeakerType()Lcom/dexcom/cgm/model/enums/SpeakerType;

    move-result-object v8

    const/4 v9, 0x1

    .line 288
    invoke-static/range {v3 .. v10}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logAlertReceived(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/model/enums/AlertSound;IIILcom/dexcom/cgm/model/enums/SpeakerType;ZZ)V

    .line 297
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->createDialogForAlert(Lcom/dexcom/cgm/a/l;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 278
    :catch_0
    move-exception v3

    .line 279
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v3

    invoke-static {v3}, Lcom/dexcom/cgm/h/a/a/a;->fromInternal(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v11

    .line 280
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertSound()Lcom/dexcom/cgm/model/enums/AlertSound;

    move-result-object v12

    const/4 v13, 0x0

    .line 282
    invoke-direct/range {p0 .. p0}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->getMaximumNotificationStreamVolume()I

    move-result v14

    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertStateRecord()Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/model/AlertStateRecord;->getDisplayedCount()I

    move-result v15

    .line 284
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getSpeakerType()Lcom/dexcom/cgm/model/enums/SpeakerType;

    move-result-object v16

    const/16 v17, 0x1

    sget-object v18, Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;->AudioFocusNotGranted:Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;

    .line 278
    invoke-static/range {v11 .. v18}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logAlertFailed(Lcom/dexcom/cgm/h/a/a/a;Lcom/dexcom/cgm/model/enums/AlertSound;IIILcom/dexcom/cgm/model/enums/SpeakerType;ZLcom/dexcom/cgm/model/enums/AlertSoundFailureType;)V

    goto :goto_3

    .line 301
    :cond_5
    move-object/from16 v0, v19

    instance-of v3, v0, Lcom/dexcom/cgm/activities/TrendActivity;

    if-eqz v3, :cond_6

    .line 303
    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 305
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 313
    :cond_6
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->playSoundAndVibrate(Lcom/dexcom/cgm/a/l;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 328
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v3

    .line 329
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertSound()Lcom/dexcom/cgm/model/enums/AlertSound;

    move-result-object v4

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->getMaximumNotificationStreamVolume()I

    move-result v6

    .line 332
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertStateRecord()Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dexcom/cgm/model/AlertStateRecord;->getDisplayedCount()I

    move-result v7

    .line 333
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getSpeakerType()Lcom/dexcom/cgm/model/enums/SpeakerType;

    move-result-object v8

    const/4 v9, 0x1

    .line 327
    invoke-static/range {v3 .. v10}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logAlertReceived(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/model/enums/AlertSound;IIILcom/dexcom/cgm/model/enums/SpeakerType;ZZ)V

    .line 336
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->createDialogForAlert(Lcom/dexcom/cgm/a/l;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 317
    :catch_1
    move-exception v3

    .line 318
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v3

    invoke-static {v3}, Lcom/dexcom/cgm/h/a/a/a;->fromInternal(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v11

    .line 319
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertSound()Lcom/dexcom/cgm/model/enums/AlertSound;

    move-result-object v12

    const/4 v13, 0x0

    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->getMaximumNotificationStreamVolume()I

    move-result v14

    .line 322
    invoke-virtual/range {p1 .. p1}, Lcom/dexcom/cgm/a/l;->getAlertStateRecord()Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/model/AlertStateRecord;->getDisplayedCount()I

    move-result v15

    .line 323
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getSpeakerType()Lcom/dexcom/cgm/model/enums/SpeakerType;

    move-result-object v16

    const/16 v17, 0x1

    sget-object v18, Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;->AudioFocusNotGranted:Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;

    .line 317
    invoke-static/range {v11 .. v18}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logAlertFailed(Lcom/dexcom/cgm/h/a/a/a;Lcom/dexcom/cgm/model/enums/AlertSound;IIILcom/dexcom/cgm/model/enums/SpeakerType;ZLcom/dexcom/cgm/model/enums/AlertSoundFailureType;)V

    goto :goto_4
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 197
    invoke-static {p1}, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;->dismissDialogForActivityOnDestroy(Landroid/app/Activity;)V

    .line 198
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {p1}, Lcom/dexcom/cgm/activities/ActivityDisplayNames;->getDisplayName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->m_activityResumeTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/k/j;->subtract(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/k;

    move-result-object v2

    .line 177
    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logScreenDisappearing(Ljava/lang/String;Ljava/lang/String;Lcom/dexcom/cgm/k/k;)V

    .line 179
    const/4 v0, 0x0

    sput-object v0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->m_currentActivity:Landroid/app/Activity;

    .line 180
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 83
    sput-object p1, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->m_currentActivity:Landroid/app/Activity;

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {p1}, Lcom/dexcom/cgm/activities/ActivityDisplayNames;->getDisplayName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logScreenAppearing(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->m_activityResumeTime:Lcom/dexcom/cgm/k/j;

    .line 88
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/AlertLifecycleCallbacks;->clearNotificationsAndDisplayAlertDialogs(Landroid/app/Activity;)V

    .line 89
    invoke-static {p1}, Lcom/dexcom/cgm/activities/DatabaseCorruptionHandler;->showDatabaseCorruptionDialogIfNeeded(Landroid/app/Activity;)V

    .line 90
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method
