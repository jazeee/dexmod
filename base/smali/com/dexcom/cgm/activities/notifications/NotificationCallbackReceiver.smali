.class public Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationCallbackReceiver.java"


# static fields
.field public static final ACTION_JUMP_TO_METER_ENTRY:Ljava/lang/String; = "NOTIFICATION_METER_ENTRY"

.field public static final ACTION_LOG_CARBS:Ljava/lang/String; = "NOTIFICATION_LOG_CARBS"

.field public static final ACTION_LOG_INSULIN:Ljava/lang/String; = "NOTIFICATION_LOG_INSULIN"

.field public static final ACTION_NOTIFICATION_ACKNOWLEDGED:Ljava/lang/String; = "NOTIFICATION_ACKNOWLEDGED"

.field public static final ACTION_NOTIFICATION_SWIPED:Ljava/lang/String; = "NOTIFICATION_SWIPED"

.field public static final ACTION_NOTIFICATION_TAPPED:Ljava/lang/String; = "NOTIFICATION_TAPPED"

.field private static final ALERT_KIND_EXTRA:Ljava/lang/String; = "AlertKind"

.field private static final INTERNALCHECK:Ljava/lang/String; = "INTERNALCHECK"

.field public static m_meterEntryCalled:Ljava/lang/Boolean;

.field private static m_onAcknowledge:Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver$OnAcknowledge;


