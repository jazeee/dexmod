.class public Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;
.super Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditBaseActivity;
.source "AlertScheduleEditTimeActivity.java"


# instance fields
.field private m_endTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private m_startTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditBaseActivity;-><init>()V

    .line 25
    new-instance v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity$1;-><init>(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;->m_startTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 39
    new-instance v0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity$2;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity$2;-><init>(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;->m_endTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;->updateTimeText()V

    return-void
.end method

.method private updateTimeText()V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;->getAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getStartTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/dexcom/a/a/a;->formatTimeOfDay(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 68
    sget v0, Lcom/dexcom/cgm/activities/R$id;->id_start_time_picker:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;->getAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getEndTime()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/dexcom/a/a/a;->formatTimeOfDay(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 70
    sget v0, Lcom/dexcom/cgm/activities/R$id;->id_stop_time_picker:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method


# virtual methods
.method public onClickEndDatePicker(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;->getAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getEndTime()J

    move-result-wide v0

    .line 89
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v2

    long-to-int v3, v2

    .line 90
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    rem-long/2addr v0, v4

    long-to-int v4, v0

    .line 92
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 93
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;->m_endTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 94
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 95
    return-void
.end method

.method public onClickStartDatePicker(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;->getAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getStartTime()J

    move-result-wide v0

    .line 77
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v2

    long-to-int v3, v2

    .line 78
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    rem-long/2addr v0, v4

    long-to-int v4, v0

    .line 80
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    .line 81
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;->m_startTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 82
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 83
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_schedule_time_settings:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;->setContentView(I)V

    .line 60
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dualButtonLayout:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditTimeActivity;->updateTimeText()V

    .line 63
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 100
    invoke-super {p0}, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditBaseActivity;->onPause()V

    .line 101
    invoke-static {}, Lcom/dexcom/cgm/activities/SettingsUpdatedEventHandler;->onSettingsUpdated()V

    .line 102
    return-void
.end method
