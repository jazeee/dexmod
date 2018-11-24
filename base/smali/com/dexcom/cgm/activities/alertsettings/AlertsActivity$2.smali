.class Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$2;
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
    .line 166
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$2;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$2;->val$cgmProvider:Lcom/dexcom/cgm/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$2;->val$cgmProvider:Lcom/dexcom/cgm/i/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->getAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    invoke-direct {v1, v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;-><init>(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    invoke-virtual {v1, p2}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->setAlwaysSoundEnabled(Z)Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/DexAlertSchedule$Builder;->build()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$2;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;

    invoke-static {v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->access$100(Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 173
    return-void
.end method
