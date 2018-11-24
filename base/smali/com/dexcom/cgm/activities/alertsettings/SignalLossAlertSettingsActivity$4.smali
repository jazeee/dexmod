.class Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$4;
.super Ljava/lang/Object;
.source "SignalLossAlertSettingsActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 148
    new-instance v0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;-><init>()V

    .line 150
    sget v1, Lcom/dexcom/cgm/activities/R$id;->hour_picker:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    .line 152
    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$500(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    .line 153
    invoke-static {v3}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$400(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)I

    move-result v3

    .line 150
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->configureMaster(Landroid/view/View;I[II)V

    .line 155
    sget v2, Lcom/dexcom/cgm/activities/R$id;->minute_picker:I

    sget v3, Lcom/dexcom/cgm/activities/R$id;->minute_picker2:I

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    .line 158
    invoke-static {v1}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$700(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)[I

    move-result-object v4

    .line 159
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    .line 160
    invoke-static {v1}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$500(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)[I

    move-result-object v1

    iget-object v6, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    invoke-static {v6}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$500(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)[I

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget v6, v1, v6

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    .line 161
    invoke-static {v1}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$600(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)I

    move-result v7

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    .line 163
    invoke-static {v1}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$800(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)[I

    move-result-object v9

    move-object v1, p1

    .line 155
    invoke-virtual/range {v0 .. v9}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->configureSlave(Landroid/view/View;II[ILjava/lang/Boolean;III[I)V

    .line 165
    sget v0, Lcom/dexcom/cgm/activities/R$id;->time_duration_descriptor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 166
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_for_more_than:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 167
    return-void
.end method
