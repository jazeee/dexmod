.class Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$1;
.super Ljava/lang/Object;
.source "SignalLossAlertSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$100(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    new-instance v1, Lcom/dexcom/cgm/i/a/c;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    .line 88
    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$200(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)Lcom/dexcom/cgm/activities/DexListSwitchView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/DexListSwitchView;->isSwitchChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/i/a/c;->setIsEnabled(Z)Lcom/dexcom/cgm/i/a/c;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$002(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;Lcom/dexcom/cgm/i/a/b;)Lcom/dexcom/cgm/i/a/b;

    .line 90
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$300(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)V

    .line 91
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$100(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)V

    .line 92
    return-void
.end method
