.class Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;
.super Ljava/lang/Object;
.source "CGMStateFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 627
    sget-object v0, Lcom/dexcom/cgm/activities/CGMStateFragment$13;->$SwitchMap$com$dexcom$cgm$presentation$model$enums$DexDisplayState:[I

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->m_displayGlucose:Lcom/dexcom/cgm/h/a/b;

    invoke-virtual {v1}, Lcom/dexcom/cgm/h/a/b;->getDisplayState()Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/h/a/a/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 684
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$100(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    .line 685
    return-void

    .line 632
    :pswitch_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$700(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    goto :goto_0

    .line 635
    :pswitch_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$700(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    goto :goto_0

    .line 638
    :pswitch_3
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    const-class v1, Lcom/dexcom/cgm/activities/MeterEntryActivity;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$800(Lcom/dexcom/cgm/activities/CGMStateFragment;Ljava/lang/Class;)V

    goto :goto_0

    .line 645
    :pswitch_4
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$900(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    goto :goto_0

    .line 648
    :pswitch_5
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    const-class v1, Lcom/dexcom/cgm/activities/MeterEntryActivity;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$800(Lcom/dexcom/cgm/activities/CGMStateFragment;Ljava/lang/Class;)V

    goto :goto_0

    .line 651
    :pswitch_6
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$1000(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    goto :goto_0

    .line 654
    :pswitch_7
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$1100(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    goto :goto_0

    .line 657
    :pswitch_8
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$1100(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    goto :goto_0

    .line 660
    :pswitch_9
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$1200(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    .line 661
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->m_cgmp:Lcom/dexcom/cgm/h/a;

    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/h/a;->startSensor(Lcom/dexcom/cgm/k/j;)V

    .line 662
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;

    iget-object v1, v1, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->main_screen_warmup_started_toast:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showGreenCheckToast(I)V

    goto :goto_0

    .line 668
    :pswitch_a
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$700(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    goto :goto_0

    .line 671
    :pswitch_b
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$1300(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    goto :goto_0

    .line 676
    :pswitch_c
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$1400(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    goto/16 :goto_0

    .line 681
    :pswitch_d
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;->this$1:Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$1500(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    goto/16 :goto_0

    .line 627
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 622
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 616
    return-void
.end method
