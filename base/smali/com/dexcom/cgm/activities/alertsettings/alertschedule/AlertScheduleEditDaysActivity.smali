.class public Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;
.super Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditBaseActivity;
.source "AlertScheduleEditDaysActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditBaseActivity;-><init>()V

    return-void
.end method

.method private isSwitchChecked(I)Z
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListSwitchView;

    .line 43
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->isSwitchChecked()Z

    move-result v0

    return v0
.end method

.method private setSwitchChecked(IZ)V
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListSwitchView;

    .line 37
    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->getAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;-><init>(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 50
    sget v1, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_monday:I

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->isSwitchChecked(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setMondayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 51
    sget v1, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_tuesday:I

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->isSwitchChecked(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setTuesdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 52
    sget v1, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_wednesday:I

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->isSwitchChecked(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setWednesdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 53
    sget v1, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_thursday:I

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->isSwitchChecked(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setThursdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 54
    sget v1, Lcom/dexcom/cgm/activities/R$id;->schedule_day_friday:I

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->isSwitchChecked(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setFridayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 55
    sget v1, Lcom/dexcom/cgm/activities/R$id;->schedule_day_saturday:I

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->isSwitchChecked(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setSaturdayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 56
    sget v1, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_sunday:I

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->isSwitchChecked(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setSundayEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    .line 57
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->build()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->saveAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 59
    invoke-super {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditBaseActivity;->onBackPressed()V

    .line 60
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_schedule_days_settings:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->getAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    .line 25
    sget v1, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_monday:I

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isMondayEnabled()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->setSwitchChecked(IZ)V

    .line 26
    sget v1, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_tuesday:I

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isTuesdayEnabled()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->setSwitchChecked(IZ)V

    .line 27
    sget v1, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_wednesday:I

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isWednesdayEnabled()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->setSwitchChecked(IZ)V

    .line 28
    sget v1, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_thursday:I

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isThursdayEnabled()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->setSwitchChecked(IZ)V

    .line 29
    sget v1, Lcom/dexcom/cgm/activities/R$id;->schedule_day_friday:I

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isFridayEnabled()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->setSwitchChecked(IZ)V

    .line 30
    sget v1, Lcom/dexcom/cgm/activities/R$id;->schedule_day_saturday:I

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isSaturdayEnabled()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->setSwitchChecked(IZ)V

    .line 31
    sget v1, Lcom/dexcom/cgm/activities/R$id;->switch_schedule_day_sunday:I

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isSundayEnabled()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditDaysActivity;->setSwitchChecked(IZ)V

    .line 32
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditBaseActivity;->onPause()V

    .line 66
    invoke-static {}, Lcom/dexcom/cgm/activities/SettingsUpdatedEventHandler;->onSettingsUpdated()V

    .line 67
    return-void
.end method
