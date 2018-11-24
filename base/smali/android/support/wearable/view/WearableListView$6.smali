.class Landroid/support/wearable/view/WearableListView$6;
.super Landroid/support/wearable/view/SimpleAnimatorListener;
.source "WearableListView.java"


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/WearableListView;

.field final synthetic val$endAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/WearableListView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$6;->this$0:Landroid/support/wearable/view/WearableListView;

    iput-object p2, p0, Landroid/support/wearable/view/WearableListView$6;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/support/wearable/view/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$6;->val$endAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$6;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 653
    :cond_0
    return-void
.end method
