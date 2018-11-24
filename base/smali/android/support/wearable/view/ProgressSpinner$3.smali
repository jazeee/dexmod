.class Landroid/support/wearable/view/ProgressSpinner$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProgressSpinner.java"


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/ProgressSpinner;

.field final synthetic val$listener:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/ProgressSpinner;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Landroid/support/wearable/view/ProgressSpinner$3;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    iput-object p2, p0, Landroid/support/wearable/view/ProgressSpinner$3;->val$listener:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner$3;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/ProgressSpinner;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner$3;->val$listener:Landroid/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner$3;->val$listener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 244
    :cond_0
    return-void
.end method
