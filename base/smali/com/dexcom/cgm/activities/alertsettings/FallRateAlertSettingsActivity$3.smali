.class Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$3;
.super Ljava/lang/Object;
.source "FallRateAlertSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$id;->number_picker:I

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 158
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    invoke-static {v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->access$400(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;I)I

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    new-instance v2, Lcom/dexcom/cgm/i/a/c;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    invoke-static {v3}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    .line 161
    invoke-virtual {v2, v0}, Lcom/dexcom/cgm/i/a/c;->setThreshold(I)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 160
    invoke-static {v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->access$002(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;Lcom/dexcom/cgm/i/a/b;)Lcom/dexcom/cgm/i/a/b;

    .line 163
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->access$300(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)V

    .line 164
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;->access$100(Lcom/dexcom/cgm/activities/alertsettings/FallRateAlertSettingsActivity;)V

    .line 165
    return-void
.end method
