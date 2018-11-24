.class Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil$1;
.super Ljava/lang/Object;
.source "EventsNumberPickerUtil.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;

.field final synthetic val$values:[I


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;[I)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;

    iput-object p2, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil$1;->val$values:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil$1;->val$values:[I

    aget v1, v1, p3

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->access$002(Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;I)I

    .line 57
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->access$100(Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->access$200(Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;)I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->access$300(Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;Z)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil$1;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->access$300(Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;Z)V

    goto :goto_0
.end method
