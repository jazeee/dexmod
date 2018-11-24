.class public Landroid/support/wearable/view/SimpleAnimatorListener;
.super Ljava/lang/Object;
.source "SimpleAnimatorListener.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# instance fields
.field private mWasCanceled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/SimpleAnimatorListener;->mWasCanceled:Z

    .line 19
    return-void
.end method

.method public onAnimationComplete(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Landroid/support/wearable/view/SimpleAnimatorListener;->mWasCanceled:Z

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/SimpleAnimatorListener;->onAnimationComplete(Landroid/animation/Animator;)V

    .line 26
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/view/SimpleAnimatorListener;->mWasCanceled:Z

    .line 35
    return-void
.end method

.method public wasCanceled()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/support/wearable/view/SimpleAnimatorListener;->mWasCanceled:Z

    return v0
.end method
