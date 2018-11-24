.class Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$6;
.super Ljava/lang/Object;
.source "UserHighAlertSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$id;->hour_picker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 229
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$800(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)[I

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    aget v0, v2, v0

    invoke-static {v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$702(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;I)I

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$id;->minute_picker:I

    .line 232
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$id;->minute_picker2:I

    .line 235
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    .line 237
    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$700(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)I

    move-result v2

    if-nez v2, :cond_0

    .line 239
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$1000(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)[I

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    aget v0, v2, v0

    invoke-static {v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$902(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;I)I

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$700(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$900(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$1200(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;II)V

    .line 246
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$1100(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)[I

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    aget v1, v2, v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$902(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;I)I

    goto :goto_0
.end method
