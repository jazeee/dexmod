.class public Landroid/support/wearable/view/CircledImageView;
.super Landroid/view/View;
.source "CircledImageView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;


# instance fields
.field private final mAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mCircleBorderColor:I

.field private mCircleBorderWidth:F

.field private mCircleColor:Landroid/content/res/ColorStateList;

.field private mCircleHidden:Z

.field mCircleRadius:F

.field private mCircleRadiusPressed:F

.field private mColorAnimator:Landroid/animation/ValueAnimator;

.field private mColorChangeAnimationDurationMs:J

.field private mCurrentColor:I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mImageCirclePercentage:F

.field private mImageHorizontalOffcenterPercentage:F

.field private mImageTint:Ljava/lang/Integer;

.field private mIndeterminateBounds:Landroid/graphics/Rect;

.field private mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

.field private mInitialCircleRadius:F

.field private final mOval:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPressed:Z

.field private mProgress:F

.field private mProgressIndeterminate:Z

.field private mShadowVisibility:F

.field private final mShadowWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Landroid/support/wearable/view/CircledImageView;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/CircledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/CircledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mProgress:F

    .line 50
    iput-boolean v4, p0, Landroid/support/wearable/view/CircledImageView;->mCircleHidden:Z

    .line 54
    iput-boolean v4, p0, Landroid/support/wearable/view/CircledImageView;->mPressed:Z

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateBounds:Landroid/graphics/Rect;

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/wearable/view/CircledImageView;->mColorChangeAnimationDurationMs:J

    .line 61
    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mImageCirclePercentage:F

    .line 62
    iput v3, p0, Landroid/support/wearable/view/CircledImageView;->mImageHorizontalOffcenterPercentage:F

    .line 65
    new-instance v0, Landroid/support/wearable/view/CircledImageView$1;

    invoke-direct {v0, p0}, Landroid/support/wearable/view/CircledImageView$1;-><init>(Landroid/support/wearable/view/CircledImageView;)V

    iput-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 84
    new-instance v0, Landroid/support/wearable/view/CircledImageView$2;

    invoke-direct {v0, p0}, Landroid/support/wearable/view/CircledImageView$2;-><init>(Landroid/support/wearable/view/CircledImageView;)V

    iput-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 105
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/wearable/R$styleable;->CircledImageView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    sget v1, Landroid/support/wearable/R$styleable;->CircledImageView_android_src:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 108
    sget v1, Landroid/support/wearable/R$styleable;->CircledImageView_circle_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    .line 109
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    .line 110
    const/high16 v1, 0x1060000

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    .line 113
    :cond_0
    sget v1, Landroid/support/wearable/R$styleable;->CircledImageView_circle_radius:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    .line 115
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    iput v1, p0, Landroid/support/wearable/view/CircledImageView;->mInitialCircleRadius:F

    .line 116
    sget v1, Landroid/support/wearable/R$styleable;->CircledImageView_circle_radius_pressed:I

    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    .line 118
    sget v1, Landroid/support/wearable/R$styleable;->CircledImageView_circle_border_color:I

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderColor:I

    .line 120
    sget v1, Landroid/support/wearable/R$styleable;->CircledImageView_circle_border_width:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    .line 121
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 122
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    sub-float/2addr v1, v2

    iput v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    .line 123
    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    sub-float/2addr v1, v2

    iput v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    .line 125
    :cond_1
    sget v1, Landroid/support/wearable/R$styleable;->CircledImageView_circle_padding:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 126
    cmpl-float v2, v1, v3

    if-lez v2, :cond_2

    .line 127
    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    sub-float/2addr v2, v1

    iput v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    .line 128
    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    sub-float v1, v2, v1

    iput v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    .line 130
    :cond_2
    sget v1, Landroid/support/wearable/R$styleable;->CircledImageView_shadow_width:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/CircledImageView;->mShadowWidth:F

    .line 132
    sget v1, Landroid/support/wearable/R$styleable;->CircledImageView_image_circle_percentage:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/CircledImageView;->mImageCirclePercentage:F

    .line 135
    sget v1, Landroid/support/wearable/R$styleable;->CircledImageView_image_horizontal_offcenter_percentage:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/support/wearable/view/CircledImageView;->mImageHorizontalOffcenterPercentage:F

    .line 138
    sget v1, Landroid/support/wearable/R$styleable;->CircledImageView_image_tint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 139
    sget v1, Landroid/support/wearable/R$styleable;->CircledImageView_image_tint:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mImageTint:Ljava/lang/Integer;

    .line 142
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    .line 146
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    new-instance v0, Landroid/support/wearable/view/ProgressDrawable;

    invoke-direct {v0}, Landroid/support/wearable/view/ProgressDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    .line 151
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/ProgressDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 153
    invoke-virtual {p0, v4}, Landroid/support/wearable/view/CircledImageView;->setWillNotDraw(Z)V

    .line 155
    invoke-direct {p0}, Landroid/support/wearable/view/CircledImageView;->setColorForCurrentState()V

    .line 156
    return-void
.end method

