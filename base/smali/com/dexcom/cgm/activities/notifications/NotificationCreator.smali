.class public Lcom/dexcom/cgm/activities/notifications/NotificationCreator;
.super Ljava/lang/Object;
.source "NotificationCreator.java"


# static fields
.field private static VIBRATION_TIME_IN_MILLISECONDS:J

.field private static VIBRATION_TIME_ZERO:J

.field private static final WEARABLE_NOTIFICATION_BACKGROUND_COLOR:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-wide/16 v0, 0x5dc

    sput-wide v0, Lcom/dexcom/cgm/activities/notifications/NotificationCreator;->VIBRATION_TIME_IN_MILLISECONDS:J

    .line 41
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/dexcom/cgm/activities/notifications/NotificationCreator;->VIBRATION_TIME_ZERO:J

    .line 150
    sget v0, Lcom/dexcom/cgm/activities/R$color;->dex_light_gray:I

    sput v0, Lcom/dexcom/cgm/activities/notifications/NotificationCreator;->WEARABLE_NOTIFICATION_BACKGROUND_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNotification(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;Lcom/dexcom/cgm/i/a/a/a;I)Landroid/app/Notification;
    .locals 9
    .param p1    # Lcom/dexcom/cgm/i/a/a/a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 48
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/NotificationCreator;->getNotificationBase()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v8

    .line 51
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->toAlertKind()Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->getSwipeIntent(Lcom/dexcom/cgm/h/a/a/a;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 53
    invoke-static {v0}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->getTapIntent(Lcom/dexcom/cgm/h/a/a/a;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 56
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->hasAcknowledgeButton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationCreator;->getAcknowledgeAction(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->hasCalibrationButton()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-static {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationCreator;->getCalibrationAction(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->getNotificationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 66
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->getNotificationMessage()Ljava/lang/String;

    move-result-object v1

    .line 67
    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 68
    invoke-virtual {v8, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 70
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->getNotificationSubtext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 71
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 73
    if-nez p1, :cond_3

    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v6

    const/4 v1, 0x1

    sget-wide v2, Lcom/dexcom/cgm/activities/notifications/NotificationCreator;->VIBRATION_TIME_ZERO:J

    aput-wide v2, v0, v1

    invoke-virtual {v8, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 124
    :cond_2
    :goto_0
    invoke-static {v8, p0}, Lcom/dexcom/cgm/activities/notifications/NotificationCreator;->extendWearable(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)V

    .line 126
    invoke-virtual {v8}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0

    .line 81
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android.resource://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/raw/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 84
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->isMuteOverrideEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 86
    invoke-virtual {v8, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 90
    :cond_4
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "vibrator"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 91
    sget-wide v4, Lcom/dexcom/cgm/activities/notifications/NotificationCreator;->VIBRATION_TIME_IN_MILLISECONDS:J

    invoke-virtual {v1, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 92
    sget-object v1, Lcom/dexcom/cgm/i/a/a/a;->VibrateOnly:Lcom/dexcom/cgm/i/a/a/a;

    if-eq p1, v1, :cond_2

    .line 94
    if-nez p2, :cond_5

    .line 96
    invoke-virtual {v8, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 102
    :cond_5
    :try_start_0
    invoke-static {v2}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->playSound(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/dexcom/cgm/model/AudioStreamFocusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dexcom/cgm/model/enums/AlertSound;->fromString(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/AlertSound;

    move-result-object v1

    .line 107
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    .line 108
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/media/AudioManager;

    .line 112
    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 113
    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 115
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->getSpeakerType()Lcom/dexcom/cgm/model/enums/SpeakerType;

    move-result-object v5

    sget-object v7, Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;->AudioFocusNotGranted:Lcom/dexcom/cgm/model/enums/AlertSoundFailureType;

    move v4, p2

    .line 109
    invoke-static/range {v0 .. v7}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logAlertFailed(Lcom/dexcom/cgm/h/a/a/a;Lcom/dexcom/cgm/model/enums/AlertSound;IIILcom/dexcom/cgm/model/enums/SpeakerType;ZLcom/dexcom/cgm/model/enums/AlertSoundFailureType;)V

    goto :goto_0
.end method

.method private static extendWearable(Landroid/support/v4/app/NotificationCompat$Builder;Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)V
    .locals 4

    .prologue
    const/16 v3, 0x190

    .line 156
    new-instance v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 159
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 162
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 165
    sget v3, Lcom/dexcom/cgm/activities/notifications/NotificationCreator;->WEARABLE_NOTIFICATION_BACKGROUND_COLOR:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 166
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setBackground(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 168
    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->hasAcknowledgeButton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-static {p1}, Lcom/dexcom/cgm/activities/notifications/NotificationCreator;->getAcknowledgeAction(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 174
    :cond_0
    invoke-virtual {v0, p0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->extend(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 175
    return-void
.end method

.method private static getAcknowledgeAction(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 4

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->toAlertKind()Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v0

    .line 180
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 182
    sget v2, Lcom/dexcom/cgm/activities/R$drawable;->ic_done_white_24dp:I

    .line 183
    sget v3, Lcom/dexcom/cgm/activities/R$string;->ok:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-static {v0}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->getAcknowledgeIntent(Lcom/dexcom/cgm/h/a/a/a;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 186
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-direct {v3, v2, v1, v0}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v3
.end method

.method private static getCalibrationAction(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)Landroid/support/v4/app/NotificationCompat$Action;
    .locals 4

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->toAlertKind()Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v0

    .line 192
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 194
    sget v2, Lcom/dexcom/cgm/activities/R$drawable;->meter:I

    .line 195
    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_enter_bg:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v0}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->getMeterEntryIntent(Lcom/dexcom/cgm/h/a/a/a;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 198
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-direct {v3, v2, v1, v0}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v3
.end method

.method private static getNotificationBase()Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 135
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 137
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 138
    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeMilliseconds()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 139
    const-string v2, "Alerts"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 140
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 141
    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 142
    sget v2, Lcom/dexcom/cgm/activities/R$drawable;->notification_icon:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 143
    invoke-virtual {v1, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 144
    const/4 v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    sget-wide v4, Lcom/dexcom/cgm/activities/notifications/NotificationCreator;->VIBRATION_TIME_IN_MILLISECONDS:J

    aput-wide v4, v2, v6

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 145
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_green:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 147
    return-object v1
.end method
