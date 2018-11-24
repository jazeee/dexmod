.class Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$2;
.super Ljava/lang/Object;
.source "AlertsNumberPickerUtil.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$2;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$2;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$800(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)[I

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$2;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$900(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)[I

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$2;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v0, p3}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$1000(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;I)V

    .line 279
    :cond_0
    return-void
.end method
