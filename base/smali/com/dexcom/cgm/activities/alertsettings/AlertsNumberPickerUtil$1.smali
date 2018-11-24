.class Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;
.super Ljava/lang/Object;
.source "AlertsNumberPickerUtil.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

.field final synthetic val$values:[I


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;[I)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->val$values:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->val$values:[I

    aget v1, v1, p3

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$002(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;I)I

    .line 67
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$100(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$200(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)I

    move-result v0

    if-ne p3, v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v0, v2}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$300(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;Z)V

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$400(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)I

    move-result v0

    if-lt p3, v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$500(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$600(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)Landroid/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$700(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)Landroid/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v0, v3}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$502(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;Z)Z

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$400(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)I

    move-result v0

    if-ge p3, v0, :cond_1

    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$500(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    if-nez p3, :cond_3

    .line 89
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$600(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)Landroid/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$700(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)Landroid/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v0, v2}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$502(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;Z)Z

    .line 101
    :cond_1
    :goto_1
    return-void

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v0, v3}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$300(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;Z)V

    goto :goto_0

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$600(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)Landroid/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$700(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;)Landroid/widget/NumberPicker;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;

    invoke-static {v0, v3}, Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;->access$502(Lcom/dexcom/cgm/activities/alertsettings/AlertsNumberPickerUtil;Z)Z

    goto :goto_1
.end method
