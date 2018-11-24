.class Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$1;
.super Ljava/lang/Object;
.source "UserLowAlertSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$100(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    new-instance v1, Lcom/dexcom/cgm/i/a/c;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    .line 93
    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$200(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)Lcom/dexcom/cgm/activities/DexListSwitchView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/DexListSwitchView;->isSwitchChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/i/a/c;->setIsEnabled(Z)Lcom/dexcom/cgm/i/a/c;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    .line 92
    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$002(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;Lcom/dexcom/cgm/i/a/b;)Lcom/dexcom/cgm/i/a/b;

    .line 95
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$300(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V

    .line 96
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$100(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V

    .line 97
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$400(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V

    .line 98
    return-void
.end method
