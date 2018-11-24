.class Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$7;
.super Ljava/lang/Object;
.source "UserLowAlertSettingsActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$7;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 208
    new-instance v0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;-><init>()V

    .line 209
    sget v1, Lcom/dexcom/cgm/activities/R$id;->hour_picker:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$7;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    .line 212
    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$700(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$7;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    .line 213
    invoke-static {v3}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$600(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)I

    move-result v3

    .line 209
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->configureMaster(Landroid/view/View;I[II)V

    .line 215
    sget v2, Lcom/dexcom/cgm/activities/R$id;->minute_picker:I

    sget v3, Lcom/dexcom/cgm/activities/R$id;->minute_picker2:I

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$7;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    .line 218
    invoke-static {v1}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$900(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)[I

    move-result-object v4

    .line 219
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$7;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    .line 220
    invoke-static {v1}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$700(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)[I

    move-result-object v1

    iget-object v6, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$7;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-static {v6}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$700(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)[I

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget v6, v1, v6

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$7;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    .line 221
    invoke-static {v1}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$800(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)I

    move-result v7

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$7;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    .line 223
    invoke-static {v1}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$1000(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)[I

    move-result-object v9

    move-object v1, p1

    .line 215
    invoke-virtual/range {v0 .. v9}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->configureSlave(Landroid/view/View;II[ILjava/lang/Boolean;III[I)V

    .line 224
    return-void
.end method
