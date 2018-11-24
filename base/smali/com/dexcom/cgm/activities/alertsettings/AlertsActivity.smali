.class public Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;
.super Lcom/dexcom/cgm/activities/BaseActivity;
.source "AlertsActivity.java"


# static fields
.field public static INTENT_EXTRA_ALERT_SCHEDULE_INDEX:Ljava/lang/String;


# instance fields
.field private m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

.field private m_fallRate:Lcom/dexcom/cgm/activities/DexListAlertView;

.field private m_persistentNotification:Lcom/dexcom/cgm/activities/DexListNavView;

.field private m_riseRate:Lcom/dexcom/cgm/activities/DexListAlertView;

.field private m_scheduleEnabled:Z

.field private m_scheduledFallRate:Lcom/dexcom/cgm/activities/DexListAlertView;

.field private m_scheduledRiseRate:Lcom/dexcom/cgm/activities/DexListAlertView;

.field private m_scheduledUrgentLow:Lcom/dexcom/cgm/activities/DexListAlertView;

.field private m_scheduledUserHigh:Lcom/dexcom/cgm/activities/DexListAlertView;

.field private m_scheduledUserLow:Lcom/dexcom/cgm/activities/DexListAlertView;

.field private m_signalLoss:Lcom/dexcom/cgm/activities/DexListAlertView;

.field private m_urgentLow:Lcom/dexcom/cgm/activities/DexListAlertView;

.field private m_userHigh:Lcom/dexcom/cgm/activities/DexListAlertView;

.field private m_userLow:Lcom/dexcom/cgm/activities/DexListAlertView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "alertScheduleIndex"

    sput-object v0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->INTENT_EXTRA_ALERT_SCHEDULE_INDEX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/BaseActivity;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduleEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;)Lcom/dexcom/cgm/model/DexAlertSchedule;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;Lcom/dexcom/cgm/model/DexAlertSchedule;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->updateAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    return-void
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->resetAndRefreshAlertSettings()V

    return-void
.end method

