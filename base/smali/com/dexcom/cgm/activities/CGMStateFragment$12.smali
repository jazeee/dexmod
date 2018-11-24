.class Lcom/dexcom/cgm/activities/CGMStateFragment$12;
.super Ljava/lang/Object;
.source "CGMStateFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

.field final synthetic val$rotationValue:F


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/CGMStateFragment;F)V
    .locals 0

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$12;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    iput p2, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$12;->val$rotationValue:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$12;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$1900(Lcom/dexcom/cgm/activities/CGMStateFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1147
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$12;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/CGMStateFragment;->access$1900(Lcom/dexcom/cgm/activities/CGMStateFragment;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$12;->val$rotationValue:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 1148
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1154
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1141
    return-void
.end method
