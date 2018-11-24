.class Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$4;
.super Ljava/lang/Object;
.source "FallRateAlertSettingsActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    sget v0, Lcom/dexcom/cgm/activities/R$id;->notify_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 136
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_notify_me_below:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    sget v0, Lcom/dexcom/cgm/activities/R$id;->units:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    sget v1, Lcom/dexcom/cgm/activities/R$id;->empty:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 139
    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    sget v3, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement:I

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    sget v4, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement_per_minute:I

    invoke-virtual {v3, v4}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    sget v3, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement_per_minute:I

    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    new-instance v0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;-><init>()V

    .line 146
    sget v1, Lcom/dexcom/cgm/activities/R$id;->number_picker:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    .line 147
    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->access$500(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    invoke-static {v3}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v3

    .line 146
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->configureMaster(Landroid/view/View;I[II)V

    .line 148
    return-void
.end method
