.class Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$3;
.super Ljava/lang/Object;
.source "AlertsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;

.field final synthetic val$cgmProvider:Lcom/dexcom/cgm/i/a;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;Lcom/dexcom/cgm/i/a;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$3;->val$cgmProvider:Lcom/dexcom/cgm/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$3;->val$cgmProvider:Lcom/dexcom/cgm/i/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->getAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    .line 216
    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/setupwizard/AlertScheduleSetupWizardActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->startActivity(Landroid/content/Intent;)V

    .line 225
    :goto_0
    return-void

    .line 222
    :cond_0
    new-instance v1, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    invoke-direct {v1, v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;-><init>(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    invoke-virtual {v1, p2}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setAlertScheduleEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->build()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;

    invoke-static {v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->access$100(Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    goto :goto_0
.end method