.method static synthetic access$002(Landroid/support/wearable/view/CircledImageView;I)I
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mCurrentColor:I

    return p1
.end method

.method private setColorForCurrentState()V
    .locals 6

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 246
    iget-wide v2, p0, Landroid/support/wearable/view/CircledImageView;->mColorChangeAnimationDurationMs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 247
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 252
    :goto_0
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/wearable/view/CircledImageView;->mCurrentColor:I

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 254
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Landroid/support/wearable/view/CircledImageView;->ARGB_EVALUATOR:Landroid/animation/ArgbEvaluator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 255
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Landroid/support/wearable/view/CircledImageView;->mColorChangeAnimationDurationMs:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 256
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 257
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 262
    :goto_1
    return-void

    .line 250
    :cond_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mColorAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 259
    :cond_1
    iput v0, p0, Landroid/support/wearable/view/CircledImageView;->mCurrentColor:I

    .line 260
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    goto :goto_1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 390
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 391
    invoke-direct {p0}, Landroid/support/wearable/view/CircledImageView;->setColorForCurrentState()V

    .line 392
    return-void
.end method

.method public getCircleColorStateList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCircleRadius()F
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    return v0
.end method

.method public getColorChangeAnimationDuration()J
    .locals 2

    .prologue
    .line 487
    iget-wide v0, p0, Landroid/support/wearable/view/CircledImageView;->mColorChangeAnimationDurationMs:J

    return-wide v0
.end method

