.class Landroid/support/wearable/view/DotsPageIndicator$1;
.super Landroid/support/wearable/view/SimpleAnimatorListener;
.source "DotsPageIndicator.java"


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/DotsPageIndicator;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/DotsPageIndicator;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Landroid/support/wearable/view/DotsPageIndicator$1;->this$0:Landroid/support/wearable/view/DotsPageIndicator;

    invoke-direct {p0}, Landroid/support/wearable/view/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationComplete(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 519
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator$1;->this$0:Landroid/support/wearable/view/DotsPageIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/wearable/view/DotsPageIndicator;->access$002(Landroid/support/wearable/view/DotsPageIndicator;Z)Z

    .line 520
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator$1;->this$0:Landroid/support/wearable/view/DotsPageIndicator;

    invoke-virtual {v0}, Landroid/support/wearable/view/DotsPageIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/DotsPageIndicator$1;->this$0:Landroid/support/wearable/view/DotsPageIndicator;

    invoke-static {v1}, Landroid/support/wearable/view/DotsPageIndicator;->access$200(Landroid/support/wearable/view/DotsPageIndicator;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/DotsPageIndicator$1;->this$0:Landroid/support/wearable/view/DotsPageIndicator;

    invoke-static {v1}, Landroid/support/wearable/view/DotsPageIndicator;->access$100(Landroid/support/wearable/view/DotsPageIndicator;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 526
    return-void
.end method
