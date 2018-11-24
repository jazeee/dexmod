.class Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;
.super Ljava/lang/Object;
.source "EventEntryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)V
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 779
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 780
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$800(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/i/a/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$800(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/i/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$400(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/i/a/d;->setEventTime(Lcom/dexcom/cgm/k/j;)V

    .line 783
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$800(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/i/a/d;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$900(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Lcom/dexcom/cgm/i/a;Lcom/dexcom/cgm/i/a/d;)V

    .line 786
    :cond_0
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$1000(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/i/a/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 788
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$1000(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/i/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$400(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/i/a/d;->setEventTime(Lcom/dexcom/cgm/k/j;)V

    .line 789
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$1000(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/i/a/d;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$900(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Lcom/dexcom/cgm/i/a;Lcom/dexcom/cgm/i/a/d;)V

    .line 792
    :cond_1
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$1100(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/i/a/d;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 794
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$1100(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/i/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$400(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/i/a/d;->setEventTime(Lcom/dexcom/cgm/k/j;)V

    .line 795
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$1100(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/i/a/d;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$900(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Lcom/dexcom/cgm/i/a;Lcom/dexcom/cgm/i/a/d;)V

    .line 798
    :cond_2
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$1200(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/i/a/d;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 800
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$1200(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/i/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$400(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/i/a/d;->setEventTime(Lcom/dexcom/cgm/k/j;)V

    .line 801
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$1200(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/i/a/d;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$900(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Lcom/dexcom/cgm/i/a;Lcom/dexcom/cgm/i/a/d;)V

    .line 803
    :cond_3
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$8;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->finish()V

    .line 804
    return-void
.end method
