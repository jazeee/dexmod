.class Lcom/dexcom/cgm/activities/controls/DexListEditTextView$8;
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
    .line 371
    iput-object p1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$8;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$8;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->editButton:Landroid/widget/ImageView;

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->ic_save_black_24dp:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    iget-object v0, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$8;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    iget-object v0, v0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->editButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/controls/DexListEditTextView$8;->this$0:Lcom/dexcom/cgm/activities/controls/DexListEditTextView;

    invoke-static {v1}, Lcom/dexcom/cgm/activities/controls/DexListEditTextView;->access$1000(Lcom/dexcom/cgm/activities/controls/DexListEditTextView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 384
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 376
    return-void
.end method
