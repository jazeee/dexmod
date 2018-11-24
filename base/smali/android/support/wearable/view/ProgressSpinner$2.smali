.class Landroid/support/wearable/view/ProgressSpinner$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProgressSpinner.java"


# instance fields
.field final synthetic this$0:Landroid/support/wearable/view/ProgressSpinner;

.field final synthetic val$listener:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/ProgressSpinner;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Landroid/support/wearable/view/ProgressSpinner$2;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    iput-object p2, p0, Landroid/support/wearable/view/ProgressSpinner$2;->val$listener:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner$2;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    iget-object v1, p0, Landroid/support/wearable/view/ProgressSpinner$2;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-virtual {v1}, Landroid/support/wearable/view/ProgressSpinner;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/wearable/view/ProgressSpinner;->access$202(Landroid/support/wearable/view/ProgressSpinner;I)I

    .line 178
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner$2;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/wearable/view/ProgressSpinner;->access$302(Landroid/support/wearable/view/ProgressSpinner;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    .line 180
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner$2;->val$listener:Landroid/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner$2;->val$listener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 183
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner$2;->val$listener:Landroid/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner$2;->val$listener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 172
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner$2;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/ProgressSpinner;->setVisibility(I)V

    .line 173
    return-void
.end method
