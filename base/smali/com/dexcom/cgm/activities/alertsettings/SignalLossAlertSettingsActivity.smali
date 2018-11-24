.class public Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;
.super Landroid/app/Activity;
.source "SignalLossAlertSettingsActivity.java"


# instance fields
.field private m_alertScheduleIndex:I

.field private m_currentHourValue:I

.field private m_currentMinuteValue:I

.field private m_hourValues:[I

.field private m_minuteAlternateValues:[I

.field private m_minuteValues:[I

.field private m_repeatTimeView:Lcom/dexcom/cgm/activities/DexListNavView;

.field private m_settings:Lcom/dexcom/cgm/i/a/b;

.field private m_soundView:Lcom/dexcom/cgm/activities/DexListNavView;

.field private m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_currentHourValue:I

    .line 45
    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_currentMinuteValue:I

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    return-object v0
.end method

.method static synthetic access$002(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;Lcom/dexcom/cgm/i/a/b;)Lcom/dexcom/cgm/i/a/b;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->loadSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)Lcom/dexcom/cgm/activities/DexListSwitchView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->saveSettings()V

    return-void
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_currentHourValue:I

    return v0
.end method

.method static synthetic access$402(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_currentHourValue:I

    return p1
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)[I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_hourValues:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_currentMinuteValue:I

    return v0
.end method

.method static synthetic access$602(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_currentMinuteValue:I

    return p1
.end method

.method static synthetic access$700(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)[I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_minuteValues:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)[I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_minuteAlternateValues:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;II)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->updateDuration(II)V

    return-void
.end method

.method private loadSettings()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_alertScheduleIndex:I

    .line 101
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getNoData()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    .line 104
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 105
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_repeatTimeView:Lcom/dexcom/cgm/activities/DexListNavView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    .line 106
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->getRepeatTime()Lcom/dexcom/cgm/k/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/k;->getTotalMinutes()I

    move-result v1

    .line 105
    invoke-static {p0, v1}, Lcom/dexcom/cgm/activities/CustomViewUtil;->formatAlertRepeatValue(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_soundView:Lcom/dexcom/cgm/activities/DexListNavView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method private saveSettings()V
    .locals 3

    .prologue
    .line 112
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 113
    const-string v0, "0"

    .line 114
    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const-string v0, "1"

    .line 116
    :cond_0
    const-string v2, "enabled"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "theLimit"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v0, "repeat"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/b;->getRepeatTime()Lcom/dexcom/cgm/k/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/k;->getTotalMinutes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v0, "sound"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_AlertSet_NoDataDay:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/e;

    .line 121
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    .line 122
    invoke-static {}, Lcom/dexcom/cgm/activities/SettingsUpdatedEventHandler;->onSettingsUpdated()V

    .line 123
    return-void
.end method

.method private setCurrentRepeatDefaults()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getRepeatTime()Lcom/dexcom/cgm/k/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/k;->getTotalMinutes()I

    move-result v0

    .line 129
    const/16 v1, 0x3c

    if-lt v0, v1, :cond_0

    .line 131
    div-int/lit8 v1, v0, 0x3c

    iput v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_currentHourValue:I

    .line 134
    :cond_0
    rem-int/lit8 v1, v0, 0x3c

    if-lez v1, :cond_1

    .line 136
    rem-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_currentMinuteValue:I

    .line 138
    :cond_1
    return-void
.end method

.method private updateDuration(II)V
    .locals 4

    .prologue
    .line 210
    mul-int/lit8 v0, p1, 0x3c

    add-int/2addr v0, p2

    invoke-static {v0}, Lcom/dexcom/cgm/k/k;->FromMinutes(I)Lcom/dexcom/cgm/k/k;

    move-result-object v1

    .line 212
    const/4 v0, 0x0

    .line 213
    invoke-virtual {v1}, Lcom/dexcom/cgm/k/k;->getTotalMinutes()I

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v0

    .line 216
    :cond_0
    new-instance v2, Lcom/dexcom/cgm/i/a/c;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-direct {v2, v3}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    .line 217
    invoke-virtual {v2, v0}, Lcom/dexcom/cgm/i/a/c;->setIsEnabled(Z)Lcom/dexcom/cgm/i/a/c;

    move-result-object v2

    .line 218
    invoke-virtual {v1}, Lcom/dexcom/cgm/k/k;->getTotalMinutes()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x14

    .line 219
    invoke-static {v0}, Lcom/dexcom/cgm/k/k;->FromMinutes(I)Lcom/dexcom/cgm/k/k;

    move-result-object v0

    .line 218
    :goto_0
    invoke-virtual {v2, v0}, Lcom/dexcom/cgm/i/a/c;->setRepeatTime(Lcom/dexcom/cgm/k/k;)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    .line 221
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->saveSettings()V

    .line 222
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->loadSettings()V

    .line 223
    return-void

    :cond_1
    move-object v0, v1

    .line 219
    goto :goto_0
.end method


# virtual methods
.method public onClickAlert(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->isSwitchChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 73
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClickNotifyForMoreThan(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 142
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_time_duration:I

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$4;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$4;-><init>(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)V

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_save:I

    .line 169
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$3;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$3;-><init>(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_cancel:I

    .line 196
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$2;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$2;-><init>(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_for_more_than:I

    .line 204
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 206
    return-void
.end method

.method public onClickSound(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    const-string v1, "alertType"

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/enums/AlertKind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v1, "soundName"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v1, "alertScheduleIndex"

    iget v2, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_alertScheduleIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 232
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_signal_loss_alert_settings:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->INTENT_EXTRA_ALERT_SCHEDULE_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_alertScheduleIndex:I

    .line 56
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_alertScheduleIndex:I

    if-ne v0, v2, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent extra alertScheduleIndex must be set. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_hourValues:[I

    .line 61
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$array;->time_duration_minute_values_20x5_no_0:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_minuteValues:[I

    .line 62
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$array;->time_duration_minute_values_5x5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_minuteAlternateValues:[I

    .line 63
    sget v0, Lcom/dexcom/cgm/activities/R$id;->signal_loss_alert_switch:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListSwitchView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    .line 64
    sget v0, Lcom/dexcom/cgm/activities/R$id;->alert_notification_text:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_repeatTimeView:Lcom/dexcom/cgm/activities/DexListNavView;

    .line 65
    sget v0, Lcom/dexcom/cgm/activities/R$id;->alert_sound_settings:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_soundView:Lcom/dexcom/cgm/activities/DexListNavView;

    .line 68
    return-void

    .line 60
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 79
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    new-instance v1, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$1;-><init>(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchCallback(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->loadSettings()V

    .line 95
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->setCurrentRepeatDefaults()V

    .line 96
    return-void
.end method
