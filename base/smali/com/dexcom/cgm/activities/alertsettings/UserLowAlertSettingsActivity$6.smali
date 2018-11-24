.class Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$6;
.super Ljava/lang/Object;
.source "UserLowAlertSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$id;->hour_picker:I

    .line 233
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 234
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$700(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)[I

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    aget v0, v2, v0

    invoke-static {v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$602(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;I)I

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$id;->minute_picker:I

    .line 237
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$id;->minute_picker2:I

    .line 240
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    .line 242
    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$600(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)I

    move-result v2

    if-nez v2, :cond_0

    .line 244
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$900(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)[I

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    aget v0, v2, v0

    invoke-static {v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$802(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;I)I

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$600(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$800(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$1100(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;II)V

    .line 251
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$6;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$1000(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)[I

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    aget v1, v2, v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$802(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;I)I

    goto :goto_0
.end method
