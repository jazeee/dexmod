.class Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$3;
.super Ljava/lang/Object;
.source "SignalLossAlertSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$id;->hour_picker:I

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 177
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$500(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)[I

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    aget v0, v2, v0

    invoke-static {v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$402(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;I)I

    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$id;->minute_picker:I

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$id;->minute_picker2:I

    .line 183
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    .line 185
    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$400(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)I

    move-result v2

    if-nez v2, :cond_0

    .line 187
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$700(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)[I

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    aget v0, v2, v0

    invoke-static {v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$602(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;I)I

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$400(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$600(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$900(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;II)V

    .line 194
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$800(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;)[I

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    aget v1, v2, v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;->access$602(Lcom/dexcom/cgm/activities/alertsettings/SignalLossAlertSettingsActivity;I)I

    goto :goto_0
.end method
