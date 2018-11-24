.class Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$3;
.super Ljava/lang/Object;
.source "ExerciseEntryActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$3;->this$0:Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 127
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$3;->this$0:Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;

    sget v0, Lcom/dexcom/cgm/activities/R$id;->time_duration_descriptor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->access$302(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$3;->this$0:Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->access$300(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$3;->this$0:Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;

    sget v2, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_exercise_duration:I

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$3;->this$0:Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->access$400(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$3;->this$0:Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->access$402(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;I)I

    .line 137
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;-><init>()V

    .line 138
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$3;->this$0:Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->access$400(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;)I

    move-result v1

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_1

    .line 140
    sget v1, Lcom/dexcom/cgm/activities/R$id;->hour_picker:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$3;->this$0:Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;

    .line 142
    invoke-static {v2}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->access$000(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;)[I

    move-result-object v2

    const/4 v3, 0x0

    .line 140
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->configureMaster(Landroid/view/View;I[II)V

    .line 153
    :goto_0
    sget v2, Lcom/dexcom/cgm/activities/R$id;->minute_picker:I

    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$3;->this$0:Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;

    .line 156
    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->access$100(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;)[I

    move-result-object v3

    const/4 v1, 0x1

    .line 157
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x6

    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$3;->this$0:Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;

    .line 159
    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->access$400(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;)I

    move-result v6

    move-object v1, p1

    .line 153
    invoke-virtual/range {v0 .. v6}, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->configureSlave(Landroid/view/View;I[ILjava/lang/Boolean;II)V

    .line 160
    return-void

    .line 147
    :cond_1
    sget v1, Lcom/dexcom/cgm/activities/R$id;->hour_picker:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$3;->this$0:Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;

    .line 149
    invoke-static {v2}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->access$000(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity$3;->this$0:Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;

    .line 150
    invoke-static {v3}, Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;->access$400(Lcom/dexcom/cgm/activities/event_entry/ExerciseEntryActivity;)I

    move-result v3

    div-int/lit8 v3, v3, 0x3c

    .line 147
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/dexcom/cgm/activities/event_entry/EventsNumberPickerUtil;->configureMaster(Landroid/view/View;I[II)V

    goto :goto_0
.end method