.method public getDefaultCircleColor()I
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getInitialCircleRadius()F
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mInitialCircleRadius:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/4 v6, 0x2

    const/4 v11, 0x0

    .line 171
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingLeft()I

    move-result v8

    .line 172
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingTop()I

    move-result v9

    .line 173
    iget-boolean v0, p0, Landroid/support/wearable/view/CircledImageView;->mPressed:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    move v7, v0

    .line 174
    :goto_0
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mShadowWidth:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_0

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mShadowVisibility:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_0

    .line 176
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    int-to-float v1, v8

    int-to-float v2, v9

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 180
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    add-float/2addr v0, v7

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mShadowWidth:F

    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mShadowVisibility:F

    mul-float/2addr v1, v2

    add-float v3, v0, v1

    .line 182
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 184
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    iget-object v10, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    sget-object v6, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 189
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 190
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 192
    :cond_0
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_1

    .line 194
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    int-to-float v1, v8

    int-to-float v2, v9

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 197
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v1, v7

    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    sub-float/2addr v2, v7

    iget-object v3, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v3, v7

    iget-object v4, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    add-float/2addr v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 199
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 202
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 203
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 206
    iget-boolean v0, p0, Landroid/support/wearable/view/CircledImageView;->mProgressIndeterminate:Z

    if-eqz v0, :cond_6

    .line 207
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 208
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/ProgressDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 209
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderColor:I

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/ProgressDrawable;->setRingColor(I)V

    .line 210
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/support/wearable/view/ProgressDrawable;->setRingWidth(F)V

    .line 211
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    invoke-virtual {v0, p1}, Landroid/support/wearable/view/ProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 216
    :cond_1
    :goto_1
    iget-boolean v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleHidden:Z

    if-nez v0, :cond_2

    .line 217
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    int-to-float v1, v8

    int-to-float v2, v9

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 221
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCurrentColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 224
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 225
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 226
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 228
    iget-object v2, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v7, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 231
    :cond_2
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 232
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getAlpha()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 234
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mImageTint:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 235
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mImageTint:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 237
    :cond_3
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 240
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 241
    return-void

    .line 173
    :cond_5
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    move v7, v0

    goto/16 :goto_0

    .line 213
    :cond_6
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mOval:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v0, 0x43b40000    # 360.0f

    iget v3, p0, Landroid/support/wearable/view/CircledImageView;->mProgress:F

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/wearable/view/CircledImageView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 186
    nop

    :array_0
    .array-data 4
        -0x1000000
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 302
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 305
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 306
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredWidth()I

    move-result v6

    .line 307
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getMeasuredHeight()I

    move-result v7

    .line 308
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mImageCirclePercentage:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_1

    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mImageCirclePercentage:F

    move v3, v0

    .line 311
    :goto_0
    int-to-float v0, v4

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_2

    int-to-float v0, v6

    mul-float/2addr v0, v3

    int-to-float v2, v4

    div-float/2addr v0, v2

    move v2, v0

    :goto_1
    int-to-float v0, v5

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_3

    int-to-float v0, v7

    mul-float/2addr v0, v3

    int-to-float v3, v5

    div-float/2addr v0, v3

    :goto_2
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 320
    int-to-float v1, v4

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 321
    int-to-float v2, v5

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 324
    sub-int v2, v6, v1

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Landroid/support/wearable/view/CircledImageView;->mImageHorizontalOffcenterPercentage:F

    int-to-float v4, v1

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 326
    sub-int v3, v7, v0

    div-int/lit8 v3, v3, 0x2

    .line 328
    iget-object v4, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v1, v2

    add-int/2addr v0, v3

    invoke-virtual {v4, v2, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 332
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 333
    return-void

    :cond_1
    move v3, v1

    .line 308
    goto :goto_0

    :cond_2
    move v2, v1

    .line 311
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    .line 267
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Landroid/support/wearable/view/CircledImageView;->mShadowWidth:F

    iget v2, p0, Landroid/support/wearable/view/CircledImageView;->mShadowVisibility:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 269
    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    .line 272
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 273
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 274
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 275
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 280
    if-ne v3, v5, :cond_0

    .line 288
    :goto_0
    if-ne v4, v5, :cond_2

    .line 296
    :goto_1
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 298
    return-void

    .line 282
    :cond_0
    if-ne v3, v6, :cond_1

    .line 283
    int-to-float v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    .line 285
    :cond_1
    float-to-int v1, v2

    goto :goto_0

    .line 290
    :cond_2
    if-ne v4, v6, :cond_3

    .line 291
    int-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_1

    .line 293
    :cond_3
    float-to-int v0, v2

    goto :goto_1
.end method

.method protected onSetAlpha(I)Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 429
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 430
    if-eqz p2, :cond_1

    .line 431
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/CircledImageView;->showIndeterminateProgress(Z)V

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-boolean v0, p0, Landroid/support/wearable/view/CircledImageView;->mProgressIndeterminate:Z

    if-eqz v0, :cond_0

    .line 433
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/CircledImageView;->showIndeterminateProgress(Z)V

    goto :goto_0
.end method

.method public setCircleBorderColor(I)V
    .locals 0

    .prologue
    .line 460
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderColor:I

    .line 461
    return-void
.end method

.method public setCircleBorderWidth(F)V
    .locals 0

    .prologue
    .line 468
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleBorderWidth:F

    .line 469
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 470
    return-void
.end method

.method public setCircleColor(I)V
    .locals 1

    .prologue
    .line 395
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/CircledImageView;->setCircleColorStateList(Landroid/content/res/ColorStateList;)V

    .line 396
    return-void
.end method

.method public setCircleColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleColor:Landroid/content/res/ColorStateList;

    .line 400
    invoke-direct {p0}, Landroid/support/wearable/view/CircledImageView;->setColorForCurrentState()V

    .line 401
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 402
    return-void
.end method

.method public setCircleHidden(Z)V
    .locals 0

    .prologue
    .line 159
    iput-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleHidden:Z

    .line 160
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 161
    return-void
.end method

.method public setCircleRadius(F)V
    .locals 0

    .prologue
    .line 379
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadius:F

    .line 380
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 381
    return-void
.end method

.method public setCircleRadiusPressed(F)V
    .locals 0

    .prologue
    .line 384
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mCircleRadiusPressed:F

    .line 385
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 386
    return-void
.end method

.method public setColorChangeAnimationDuration(J)V
    .locals 1

    .prologue
    .line 496
    iput-wide p1, p0, Landroid/support/wearable/view/CircledImageView;->mColorChangeAnimationDurationMs:J

    .line 497
    return-void
.end method

.method public setImageCirclePercentage(F)V
    .locals 2

    .prologue
    .line 360
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/CircledImageView;->mImageCirclePercentage:F

    .line 361
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 362
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 336
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    .line 337
    iget-object v1, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 338
    iput-object p1, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 340
    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 345
    :goto_0
    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 351
    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 353
    :cond_0
    return-void

    .line 340
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 348
    :cond_2
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->requestLayout()V

    goto :goto_1
.end method

.method public setImageHorizontalOffcenterPercentage(F)V
    .locals 0

    .prologue
    .line 365
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mImageHorizontalOffcenterPercentage:F

    .line 366
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 367
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 356
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/CircledImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    return-void

    .line 356
    :cond_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setImageTint(I)V
    .locals 1

    .prologue
    .line 370
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mImageTint:Ljava/lang/Integer;

    .line 371
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 372
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .prologue
    .line 474
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 475
    iput-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->mPressed:Z

    .line 476
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 477
    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 439
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mProgress:F

    .line 440
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 442
    :cond_0
    return-void
.end method

.method public setShadowVisibility(F)V
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Landroid/support/wearable/view/CircledImageView;->mShadowVisibility:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 450
    iput p1, p0, Landroid/support/wearable/view/CircledImageView;->mShadowVisibility:F

    .line 451
    invoke-virtual {p0}, Landroid/support/wearable/view/CircledImageView;->invalidate()V

    .line 453
    :cond_0
    return-void
.end method

.method public showIndeterminateProgress(Z)V
    .locals 1

    .prologue
    .line 419
    iput-boolean p1, p0, Landroid/support/wearable/view/CircledImageView;->mProgressIndeterminate:Z

    .line 420
    if-eqz p1, :cond_0

    .line 421
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    invoke-virtual {v0}, Landroid/support/wearable/view/ProgressDrawable;->startAnimation()V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CircledImageView;->mIndeterminateDrawable:Landroid/support/wearable/view/ProgressDrawable;

    invoke-virtual {v0}, Landroid/support/wearable/view/ProgressDrawable;->stopAnimation()V

    goto :goto_0
.end method
