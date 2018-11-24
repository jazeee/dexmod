.class public Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;
.super Landroid/app/Activity;
.source "UserLowAlertSettingsActivity.java"


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

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_currentHourValue:I

    .line 48
    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_currentMinuteValue:I

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    return-object v0
.end method

.method static synthetic access$002(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;Lcom/dexcom/cgm/i/a/b;)Lcom/dexcom/cgm/i/a/b;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    return-object p1
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->loadSettings()V

    return-void
.end method

.method static synthetic access$1000(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)[I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_minuteAlternateValues:[I

    return-object v0
.end method

.method static synthetic access$1100(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;II)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->updateRepeatDuration(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)Lcom/dexcom/cgm/activities/DexListSwitchView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->saveSettings()V

    return-void
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->updateQuickGlanceNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)[I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_thresholdValues:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_currentHourValue:I

    return v0
.end method

.method static synthetic access$602(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;I)I
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_currentHourValue:I

    return p1
.end method

.method static synthetic access$700(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)[I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_hourValues:[I

    return-object v0
.end method

.method static synthetic access$800(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_currentMinuteValue:I

    return v0
.end method

.method static synthetic access$802(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;I)I
    .locals 0

    .prologue
    .line 35
    iput p1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_currentMinuteValue:I

    return p1
.end method

.method static synthetic access$900(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)[I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_minuteValues:[I

    return-object v0
.end method

.method private formatThreshold(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 148
    sget v0, Lcom/dexcom/cgm/activities/R$string;->share_mgdl:I

    .line 149
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement:I

    .line 151
    invoke-virtual {p0, v3}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 148
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadSettings()V
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_alertScheduleIndex:I

    .line 106
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    .line 109
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 110
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_thresholdView:Lcom/dexcom/cgm/activities/DexListNavView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->formatThreshold(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_repeatView:Lcom/dexcom/cgm/activities/DexListNavView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    .line 112
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->getRepeatTime()Lcom/dexcom/cgm/k/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/k;->getTotalMinutes()I

    move-result v1

    .line 111
    invoke-static {p0, v1}, Lcom/dexcom/cgm/activities/CustomViewUtil;->formatAlertRepeatValue(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_soundView:Lcom/dexcom/cgm/activities/DexListNavView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private saveSettings()V
    .locals 3

    .prologue
    .line 133
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 134
    const-string v0, "0"

    .line 135
    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    const-string v0, "1"

    .line 137
    :cond_0
    const-string v2, "enabled"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v0, "theLimit"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "repeat"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/b;->getRepeatTime()Lcom/dexcom/cgm/k/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/k;->getTotalMinutes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "sound"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/dexcom/cgm/activities/R$string;->flurry_evt_AlertSet_LowDay:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/flurry/android/a;->logEvent(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/e;

    .line 142
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V

    .line 143
    invoke-static {}, Lcom/dexcom/cgm/activities/SettingsUpdatedEventHandler;->onSettingsUpdated()V

    .line 144
    return-void
.end method

.method private setCurrentRepeatDefaults()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getRepeatTime()Lcom/dexcom/cgm/k/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/k;->getTotalMinutes()I

    move-result v0

    .line 120
    const/16 v1, 0x3c

    if-lt v0, v1, :cond_0

    .line 122
    div-int/lit8 v1, v0, 0x3c

    iput v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_currentHourValue:I

    .line 125
    :cond_0
    rem-int/lit8 v1, v0, 0x3c

    if-lez v1, :cond_1

    .line 127
    rem-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_currentMinuteValue:I

    .line 129
    :cond_1
    return-void
.end method

.method private updateQuickGlanceNotification()V
    .locals 1

    .prologue
    .line 267
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;-><init>(Landroid/content/Context;)V

    .line 268
    return-void
.end method

.method private updateRepeatDuration(II)V
    .locals 3

    .prologue
    .line 272
    mul-int/lit8 v0, p1, 0x3c

    add-int/2addr v0, p2

    invoke-static {v0}, Lcom/dexcom/cgm/k/k;->FromMinutes(I)Lcom/dexcom/cgm/k/k;

    move-result-object v0

    .line 273
    new-instance v1, Lcom/dexcom/cgm/i/a/c;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    .line 274
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/i/a/c;->setRepeatTime(Lcom/dexcom/cgm/k/k;)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    .line 276
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->saveSettings()V

    .line 277
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->loadSettings()V

    .line 278
    return-void
.end method


# virtual methods
.method public onClickAlert(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->isSwitchChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 77
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClickNotifyMeBelow(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_alerts_notify_me:I

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$4;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$4;-><init>(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V

    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_save:I

    .line 170
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$3;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$3;-><init>(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_cancel:I

    .line 188
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$2;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$2;-><init>(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_notify_me_below:I

    .line 196
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 198
    return-void
.end method

.method public onClickRepeat(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 202
    new-instance v0, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dialog_time_duration:I

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$7;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$7;-><init>(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V

    .line 203
    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_save:I

    .line 226
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$6;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$6;-><init>(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->button_text_cancel:I

    .line 253
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$5;

    invoke-direct {v2, p0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$5;-><init>(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_repeat:I

    .line 261
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 263
    return-void
.end method

.method public onClickSound(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 282
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/alertsettings/SoundsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    const-string v1, "alertType"

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/enums/AlertKind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v1, "soundName"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_settings:Lcom/dexcom/cgm/i/a/b;

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/b;->getAlertSound()Lcom/dexcom/cgm/i/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/i/a/a/a;->getAlertSoundString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string v1, "alertScheduleIndex"

    iget v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_alertScheduleIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 287
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_user_low_alert_settings:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->INTENT_EXTRA_ALERT_SCHEDULE_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_alertScheduleIndex:I

    .line 58
    iget v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_alertScheduleIndex:I

    if-ne v0, v2, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent extra alertScheduleIndex must be set. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_hourValues:[I

    .line 64
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$array;->time_duration_minute_values_15x5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_minuteValues:[I

    .line 65
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$array;->time_duration_minute_values_5x5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_minuteAlternateValues:[I

    .line 66
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$array;->low_alert_mgdl_egvs:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_thresholdValues:[I

    .line 67
    sget v0, Lcom/dexcom/cgm/activities/R$id;->user_low_alert_switch:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListSwitchView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    .line 68
    sget v0, Lcom/dexcom/cgm/activities/R$id;->user_low_alert_notification:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_thresholdView:Lcom/dexcom/cgm/activities/DexListNavView;

    .line 69
    sget v0, Lcom/dexcom/cgm/activities/R$id;->user_low_alert_repeat:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_repeatView:Lcom/dexcom/cgm/activities/DexListNavView;

    .line 70
    sget v0, Lcom/dexcom/cgm/activities/R$id;->user_low_alert_sound:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_soundView:Lcom/dexcom/cgm/activities/DexListNavView;

    .line 72
    return-void

    .line 63
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
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->loadSettings()V

    .line 84
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->m_switchView:Lcom/dexcom/cgm/activities/DexListSwitchView;

    new-instance v1, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$1;-><init>(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchCallback(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->setCurrentRepeatDefaults()V

    .line 101
    return-void
.end method
