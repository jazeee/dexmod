.class Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity$1;
.super Ljava/lang/Object;
.source "RiseRateAlertSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;->access$100(Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;

    new-instance v1, Lcom/dexcom/cgm/i/a/c;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;

    .line 80
    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;->access$200(Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;)Lcom/dexcom/cgm/activities/DexListSwitchView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/DexListSwitchView;->isSwitchChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/i/a/c;->setIsEnabled(Z)Lcom/dexcom/cgm/i/a/c;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;->access$002(Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;Lcom/dexcom/cgm/i/a/b;)Lcom/dexcom/cgm/i/a/b;

    .line 82
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;->access$300(Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;)V

    .line 83
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;->access$100(Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;)V

    .line 84
    return-void
.end method
