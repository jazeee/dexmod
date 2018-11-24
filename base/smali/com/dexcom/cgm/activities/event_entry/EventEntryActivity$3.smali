.class Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$3;
.super Ljava/lang/Object;
.source "EventEntryActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$3;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$3;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$202(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Z)Z

    .line 124
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$3;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->onClickExerciseCheckbox(Landroid/view/View;)V

    .line 125
    const/4 v0, 0x0

    return v0
.end method
