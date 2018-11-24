.class Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$3;
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
    .line 162
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$id;->number_picker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 168
    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-static {v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$500(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;I)I

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    new-instance v2, Lcom/dexcom/cgm/i/a/c;

    iget-object v3, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-static {v3}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$000(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/dexcom/cgm/i/a/c;-><init>(Lcom/dexcom/cgm/i/a/b;)V

    .line 171
    invoke-virtual {v2, v0}, Lcom/dexcom/cgm/i/a/c;->setThreshold(I)Lcom/dexcom/cgm/i/a/c;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/c;->build()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 170
    invoke-static {v1, v0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$002(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;Lcom/dexcom/cgm/i/a/b;)Lcom/dexcom/cgm/i/a/b;

    .line 173
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$300(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V

    .line 174
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$100(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V

    .line 175
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity$3;->this$0:Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;->access$400(Lcom/dexcom/cgm/activities/alertsettings/UserHighAlertSettingsActivity;)V

    .line 176
    return-void
.end method
