.class public Landroid/support/wearable/view/DotsPageIndicator;
.super Landroid/view/View;
.source "DotsPageIndicator.java"

# interfaces
.implements Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;
.implements Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Dots"


# instance fields
.field private mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

.field private mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

.field private mColumnCount:I

.field private mCurrentState:I

.field private mDotColor:I

.field private mDotColorSelected:I

.field private mDotFadeInDuration:I

.field private mDotFadeOutDelay:I

.field private mDotFadeOutDuration:I

.field private mDotFadeWhenIdle:Z

.field private final mDotPaint:Landroid/graphics/Paint;

.field private final mDotPaintSelected:Landroid/graphics/Paint;

.field private final mDotPaintShadow:Landroid/graphics/Paint;

.field private final mDotPaintShadowSelected:Landroid/graphics/Paint;

.field private mDotRadius:F

.field private mDotRadiusSelected:F

.field private mDotShadowColor:I

.field private mDotShadowDx:F

.field private mDotShadowDy:F

.field private mDotShadowRadius:F

.field private mDotSpacing:I

.field private mPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

.field private mPager:Landroid/support/wearable/view/GridViewPager;

.field private mSelectedColumn:I

.field private mSelectedRow:I

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/DotsPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/DotsPageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator:[I

    sget v2, Landroid/support/wearable/R$style;->DotsPageIndicatorStyle:I

    invoke-virtual {v0, p2, v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotSpacing:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotSpacing:I

    .line 87
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotRadius:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadius:F

    .line 88
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotRadiusSelected:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadiusSelected:F

    .line 89
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotColor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColor:I

    .line 90
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotColorSelected:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColorSelected:I

    .line 91
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotFadeOutDelay:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDelay:I

    .line 92
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotFadeOutDuration:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDuration:I

    .line 93
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotFadeInDuration:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeInDuration:I

    .line 94
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotFadeWhenIdle:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeWhenIdle:Z

    .line 95
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotShadowDx:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDx:F

    .line 96
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotShadowDy:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDy:F

    .line 97
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotShadowRadius:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    .line 98
    sget v1, Landroid/support/wearable/R$styleable;->DotsPageIndicator_dotShadowColor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowColor:I

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    .line 102
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintSelected:Landroid/graphics/Paint;

    .line 106
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintSelected:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColorSelected:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintSelected:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintShadow:Landroid/graphics/Paint;

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintShadowSelected:Landroid/graphics/Paint;

    .line 111
    iput v3, p0, Landroid/support/wearable/view/DotsPageIndicator;->mCurrentState:I

    .line 112
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x5

    iput v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mColumnCount:I

    .line 116
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mSelectedColumn:I

    .line 117
    iput-boolean v3, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeWhenIdle:Z

    .line 120
    :cond_0
    iget-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeWhenIdle:Z

    if-eqz v0, :cond_1

    .line 121
    iput-boolean v3, p0, Landroid/support/wearable/view/DotsPageIndicator;->mVisible:Z

    .line 122
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 130
    :goto_0
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->updateShadows()V

    .line 131
    return-void

    .line 127
    :cond_1
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 128
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/DotsPageIndicator;->setAlpha(F)V

    goto :goto_0
.end method

.method static synthetic access$002(Landroid/support/wearable/view/DotsPageIndicator;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mVisible:Z

    return p1
.end method

.method static synthetic access$100(Landroid/support/wearable/view/DotsPageIndicator;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDuration:I

    return v0
.end method

.method static synthetic access$200(Landroid/support/wearable/view/DotsPageIndicator;)I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDelay:I

    return v0
.end method

.method private columnChanged(I)V
    .locals 0

    .prologue
    .line 475
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mSelectedColumn:I

    .line 476
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    .line 477
    return-void
.end method

.method private fadeIn()V
    .locals 4

    .prologue
    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mVisible:Z

    .line 494
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 495
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeInDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 499
    return-void
.end method

.method private fadeInOut()V
    .locals 4

    .prologue
    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mVisible:Z

    .line 512
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 513
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeInDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/wearable/view/DotsPageIndicator$1;

    invoke-direct {v1, p0}, Landroid/support/wearable/view/DotsPageIndicator$1;-><init>(Landroid/support/wearable/view/DotsPageIndicator;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 529
    return-void
.end method

.method private fadeOut(J)V
    .locals 5

    .prologue
    .line 502
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mVisible:Z

    .line 503
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 504
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 508
    return-void
.end method

.method private rowChanged(II)V
    .locals 2

    .prologue
    .line 480
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mSelectedRow:I

    .line 481
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/GridPagerAdapter;->getColumnCount(I)I

    move-result v0

    .line 482
    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mColumnCount:I

    if-eq v0, v1, :cond_1

    .line 483
    iput v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mColumnCount:I

    .line 484
    iput p2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mSelectedColumn:I

    .line 485
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->requestLayout()V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mSelectedColumn:I

    if-eq p2, v0, :cond_0

    .line 487
    iput p2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mSelectedColumn:I

    .line 488
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    goto :goto_0
.end method

.method private updateDotPaint(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V
    .locals 9

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 142
    add-float v3, p3, p4

    .line 143
    div-float v2, p3, v3

    .line 144
    new-instance v0, Landroid/graphics/RadialGradient;

    new-array v4, v5, [I

    aput p6, v4, v6

    aput p6, v4, v7

    aput v6, v4, v8

    new-array v5, v5, [F

    aput v1, v5, v6

    aput v2, v5, v7

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v5, v8

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 158
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 159
    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    return-void
.end method

.method private updateShadows()V
    .locals 7

    .prologue
    .line 134
    iget-object v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintShadow:Landroid/graphics/Paint;

    iget v3, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadius:F

    iget v4, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    iget v5, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColor:I

    iget v6, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowColor:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/wearable/view/DotsPageIndicator;->updateDotPaint(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V

    .line 136
    iget-object v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintSelected:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintShadowSelected:Landroid/graphics/Paint;

    iget v3, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadiusSelected:F

    iget v4, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    iget v5, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColorSelected:I

    iget v6, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowColor:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/wearable/view/DotsPageIndicator;->updateDotPaint(Landroid/graphics/Paint;Landroid/graphics/Paint;FFII)V

    .line 138
    return-void
.end method


# virtual methods
.method public getDotColor()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColor:I

    return v0
.end method

.method public getDotColorSelected()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColorSelected:I

    return v0
.end method

.method public getDotFadeInDuration()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeInDuration:I

    return v0
.end method

.method public getDotFadeOutDelay()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDelay:I

    return v0
.end method

.method public getDotFadeOutDuration()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDuration:I

    return v0
.end method

.method public getDotFadeWhenIdle()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeWhenIdle:Z

    return v0
.end method

.method public getDotRadius()F
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadius:F

    return v0
.end method

.method public getDotRadiusSelected()F
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadiusSelected:F

    return v0
.end method

.method public getDotShadowColor()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowColor:I

    return v0
.end method

.method public getDotShadowDx()F
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDx:F

    return v0
.end method

.method public getDotShadowDy()F
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDy:F

    return v0
.end method

.method public getDotShadowRadius()F
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    return v0
.end method

.method public getDotSpacing()F
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotSpacing:I

    int-to-float v0, v0

    return v0
.end method

.method public onAdapterChanged(Landroid/support/wearable/view/GridPagerAdapter;Landroid/support/wearable/view/GridPagerAdapter;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 586
    iput-object p2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    .line 587
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v0, :cond_0

    .line 588
    invoke-direct {p0, v1, v1}, Landroid/support/wearable/view/DotsPageIndicator;->rowChanged(II)V

    .line 589
    iget-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeWhenIdle:Z

    if-eqz v0, :cond_0

    .line 590
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->fadeInOut()V

    .line 593
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    if-eqz v0, :cond_1

    .line 594
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/wearable/view/GridPagerAdapter;Landroid/support/wearable/view/GridPagerAdapter;)V

    .line 596
    :cond_1
    return-void
.end method

.method public onDataSetChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 649
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 650
    invoke-direct {p0, v1, v1}, Landroid/support/wearable/view/DotsPageIndicator;->rowChanged(II)V

    .line 652
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    invoke-interface {v0}, Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;->onDataSetChanged()V

    .line 655
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 625
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 626
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mColumnCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 627
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotSpacing:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 628
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 629
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 630
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 631
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mColumnCount:I

    if-ge v0, v1, :cond_1

    .line 632
    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mSelectedColumn:I

    if-ne v0, v1, :cond_0

    .line 633
    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadiusSelected:F

    iget v2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    add-float/2addr v1, v2

    .line 634
    iget v2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDx:F

    iget v3, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDy:F

    iget-object v4, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintShadowSelected:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 635
    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadiusSelected:F

    iget-object v2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintSelected:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 641
    :goto_1
    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotSpacing:I

    int-to-float v1, v1

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 637
    :cond_0
    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadius:F

    iget v2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    add-float/2addr v1, v2

    .line 638
    iget v2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDx:F

    iget v3, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDy:F

    iget-object v4, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 639
    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadius:F

    iget-object v2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 643
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 645
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 601
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 602
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 608
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 609
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 618
    :goto_1
    invoke-static {v0, p1, v4}, Landroid/support/wearable/view/DotsPageIndicator;->resolveSizeAndState(III)I

    move-result v0

    invoke-static {v1, p2, v4}, Landroid/support/wearable/view/DotsPageIndicator;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/wearable/view/DotsPageIndicator;->setMeasuredDimension(II)V

    .line 621
    return-void

    .line 604
    :cond_0
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mColumnCount:I

    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotSpacing:I

    mul-int/2addr v0, v1

    .line 605
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 611
    :cond_1
    iget v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadius:F

    iget v2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadiusSelected:F

    iget v3, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 614
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 615
    int-to-float v1, v1

    iget v2, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDy:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 616
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2

    .prologue
    .line 533
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mCurrentState:I

    if-eq v0, p1, :cond_0

    .line 534
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mCurrentState:I

    .line 535
    iget-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeWhenIdle:Z

    if-eqz v0, :cond_0

    .line 536
    if-nez p1, :cond_0

    .line 537
    iget-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mVisible:Z

    if-eqz v0, :cond_2

    .line 538
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDelay:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Landroid/support/wearable/view/DotsPageIndicator;->fadeOut(J)V

    .line 545
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 548
    :cond_1
    return-void

    .line 540
    :cond_2
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->fadeInOut()V

    goto :goto_0
.end method

.method public onPageScrolled(IIFFII)V
    .locals 7

    .prologue
    .line 553
    iget-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeWhenIdle:Z

    if-eqz v0, :cond_0

    .line 554
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 555
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_2

    .line 556
    iget-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mVisible:Z

    if-nez v0, :cond_0

    .line 557
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->fadeIn()V

    .line 566
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;->onPageScrolled(IIFFII)V

    .line 570
    :cond_1
    return-void

    .line 560
    :cond_2
    iget-boolean v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mVisible:Z

    if-eqz v0, :cond_0

    .line 561
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/wearable/view/DotsPageIndicator;->fadeOut(J)V

    goto :goto_0
.end method

.method public onPageSelected(II)V
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mSelectedRow:I

    if-eq p1, v0, :cond_2

    .line 575
    invoke-direct {p0, p1, p2}, Landroid/support/wearable/view/DotsPageIndicator;->rowChanged(II)V

    .line 579
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;->onPageSelected(II)V

    .line 582
    :cond_1
    return-void

    .line 576
    :cond_2
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mSelectedColumn:I

    if-eq p2, v0, :cond_0

    .line 577
    invoke-direct {p0, p2}, Landroid/support/wearable/view/DotsPageIndicator;->columnChanged(I)V

    goto :goto_0
.end method

.method public setDotColor(I)V
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColor:I

    if-eq v0, p1, :cond_0

    .line 291
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColor:I

    .line 292
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    .line 294
    :cond_0
    return-void
.end method

.method public setDotColorSelected(I)V
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColorSelected:I

    if-eq v0, p1, :cond_0

    .line 312
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotColorSelected:I

    .line 313
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    .line 315
    :cond_0
    return-void
.end method

.method public setDotFadeInDuration(ILjava/util/concurrent/TimeUnit;)V
    .locals 4

    .prologue
    .line 371
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeInDuration:I

    .line 372
    return-void
.end method

.method public setDotFadeOutDelay(I)V
    .locals 0

    .prologue
    .line 391
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDelay:I

    .line 392
    return-void
.end method

.method public setDotFadeOutDuration(ILjava/util/concurrent/TimeUnit;)V
    .locals 4

    .prologue
    .line 353
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeOutDuration:I

    .line 354
    return-void
.end method

.method public setDotFadeWhenIdle(Z)V
    .locals 0

    .prologue
    .line 332
    iput-boolean p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotFadeWhenIdle:Z

    .line 333
    if-nez p1, :cond_0

    .line 334
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->fadeIn()V

    .line 336
    :cond_0
    return-void
.end method

.method public setDotRadius(I)V
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadius:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 247
    int-to-float v0, p1

    iput v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadius:F

    .line 248
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->updateShadows()V

    .line 249
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    .line 251
    :cond_0
    return-void
.end method

.method public setDotRadiusSelected(I)V
    .locals 2

    .prologue
    .line 268
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadiusSelected:F

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 269
    int-to-float v0, p1

    iput v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotRadiusSelected:F

    .line 270
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->updateShadows()V

    .line 271
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    .line 273
    :cond_0
    return-void
.end method

.method public setDotShadowColor(I)V
    .locals 0

    .prologue
    .line 469
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowColor:I

    .line 470
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->updateShadows()V

    .line 471
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    .line 472
    return-void
.end method

.method public setDotShadowDx(F)V
    .locals 0

    .prologue
    .line 431
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDx:F

    .line 432
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    .line 433
    return-void
.end method

.method public setDotShadowDy(F)V
    .locals 0

    .prologue
    .line 450
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowDy:F

    .line 451
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    .line 452
    return-void
.end method

.method public setDotShadowRadius(F)V
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 410
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotShadowRadius:F

    .line 411
    invoke-direct {p0}, Landroid/support/wearable/view/DotsPageIndicator;->updateShadows()V

    .line 412
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->invalidate()V

    .line 414
    :cond_0
    return-void
.end method

.method public setDotSpacing(I)V
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotSpacing:I

    if-eq v0, p1, :cond_0

    .line 226
    iput p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mDotSpacing:I

    .line 227
    invoke-virtual {p0}, Landroid/support/wearable/view/DotsPageIndicator;->requestLayout()V

    .line 229
    :cond_0
    return-void
.end method

.method public setOnAdapterChangeListener(Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapterChangeListener:Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;

    .line 208
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPageChangeListener:Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;

    .line 197
    return-void
.end method

.method public setPager(Landroid/support/wearable/view/GridViewPager;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    if-eq v0, p1, :cond_1

    .line 171
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/GridViewPager;->setOnPageChangeListener(Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;)V

    .line 173
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/GridViewPager;->setOnAdapterChangeListener(Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;)V

    .line 174
    iput-object v1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    .line 176
    :cond_0
    iput-object p1, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    .line 177
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/GridViewPager;->setOnPageChangeListener(Landroid/support/wearable/view/GridViewPager$OnPageChangeListener;)V

    .line 179
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    invoke-virtual {v0, p0}, Landroid/support/wearable/view/GridViewPager;->setOnAdapterChangeListener(Landroid/support/wearable/view/GridViewPager$OnAdapterChangeListener;)V

    .line 180
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mPager:Landroid/support/wearable/view/GridViewPager;

    invoke-virtual {v0}, Landroid/support/wearable/view/GridViewPager;->getAdapter()Landroid/support/wearable/view/GridPagerAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    .line 183
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/wearable/view/DotsPageIndicator;->mAdapter:Landroid/support/wearable/view/GridPagerAdapter;

    invoke-virtual {v0}, Landroid/support/wearable/view/GridPagerAdapter;->getRowCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 184
    invoke-direct {p0, v2, v2}, Landroid/support/wearable/view/DotsPageIndicator;->rowChanged(II)V

    .line 186
    :cond_2
    return-void
.end method
