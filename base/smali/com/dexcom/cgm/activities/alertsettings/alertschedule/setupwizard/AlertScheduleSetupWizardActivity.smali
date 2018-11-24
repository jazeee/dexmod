.class public Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AlertScheduleSetupWizardActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment$AlertScheduleFragmentHolder;


# instance fields
.field private m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

.field private m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

.field m_currentScheduleFragment:Landroid/support/v4/app/Fragment;

.field m_currentScreen:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

.field private m_endTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private m_startTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private m_toolbar:Landroid/widget/Toolbar;

.field private secondsSpent:I

.field private timerStart:J

.field vPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->timerStart:J

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->secondsSpent:I

    .line 346
    new-instance v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$2;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$2;-><init>(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_startTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 372
    new-instance v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$3;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$3;-><init>(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_endTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;)Lcom/dexcom/cgm/model/DexAlertSchedule;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    return-object v0
.end method

.method static synthetic access$002(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;Lcom/dexcom/cgm/model/DexAlertSchedule;)Lcom/dexcom/cgm/model/DexAlertSchedule;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->updateTimeText()V

    return-void
.end method

.method private areAllDaysDisabled()Z
    .locals 7

    .prologue
    .line 297
    sget v0, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_monday:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->isSwitchChecked(I)Z

    move-result v0

    .line 298
    sget v1, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_tuesday:I

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->isSwitchChecked(I)Z

    move-result v1

    .line 299
    sget v2, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_wednesday:I

    invoke-direct {p0, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->isSwitchChecked(I)Z

    move-result v2

    .line 300
    sget v3, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_thursday:I

    invoke-direct {p0, v3}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->isSwitchChecked(I)Z

    move-result v3

    .line 301
    sget v4, Lcom/dexcom/cgm/activities/R$id;->schedule_day_friday:I

    invoke-direct {p0, v4}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->isSwitchChecked(I)Z

    move-result v4

    .line 302
    sget v5, Lcom/dexcom/cgm/activities/R$id;->schedule_day_saturday:I

    invoke-direct {p0, v5}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->isSwitchChecked(I)Z

    move-result v5

    .line 303
    sget v6, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_sunday:I

    invoke-direct {p0, v6}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->isSwitchChecked(I)Z

    move-result v6

    .line 305
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAlertThresholdValue(I)I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScheduleFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;

    .line 286
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;->getThresholdValues()[I

    move-result-object v0

    aget v0, v0, p1

    return v0
.end method

.method private getCurrentTimeOfDay()J
    .locals 6

    .prologue
    .line 316
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 317
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private initializeAlertSchedule()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 572
    new-instance v0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;-><init>(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 574
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setScheduleName(Ljava/lang/String;)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 575
    invoke-virtual {v0, v6, v7}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setEndTime(J)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 576
    invoke-virtual {v0, v6, v7}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setStartTime(J)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 577
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/dexcom/cgm/i/a;->getAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isAlwaysSoundEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setAlwaysSoundEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 579
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    .line 580
    invoke-interface {v1, v3}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v1

    .line 581
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    .line 582
    new-instance v2, Lcom/dexcom/cgm/i/a/c;

    invoke-direct {v2, v1}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    .line 583
    invoke-virtual {v2, v4}, Lcom/dexcom/cgm/i/a/c;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/i/a/c;

    move-result-object v1

    .line 584
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    .line 585
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    .line 587
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    .line 588
    invoke-interface {v1, v3}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v1

    .line 589
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a;->getUserHigh()Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    .line 590
    new-instance v2, Lcom/dexcom/cgm/i/a/c;

    invoke-direct {v2, v1}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    .line 591
    invoke-virtual {v2, v4}, Lcom/dexcom/cgm/i/a/c;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/i/a/c;

    move-result-object v1

    .line 592
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    .line 593
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    .line 596
    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setMondayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 597
    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setTuesdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 598
    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setWednesdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 599
    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setThursdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 600
    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setFridayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 601
    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setSaturdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 602
    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setSundayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 604
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->build()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    .line 605
    return-void
.end method

.method private isSwitchChecked(I)Z
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListSwitchView;

    .line 311
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->isSwitchChecked()Z

    move-result v0

    return v0
.end method

.method private isSwitchEnabled(I)Z
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListSwitchView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->isSwitchChecked()Z

    move-result v0

    return v0
.end method

.method private setFallAndRiseAlertProperties(Lcom/dexcom/cgm/i/a/b;)V
    .locals 2

    .prologue
    .line 534
    new-instance v0, Lcom/dexcom/cgm/i/a/c;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    const/4 v1, 0x1

    .line 535
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/i/a/c;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 536
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 537
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    .line 538
    return-void
.end method

.method private setScheduleAlertProperties(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;Lcom/dexcom/cgm/i/a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 511
    sget-object v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$4;->$SwitchMap$com$dexcom$cgm$activities$alertsettings$alertschedule$setupwizard$AlertScheduleSetupWizardActivity$AlertProperties:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 530
    :goto_0
    return-void

    .line 514
    :pswitch_0
    invoke-interface {p2, v2}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getFallRate()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 515
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->setFallAndRiseAlertProperties(Lcom/dexcom/cgm/i/a/b;)V

    goto :goto_0

    .line 518
    :pswitch_1
    invoke-interface {p2, v2}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getRiseRate()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 519
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->setFallAndRiseAlertProperties(Lcom/dexcom/cgm/i/a/b;)V

    goto :goto_0

    .line 522
    :pswitch_2
    invoke-interface {p2, v2}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUrgentLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 523
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->setUrgentLowAlertProperties(Lcom/dexcom/cgm/i/a/b;)V

    goto :goto_0

    .line 526
    :pswitch_3
    invoke-interface {p2, v2}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getNoData()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 527
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->setSignalLossAlertProperties(Lcom/dexcom/cgm/i/a/b;)V

    goto :goto_0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSignalLossAlertProperties(Lcom/dexcom/cgm/i/a/b;)V
    .locals 2

    .prologue
    .line 542
    new-instance v0, Lcom/dexcom/cgm/i/a/c;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    const/4 v1, 0x1

    .line 543
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/i/a/c;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 544
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 545
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    .line 546
    return-void
.end method

.method private setUrgentLowAlertProperties(Lcom/dexcom/cgm/i/a/b;)V
    .locals 2

    .prologue
    .line 550
    new-instance v0, Lcom/dexcom/cgm/i/a/c;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    const/4 v1, 0x1

    .line 551
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/i/a/c;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 553
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    .line 554
    return-void
.end method

.method private updateTimeText()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;->START_TIME:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    if-ne v0, v1, :cond_1

    .line 324
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getStartTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/dexcom/a/a/a;->formatTimeOfDay(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 325
    sget v0, Lcom/dexcom/cgm/activities/R$id;->id_start_time_picker:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;->STOP_TIME:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    if-ne v0, v1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getEndTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/dexcom/a/a/a;->formatTimeOfDay(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 330
    sget v0, Lcom/dexcom/cgm/activities/R$id;->id_stop_time_picker:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public changeFragment()V
    .locals 5

    .prologue
    .line 152
    new-instance v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScheduleFragment:Landroid/support/v4/app/Fragment;

    .line 153
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 154
    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$4;->$SwitchMap$com$dexcom$cgm$activities$alertsettings$alertschedule$setupwizard$AlertScheduleSetupWizardActivity$AlertScheduleScreenNames:[I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 183
    :goto_0
    const-string v1, "SCREEN_NAME"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AlertScheduleSetupWizard."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    invoke-virtual {v3}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScheduleFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 186
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 187
    sget v1, Lcom/dexcom/cgm/activities/R$anim;->slide_in_right:I

    .line 188
    sget v2, Lcom/dexcom/cgm/activities/R$anim;->slide_out_left:I

    .line 189
    sget v3, Lcom/dexcom/cgm/activities/R$anim;->slide_in_left:I

    sget v4, Lcom/dexcom/cgm/activities/R$anim;->slide_out_right:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 194
    sget v1, Lcom/dexcom/cgm/activities/R$id;->schedule_fragment_container:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScheduleFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 195
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 196
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 198
    return-void

    .line 157
    :pswitch_0
    const-string v1, "LAYOUT"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_schedule_name_alert_settings:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 160
    :pswitch_1
    const-string v1, "LAYOUT"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_schedule_start_time_settings:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 163
    :pswitch_2
    const-string v1, "LAYOUT"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_schedule_stop_time_settings:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 166
    :pswitch_3
    const-string v1, "LAYOUT"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_schedule_days_settings:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 169
    :pswitch_4
    const-string v1, "LAYOUT"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_schedule_low_glucose_settings:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 172
    :pswitch_5
    const-string v1, "LAYOUT"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_schedule_high_glucose_settings:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 175
    :pswitch_6
    const-string v1, "LAYOUT"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_schedule_always_sound:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 178
    :pswitch_7
    const-string v1, "LAYOUT"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_alert_settings_summary:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 560
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 561
    sget v0, Lcom/dexcom/cgm/activities/R$anim;->stay_stationary:I

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->slide_out_right:I

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->overridePendingTransition(II)V

    .line 562
    return-void
.end method

.method public getSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;->getPrevious()Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    .line 257
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->setTitleString(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;)V

    .line 258
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CircleArray;->decrement()V

    .line 259
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 260
    return-void
.end method

.method public onClickEndDatePicker(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 363
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getEndTime()J

    move-result-wide v0

    .line 364
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v2

    long-to-int v3, v2

    .line 365
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    rem-long/2addr v0, v4

    long-to-int v4, v0

    .line 367
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 368
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_endTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 369
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 370
    return-void
.end method

.method public onClickPositive(Landroid/view/View;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 234
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;->getNext()Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    .line 235
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->setTitleString(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;)V

    .line 236
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CircleArray;->increment()V

    .line 238
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;->START_TIME:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getStartTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 240
    new-instance v0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;-><init>(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 241
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->getCurrentTimeOfDay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setStartTime(J)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 242
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->build()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    .line 250
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->changeFragment()V

    .line 251
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;->STOP_TIME:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getEndTime()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;-><init>(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 247
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->getCurrentTimeOfDay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setEndTime(J)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 248
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->build()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    goto :goto_0
.end method

.method public onClickStartDatePicker(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 337
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getStartTime()J

    move-result-wide v0

    .line 338
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v2

    long-to-int v3, v2

    .line 339
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    rem-long/2addr v0, v4

    long-to-int v4, v0

    .line 341
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 342
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_startTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 343
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 344
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_schedule_setup_wizard:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->setContentView(I)V

    .line 94
    sget v0, Lcom/dexcom/cgm/activities/R$id;->toolbar_alert_schedule:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_toolbar:Landroid/widget/Toolbar;

    .line 96
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_toolbar:Landroid/widget/Toolbar;

    new-instance v1, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$1;-><init>(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-static {}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getDefaultAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    .line 107
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->initializeAlertSchedule()V

    .line 109
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->vPager:Landroid/support/v4/view/ViewPager;

    .line 110
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->vPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 112
    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 117
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;->SCHEDULE_NAME:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    .line 118
    new-instance v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleFragment;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScheduleFragment:Landroid/support/v4/app/Fragment;

    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    const-string v1, "LAYOUT"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->fragment_schedule_name_alert_settings:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const-string v1, "SCREEN_NAME"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AlertSchedule"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    invoke-virtual {v3}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScheduleFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$id;->schedule_fragment_container:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScheduleFragment:Landroid/support/v4/app/Fragment;

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 126
    sget v0, Lcom/dexcom/cgm/activities/R$id;->circleArray:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/CircleArray;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

    .line 127
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_circleArray:Lcom/dexcom/cgm/activities/CircleArray;

    invoke-static {}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;->getNumberOfScreens()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/CircleArray;->setNumCircles(I)V

    .line 129
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->timerStart:J

    sub-long/2addr v0, v2

    .line 143
    iget v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->secondsSpent:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->secondsSpent:I

    .line 144
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->secondsSpent:I

    .line 146
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setScheduleSetupWizardTimeSpent(I)V

    .line 147
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 148
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 277
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 279
    invoke-static {}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;->values()[Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    move-result-object v0

    const-string v1, "screen_num"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    .line 280
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 134
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->timerStart:J

    .line 136
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->scheduleSetupWizardTimeSpent()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->secondsSpent:I

    .line 137
    return-void
.end method

.method public onSaveAlwaysSound(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 476
    sget v0, Lcom/dexcom/cgm/activities/R$id;->schedule_setup_always_sound_switch:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListSwitchView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->isSwitchChecked()Z

    move-result v0

    .line 477
    new-instance v1, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;-><init>(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 479
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setAlwaysSoundEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 481
    invoke-virtual {v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->build()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    .line 483
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->onClickPositive(Landroid/view/View;)V

    .line 484
    return-void
.end method

.method public onSaveDays(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->areAllDaysDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 419
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;-><init>(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 421
    sget v1, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_monday:I

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->isSwitchEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setMondayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 422
    sget v1, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_tuesday:I

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->isSwitchEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setTuesdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 423
    sget v1, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_wednesday:I

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->isSwitchEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setWednesdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 424
    sget v1, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_thursday:I

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->isSwitchEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setThursdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 425
    sget v1, Lcom/dexcom/cgm/activities/R$id;->schedule_day_friday:I

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->isSwitchEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setFridayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 426
    sget v1, Lcom/dexcom/cgm/activities/R$id;->schedule_day_saturday:I

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->isSwitchEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setSaturdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 427
    sget v1, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_sunday:I

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->isSwitchEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setSundayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 429
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->build()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    .line 431
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->onClickPositive(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onSaveEndTime(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->onClickPositive(Landroid/view/View;)V

    .line 411
    return-void
.end method

.method public onSaveHigh(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 457
    sget v0, Lcom/dexcom/cgm/activities/R$id;->number_picker:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 458
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 459
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->getAlertThresholdValue(I)I

    move-result v0

    .line 461
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    .line 462
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/a;->getUserHigh()Lcom/dexcom/cgm/i/a/b;

    move-result-object v2

    .line 463
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/i/a/a;->getUserHigh()Lcom/dexcom/cgm/i/a/b;

    move-result-object v3

    .line 464
    new-instance v4, Lcom/dexcom/cgm/i/a/c;

    invoke-direct {v4, v3}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    .line 465
    invoke-virtual {v4, v0}, Lcom/dexcom/cgm/i/a/c;->setThreshold(I)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 466
    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/b;->getAlertScheduleIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/i/a/c;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 468
    invoke-interface {v1, v0}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->onClickPositive(Landroid/view/View;)V

    .line 470
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 271
    const-string v0, "screen_num"

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScreen:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    return-void
.end method

.method public onSaveLow(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 438
    sget v0, Lcom/dexcom/cgm/activities/R$id;->number_picker:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 439
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 440
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->getAlertThresholdValue(I)I

    move-result v0

    .line 442
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    .line 443
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v2

    .line 444
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v3

    .line 445
    new-instance v4, Lcom/dexcom/cgm/i/a/c;

    invoke-direct {v4, v3}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    .line 446
    invoke-virtual {v4, v0}, Lcom/dexcom/cgm/i/a/c;->setThreshold(I)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 447
    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/b;->getAlertScheduleIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/i/a/c;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 449
    invoke-interface {v1, v0}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    .line 450
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->onClickPositive(Landroid/view/View;)V

    .line 451
    return-void
.end method

.method public onSaveName(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 390
    sget v0, Lcom/dexcom/cgm/activities/R$id;->id_schedule_name_enter:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    :goto_0
    return-void

    .line 394
    :cond_0
    new-instance v1, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;-><init>(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setScheduleName(Ljava/lang/String;)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->build()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    .line 398
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->onClickPositive(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onSaveSchedule(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 489
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 490
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_alertSchedule:Lcom/dexcom/cgm/model/DexAlertSchedule;

    invoke-interface {v1, v2}, Lcom/dexcom/cgm/i/a;->updateAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 491
    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;->FALLRATE:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    invoke-direct {p0, v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->setScheduleAlertProperties(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;Lcom/dexcom/cgm/i/a;)V

    .line 492
    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;->RISERATE:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    invoke-direct {p0, v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->setScheduleAlertProperties(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;Lcom/dexcom/cgm/i/a;)V

    .line 493
    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;->URGENTLOW:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    invoke-direct {p0, v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->setScheduleAlertProperties(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;Lcom/dexcom/cgm/i/a;)V

    .line 494
    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;->SIGNALLOSS:Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;

    invoke-direct {p0, v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->setScheduleAlertProperties(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertProperties;Lcom/dexcom/cgm/i/a;)V

    .line 495
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setNamedValueNeedsUpload(Z)V

    .line 496
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->finish()V

    .line 497
    return-void
.end method

.method public onSaveStartTime(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->onClickPositive(Landroid/view/View;)V

    .line 405
    return-void
.end method

.method public setCurrentFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_currentScheduleFragment:Landroid/support/v4/app/Fragment;

    .line 266
    return-void
.end method

.method public setTitleString(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;)V
    .locals 2

    .prologue
    .line 202
    sget-object v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$4;->$SwitchMap$com$dexcom$cgm$activities$alertsettings$alertschedule$setupwizard$AlertScheduleSetupWizardActivity$AlertScheduleScreenNames:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity$AlertScheduleScreenNames;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 229
    :goto_0
    return-void

    .line 205
    :pswitch_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_toolbar:Landroid/widget/Toolbar;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->schedule_name:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 208
    :pswitch_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_toolbar:Landroid/widget/Toolbar;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->schedule_start_time:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 211
    :pswitch_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_toolbar:Landroid/widget/Toolbar;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->stop_time:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 214
    :pswitch_3
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_toolbar:Landroid/widget/Toolbar;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->alert_schedule_days:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 217
    :pswitch_4
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_toolbar:Landroid/widget/Toolbar;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->alert_settings_text_low_alert:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 220
    :pswitch_5
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_toolbar:Landroid/widget/Toolbar;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->alert_settings_text_high_alert:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 223
    :pswitch_6
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_toolbar:Landroid/widget/Toolbar;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->alert_settings_always_sound:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 226
    :pswitch_7
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;->m_toolbar:Landroid/widget/Toolbar;

    sget v1, Lcom/dexcom/cgm/activities/R$string;->alert_schedule_summary:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
