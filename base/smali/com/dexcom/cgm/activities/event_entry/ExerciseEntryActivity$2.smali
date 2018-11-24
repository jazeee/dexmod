.class Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$2;
.super Ljava/lang/Object;
.source "ExerciseEntryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$2;->this$0:Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$id;->hour_picker:I

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 170
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$2;->this$0:Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->access$000(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;)[I

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    aget v1, v1, v0

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/dexcom/cgm/activities/R$id;->minute_picker:I

    .line 173
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 175
    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$2;->this$0:Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->access$100(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;)[I

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    aget v0, v2, v0

    .line 176
    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$2;->this$0:Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;

    invoke-static {v2, v1, v0}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->access$200(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;II)V

    .line 177
    return-void
.end method
