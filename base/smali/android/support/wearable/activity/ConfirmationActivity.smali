.class public Landroid/support/wearable/activity/ConfirmationActivity;
.super Landroid/app/Activity;
.source "ConfirmationActivity.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final CONFIRMATION_ANIMATION_DURATION_MS:I = 0x682

.field public static final EXTRA_ANIMATION_TYPE:Ljava/lang/String; = "animation_type"

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field public static final FAILURE_ANIMATION:I = 0x3

.field public static final OPEN_ON_PHONE_ANIMATION:I = 0x2

.field private static final OPEN_ON_PHONE_ANIMATION_DURATION_MS:I = 0x682

.field public static final SUCCESS_ANIMATION:I = 0x1

.field private static final TEXT_FADE_OFFSET_TIME_MS:I = 0x32


# instance fields
.field private mActionPage:Landroid/support/wearable/view/ActionPage;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/activity/ConfirmationActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private static getAnimationDuration(Landroid/graphics/drawable/AnimationDrawable;)J
    .locals 6

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    .line 137
    const-wide/16 v2, 0x0

    .line 138
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 139
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-wide v2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x32

    const/4 v10, 0x1

    const-wide/16 v2, 0x682

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Landroid/support/wearable/activity/ConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 66
    const-string v1, "animation_type"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 67
    const-string v4, "message"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    new-instance v0, Landroid/support/wearable/view/ActionPage;

    invoke-direct {v0, p0}, Landroid/support/wearable/view/ActionPage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/wearable/activity/ConfirmationActivity;->mActionPage:Landroid/support/wearable/view/ActionPage;

    .line 70
    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    .line 72
    sget v0, Landroid/support/wearable/R$layout;->error_layout:I

    invoke-virtual {p0, v0}, Landroid/support/wearable/activity/ConfirmationActivity;->setContentView(I)V

    .line 73
    sget v0, Landroid/support/wearable/R$id;->message:I

    invoke-virtual {p0, v0}, Landroid/support/wearable/activity/ConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const-wide/16 v0, 0x7d0

    .line 125
    :goto_0
    iget-object v2, p0, Landroid/support/wearable/activity/ConfirmationActivity;->mActionPage:Landroid/support/wearable/view/ActionPage;

    invoke-virtual {v2, v10}, Landroid/support/wearable/view/ActionPage;->setKeepScreenOn(Z)V

    .line 126
    iget-object v2, p0, Landroid/support/wearable/activity/ConfirmationActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/support/wearable/activity/ConfirmationActivity$2;

    invoke-direct {v3, p0}, Landroid/support/wearable/activity/ConfirmationActivity$2;-><init>(Landroid/support/wearable/activity/ConfirmationActivity;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/activity/ConfirmationActivity;->mActionPage:Landroid/support/wearable/view/ActionPage;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/support/wearable/view/ActionPage;->setColor(I)V

    .line 81
    iget-object v0, p0, Landroid/support/wearable/activity/ConfirmationActivity;->mActionPage:Landroid/support/wearable/view/ActionPage;

    new-instance v5, Landroid/animation/StateListAnimator;

    invoke-direct {v5}, Landroid/animation/StateListAnimator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/support/wearable/view/ActionPage;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 82
    iget-object v0, p0, Landroid/support/wearable/activity/ConfirmationActivity;->mActionPage:Landroid/support/wearable/view/ActionPage;

    sget v5, Landroid/support/wearable/view/ActionPage;->SCALE_MODE_CENTER:I

    invoke-virtual {v0, v5}, Landroid/support/wearable/view/ActionPage;->setImageScaleMode(I)V

    .line 83
    iget-object v0, p0, Landroid/support/wearable/activity/ConfirmationActivity;->mActionPage:Landroid/support/wearable/view/ActionPage;

    invoke-virtual {p0, v0}, Landroid/support/wearable/activity/ConfirmationActivity;->setContentView(Landroid/view/View;)V

    .line 84
    if-eqz v4, :cond_1

    .line 85
    iget-object v0, p0, Landroid/support/wearable/activity/ConfirmationActivity;->mActionPage:Landroid/support/wearable/view/ActionPage;

    invoke-virtual {v0, v4}, Landroid/support/wearable/view/ActionPage;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown type of animation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/wearable/activity/ConfirmationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/wearable/R$drawable;->open_on_phone_animation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 105
    :goto_1
    iget-object v1, p0, Landroid/support/wearable/activity/ConfirmationActivity;->mActionPage:Landroid/support/wearable/view/ActionPage;

    invoke-virtual {v1, v0}, Landroid/support/wearable/view/ActionPage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v1, p0, Landroid/support/wearable/activity/ConfirmationActivity;->mActionPage:Landroid/support/wearable/view/ActionPage;

    invoke-virtual {v1}, Landroid/support/wearable/view/ActionPage;->getLabel()Landroid/support/wearable/view/ActionLabel;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Landroid/support/wearable/view/ActionLabel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v4

    .line 109
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x2

    add-long/2addr v4, v12

    mul-long/2addr v4, v8

    sub-long v4, v2, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 111
    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/wearable/view/ActionLabel;->setAlpha(F)V

    .line 113
    invoke-virtual {v1}, Landroid/support/wearable/view/ActionLabel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v6, Landroid/support/wearable/activity/ConfirmationActivity$1;

    invoke-direct {v6, p0, v1, v4, v5}, Landroid/support/wearable/activity/ConfirmationActivity$1;-><init>(Landroid/support/wearable/activity/ConfirmationActivity;Landroid/support/wearable/view/ActionLabel;J)V

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-wide v0, v2

    goto/16 :goto_0

    .line 96
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/wearable/activity/ConfirmationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/wearable/R$drawable;->generic_confirmation_animation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
