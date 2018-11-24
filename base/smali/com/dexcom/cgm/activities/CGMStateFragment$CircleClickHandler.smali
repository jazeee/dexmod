.class Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;
.super Ljava/lang/Object;
.source "CGMStateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field m_cgmp:Lcom/dexcom/cgm/h/a;

.field m_displayGlucose:Lcom/dexcom/cgm/h/a/b;

.field final synthetic this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/CGMStateFragment;Lcom/dexcom/cgm/h/a;)V
    .locals 1

    .prologue
    .line 599
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    invoke-interface {p2}, Lcom/dexcom/cgm/h/a;->getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->m_displayGlucose:Lcom/dexcom/cgm/h/a/b;

    .line 601
    iput-object p2, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->m_cgmp:Lcom/dexcom/cgm/h/a;

    .line 603
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$anim;->image_click:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 609
    new-instance v1, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler$1;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment$CircleClickHandler;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 687
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 688
    return-void
.end method
