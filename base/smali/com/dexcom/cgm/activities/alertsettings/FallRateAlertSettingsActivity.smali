.class public Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;
.super Landroid/app/Activity;
.source "FallRateAlertSettingsActivity.java"


# instance fields
.field private m_alertScheduleIndex:I

.field private m_settings:Lcom/dexcom/cgm/i/a/b;

.field private m_soundView:Lcom/dexcom/cgm/activities/DexListNavView;

.field private m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

.field private m_thresholdValues:[I

.field private m_thresholdView:Lcom/dexcom/cgm/activities/DexListNavView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    return-object v0
.end method

.method static synthetic access$002(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;Lcom/dexcom/cgm/i/a/b;)Lcom/dexcom/cgm/i/a/b;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->loadSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)Lcom/dexcom/cgm/activities/DexListSwitchView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->saveSettings()V

    return-void
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;I)I
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->getAlertThresholdValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)[I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_thresholdValues:[I

    return-object v0
.end method

.method private formatThreshold(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_meter_entry_units_per_minute:I

    .line 122
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement:I

    .line 124
    invoke-virtual {p0, v3}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 121
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAlertThresholdValue(I)I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_thresholdValues:[I

    aget v0, v0, p1

    return v0
.end method

.method private loadSettings()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_alertScheduleIndex:I

    .line 95
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getFallRate()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    .line 98
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 99
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_thresholdView:Lcom/dexcom/cgm/activities/DexListNavView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->formatThreshold(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_soundView:Lcom/dexcom/cgm/activities/DexListNavView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method private saveSettings()V
    .locals 3

    .prologue
    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 106
    const-string v0, "0"

    .line 107
    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    const-string v0, "1"

    .line 109
    :cond_0
    const-string v2, "enabled"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "theLimit"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "repeat"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/b;->getRepeatTime()Lcom/dexcom/cgm/k/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/k;->getTotalMinutes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "sound"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_AlertSet_FallDay:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/e;

    .line 115
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    .line 116
    invoke-static {}, Lcom/dexcom/cgm/activities/SettingsUpdatedEventHandler;->onSettingsUpdated()V

    .line 117
    return-void
.end method


# virtual methods
.method public onClickAlert(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 67
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->isSwitchChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 68
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClickNotifyMeBelow(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 129
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_alerts_notify_me:I

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$4;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$4;-><init>(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)V

    .line 130
    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_save:I

    .line 150
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$3;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$3;-><init>(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_cancel:I

    .line 167
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$2;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$2;-><init>(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_notify_me_below:I

    .line 175
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 177
    return-void
.end method

.method public onClickSound(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    const-string v1, "alertType"

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/enums/AlertKind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "soundName"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "alertScheduleIndex"

    iget v2, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_alertScheduleIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 186
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_fall_rate_alert_settings:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->INTENT_EXTRA_ALERT_SCHEDULE_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_alertScheduleIndex:I

    .line 52
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_alertScheduleIndex:I

    if-ne v0, v2, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent extra alertScheduleIndex must be set. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$array;->rise_fall_rate_alert_mgdl_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_thresholdValues:[I

    .line 58
    sget v0, Lcom/dexcom/cgm/activities/R$id;->fall_rate_alert_switch:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListSwitchView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    .line 59
    sget v0, Lcom/dexcom/cgm/activities/R$id;->alert_notification_text:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_thresholdView:Lcom/dexcom/cgm/activities/DexListNavView;

    .line 60
    sget v0, Lcom/dexcom/cgm/activities/R$id;->alert_sound_settings:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_soundView:Lcom/dexcom/cgm/activities/DexListNavView;

    .line 63
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->loadSettings()V

    .line 75
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    new-instance v1, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$1;-><init>(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchCallback(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    return-void
.end method
