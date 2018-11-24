.class Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity$4;
.super Ljava/lang/Object;
.source "RiseRateAlertSettingsActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 130
    sget v0, Lcom/dexcom/cgm/activities/R$id;->notify_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 131
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_notify_me_above:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    sget v0, Lcom/dexcom/cgm/activities/R$id;->units:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 133
    sget v1, Lcom/dexcom/cgm/activities/R$id;->empty:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 134
    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;

    sget v3, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement:I

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;

    sget v4, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement_per_minute:I

    invoke-virtual {v3, v4}, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;

    sget v3, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement_per_minute:I

    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    new-instance v0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;-><init>()V

    .line 141
    sget v1, Lcom/dexcom/cgm/activities/R$id;->number_picker:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;

    .line 142
    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;->access$500(Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;

    invoke-static {v3}, Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/RiseRateAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v3

    .line 141
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->configureMaster(Landroid/view/View;I[II)V

    .line 143
    return-void
.end method
