.class public Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;
.super Landroid/app/Activity;
.source "UserHighAlertSettingsActivity.java"


# instance fields
.field private m_alertScheduleIndex:I

.field private m_currentHourValue:I

.field private m_currentMinuteValue:I

.field private m_hourValues:[I

.field private m_minuteAlternateValues:[I

.field private m_minuteValues:[I

.field private m_repeatView:Lcom/dexcom/cgm/activities/DexListNavView;

.field private m_settings:Lcom/dexcom/cgm/i/a/b;

.field private m_soundView:Lcom/dexcom/cgm/activities/DexListNavView;

.field private m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

.field private m_thresholdValues:[I

.field private m_thresholdView:Lcom/dexcom/cgm/activities/DexListNavView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_currentHourValue:I

    .line 47
    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_currentMinuteValue:I

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    return-object v0
.end method

.method static synthetic access$002(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;Lcom/dexcom/cgm/i/a/b;)Lcom/dexcom/cgm/i/a/b;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->loadSettings()V

    return-void
.end method

.method static synthetic access$1000(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)[I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_minuteValues:[I

    return-object v0
.end method

.method static synthetic access$1100(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)[I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_minuteAlternateValues:[I

    return-object v0
.end method

.method static synthetic access$1200(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;II)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->updateRepeatDuration(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)Lcom/dexcom/cgm/activities/DexListSwitchView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->saveSettings()V

    return-void
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->updateQuickGlanceNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;I)I
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->getAlertThresholdValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)[I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_thresholdValues:[I

    return-object v0
.end method

.method static synthetic access$700(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_currentHourValue:I

    return v0
.end method

.method static synthetic access$702(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_currentHourValue:I

    return p1
.end method

.method static synthetic access$800(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)[I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_hourValues:[I

    return-object v0
.end method

.method static synthetic access$900(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_currentMinuteValue:I

    return v0
.end method

.method static synthetic access$902(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_currentMinuteValue:I

    return p1
.end method

.method private formatThreshold(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    sget v0, Lcom/dexcom/cgm/activities/R$string;->share_mgdl:I

    .line 140
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement:I

    .line 142
    invoke-virtual {p0, v3}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 139
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAlertThresholdValue(I)I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_thresholdValues:[I

    aget v0, v0, p1

    return v0
.end method

.method private loadSettings()V
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_alertScheduleIndex:I

    .line 105
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUserHigh()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    .line 108
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 109
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_thresholdView:Lcom/dexcom/cgm/activities/DexListNavView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->formatThreshold(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_repeatView:Lcom/dexcom/cgm/activities/DexListNavView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    .line 111
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->getRepeatTime()Lcom/dexcom/cgm/k/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/k;->getTotalMinutes()I

    move-result v1

    .line 110
    invoke-static {p0, v1}, Lcom/dexcom/cgm/activities/CustomViewUtil;->formatAlertRepeatValue(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_soundView:Lcom/dexcom/cgm/activities/DexListNavView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private saveSettings()V
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_AlertSet_HiDay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;)Lcom/flurry/android/e;

    .line 133
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    .line 134
    invoke-static {}, Lcom/dexcom/cgm/activities/SettingsUpdatedEventHandler;->onSettingsUpdated()V

    .line 135
    return-void
.end method

.method private setCurrentRepeatDefaults()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getRepeatTime()Lcom/dexcom/cgm/k/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/k;->getTotalMinutes()I

    move-result v0

    .line 119
    const/16 v1, 0x3c

    if-lt v0, v1, :cond_0

    .line 121
    div-int/lit8 v1, v0, 0x3c

    iput v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_currentHourValue:I

    .line 124
    :cond_0
    rem-int/lit8 v1, v0, 0x3c

    if-lez v1, :cond_1

    .line 126
    rem-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_currentMinuteValue:I

    .line 128
    :cond_1
    return-void
.end method

.method private updateQuickGlanceNotification()V
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;-><init>(Landroid/content/Context;)V

    .line 193
    return-void
.end method

.method private updateRepeatDuration(II)V
    .locals 3

    .prologue
    .line 262
    mul-int/lit8 v0, p1, 0x3c

    add-int/2addr v0, p2

    invoke-static {v0}, Lcom/dexcom/cgm/k/k;->FromMinutes(I)Lcom/dexcom/cgm/k/k;

    move-result-object v0

    .line 263
    new-instance v1, Lcom/dexcom/cgm/i/a/c;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    .line 264
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/i/a/c;->setRepeatTime(Lcom/dexcom/cgm/k/k;)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    .line 266
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->saveSettings()V

    .line 267
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->loadSettings()V

    .line 268
    return-void
.end method


# virtual methods
.method public onClickAlert(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->isSwitchChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 76
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClickNotifyMeAbove(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 147
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_alerts_notify_me:I

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$4;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$4;-><init>(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V

    .line 148
    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_save:I

    .line 160
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$3;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$3;-><init>(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_cancel:I

    .line 178
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$2;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$2;-><init>(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_notify_me_above:I

    .line 186
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 188
    return-void
.end method

.method public onClickRepeat(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 197
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_time_duration:I

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$7;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$7;-><init>(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V

    .line 198
    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_save:I

    .line 221
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$6;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$6;-><init>(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_cancel:I

    .line 248
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$5;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$5;-><init>(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_repeat:I

    .line 256
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 258
    return-void
.end method

.method public onClickSound(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 272
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    const-string v1, "alertType"

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/enums/AlertKind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v1, "soundName"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v1, "alertScheduleIndex"

    iget v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_alertScheduleIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 277
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_user_high_alert_settings:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->INTENT_EXTRA_ALERT_SCHEDULE_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_alertScheduleIndex:I

    .line 56
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_alertScheduleIndex:I

    if-ne v0, v2, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent extra alertScheduleIndex must be set. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_hourValues:[I

    .line 62
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$array;->time_duration_minute_values_15x5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_minuteValues:[I

    .line 63
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$array;->time_duration_minute_values_5x5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_minuteAlternateValues:[I

    .line 64
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$array;->high_alert_mgdl_egvs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_thresholdValues:[I

    .line 65
    sget v0, Lcom/dexcom/cgm/activities/R$id;->high_alert_switch:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListSwitchView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    .line 66
    sget v0, Lcom/dexcom/cgm/activities/R$id;->alert_notification_text:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_thresholdView:Lcom/dexcom/cgm/activities/DexListNavView;

    .line 67
    sget v0, Lcom/dexcom/cgm/activities/R$id;->alert_repeat_text:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_repeatView:Lcom/dexcom/cgm/activities/DexListNavView;

    .line 68
    sget v0, Lcom/dexcom/cgm/activities/R$id;->alert_sound_settings:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_soundView:Lcom/dexcom/cgm/activities/DexListNavView;

    .line 71
    return-void

    .line 61
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
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->loadSettings()V

    .line 83
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    new-instance v1, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$1;-><init>(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchCallback(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->setCurrentRepeatDefaults()V

    .line 100
    return-void
.end method
