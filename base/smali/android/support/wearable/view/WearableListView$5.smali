.class Landroid/support/wearable/view/WearableListView$5;
.super Landroid/support/wearable/view/SimpleAnimatorListener;
.source "WearableListView.java"


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/WearableListView;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/WearableListView;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Landroid/support/wearable/view/WearableListView$5;->this$0:Landroid/support/wearable/view/WearableListView;

    invoke-direct {p0}, Landroid/support/wearable/view/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 631
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableListView$5;->wasCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    iget-object v0, p0, Landroid/support/wearable/view/WearableListView$5;->this$0:Landroid/support/wearable/view/WearableListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/wearable/view/WearableListView;->access$702(Landroid/support/wearable/view/WearableListView;Z)Z

    .line 634
    :cond_0
    return-void
.end method
