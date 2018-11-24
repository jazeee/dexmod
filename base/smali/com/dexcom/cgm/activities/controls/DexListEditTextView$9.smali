.class Lcom/dexcom/cgm/activities/controls/DexListEditTextView$9;
.super Ljava/lang/Object;
.source "DexListEditTextView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$9;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$9;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->editButton:Landroid/widget/ImageView;

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_mode_edit_black_24dp:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$9;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->editButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$9;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$1000(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 411
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 403
    return-void
.end method
