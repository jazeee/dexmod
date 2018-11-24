.class Lcom/dexcom/cgm/activities/IntroActivity$1;
.super Ljava/lang/Object;
.source "IntroActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/activities/IntroActivity;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/activities/IntroActivity;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/dexcom/cgm/activities/IntroActivity$1;->this$0:Lcom/dexcom/cgm/activities/IntroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dexcom/cgm/activities/IntroActivity$1;->this$0:Lcom/dexcom/cgm/activities/IntroActivity;

    iget v1, v0, Lcom/dexcom/cgm/activities/IntroActivity;->totalAnimations:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/dexcom/cgm/activities/IntroActivity;->totalAnimations:I

    .line 108
    iget-object v0, p0, Lcom/dexcom/cgm/activities/IntroActivity$1;->this$0:Lcom/dexcom/cgm/activities/IntroActivity;

    iget v0, v0, Lcom/dexcom/cgm/activities/IntroActivity;->totalAnimations:I

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/dexcom/cgm/activities/IntroActivity$1;->this$0:Lcom/dexcom/cgm/activities/IntroActivity;

    iget v0, v0, Lcom/dexcom/cgm/activities/IntroActivity;->currentScreen:I

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/dexcom/cgm/activities/IntroActivity$1;->this$0:Lcom/dexcom/cgm/activities/IntroActivity;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->splash_screen_header:I

    sget v2, Lcom/dexcom/cgm/activities/R$drawable;->g5splash_white_logo:I

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/activities/IntroActivity;->access$000(Lcom/dexcom/cgm/activities/IntroActivity;II)V

    .line 113
    iget-object v0, p0, Lcom/dexcom/cgm/activities/IntroActivity$1;->this$0:Lcom/dexcom/cgm/activities/IntroActivity;

    invoke-static {v0}, Lcom/dexcom/cgm/activities/IntroActivity;->access$100(Lcom/dexcom/cgm/activities/IntroActivity;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/IntroActivity$1;->this$0:Lcom/dexcom/cgm/activities/IntroActivity;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/IntroActivity$1;->this$0:Lcom/dexcom/cgm/activities/IntroActivity;

    iget v1, v1, Lcom/dexcom/cgm/activities/IntroActivity;->nextScreen:I

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/IntroActivity;->access$200(Lcom/dexcom/cgm/activities/IntroActivity;I)V

    .line 116
    iget-object v0, p0, Lcom/dexcom/cgm/activities/IntroActivity$1;->this$0:Lcom/dexcom/cgm/activities/IntroActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/dexcom/cgm/activities/IntroActivity;->busyAnimating:Z

    .line 118
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
