.class Landroid/support/wearable/activity/ConfirmationActivity$1;
.super Ljava/lang/Object;
.source "ConfirmationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/wearable/activity/ConfirmationActivity;

.field final synthetic val$fadeOutDelay:J

.field final synthetic val$label:Landroid/support/wearable/view/ActionLabel;


# direct methods
.method constructor <init>(Landroid/support/wearable/activity/ConfirmationActivity;Landroid/support/wearable/view/ActionLabel;J)V
    .locals 1

    .prologue
    .line 116
    iput-object p1, p0, Landroid/support/wearable/activity/ConfirmationActivity$1;->this$0:Landroid/support/wearable/activity/ConfirmationActivity;

    iput-object p2, p0, Landroid/support/wearable/activity/ConfirmationActivity$1;->val$label:Landroid/support/wearable/view/ActionLabel;

    iput-wide p3, p0, Landroid/support/wearable/activity/ConfirmationActivity$1;->val$fadeOutDelay:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/wearable/activity/ConfirmationActivity$1;->val$label:Landroid/support/wearable/view/ActionLabel;

    invoke-virtual {v0}, Landroid/support/wearable/view/ActionLabel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/wearable/activity/ConfirmationActivity$1;->val$fadeOutDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 122
    return-void
.end method
