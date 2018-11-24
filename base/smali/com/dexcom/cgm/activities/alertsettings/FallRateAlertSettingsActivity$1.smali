.class Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$1;
.super Ljava/lang/Object;
.source "FallRateAlertSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->access$100(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    new-instance v1, Lcom/dexcom/cgm/i/a/c;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    .line 84
    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->access$200(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)Lcom/dexcom/cgm/activities/DexListSwitchView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/DexListSwitchView;->isSwitchChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/i/a/c;->setIsEnabled(Z)Lcom/dexcom/cgm/i/a/c;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->access$002(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;Lcom/dexcom/cgm/i/a/b;)Lcom/dexcom/cgm/i/a/b;

    .line 86
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->access$300(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)V

    .line 87
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->access$100(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)V

    .line 88
    return-void
.end method
