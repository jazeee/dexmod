.class Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$1;
.super Ljava/lang/Object;
.source "AlertsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;

    const-class v2, Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditNameActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    const-string v1, "name"

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;)Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/DexAlertSchedule;->getScheduleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method
