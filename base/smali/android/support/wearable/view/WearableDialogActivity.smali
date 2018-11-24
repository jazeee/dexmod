.class public Landroid/support/wearable/view/WearableDialogActivity;
.super Landroid/app/Activity;
.source "WearableDialogActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/support/wearable/view/ObservableScrollView$OnScrollListener;
.implements Landroid/view/View$OnApplyWindowInsetsListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final ANIM_DURATION:J = 0x1f4L

.field private static final HIDE_ANIM_DELAY:J = 0x5dcL

.field private static final MSG_HIDE_BUTTON_BAR:I = 0x3e9


# instance fields
.field private mAnimatedWrapperContainer:Landroid/view/ViewGroup;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonPanel:Landroid/view/ViewGroup;

.field private mButtonPanelAnimator:Landroid/animation/ObjectAnimator;

.field private mButtonPanelFloatHeight:F

.field private mButtonPanelShadeHeight:I

.field private mButtonPositive:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHiddenBefore:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMessageView:Landroid/widget/TextView;

.field private mParentPanel:Landroid/support/wearable/view/ObservableScrollView;

.field private mTitleView:Landroid/widget/TextView;

.field private mTranslationValuesHolder:Landroid/animation/PropertyValuesHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/wearable/view/WearableDialogActivity;)Landroid/support/wearable/view/ObservableScrollView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mParentPanel:Landroid/support/wearable/view/ObservableScrollView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/wearable/view/WearableDialogActivity;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private getButtonBarFloatingBottomTranslation()I
    .locals 2

    .prologue
    .line 311
    invoke-direct {p0}, Landroid/support/wearable/view/WearableDialogActivity;->getButtonBarOffsetFromBottom()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getButtonBarFloatingTopTranslation()I
    .locals 3

    .prologue
    .line 303
    invoke-direct {p0}, Landroid/support/wearable/view/WearableDialogActivity;->getButtonBarOffsetFromBottom()I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelShadeHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getButtonBarOffsetFromBottom()I
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/support/wearable/view/WearableDialogActivity;->mParentPanel:Landroid/support/wearable/view/ObservableScrollView;

    invoke-virtual {v1}, Landroid/support/wearable/view/ObservableScrollView;->getScrollY()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/wearable/view/WearableDialogActivity;->mParentPanel:Landroid/support/wearable/view/ObservableScrollView;

    invoke-virtual {v1}, Landroid/support/wearable/view/ObservableScrollView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private hideButtonBar()V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 324
    iget-boolean v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mHiddenBefore:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_3

    .line 326
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 331
    :cond_1
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v1, v3, [F

    invoke-direct {p0}, Landroid/support/wearable/view/WearableDialogActivity;->getButtonBarFloatingTopTranslation()I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v7

    invoke-direct {p0}, Landroid/support/wearable/view/WearableDialogActivity;->getButtonBarFloatingBottomTranslation()I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v6

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mTranslationValuesHolder:Landroid/animation/PropertyValuesHolder;

    .line 335
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    iget-object v2, p0, Landroid/support/wearable/view/WearableDialogActivity;->mTranslationValuesHolder:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v7

    sget-object v2, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v3, v3, [F

    iget v4, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelFloatHeight:F

    aput v4, v3, v7

    aput v5, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelAnimator:Landroid/animation/ObjectAnimator;

    .line 339
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/support/wearable/view/WearableDialogActivity$1;

    invoke-direct {v1, p0}, Landroid/support/wearable/view/WearableDialogActivity$1;-><init>(Landroid/support/wearable/view/WearableDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 348
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 349
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/support/wearable/view/WearableDialogActivity;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 350
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 375
    :cond_2
    :goto_0
    iput-boolean v6, p0, Landroid/support/wearable/view/WearableDialogActivity;->mHiddenBefore:Z

    .line 376
    return-void

    .line 351
    :cond_3
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 353
    invoke-direct {p0}, Landroid/support/wearable/view/WearableDialogActivity;->getButtonBarFloatingTopTranslation()I

    move-result v0

    .line 354
    invoke-direct {p0}, Landroid/support/wearable/view/WearableDialogActivity;->getButtonBarFloatingBottomTranslation()I

    move-result v1

    .line 355
    if-ge v0, v1, :cond_4

    .line 357
    iget-object v2, p0, Landroid/support/wearable/view/WearableDialogActivity;->mTranslationValuesHolder:Landroid/animation/PropertyValuesHolder;

    new-array v3, v3, [F

    int-to-float v4, v0

    aput v4, v3, v7

    int-to-float v1, v1

    aput v1, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 360
    iget-object v1, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 361
    iget-object v1, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_0

    .line 365
    :cond_4
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 366
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 367
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setTranslationZ(F)V

    goto :goto_0

    .line 371
    :cond_5
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 372
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setTranslationZ(F)V

    goto :goto_0
.end method

.method private setButton(Landroid/widget/Button;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 167
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    :goto_0
    return v0

    .line 171
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 172
    if-eqz p3, :cond_1

    .line 173
    invoke-virtual {p1, p3, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 175
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAlertTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNegativeButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNeutralButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNeutralButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPositiveButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .prologue
    .line 291
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 296
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 293
    :pswitch_0
    invoke-direct {p0}, Landroid/support/wearable/view/WearableDialogActivity;->hideButtonBar()V

    .line 294
    const/4 v0, 0x1

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 96
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 97
    invoke-virtual {p2}, Landroid/view/WindowInsets;->isRound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    sget v1, Landroid/support/wearable/R$dimen;->diag_shade_height_round:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelShadeHeight:I

    .line 102
    iget-object v1, p0, Landroid/support/wearable/view/WearableDialogActivity;->mTitleView:Landroid/widget/TextView;

    sget v2, Landroid/support/wearable/R$dimen;->diag_content_side_padding_round:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Landroid/support/wearable/R$dimen;->diag_content_top_padding_round:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Landroid/support/wearable/R$dimen;->diag_content_side_padding_round:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 107
    iget-object v1, p0, Landroid/support/wearable/view/WearableDialogActivity;->mMessageView:Landroid/widget/TextView;

    sget v2, Landroid/support/wearable/R$dimen;->diag_content_side_padding_round:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Landroid/support/wearable/R$dimen;->diag_content_side_padding_round:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Landroid/support/wearable/R$dimen;->diag_content_bottom_padding:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 112
    iget-object v1, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    sget v2, Landroid/support/wearable/R$dimen;->diag_content_side_padding_round:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Landroid/support/wearable/R$dimen;->diag_button_side_padding_right_round:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Landroid/support/wearable/R$dimen;->diag_button_bottom_padding_round:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v2, v5, v3, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 122
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/wearable/R$dimen;->diag_shade_height_rect:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelShadeHeight:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 237
    :goto_0
    return-void

    .line 228
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableDialogActivity;->onPositiveButtonClick()V

    goto :goto_0

    .line 231
    :pswitch_1
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableDialogActivity;->onNegativeButtonClick()V

    goto :goto_0

    .line 234
    :pswitch_2
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableDialogActivity;->onNeutralButtonClick()V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x1020019
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v0, Landroid/support/wearable/R$style;->Theme_WearDiag:I

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableDialogActivity;->setTheme(I)V

    .line 65
    sget v0, Landroid/support/wearable/R$layout;->alert_dialog_wearable:I

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableDialogActivity;->setContentView(I)V

    .line 67
    sget v0, Landroid/support/wearable/R$id;->animatedWrapperContainer:I

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mAnimatedWrapperContainer:Landroid/view/ViewGroup;

    .line 69
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mAnimatedWrapperContainer:Landroid/view/ViewGroup;

    sget v1, Landroid/support/wearable/R$id;->alertTitle:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mTitleView:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mAnimatedWrapperContainer:Landroid/view/ViewGroup;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mMessageView:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mAnimatedWrapperContainer:Landroid/view/ViewGroup;

    sget v1, Landroid/support/wearable/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    .line 73
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    const v1, 0x1020019

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPositive:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    const v1, 0x102001a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonNegative:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    const v1, 0x102001b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonNeutral:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableDialogActivity;->setupLayout()V

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mHandler:Landroid/os/Handler;

    .line 84
    const v0, 0x10c000d

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 86
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/wearable/R$dimen;->diag_floating_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelFloatHeight:F

    .line 87
    sget v0, Landroid/support/wearable/R$id;->parentPanel:I

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/WearableDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/view/ObservableScrollView;

    iput-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mParentPanel:Landroid/support/wearable/view/ObservableScrollView;

    .line 88
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mParentPanel:Landroid/support/wearable/view/ObservableScrollView;

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/ObservableScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 89
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mParentPanel:Landroid/support/wearable/view/ObservableScrollView;

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/ObservableScrollView;->setOnScrollListener(Landroid/support/wearable/view/ObservableScrollView$OnScrollListener;)V

    .line 91
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mParentPanel:Landroid/support/wearable/view/ObservableScrollView;

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/ObservableScrollView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 92
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 7

    .prologue
    .line 250
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 255
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mHiddenBefore:Z

    .line 259
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mAnimatedWrapperContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/view/WearableDialogActivity;->mParentPanel:Landroid/support/wearable/view/ObservableScrollView;

    invoke-virtual {v1}, Landroid/support/wearable/view/ObservableScrollView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 263
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    iget v1, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelFloatHeight:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationZ(F)V

    .line 266
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 269
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/support/wearable/view/WearableDialogActivity;->getButtonBarFloatingBottomTranslation()I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0}, Landroid/support/wearable/view/WearableDialogActivity;->getButtonBarFloatingTopTranslation()I

    move-result v6

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelFloatHeight:F

    aput v6, v4, v5

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelAnimator:Landroid/animation/ObjectAnimator;

    .line 275
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 276
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/support/wearable/view/WearableDialogActivity;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanelAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 287
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 281
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationZ(F)V

    .line 282
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/wearable/view/WearableDialogActivity;->mParentPanel:Landroid/support/wearable/view/ObservableScrollView;

    invoke-virtual {v1}, Landroid/support/wearable/view/ObservableScrollView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/wearable/view/WearableDialogActivity;->mAnimatedWrapperContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->offsetTopAndBottom(I)V

    .line 285
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mAnimatedWrapperContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/wearable/view/WearableDialogActivity;->mParentPanel:Landroid/support/wearable/view/ObservableScrollView;

    invoke-virtual {v1}, Landroid/support/wearable/view/ObservableScrollView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBottom(I)V

    goto :goto_0
.end method

.method public onNegativeButtonClick()V
    .locals 0

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableDialogActivity;->finish()V

    .line 222
    return-void
.end method

.method public onNeutralButtonClick()V
    .locals 0

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableDialogActivity;->finish()V

    .line 218
    return-void
.end method

.method public onPositiveButtonClick()V
    .locals 0

    .prologue
    .line 213
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableDialogActivity;->finish()V

    .line 214
    return-void
.end method

.method public onScroll(F)V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    invoke-direct {p0}, Landroid/support/wearable/view/WearableDialogActivity;->hideButtonBar()V

    .line 244
    return-void
.end method

.method protected setupLayout()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableDialogActivity;->getAlertTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 132
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/WearableDialogActivity;->getMessage()Ljava/lang/CharSequence;

    move-result-object v0

    .line 140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :goto_1
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableDialogActivity;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableDialogActivity;->getPositiveButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5}, Landroid/support/wearable/view/WearableDialogActivity;->setButton(Landroid/widget/Button;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 150
    iget-object v4, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableDialogActivity;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableDialogActivity;->getNegativeButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Landroid/support/wearable/view/WearableDialogActivity;->setButton(Landroid/widget/Button;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    .line 153
    :goto_2
    iget-object v4, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableDialogActivity;->getNeutralButtonText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0}, Landroid/support/wearable/view/WearableDialogActivity;->getNeutralButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Landroid/support/wearable/view/WearableDialogActivity;->setButton(Landroid/widget/Button;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_5

    .line 156
    :cond_1
    :goto_3
    iget-object v0, p0, Landroid/support/wearable/view/WearableDialogActivity;->mButtonPanel:Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 157
    return-void

    .line 134
    :cond_2
    iget-object v4, p0, Landroid/support/wearable/view/WearableDialogActivity;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v4, p0, Landroid/support/wearable/view/WearableDialogActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 143
    :cond_3
    iget-object v4, p0, Landroid/support/wearable/view/WearableDialogActivity;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v4, p0, Landroid/support/wearable/view/WearableDialogActivity;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 150
    goto :goto_2

    :cond_5
    move v2, v1

    .line 153
    goto :goto_3

    :cond_6
    move v1, v3

    .line 156
    goto :goto_4
.end method