# instance fields
.field private m_alertIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->m_meterEntryCalled:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getAcknowledgeIntent(Lcom/dexcom/cgm/h/a/a/a;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 99
    const-string v0, "NOTIFICATION_ACKNOWLEDGED"

    invoke-static {v0, p0}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->getPendingIntent(Ljava/lang/String;Lcom/dexcom/cgm/h/a/a/a;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getLogCarbsIntent(Lcom/dexcom/cgm/h/a/a/a;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 105
    const-string v0, "NOTIFICATION_LOG_CARBS"

    invoke-static {v0, p0}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->getPendingIntent(Ljava/lang/String;Lcom/dexcom/cgm/h/a/a/a;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getLogInsulinIntent(Lcom/dexcom/cgm/h/a/a/a;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 111
    const-string v0, "NOTIFICATION_LOG_INSULIN"

    invoke-static {v0, p0}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->getPendingIntent(Ljava/lang/String;Lcom/dexcom/cgm/h/a/a/a;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getMeterEntryIntent(Lcom/dexcom/cgm/h/a/a/a;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 116
    const-string v0, "NOTIFICATION_METER_ENTRY"

    invoke-static {v0, p0}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->getPendingIntent(Ljava/lang/String;Lcom/dexcom/cgm/h/a/a/a;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static getPendingIntent(Ljava/lang/String;Lcom/dexcom/cgm/h/a/a/a;)Landroid/app/PendingIntent;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, -0x1

    .line 121
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 124
    const-string v1, "NOTIFICATION_METER_ENTRY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->m_meterEntryCalled:Ljava/lang/Boolean;

    .line 128
    new-instance v1, Landroid/content/Intent;

    const/4 v3, 0x0

    const-class v4, Lcom/dexcom/cgm/activities/MeterEntryActivity;

    invoke-direct {v1, p0, v3, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    const-string v3, "LAUNCHED_FROM_NOTIFICATION"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/a/a;->toInternal()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v3

    invoke-static {v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logAlertAcknowledged(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 140
    :cond_0
    if-eqz p1, :cond_1

    .line 142
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/a/a;->ordinal()I

    move-result v0

    .line 140
    :cond_1
    invoke-static {v2, v0, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    .line 148
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    const-string v4, "AlertKind"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/a/a;->name()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    if-eqz p1, :cond_3

    .line 152
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/a/a;->ordinal()I

    move-result v0

    .line 150
    :cond_3
    invoke-static {v2, v0, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_4
    const-string v1, ""

    goto :goto_1
.end method

.method public static getSwipeIntent(Lcom/dexcom/cgm/h/a/a/a;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 89
    const-string v0, "NOTIFICATION_SWIPED"

    invoke-static {v0, p0}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->getPendingIntent(Ljava/lang/String;Lcom/dexcom/cgm/h/a/a/a;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getTapIntent(Lcom/dexcom/cgm/h/a/a/a;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 94
    const-string v0, "NOTIFICATION_TAPPED"

    invoke-static {v0, p0}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->getPendingIntent(Ljava/lang/String;Lcom/dexcom/cgm/h/a/a/a;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private onReceiveAcknowledge(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 245
    const-string v0, "AlertKind"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v0}, Lcom/dexcom/cgm/h/a/a/a;->valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v1

    .line 247
    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->m_onAcknowledge:Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver$OnAcknowledge;

    invoke-virtual {v2, v1}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver$OnAcknowledge;->onAcknowledge(Lcom/dexcom/cgm/h/a/a/a;)V

    .line 248
    invoke-static {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logAlertAcknowledged(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 249
    return-void
.end method

.method private onReceiveLogCarbs(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/dexcom/cgm/i/a/a/c;->Carbs:Lcom/dexcom/cgm/i/a/a/c;

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->onReceiveLogEvent(Landroid/content/Intent;Lcom/dexcom/cgm/i/a/a/c;)V

    .line 254
    return-void
.end method

.method private onReceiveLogEvent(Landroid/content/Intent;Lcom/dexcom/cgm/i/a/a/c;)V
    .locals 4

    .prologue
    .line 263
    new-instance v0, Lcom/dexcom/cgm/i/a/d;

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->EventSubTypeNone:Lcom/dexcom/cgm/i/a/a/b;

    .line 265
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/dexcom/cgm/i/a/d;-><init>(Lcom/dexcom/cgm/i/a/a/c;Lcom/dexcom/cgm/i/a/a/b;Lcom/dexcom/cgm/k/j;I)V

    .line 267
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/i/a;->setUserEvent(Lcom/dexcom/cgm/i/a/d;)V

    .line 270
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->onReceiveAcknowledge(Landroid/content/Intent;)V

    .line 271
    return-void
.end method

.method private onReceiveLogInsulin(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lcom/dexcom/cgm/i/a/a/c;->Insulin:Lcom/dexcom/cgm/i/a/a/c;

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->onReceiveLogEvent(Landroid/content/Intent;Lcom/dexcom/cgm/i/a/a/c;)V

    .line 259
    return-void
.end method

.method private onReceiveSwipe()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->m_alertIntent:Landroid/content/Intent;

    const-string v1, "AlertKind"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logAlertCancelled(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 209
    return-void
.end method

.method private onReceiveTap(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 213
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 219
    const-string v2, "AlertKind"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-static {v2}, Lcom/dexcom/cgm/h/a/a/a;->valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v3

    .line 221
    sget-object v4, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver$1;->$SwitchMap$com$dexcom$cgm$presentation$model$enums$DexAlertKind:[I

    invoke-virtual {v3}, Lcom/dexcom/cgm/h/a/a/a;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 232
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 233
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 234
    const-string v4, "INTERNALCHECK"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 238
    :goto_0
    invoke-static {v2}, Lcom/dexcom/cgm/model/enums/AlertKind;->valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v2

    invoke-static {v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logAlertAcknowledged(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 239
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 240
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 241
    return-void

    .line 227
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/dexcom/cgm/activities/MeterEntryActivity;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    const-string v3, "LAUNCHED_FROM_NOTIFICATION"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setup(Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver$OnAcknowledge;)V
    .locals 3

    .prologue
    .line 67
    sput-object p0, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->m_onAcknowledge:Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver$OnAcknowledge;

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    const-string v1, "NOTIFICATION_SWIPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v1, "NOTIFICATION_TAPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v1, "NOTIFICATION_ACKNOWLEDGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "NOTIFICATION_LOG_CARBS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "NOTIFICATION_LOG_INSULIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "NOTIFICATION_METER_ENTRY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;

    invoke-direct {v2}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;-><init>()V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 161
    iput-object p2, p0, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->m_alertIntent:Landroid/content/Intent;

    .line 164
    const-string v0, "AlertKind"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/dexcom/cgm/h/a/a/a;->valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->fromAlertKind(Lcom/dexcom/cgm/h/a/a/a;)Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    .line 170
    invoke-static {v0}, Lcom/dexcom/cgm/activities/notifications/NotificationManager;->clearNotification(Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;)V

    .line 172
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->remutePhoneImmediately()V

    .line 179
    invoke-static {}, Lcom/dexcom/cgm/activities/notifications/VolumeManipulator;->stopSound()V

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 203
    :goto_1
    return-void

    .line 181
    :sswitch_0
    const-string v2, "NOTIFICATION_SWIPED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "NOTIFICATION_TAPPED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "NOTIFICATION_METER_ENTRY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "NOTIFICATION_ACKNOWLEDGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "NOTIFICATION_LOG_CARBS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "NOTIFICATION_LOG_INSULIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    .line 184
    :pswitch_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->onReceiveSwipe()V

    goto :goto_1

    .line 188
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->onReceiveTap(Landroid/content/Intent;)V

    goto :goto_1

    .line 191
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->onReceiveAcknowledge(Landroid/content/Intent;)V

    goto :goto_1

    .line 194
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->onReceiveLogCarbs(Landroid/content/Intent;)V

    goto :goto_1

    .line 197
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/activities/notifications/NotificationCallbackReceiver;->onReceiveLogInsulin(Landroid/content/Intent;)V

    goto :goto_1

    .line 181
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6864a5c2 -> :sswitch_0
        -0x67e2a3a0 -> :sswitch_1
        0xa520fd6 -> :sswitch_4
        0xd1f681c -> :sswitch_3
        0xeabfaa8 -> :sswitch_2
        0x11b87f5b -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
