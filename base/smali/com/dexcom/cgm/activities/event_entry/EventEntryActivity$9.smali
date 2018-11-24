.class Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;
.super Ljava/lang/Object;
.source "EventEntryActivity.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(Landroid/view/View;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 709
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_carbs_entry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 710
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$1300(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 712
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$1400(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    .line 713
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    sget v4, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_carbs:I

    invoke-virtual {v3, v4}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    .line 714
    invoke-static {v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$1400(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 715
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    :goto_1
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_insulin_entry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 724
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$1500(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_4

    .line 726
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$1600(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    .line 727
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    sget v4, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_insulin:I

    invoke-virtual {v3, v4}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    .line 728
    invoke-static {v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$1600(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 729
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    :goto_3
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_exercise_entry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 738
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$1700(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)I

    move-result v1

    if-ltz v1, :cond_6

    .line 740
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$1800(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 741
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ""

    .line 742
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    sget v4, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_exercise:I

    invoke-virtual {v3, v4}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    .line 743
    invoke-static {v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$1800(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 744
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    :goto_5
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_health_entry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 753
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$1900(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)I

    move-result v1

    if-ltz v1, :cond_8

    .line 755
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$2000(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, ""

    .line 756
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    sget v4, Lcom/dexcom/cgm/activities/R$string;->dex_event_entry_health:I

    invoke-virtual {v3, v4}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    .line 757
    invoke-static {v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$2000(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 758
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    :goto_7
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$700(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$402(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;

    .line 770
    :cond_0
    sget v0, Lcom/dexcom/cgm/activities/R$id;->dex_event_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 771
    iget-object v1, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity$9;->this$0:Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;

    invoke-static {v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$400(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;)Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;->access$2100(Lcom/dexcom/cgm/activities/event_entry/EventEntryActivity;Lcom/dexcom/cgm/k/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    return-void

    .line 712
    :cond_1
    const-string v1, " - "

    goto/16 :goto_0

    .line 719
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 726
    :cond_3
    const-string v1, " - "

    goto/16 :goto_2

    .line 733
    :cond_4
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 741
    :cond_5
    const-string v1, " - "

    goto/16 :goto_4

    .line 748
    :cond_6
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 755
    :cond_7
    const-string v1, " - "

    goto :goto_6

    .line 762
    :cond_8
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7
.end method
