.class Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$7;
.super Ljava/lang/Object;
.source "AlertsActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;

.field final synthetic val$mainTextResource:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$7;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$7;->val$mainTextResource:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 507
    sget v0, Lcom/dexcom/cgm/activities/R$id;->help_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 508
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsActivity$7;->val$mainTextResource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    return-void
.end method
