.class Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$1;
.super Ljava/lang/Object;
.source "UserHighAlertSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$100(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    new-instance v1, Lcom/dexcom/cgm/i/a/c;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    .line 92
    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$200(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)Lcom/dexcom/cgm/activities/DexListSwitchView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/DexListSwitchView;->isSwitchChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/i/a/c;->setIsEnabled(Z)Lcom/dexcom/cgm/i/a/c;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$002(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;Lcom/dexcom/cgm/i/a/b;)Lcom/dexcom/cgm/i/a/b;

    .line 94
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$300(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V

    .line 95
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$100(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V

    .line 96
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$400(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V

    .line 97
    return-void
.end method
