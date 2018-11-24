.class Landroid/support/wearable/view/ProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressDrawable.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x1770L

.field private static final CORRECTION_ANGLE:I = 0x36

.field private static final FULL_CIRCLE:I = 0x168

.field private static final GROW_SHRINK_RATIO:F = 0.5f

.field private static LEVEL:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/support/wearable/view/ProgressDrawable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEVELS_PER_SEGMENT:I = 0x7d0

.field private static final MAX_LEVEL:I = 0x2710

.field private static final MAX_SWEEP:I = 0x132

.field private static final NUMBER_OF_SEGMENTS:I = 0x5

.field private static final STARTING_ANGLE:F = -90.0f

.field private static final mInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private final mAnimator:Landroid/animation/ObjectAnimator;

.field private mCircleBorderColor:I

.field private mCircleBorderWidth:F

.field private final mInnerCircleBounds:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Landroid/support/wearable/view/ProgressDrawable$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "level"

    invoke-direct {v0, v1, v2}, Landroid/support/wearable/view/ProgressDrawable$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/wearable/view/ProgressDrawable;->LEVEL:Landroid/util/Property;

    .line 55
    sget-object v0, Landroid/support/wearable/view/Gusterpolator;->INSTANCE:Landroid/support/wearable/view/Gusterpolator;

    sput-object v0, Landroid/support/wearable/view/ProgressDrawable;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 63
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mInnerCircleBounds:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    sget-object v0, Landroid/support/wearable/view/ProgressDrawable;->LEVEL:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 67
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 68
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 69
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 70
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 71
    return-void

    .line 66
    nop

    :array_0
    .array-data 4
        0x0
        0x2710
    .end array-data
.end method

.method private static lerpInv(FFF)F
    .locals 2

    .prologue
    .line 158
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_0

    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/high16 v9, 0x43990000    # 306.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 92
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mInnerCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/support/wearable/view/ProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 93
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mInnerCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Landroid/support/wearable/view/ProgressDrawable;->mCircleBorderWidth:F

    div-float/2addr v1, v8

    iget v3, p0, Landroid/support/wearable/view/ProgressDrawable;->mCircleBorderWidth:F

    div-float/2addr v3, v8

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 94
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/wearable/view/ProgressDrawable;->mCircleBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/wearable/view/ProgressDrawable;->mCircleBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    invoke-virtual {p0}, Landroid/support/wearable/view/ProgressDrawable;->getLevel()I

    move-result v1

    .line 102
    div-int/lit16 v0, v1, 0x7d0

    .line 103
    mul-int/lit16 v0, v0, 0x7d0

    .line 104
    sub-int v0, v1, v0

    int-to-float v0, v0

    const/high16 v3, 0x44fa0000    # 2000.0f

    div-float v3, v0, v3

    .line 106
    cmpg-float v0, v3, v6

    if-gez v0, :cond_0

    const/4 v0, 0x1

    move v4, v0

    .line 107
    :goto_0
    const/high16 v0, 0x42580000    # 54.0f

    mul-float v5, v0, v3

    .line 109
    if-eqz v4, :cond_1

    .line 110
    sget-object v0, Landroid/support/wearable/view/ProgressDrawable;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v2, v6, v3}, Landroid/support/wearable/view/ProgressDrawable;->lerpInv(FFF)F

    move-result v3

    invoke-interface {v0, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v9

    .line 117
    :goto_1
    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 119
    int-to-float v0, v1

    const v1, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v0, v1

    mul-float/2addr v0, v8

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    const/high16 v1, -0x3d4c0000    # -90.0f

    add-float/2addr v0, v1

    add-float/2addr v0, v5

    iget-object v1, p0, Landroid/support/wearable/view/ProgressDrawable;->mInnerCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v5, p0, Landroid/support/wearable/view/ProgressDrawable;->mInnerCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p1, v0, v1, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 123
    iget-object v1, p0, Landroid/support/wearable/view/ProgressDrawable;->mInnerCircleBounds:Landroid/graphics/RectF;

    if-eqz v4, :cond_2

    :goto_2
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/wearable/view/ProgressDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 129
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    move v4, v0

    goto :goto_0

    .line 113
    :cond_1
    sget-object v0, Landroid/support/wearable/view/ProgressDrawable;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v6, v7, v3}, Landroid/support/wearable/view/ProgressDrawable;->lerpInv(FFF)F

    move-result v3

    invoke-interface {v0, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    sub-float v0, v7, v0

    mul-float/2addr v0, v9

    goto :goto_1

    .line 123
    :cond_2
    sub-float v2, v9, v3

    goto :goto_2
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, -0x1

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public setRingColor(I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, Landroid/support/wearable/view/ProgressDrawable;->mCircleBorderColor:I

    .line 75
    return-void
.end method

.method public setRingWidth(F)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Landroid/support/wearable/view/ProgressDrawable;->mCircleBorderWidth:F

    .line 79
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 83
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/wearable/view/ProgressDrawable;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 87
    return-void
.end method
