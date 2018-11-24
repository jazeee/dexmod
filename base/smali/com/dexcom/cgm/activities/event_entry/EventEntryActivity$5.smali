.class Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$5;
.super Ljava/lang/Object;
.source "EventEntryActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)V
    .locals 0

    .prologue
    .line 602
    iput-object p1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$5;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 6

    .prologue
    .line 607
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {v0, p2, v1, p4}, Lorg/joda/time/DateTime;->withDate(III)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v0

    .line 612
    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$5;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$400(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 614
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 616
    iget-object v4, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$5;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    iget-object v5, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$5;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v5}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$400(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/k/j;

    move-result-object v5

    sub-long/2addr v0, v2

    invoke-virtual {v5, v0, v1}, Lcom/dexcom/cgm/k/j;->addMilliseconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$402(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;

    .line 625
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$5;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$500(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)V

    .line 626
    return-void

    .line 620
    :cond_0
    iget-object v4, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$5;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    iget-object v5, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$5;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v5}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$400(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/k/j;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Lcom/dexcom/cgm/k/j;->subtractMilliseconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$402(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;

    goto :goto_0
.end method
