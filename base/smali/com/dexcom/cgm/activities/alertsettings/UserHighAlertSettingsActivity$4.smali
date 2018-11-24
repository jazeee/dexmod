.class Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$4;
.super Ljava/lang/Object;
.source "UserHighAlertSettingsActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 153
    sget v0, Lcom/dexcom/cgm/activities/R$id;->notify_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_notify_me_above:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    new-instance v0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;-><init>()V

    .line 156
    sget v1, Lcom/dexcom/cgm/activities/R$id;->number_picker:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    .line 157
    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$600(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$4;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-static {v3}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v3

    .line 156
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->configureMaster(Landroid/view/View;I[II)V

    .line 158
    return-void
.end method
