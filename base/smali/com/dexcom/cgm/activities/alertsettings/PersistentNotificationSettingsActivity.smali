.class public Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;
.super Landroid/app/Activity;
.source "PersistentNotificationSettingsActivity.java"


# instance fields
.field private m_persistentNotificationsSwitch:Lcom/dexcom/cgm/activities/DexListSwitchView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;)Lcom/dexcom/cgm/activities/DexListSwitchView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;->m_persistentNotificationsSwitch:Lcom/dexcom/cgm/activities/DexListSwitchView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;->updateNotificationSettings()V

    return-void
.end method

.method private updateNotificationSettings()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/notifications/PersistentNotificationBuilder;-><init>(Landroid/content/Context;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onClickPersistentNotifications(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 58
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;->m_persistentNotificationsSwitch:Lcom/dexcom/cgm/activities/DexListSwitchView;

    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;->m_persistentNotificationsSwitch:Lcom/dexcom/cgm/activities/DexListSwitchView;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->isSwitchChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 59
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_persistent_notification_settings:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;->setContentView(I)V

    .line 31
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 38
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    .line 39
    sget v0, Lcom/dexcom/cgm/activities/R$id;->persistent_notifications_switch:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListSwitchView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;->m_persistentNotificationsSwitch:Lcom/dexcom/cgm/activities/DexListSwitchView;

    .line 40
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;->m_persistentNotificationsSwitch:Lcom/dexcom/cgm/activities/DexListSwitchView;

    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/d/e;->getPersistentNotification()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 42
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;->m_persistentNotificationsSwitch:Lcom/dexcom/cgm/activities/DexListSwitchView;

    new-instance v2, Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity$1;-><init>(Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;Lcom/dexcom/cgm/i/a;)V

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchCallback(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    return-void
.end method
