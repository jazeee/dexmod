.class public Landroid/support/wearable/view/CircularButton;
.super Landroid/view/View;
.source "CircularButton.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final DEFAULT_ICON_SIZE_DP:F = 48.0f

.field public static final SCALE_MODE_CENTER:I = 0x1

.field public static final SCALE_MODE_FIT:I

.field private static final SQRT_2:D


# instance fields
.field private mColors:Landroid/content/res/ColorStateList;

.field private mDiameter:I

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mRippleColor:I

.field private mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

.field private mScaleMode:I

.field private mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Landroid/support/wearable/view/CircularButton;->SQRT_2:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/CircularButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/CircularButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/wearable/view/CircularButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    iput v4, p0, Landroid/support/wearable/view/CircularButton;->mRippleColor:I

    .line 83
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v1, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 84
    iget-object v1, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v1, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-super {p0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    new-instance v1, Landroid/support/wearable/view/CircularButton$CircleOutlineProvider;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/wearable/view/CircularButton$CircleOutlineProvider;-><init>(Landroid/support/wearable/view/CircularButton;Landroid/support/wearable/view/CircularButton$1;)V

    invoke-virtual {p0, v1}, Landroid/support/wearable/view/CircularButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 87
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Landroid/support/wearable/view/CircularButton;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 88
    iput v0, p0, Landroid/support/wearable/view/CircularButton;->mScaleMode:I

    .line 90
    sget-object v1, Landroid/support/wearable/R$styleable;->CircularButton:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 92
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 93
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 94
    sget v3, Landroid/support/wearable/R$styleable;->CircularButton_android_color:I

    if-ne v2, v3, :cond_1

    .line 95
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    .line 96
    iget-object v2, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget-object v3, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    sget v3, Landroid/support/wearable/R$styleable;->CircularButton_android_src:I

    if-ne v2, v3, :cond_2

    .line 98
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 99
    :cond_2
    sget v3, Landroid/support/wearable/R$styleable;->CircularButton_buttonRippleColor:I

    if-ne v2, v3, :cond_3

    .line 100
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/wearable/view/CircularButton;->setRippleColor(I)V

    goto :goto_1

    .line 101
    :cond_3
    sget v3, Landroid/support/wearable/R$styleable;->CircularButton_pressedButtonTranslationZ:I

    if-ne v2, v3, :cond_4

    .line 102
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/wearable/view/CircularButton;->setPressedTranslationZ(F)V

    goto :goto_1

    .line 103
    :cond_4
    sget v3, Landroid/support/wearable/R$styleable;->CircularButton_imageScaleMode:I

    if-ne v2, v3, :cond_0

    .line 104
    iget v3, p0, Landroid/support/wearable/view/CircularButton;->mScaleMode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/CircularButton;->mScaleMode:I

    goto :goto_1

    .line 107
    :cond_5
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/CircularButton;->setClickable(Z)V

    .line 109
    return-void
.end method

.method static synthetic access$100(Landroid/support/wearable/view/CircularButton;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Landroid/support/wearable/view/CircularButton;->mDiameter:I

    return v0
.end method

.method private dpToPx(F)I
    .locals 2

    .prologue
    .line 232
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/support/wearable/view/CircularButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private static encircledRadius(I)I
    .locals 4

    .prologue
    .line 48
    int-to-double v0, p0

    sget-wide v2, Landroid/support/wearable/view/CircularButton;->SQRT_2:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private static hasIntrinsicSize(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 284
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static inscribedSize(I)I
    .locals 4

    .prologue
    .line 43
    int-to-double v0, p0

    sget-wide v2, Landroid/support/wearable/view/CircularButton;->SQRT_2:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 352
    return-object p1
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 223
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 224
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/wearable/view/CircularButton;->getDrawableState()[I

    move-result-object v2

    iget-object v3, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 229
    :cond_0
    return-void
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageScaleMode()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Landroid/support/wearable/view/CircularButton;->mScaleMode:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 331
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 332
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 335
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 291
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 292
    sub-int v0, p4, p2

    .line 293
    sub-int v1, p5, p3

    .line 294
    iget-object v2, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 295
    iget-object v2, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 296
    iget-object v2, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 297
    iget v2, p0, Landroid/support/wearable/view/CircularButton;->mScaleMode:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Landroid/support/wearable/view/CircularButton;->hasIntrinsicSize(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 298
    :cond_0
    iget v0, p0, Landroid/support/wearable/view/CircularButton;->mDiameter:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Landroid/support/wearable/view/CircularButton;->inscribedSize(I)I

    move-result v2

    .line 299
    iget v0, p0, Landroid/support/wearable/view/CircularButton;->mDiameter:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 301
    iget-object v1, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroid/support/wearable/view/CircularButton;->hasIntrinsicSize(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 302
    iget-object v1, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    add-int v3, v0, v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v0, v0, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 327
    :cond_1
    :goto_0
    return-void

    .line 304
    :cond_2
    if-ne v3, v4, :cond_3

    move v1, v2

    move v3, v0

    .line 319
    :goto_1
    iget-object v4, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v0

    add-int/2addr v1, v3

    invoke-virtual {v4, v0, v3, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 308
    :cond_3
    int-to-float v1, v3

    int-to-float v5, v4

    div-float/2addr v1, v5

    .line 309
    if-le v3, v4, :cond_4

    .line 311
    int-to-float v3, v2

    div-float v1, v3, v1

    float-to-int v1, v1

    .line 312
    sub-int v3, v2, v1

    int-to-float v3, v3

    div-float/2addr v3, v6

    float-to-int v3, v3

    goto :goto_1

    .line 315
    :cond_4
    int-to-float v3, v2

    mul-float/2addr v1, v3

    float-to-int v3, v1

    .line 316
    sub-int v1, v2, v3

    int-to-float v1, v1

    div-float/2addr v1, v6

    float-to-int v1, v1

    move v7, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move v0, v7

    goto :goto_1

    .line 322
    :cond_5
    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v0, v6

    float-to-int v0, v0

    .line 323
    sub-int/2addr v1, v4

    int-to-float v1, v1

    div-float/2addr v1, v6

    float-to-int v1, v1

    .line 324
    iget-object v2, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    add-int/2addr v3, v0

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    .line 238
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 239
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 240
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 241
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 247
    if-ne v3, v2, :cond_0

    if-ne v4, v2, :cond_0

    .line 248
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/CircularButton;->mDiameter:I

    .line 280
    :goto_0
    iget v0, p0, Landroid/support/wearable/view/CircularButton;->mDiameter:I

    iget v1, p0, Landroid/support/wearable/view/CircularButton;->mDiameter:I

    invoke-virtual {p0, v0, v1}, Landroid/support/wearable/view/CircularButton;->setMeasuredDimension(II)V

    .line 281
    return-void

    .line 249
    :cond_0
    if-ne v3, v2, :cond_1

    .line 250
    iput v1, p0, Landroid/support/wearable/view/CircularButton;->mDiameter:I

    goto :goto_0

    .line 251
    :cond_1
    if-ne v4, v2, :cond_2

    .line 252
    iput v0, p0, Landroid/support/wearable/view/CircularButton;->mDiameter:I

    goto :goto_0

    .line 255
    :cond_2
    iget-object v2, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Landroid/support/wearable/view/CircularButton;->hasIntrinsicSize(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 256
    iget-object v2, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v5, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 261
    :goto_1
    if-eq v3, v6, :cond_3

    if-ne v4, v6, :cond_7

    .line 263
    :cond_3
    if-eq v3, v6, :cond_5

    .line 272
    :goto_2
    invoke-static {v2}, Landroid/support/wearable/view/CircularButton;->encircledRadius(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/CircularButton;->mDiameter:I

    goto :goto_0

    .line 258
    :cond_4
    const/high16 v2, 0x42400000    # 48.0f

    invoke-direct {p0, v2}, Landroid/support/wearable/view/CircularButton;->dpToPx(F)I

    move-result v2

    goto :goto_1

    .line 265
    :cond_5
    if-eq v4, v6, :cond_6

    move v0, v1

    .line 266
    goto :goto_2

    .line 269
    :cond_6
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 275
    :cond_7
    iput v2, p0, Landroid/support/wearable/view/CircularButton;->mDiameter:I

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 364
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 365
    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 372
    :cond_0
    :goto_0
    return v0

    .line 368
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/wearable/view/CircularButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    goto :goto_0

    .line 366
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public setColor(I)V
    .locals 2

    .prologue
    .line 115
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    .line 116
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    return-void
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 123
    iput-object p1, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    .line 124
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Landroid/support/wearable/view/CircularButton;->mColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 166
    :cond_0
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 167
    iput-object p1, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    .line 168
    invoke-virtual {p0}, Landroid/support/wearable/view/CircularButton;->requestLayout()V

    .line 169
    invoke-virtual {p0}, Landroid/support/wearable/view/CircularButton;->invalidate()V

    .line 171
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 172
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 174
    :cond_2
    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/support/wearable/view/CircularButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/wearable/view/CircularButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    return-void
.end method

.method public setImageScaleMode(I)V
    .locals 1

    .prologue
    .line 203
    iput p1, p0, Landroid/support/wearable/view/CircularButton;->mScaleMode:I

    .line 204
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Landroid/support/wearable/view/CircularButton;->invalidate()V

    .line 206
    invoke-virtual {p0}, Landroid/support/wearable/view/CircularButton;->requestLayout()V

    .line 208
    :cond_0
    return-void
.end method

.method public setPressedTranslationZ(F)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 338
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 340
    sget-object v1, Landroid/support/wearable/view/CircularButton;->PRESSED_ENABLED_STATE_SET:[I

    const-string v2, "translationZ"

    new-array v3, v4, [F

    aput p1, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/wearable/view/CircularButton;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 342
    sget-object v1, Landroid/support/wearable/view/CircularButton;->ENABLED_FOCUSED_STATE_SET:[I

    const-string v2, "translationZ"

    new-array v3, v4, [F

    aput p1, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/wearable/view/CircularButton;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 345
    sget-object v1, Landroid/support/wearable/view/CircularButton;->EMPTY_STATE_SET:[I

    const-string v2, "translationZ"

    new-array v3, v4, [F

    invoke-virtual {p0}, Landroid/support/wearable/view/CircularButton;->getElevation()F

    move-result v4

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/wearable/view/CircularButton;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 347
    invoke-virtual {p0, v0}, Landroid/support/wearable/view/CircularButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 348
    return-void
.end method

.method public setRippleColor(I)V
    .locals 4

    .prologue
    .line 129
    iput p1, p0, Landroid/support/wearable/view/CircularButton;->mRippleColor:I

    .line 130
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 143
    :goto_0
    return-void

    .line 133
    :cond_0
    iget v0, p0, Landroid/support/wearable/view/CircularButton;->mRippleColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/wearable/view/CircularButton;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget-object v3, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/support/wearable/view/CircularButton;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    .line 137
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-super {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/CircularButton;->mRippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    .line 140
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-super {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/wearable/view/CircularButton;->mImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
