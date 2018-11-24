.class Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity$1;
.super Ljava/lang/Object;
.source "PersistentNotificationSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;

.field final synthetic val$cgmProvider:Lcom/dexcom/cgm/i/a;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;Lcom/dexcom/cgm/i/a;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity$1;->val$cgmProvider:Lcom/dexcom/cgm/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;)Lcom/dexcom/cgm/activities/DexListSwitchView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity$1;->val$cgmProvider:Lcom/dexcom/cgm/i/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/d/e;->setPersistentNotification(Z)V

    .line 49
    const-string v0, "PNotifications"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting persistent notifications to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;->access$100(Lcom/dexcom/cgm/activities/alertsettings/PersistentNotificationSettingsActivity;)V

    .line 52
    return-void
.end method