.method private buildHelpDialog(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 501
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_alerts_help_tip:I

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$7;

    invoke-direct {v2, p0, p1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$7;-><init>(Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 511
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 512
    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 514
    return-void
.end method

.method private formatDaysString(Lcom/dexcom/cgm/model/DexAlertSchedule;)Ljava/lang/String;
    .locals 13

    .prologue
    .line 566
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isMondayEnabled()Z

    move-result v5

    .line 567
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isTuesdayEnabled()Z

    move-result v6

    .line 568
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isWednesdayEnabled()Z

    move-result v7

    .line 569
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isThursdayEnabled()Z

    move-result v8

    .line 570
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isFridayEnabled()Z

    move-result v9

    .line 571
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isSaturdayEnabled()Z

    move-result v10

    .line 572
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isSundayEnabled()Z

    move-result v11

    .line 574
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    if-eqz v7, :cond_1

    if-eqz v8, :cond_1

    and-int v0, v9, v10

    if-eqz v0, :cond_1

    if-eqz v11, :cond_1

    const/4 v0, 0x1

    move v4, v0

    .line 575
    :goto_0
    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    if-nez v10, :cond_2

    if-nez v11, :cond_2

    const/4 v0, 0x1

    move v3, v0

    .line 576
    :goto_1
    if-nez v5, :cond_5

    if-nez v6, :cond_3

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    if-nez v7, :cond_4

    const/4 v0, 0x1

    :goto_3
    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    if-nez v8, :cond_5

    if-nez v9, :cond_5

    if-eqz v10, :cond_5

    if-eqz v11, :cond_5

    const/4 v0, 0x1

    move v2, v0

    .line 577
    :goto_4
    if-nez v5, :cond_8

    if-nez v6, :cond_6

    const/4 v0, 0x1

    move v1, v0

    :goto_5
    if-nez v7, :cond_7

    const/4 v0, 0x1

    :goto_6
    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    if-nez v8, :cond_8

    if-nez v9, :cond_8

    if-nez v10, :cond_8

    if-nez v11, :cond_8

    const/4 v0, 0x1

    .line 579
    :goto_7
    if-eqz v4, :cond_9

    .line 581
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->schedule_every_day:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 609
    :cond_0
    :goto_8
    return-object v0

    .line 574
    :cond_1
    const/4 v0, 0x0

    move v4, v0

    goto :goto_0

    .line 575
    :cond_2
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    .line 576
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    move v2, v0

    goto :goto_4

    .line 577
    :cond_6
    const/4 v0, 0x0

    move v1, v0

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    .line 583
    :cond_9
    if-eqz v2, :cond_a

    .line 585
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->schedule_weekends:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 587
    :cond_a
    if-eqz v3, :cond_b

    .line 589
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->schedule_weekdays:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 591
    :cond_b
    if-eqz v0, :cond_c

    .line 593
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->schedule_no_days_selected:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 599
    :cond_c
    const/4 v0, 0x7

    new-array v2, v0, [Z

    const/4 v0, 0x0

    aput-boolean v5, v2, v0

    const/4 v0, 0x1

    aput-boolean v6, v2, v0

    const/4 v0, 0x2

    aput-boolean v7, v2, v0

    const/4 v0, 0x3

    aput-boolean v8, v2, v0

    const/4 v0, 0x4

    aput-boolean v9, v2, v0

    const/4 v0, 0x5

    aput-boolean v10, v2, v0

    const/4 v0, 0x6

    aput-boolean v11, v2, v0

    .line 601
    const-string v1, ""

    .line 602
    const/4 v0, 0x0

    move v12, v0

    move-object v0, v1

    move v1, v12

    :goto_9
    const/4 v3, 0x7

    if-ge v1, v3, :cond_0

    .line 604
    aget-boolean v3, v2, v1

    if-eqz v3, :cond_d

    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/dexcom/a/a/c;->values$34b7e0()[I

    move-result-object v3

    aget v3, v3, v1

    invoke-static {v3}, Lcom/dexcom/a/a/a;->getShortenedDayOfWeek$3469b3db(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private formatTimeString(Lcom/dexcom/cgm/model/DexAlertSchedule;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getStartTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/dexcom/a/a/a;->formatTimeOfDay(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 617
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getEndTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/dexcom/a/a/a;->formatTimeOfDay(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEgvUnitString(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->share_mgdl:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement:I

    invoke-virtual {p0, v3}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOnOffString(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    if-eqz p1, :cond_0

    sget v0, Lcom/dexcom/cgm/activities/R$string;->alert_text_on:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/dexcom/cgm/activities/R$string;->alert_text_off:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private loadSettings()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v4

    .line 157
    invoke-interface {v4, v2}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v5

    .line 158
    invoke-interface {v4, v2}, Lcom/dexcom/cgm/i/a;->getAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v6

    .line 160
    sget v0, Lcom/dexcom/cgm/activities/R$id;->default_always_sound:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListSwitchView;

    .line 161
    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchCallback(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 162
    invoke-virtual {v6}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isAlwaysSoundEnabled()Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 163
    invoke-virtual {v6}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isAlwaysSoundEnabled()Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getOnOffString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setEndText(Ljava/lang/String;)V

    .line 165
    new-instance v6, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$2;

    invoke-direct {v6, p0, v4}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$2;-><init>(Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;Lcom/dexcom/cgm/i/a;)V

    invoke-virtual {v0, v6}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchCallback(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_urgentLow:Lcom/dexcom/cgm/activities/DexListAlertView;

    invoke-virtual {v5}, Lcom/dexcom/cgm/i/a/a;->getUrgentLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getEgvUnitString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/dexcom/cgm/activities/DexListAlertView;->setEndText(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v5}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_userLow:Lcom/dexcom/cgm/activities/DexListAlertView;

    invoke-virtual {v5}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getEgvUnitString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/dexcom/cgm/activities/DexListAlertView;->setEndText(Ljava/lang/String;)V

    .line 187
    :goto_0
    invoke-virtual {v5}, Lcom/dexcom/cgm/i/a/a;->getUserHigh()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_userHigh:Lcom/dexcom/cgm/activities/DexListAlertView;

    invoke-virtual {v5}, Lcom/dexcom/cgm/i/a/a;->getUserHigh()Lcom/dexcom/cgm/i/a/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getEgvUnitString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/dexcom/cgm/activities/DexListAlertView;->setEndText(Ljava/lang/String;)V

    .line 195
    :goto_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_riseRate:Lcom/dexcom/cgm/activities/DexListAlertView;

    invoke-virtual {v5}, Lcom/dexcom/cgm/i/a/a;->getRiseRate()Lcom/dexcom/cgm/i/a/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getOnOffString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/dexcom/cgm/activities/DexListAlertView;->setEndText(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_fallRate:Lcom/dexcom/cgm/activities/DexListAlertView;

    invoke-virtual {v5}, Lcom/dexcom/cgm/i/a/a;->getFallRate()Lcom/dexcom/cgm/i/a/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getOnOffString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/dexcom/cgm/activities/DexListAlertView;->setEndText(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_signalLoss:Lcom/dexcom/cgm/activities/DexListAlertView;

    invoke-virtual {v5}, Lcom/dexcom/cgm/i/a/a;->getNoData()Lcom/dexcom/cgm/i/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getOnOffString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/dexcom/cgm/activities/DexListAlertView;->setEndText(Ljava/lang/String;)V

    .line 199
    invoke-interface {v4}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getPersistentNotification()Z

    move-result v0

    .line 201
    iget-object v5, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_persistentNotification:Lcom/dexcom/cgm/activities/DexListNavView;

    if-eqz v0, :cond_4

    sget v0, Lcom/dexcom/cgm/activities/R$string;->alert_text_on:I

    .line 202
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_2
    invoke-virtual {v5, v0}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 203
    invoke-interface {v4, v1}, Lcom/dexcom/cgm/i/a;->getAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v5

    .line 204
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isAlertScheduleEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduleEnabled:Z

    .line 206
    sget v0, Lcom/dexcom/cgm/activities/R$id;->schedule_enabled:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListSwitchView;

    .line 207
    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchCallback(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 208
    iget-boolean v6, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduleEnabled:Z

    invoke-virtual {v0, v6}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 209
    iget-boolean v6, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduleEnabled:Z

    invoke-direct {p0, v6}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getOnOffString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setEndText(Ljava/lang/String;)V

    .line 210
    new-instance v6, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$3;

    invoke-direct {v6, p0, v4}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$3;-><init>(Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;Lcom/dexcom/cgm/i/a;)V

    invoke-virtual {v0, v6}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchCallback(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 228
    sget v0, Lcom/dexcom/cgm/activities/R$id;->schedule_always_sound:I

    iget-boolean v6, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduleEnabled:Z

    invoke-direct {p0, v0, v6}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setViewVisibility(IZ)V

    .line 229
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_name:I

    iget-boolean v6, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduleEnabled:Z

    invoke-direct {p0, v0, v6}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setViewVisibility(IZ)V

    .line 230
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_time:I

    iget-boolean v6, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduleEnabled:Z

    invoke-direct {p0, v0, v6}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setViewVisibility(IZ)V

    .line 231
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_days:I

    iget-boolean v6, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduleEnabled:Z

    invoke-direct {p0, v0, v6}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setViewVisibility(IZ)V

    .line 232
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_urgent_low:I

    iget-boolean v6, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduleEnabled:Z

    invoke-direct {p0, v0, v6}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setViewVisibility(IZ)V

    .line 233
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_low:I

    iget-boolean v6, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduleEnabled:Z

    invoke-direct {p0, v0, v6}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setViewVisibility(IZ)V

    .line 234
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_high:I

    iget-boolean v6, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduleEnabled:Z

    invoke-direct {p0, v0, v6}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setViewVisibility(IZ)V

    .line 235
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_rise_rate:I

    iget-boolean v6, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduleEnabled:Z

    invoke-direct {p0, v0, v6}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setViewVisibility(IZ)V

    .line 236
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_fall_rate:I

    iget-boolean v6, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduleEnabled:Z

    invoke-direct {p0, v0, v6}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setViewVisibility(IZ)V

    .line 239
    sget v0, Lcom/dexcom/cgm/activities/R$id;->alert_schedule_description:I

    iget-boolean v6, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduleEnabled:Z

    if-nez v6, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setViewVisibility(IZ)V

    .line 240
    sget v0, Lcom/dexcom/cgm/activities/R$id;->persistent_notification_space:I

    iget-boolean v2, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduleEnabled:Z

    invoke-direct {p0, v0, v2}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setViewVisibility(IZ)V

    .line 243
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduleEnabled:Z

    if-eqz v0, :cond_1

    .line 245
    sget v2, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_name:I

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getScheduleName()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-direct {p0, v2, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setEndText(ILjava/lang/String;)V

    .line 246
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_time:I

    invoke-direct {p0, v5}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->formatTimeString(Lcom/dexcom/cgm/model/DexAlertSchedule;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setEndText(ILjava/lang/String;)V

    .line 247
    invoke-direct {p0, v5}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->formatDaysString(Lcom/dexcom/cgm/model/DexAlertSchedule;)Ljava/lang/String;

    move-result-object v2

    .line 248
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_days:I

    invoke-direct {p0, v0, v2}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setEndText(ILjava/lang/String;)V

    .line 250
    sget v0, Lcom/dexcom/cgm/activities/R$id;->schedule_always_sound:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListSwitchView;

    .line 251
    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchCallback(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 252
    invoke-virtual {v5}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isAlwaysSoundEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 254
    invoke-virtual {v5}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isAlwaysSoundEnabled()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getOnOffString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setEndText(Ljava/lang/String;)V

    .line 255
    new-instance v3, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$4;

    invoke-direct {v3, p0, v4}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$4;-><init>(Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;Lcom/dexcom/cgm/i/a;)V

    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchCallback(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 266
    invoke-interface {v4, v1}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    .line 267
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_low:I

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setEndTextToThresholdOrOff(ILcom/dexcom/cgm/i/a/b;)V

    .line 268
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_high:I

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUserHigh()Lcom/dexcom/cgm/i/a/b;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setEndTextToThresholdOrOff(ILcom/dexcom/cgm/i/a/b;)V

    .line 269
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_urgent_low:I

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUrgentLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setEndTextToThresholdOrOff(ILcom/dexcom/cgm/i/a/b;)V

    .line 270
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_rise_rate:I

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getRiseRate()Lcom/dexcom/cgm/i/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getOnOffString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setEndText(ILjava/lang/String;)V

    .line 271
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_fall_rate:I

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getFallRate()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getOnOffString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setEndText(ILjava/lang/String;)V

    .line 274
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_days:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    .line 275
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/dexcom/cgm/activities/R$string;->schedule_no_days_selected:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 278
    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_red:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndTextColor(I)V

    .line 287
    :cond_1
    :goto_5
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;-><init>(Landroid/content/Context;)V

    .line 290
    return-void

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_userLow:Lcom/dexcom/cgm/activities/DexListAlertView;

    sget v6, Lcom/dexcom/cgm/activities/R$string;->alert_text_off:I

    invoke-virtual {p0, v6}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/dexcom/cgm/activities/DexListAlertView;->setEndText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_userHigh:Lcom/dexcom/cgm/activities/DexListAlertView;

    sget v6, Lcom/dexcom/cgm/activities/R$string;->alert_text_off:I

    invoke-virtual {p0, v6}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/dexcom/cgm/activities/DexListAlertView;->setEndText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 202
    :cond_4
    sget v0, Lcom/dexcom/cgm/activities/R$string;->alert_text_off:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_5
    move v0, v2

    .line 204
    goto/16 :goto_3

    :cond_6
    move-object v0, v3

    .line 245
    goto/16 :goto_4

    .line 283
    :cond_7
    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_gloomy_gray:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndTextColor(I)V

    goto :goto_5
.end method

.method private resetAndRefreshAlertSettings()V
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lcom/dexcom/cgm/h/a/a/a;->UrgentLowGlucose:Lcom/dexcom/cgm/h/a/a/a;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->updateAlertSetting(Lcom/dexcom/cgm/h/a/a/a;)V

    .line 342
    sget-object v0, Lcom/dexcom/cgm/h/a/a/a;->UserSelectLowGlucose:Lcom/dexcom/cgm/h/a/a/a;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->updateAlertSetting(Lcom/dexcom/cgm/h/a/a/a;)V

    .line 343
    sget-object v0, Lcom/dexcom/cgm/h/a/a/a;->UserSelectHighGlucose:Lcom/dexcom/cgm/h/a/a/a;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->updateAlertSetting(Lcom/dexcom/cgm/h/a/a/a;)V

    .line 344
    sget-object v0, Lcom/dexcom/cgm/h/a/a/a;->RateUpAlarm:Lcom/dexcom/cgm/h/a/a/a;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->updateAlertSetting(Lcom/dexcom/cgm/h/a/a/a;)V

    .line 345
    sget-object v0, Lcom/dexcom/cgm/h/a/a/a;->RateDownAlarm:Lcom/dexcom/cgm/h/a/a/a;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->updateAlertSetting(Lcom/dexcom/cgm/h/a/a/a;)V

    .line 346
    sget-object v0, Lcom/dexcom/cgm/h/a/a/a;->OutOfRange:Lcom/dexcom/cgm/h/a/a/a;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->updateAlertSetting(Lcom/dexcom/cgm/h/a/a/a;)V

    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->updateAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 349
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->resetPersistentNotificationSetting()V

    .line 350
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->loadSettings()V

    .line 351
    invoke-static {}, Lcom/dexcom/cgm/activities/SettingsUpdatedEventHandler;->onSettingsUpdated()V

    .line 352
    return-void
.end method

.method private resetPersistentNotificationSetting()V
    .locals 2

    .prologue
    .line 356
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 357
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setPersistentNotification(Z)V

    .line 358
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;-><init>(Landroid/content/Context;)V

    .line 359
    return-void
.end method

.method private setEndText(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 523
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 524
    instance-of v1, v0, Lcom/dexcom/cgm/activities/DexListNavView;

    if-eqz v1, :cond_1

    .line 526
    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    instance-of v1, v0, Lcom/dexcom/cgm/activities/DexListAlertView;

    if-eqz v1, :cond_2

    .line 530
    check-cast v0, Lcom/dexcom/cgm/activities/DexListAlertView;

    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/activities/DexListAlertView;->setEndText(Ljava/lang/String;)V

    goto :goto_0

    .line 532
    :cond_2
    instance-of v1, v0, Lcom/dexcom/cgm/activities/DexListSwitchView;

    if-eqz v1, :cond_0

    .line 534
    check-cast v0, Lcom/dexcom/cgm/activities/DexListSwitchView;

    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setEndText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setEndTextToThresholdOrOff(ILcom/dexcom/cgm/i/a/b;)V
    .locals 1

    .prologue
    .line 541
    invoke-virtual {p2}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p2}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getEgvUnitString(I)Ljava/lang/String;

    move-result-object v0

    .line 549
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setEndText(ILjava/lang/String;)V

    .line 550
    return-void

    .line 547
    :cond_0
    sget v0, Lcom/dexcom/cgm/activities/R$string;->alert_text_off:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setViewVisibility(IZ)V
    .locals 2

    .prologue
    .line 518
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 519
    return-void

    .line 518
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private startActivity(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 554
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->startActivity(Landroid/content/Intent;)V

    .line 555
    return-void
.end method

.method private startActivity(Ljava/lang/Class;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 559
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 560
    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->INTENT_EXTRA_ALERT_SCHEDULE_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 561
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->startActivity(Landroid/content/Intent;)V

    .line 562
    return-void
.end method

.method private updateAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V
    .locals 2

    .prologue
    .line 294
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setNamedValueNeedsUpload(Z)V

    .line 295
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/i/a;->updateAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 296
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->loadSettings()V

    .line 297
    invoke-static {}, Lcom/dexcom/cgm/activities/SettingsUpdatedEventHandler;->onSettingsUpdated()V

    .line 298
    return-void
.end method

.method private updateAlertSetting(Lcom/dexcom/cgm/h/a/a/a;)V
    .locals 2

    .prologue
    .line 363
    invoke-static {p1}, Lcom/dexcom/cgm/i/a/b;->getDefaultUserAlert(Lcom/dexcom/cgm/h/a/a/a;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 364
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    .line 365
    sget-object v1, Lcom/dexcom/cgm/h/a/a/a;->OutOfRange:Lcom/dexcom/cgm/h/a/a/a;

    if-eq p1, v1, :cond_0

    .line 367
    new-instance v1, Lcom/dexcom/cgm/i/a/c;

    invoke-direct {v1, v0}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    const/4 v0, 0x1

    .line 368
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/i/a/c;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 370
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    .line 372
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 146
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduleEnabled:Z

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/share/ShareService;->saveAlertSettings(Z)V

    .line 147
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getShareComponent()Lcom/dexcom/cgm/share/ShareService;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/share/ShareService;->saveAlertSchedule()V

    .line 151
    :cond_0
    invoke-super {p0}, Lcom/dexcom/cgm/activities/BaseActivity;->finish()V

    .line 152
    return-void
.end method

.method public getDisplayNameForLogger()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "Alert Settings - Main Screen"

    return-object v0
.end method

.method public onClickAlertScheduleDays(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 419
    const-class v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->startActivity(Ljava/lang/Class;)V

    .line 420
    return-void
.end method

.method public onClickAlertScheduleTime(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 413
    const-class v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->startActivity(Ljava/lang/Class;)V

    .line 414
    return-void
.end method

.method public onClickHelpFallRate(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 489
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_help_fall_rate_alert:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->buildHelpDialog(Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public onClickHelpRiseRate(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 483
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_help_rise_rate_alert:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->buildHelpDialog(Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public onClickHelpSignalLoss(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 495
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_help_signal_loss_alert:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->buildHelpDialog(Ljava/lang/String;)V

    .line 496
    return-void
.end method

.method public onClickHelpUrgentLow(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 464
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_help_urgent_low_glucose_alarm:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "55"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement:I

    .line 465
    invoke-virtual {p0, v3}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 464
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->buildHelpDialog(Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public onClickHelpUserHigh(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 477
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_help_high_glucose_alert:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->buildHelpDialog(Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public onClickHelpUserLow(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 471
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_help_low_glucose_alert:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->buildHelpDialog(Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method public onClickNavFallRate(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 401
    const-class v0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->startActivity(Ljava/lang/Class;I)V

    .line 402
    return-void
.end method

.method public onClickNavFallRateSchedule(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 449
    const-class v0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->startActivity(Ljava/lang/Class;I)V

    .line 450
    return-void
.end method

.method public onClickNavHighSchedule(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 437
    const-class v0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->startActivity(Ljava/lang/Class;I)V

    .line 438
    return-void
.end method

.method public onClickNavLowSchedule(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 431
    const-class v0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->startActivity(Ljava/lang/Class;I)V

    .line 432
    return-void
.end method

.method public onClickNavRiseRate(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 395
    const-class v0, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->startActivity(Ljava/lang/Class;I)V

    .line 396
    return-void
.end method

.method public onClickNavRiseRateSchedule(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 443
    const-class v0, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->startActivity(Ljava/lang/Class;I)V

    .line 444
    return-void
.end method

.method public onClickNavSignalLoss(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 407
    const-class v0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->startActivity(Ljava/lang/Class;I)V

    .line 408
    return-void
.end method

.method public onClickNavUrgentLow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 377
    const-class v0, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->startActivity(Ljava/lang/Class;I)V

    .line 378
    return-void
.end method

.method public onClickNavUrgentLowSchedule(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 425
    const-class v0, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->startActivity(Ljava/lang/Class;I)V

    .line 426
    return-void
.end method

.method public onClickNavUserHigh(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 389
    const-class v0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->startActivity(Ljava/lang/Class;I)V

    .line 390
    return-void
.end method

.method public onClickNavUserLow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 383
    const-class v0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->startActivity(Ljava/lang/Class;I)V

    .line 384
    return-void
.end method

.method public onClickPersistentNotifications(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 455
    const-class v0, Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->startActivity(Ljava/lang/Class;)V

    .line 456
    return-void
.end method

.method public onClickResetAlertSettings(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 314
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x1

    .line 315
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setCancelable(Ljava/lang/Boolean;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->confirm_alert_resetting_text:I

    .line 316
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->ok:I

    .line 317
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$6;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$6;-><init>(Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_cancel:I

    .line 326
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$5;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$5;-><init>(Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->reset_alert_settings_text:I

    .line 334
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 336
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/dexcom/cgm/activities/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_alerts:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->setContentView(I)V

    .line 71
    sget v0, Lcom/dexcom/cgm/activities/R$id;->urgent_low_alarm:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListAlertView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_urgentLow:Lcom/dexcom/cgm/activities/DexListAlertView;

    .line 72
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_urgentLow:Lcom/dexcom/cgm/activities/DexListAlertView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->urgent_low_alarm_help_icon_info_text:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListAlertView;->setIconContentDescription(Ljava/lang/String;)V

    .line 74
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_urgent_low:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListAlertView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduledUrgentLow:Lcom/dexcom/cgm/activities/DexListAlertView;

    .line 75
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduledUrgentLow:Lcom/dexcom/cgm/activities/DexListAlertView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->urgent_low_alarm_help_icon_info_text:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListAlertView;->setIconContentDescription(Ljava/lang/String;)V

    .line 77
    sget v0, Lcom/dexcom/cgm/activities/R$id;->user_low_alert:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListAlertView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_userLow:Lcom/dexcom/cgm/activities/DexListAlertView;

    .line 78
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_userLow:Lcom/dexcom/cgm/activities/DexListAlertView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->user_low_alert_help_icon_info_text:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListAlertView;->setIconContentDescription(Ljava/lang/String;)V

    .line 80
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_low:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListAlertView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduledUserLow:Lcom/dexcom/cgm/activities/DexListAlertView;

    .line 81
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduledUserLow:Lcom/dexcom/cgm/activities/DexListAlertView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->user_low_alert_help_icon_info_text:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListAlertView;->setIconContentDescription(Ljava/lang/String;)V

    .line 83
    sget v0, Lcom/dexcom/cgm/activities/R$id;->user_high_alert:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListAlertView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_userHigh:Lcom/dexcom/cgm/activities/DexListAlertView;

    .line 84
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_userHigh:Lcom/dexcom/cgm/activities/DexListAlertView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->user_high_alert_help_icon_info_text:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListAlertView;->setIconContentDescription(Ljava/lang/String;)V

    .line 87
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_high:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListAlertView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduledUserHigh:Lcom/dexcom/cgm/activities/DexListAlertView;

    .line 88
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduledUserHigh:Lcom/dexcom/cgm/activities/DexListAlertView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->user_high_alert_help_icon_info_text:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListAlertView;->setIconContentDescription(Ljava/lang/String;)V

    .line 90
    sget v0, Lcom/dexcom/cgm/activities/R$id;->rise_rate_alert:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListAlertView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_riseRate:Lcom/dexcom/cgm/activities/DexListAlertView;

    .line 91
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_riseRate:Lcom/dexcom/cgm/activities/DexListAlertView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->rise_rate_alert_help_icon_info_text:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListAlertView;->setIconContentDescription(Ljava/lang/String;)V

    .line 94
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_rise_rate:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListAlertView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduledRiseRate:Lcom/dexcom/cgm/activities/DexListAlertView;

    .line 95
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduledRiseRate:Lcom/dexcom/cgm/activities/DexListAlertView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->rise_rate_alert_help_icon_info_text:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListAlertView;->setIconContentDescription(Ljava/lang/String;)V

    .line 98
    sget v0, Lcom/dexcom/cgm/activities/R$id;->fall_rate_alert:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListAlertView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_fallRate:Lcom/dexcom/cgm/activities/DexListAlertView;

    .line 99
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_fallRate:Lcom/dexcom/cgm/activities/DexListAlertView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->fall_rate_alert_help_icon_info_text:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListAlertView;->setIconContentDescription(Ljava/lang/String;)V

    .line 102
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_fall_rate:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListAlertView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduledFallRate:Lcom/dexcom/cgm/activities/DexListAlertView;

    .line 103
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_scheduledFallRate:Lcom/dexcom/cgm/activities/DexListAlertView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->fall_rate_alert_help_icon_info_text:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListAlertView;->setIconContentDescription(Ljava/lang/String;)V

    .line 105
    sget v0, Lcom/dexcom/cgm/activities/R$id;->signal_loss_alert:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListAlertView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_signalLoss:Lcom/dexcom/cgm/activities/DexListAlertView;

    .line 106
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_signalLoss:Lcom/dexcom/cgm/activities/DexListAlertView;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->signal_loss_alert_help_icon_info_text:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListAlertView;->setIconContentDescription(Ljava/lang/String;)V

    .line 109
    sget v0, Lcom/dexcom/cgm/activities/R$id;->settings_persistent_notifications:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_persistentNotification:Lcom/dexcom/cgm/activities/DexListNavView;

    .line 111
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Lcom/dexcom/cgm/activities/BaseActivity;->onResume()V

    .line 123
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->loadSettings()V

    .line 124
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 125
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->getAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v1

    iput-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    .line 127
    sget v1, Lcom/dexcom/cgm/activities/R$id;->settings_schedule_name:I

    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$1;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$1;-><init>(Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getPersistentNotification()Z

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->m_persistentNotification:Lcom/dexcom/cgm/activities/DexListNavView;

    if-eqz v0, :cond_0

    sget v0, Lcom/dexcom/cgm/activities/R$string;->alert_text_on:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 141
    return-void

    .line 138
    :cond_0
    sget v0, Lcom/dexcom/cgm/activities/R$string;->alert_text_off:I

    .line 139
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
