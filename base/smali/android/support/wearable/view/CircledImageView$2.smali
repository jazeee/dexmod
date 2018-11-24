.class Landroid/support/wearable/view/CircledImageView$2;
.super Ljava/lang/Object;
.source "CircledImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/CircledImageView;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/CircledImageView;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView$2;->this$0:Landroid/support/wearable/view/CircledImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView$2;->this$0:Landroid/support/wearable/view/CircledImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Landroid/support/wearable/view/CircledImageView;->access$002(Landroid/support/wearable/view/CircledImageView;I)I

    .line 88
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView$2;->this$0:Landroid/support/wearable/view/CircledImageView;

    invoke-virtual {v0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 89
    return-void
.end method
