.class Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$3;
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
    .line 172
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$id;->number_picker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 178
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$500(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)[I

    move-result-object v1

    aget v0, v1, v0

    .line 180
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    new-instance v2, Lcom/dexcom/cgm/i/a/c;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-static {v3}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    .line 181
    invoke-virtual {v2, v0}, Lcom/dexcom/cgm/i/a/c;->setThreshold(I)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 180
    invoke-static {v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$002(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;Lcom/dexcom/cgm/i/a/b;)Lcom/dexcom/cgm/i/a/b;

    .line 183
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$300(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V

    .line 184
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$100(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V

    .line 185
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;->access$400(Lcom/dexcom/cgm/activities/alertsettings/UserLowAlertSettingsActivity;)V

    .line 186
    return-void
.end method
