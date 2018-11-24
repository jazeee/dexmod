.class public Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;
.super Landroid/app/Activity;
.source "UrgentLowAlertSettingsActivity.java"


# instance fields
.field private m_alertScheduleIndex:I

.field private m_urgentLowAlertSound:Lcom/dexcom/cgm/i/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getAlertSettings()V
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;->m_alertScheduleIndex:I

    .line 62
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUrgentLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;->m_urgentLowAlertSound:Lcom/dexcom/cgm/i/a/a/a;

    .line 65
    return-void
.end method

.method private setAlertSettings()V
    .locals 4

    .prologue
    .line 86
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;->m_alertScheduleIndex:I

    .line 88
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUrgentLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/dexcom/cgm/i/a/c;

    invoke-direct {v1, v0}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->UrgentLowGlucose:Lcom/dexcom/cgm/h/a/a/a;

    .line 92
    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/i/a/c;->setAlertType(Lcom/dexcom/cgm/h/a/a/a;)Lcom/dexcom/cgm/i/a/c;

    move-result-object v1

    .line 93
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->isDaytimeAlert()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/i/a/c;->setIsDaytimeAlert(Z)Lcom/dexcom/cgm/i/a/c;

    move-result-object v1

    .line 94
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/i/a/c;->setThreshold(I)Lcom/dexcom/cgm/i/a/c;

    move-result-object v1

    .line 95
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getRepeatTime()Lcom/dexcom/cgm/k/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/i/a/c;->setRepeatTime(Lcom/dexcom/cgm/k/k;)Lcom/dexcom/cgm/i/a/c;

    move-result-object v1

    .line 96
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/i/a/c;->setIsEnabled(Z)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;->m_urgentLowAlertSound:Lcom/dexcom/cgm/i/a/a/a;

    .line 97
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/i/a/c;->setAlertSound(Lcom/dexcom/cgm/i/a/a/a;)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    .line 99
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 100
    const-string v0, "0"

    .line 101
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    const-string v0, "1"

    .line 103
    :cond_0
    const-string v3, "enabled"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "theLimit"

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "repeat"

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->getRepeatTime()Lcom/dexcom/cgm/k/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/k/k;->getTotalMinutes()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "sound"

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_AlertSet_UrgLowDay:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/e;

    .line 108
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    .line 110
    invoke-static {}, Lcom/dexcom/cgm/activities/SettingsUpdatedEventHandler;->onSettingsUpdated()V

    .line 111
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 80
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;->setAlertSettings()V

    .line 81
    const/4 v0, 0x0

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->slide_out_right:I

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;->overridePendingTransition(II)V

    .line 82
    return-void
.end method

.method public onClickSoundSettings(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const-string v1, "alertType"

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/enums/AlertKind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, "soundName"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;->m_urgentLowAlertSound:Lcom/dexcom/cgm/i/a/a/a;

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "alertScheduleIndex"

    iget v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;->m_alertScheduleIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_urgent_low_alert_settings:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->INTENT_EXTRA_ALERT_SCHEDULE_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;->m_alertScheduleIndex:I

    .line 39
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;->m_alertScheduleIndex:I

    if-ne v0, v2, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent extra alertScheduleIndex must be set. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    sget v0, Lcom/dexcom/cgm/activities/R$id;->urgent_low_alarm_notify:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    .line 44
    sget v1, Lcom/dexcom/cgm/activities/R$id;->dex_list_end_text:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "55"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement:I

    invoke-virtual {p0, v4}, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 53
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;->getAlertSettings()V

    .line 55
    sget v0, Lcom/dexcom/cgm/activities/R$id;->urgent_low_alarm_sound:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    .line 56
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UrgentLowAlertSettingsActivity;->m_urgentLowAlertSound:Lcom/dexcom/cgm/i/a/a/a;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 57
    return-void
.end method
