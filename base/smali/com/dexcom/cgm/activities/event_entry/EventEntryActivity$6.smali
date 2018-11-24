.class Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$6;
.super Ljava/lang/Object;
.source "EventEntryActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$6;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v4, 0x0

    .line 648
    new-instance v0, Lorg/joda/time/DateTime;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$6;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$400(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    mul-long/2addr v2, v6

    invoke-direct {v0, v2, v3}, Lorg/joda/time/DateTime;-><init>(J)V

    invoke-virtual {v0, p2, p3, v4, v4}, Lorg/joda/time/DateTime;->withTime(IIII)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 654
    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v0

    .line 655
    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$6;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$400(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    mul-long/2addr v2, v6

    .line 657
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 659
    iget-object v4, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$6;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    iget-object v5, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$6;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v5}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$400(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/k/j;

    move-result-object v5

    sub-long/2addr v0, v2

    invoke-virtual {v5, v0, v1}, Lcom/dexcom/cgm/k/j;->addMilliseconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$402(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;

    .line 666
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$6;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$6;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$400(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$600(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Lcom/dexcom/cgm/k/j;)V

    .line 667
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$6;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$702(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Z)Z

    .line 668
    return-void

    .line 663
    :cond_0
    iget-object v4, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$6;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    iget-object v5, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$6;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v5}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$400(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/k/j;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Lcom/dexcom/cgm/k/j;->subtractMilliseconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$402(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;

    goto :goto_0
.end method
