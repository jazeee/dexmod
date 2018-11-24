.class Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProgressSpinner.java"


# static fields
.field static final GROW_SHRINK_RATIO:F = 0.5f

.field static final INNER_CIRCLE_MAX_SIZE:F = 0.5f

.field static final INNER_CIRCLE_SHOW_END:F = 1.0f

.field static final INNER_CIRCLE_SHOW_START:F = 0.4f

.field static final INNER_RING_DEVISOR:I = 0x5

.field static final MAX_LEVEL:I = 0x2710

.field static final MIDDLE_CIRCLE_MAX_SIZE:F = 0.7f

.field static final MIDDLE_CIRCLE_SHOW_END:F = 0.8f

.field static final MIDDLE_CIRCLE_SHOW_START:F = 0.2f

.field static final SHOW_STEP_VALUE:F = 0.2f

.field static final STARTING_ANGLE:F = -90.0f


# instance fields
.field final mForegroundPaint:Landroid/graphics/Paint;

.field final mInnerCircleBounds:Landroid/graphics/RectF;

.field final synthetic this$0:Landroid/support/wearable/view/ProgressSpinner;


# direct methods
.method constructor <init>(Landroid/support/wearable/view/ProgressSpinner;)V
    .locals 2

    .prologue
    .line 388
    iput-object p1, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 384
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->mInnerCircleBounds:Landroid/graphics/RectF;

    .line 386
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    .line 389
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 390
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 392
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 393
    return-void
.end method

.method private drawEditModeSample(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    .line 399
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 400
    invoke-virtual {v1, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 401
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-static {v2}, Landroid/support/wearable/view/ProgressSpinner;->access$400(Landroid/support/wearable/view/ProgressSpinner;)[I

    move-result-object v2

    aget v2, v2, v4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 402
    iget-object v0, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40e00000    # 7.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 403
    const/4 v2, 0x0

    const/high16 v3, 0x43870000    # 270.0f

    iget-object v5, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 408
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    .line 412
    invoke-virtual {p0}, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 417
    iget-object v1, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-virtual {v1}, Landroid/support/wearable/view/ProgressSpinner;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    invoke-direct {p0, p1}, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->drawEditModeSample(Landroid/graphics/Canvas;)V

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v1, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-static {v1}, Landroid/support/wearable/view/ProgressSpinner;->access$500(Landroid/support/wearable/view/ProgressSpinner;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 423
    iget-object v1, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-static {v1}, Landroid/support/wearable/view/ProgressSpinner;->access$700(Landroid/support/wearable/view/ProgressSpinner;)Landroid/view/animation/Interpolator;

    move-result-object v1

    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3f4ccccd    # 0.8f

    iget-object v4, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-static {v4}, Landroid/support/wearable/view/ProgressSpinner;->access$500(Landroid/support/wearable/view/ProgressSpinner;)F

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/support/wearable/view/ProgressSpinner;->access$600(FFF)F

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 425
    iget-object v2, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-static {v2}, Landroid/support/wearable/view/ProgressSpinner;->access$700(Landroid/support/wearable/view/ProgressSpinner;)Landroid/view/animation/Interpolator;

    move-result-object v2

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v5, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-static {v5}, Landroid/support/wearable/view/ProgressSpinner;->access$500(Landroid/support/wearable/view/ProgressSpinner;)F

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/support/wearable/view/ProgressSpinner;->access$600(FFF)F

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 427
    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v1, v3

    mul-float v3, v1, v0

    .line 428
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    mul-float v2, v1, v0

    .line 435
    sub-float/2addr v0, v3

    sub-float v1, v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    add-float/2addr v1, v0

    .line 436
    sub-float v0, v3, v2

    .line 442
    :goto_1
    iget-object v2, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->mInnerCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 443
    iget-object v2, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->mInnerCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 444
    iget-object v1, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 448
    invoke-virtual {p0}, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->getLevel()I

    move-result v1

    add-int/lit16 v1, v1, 0x2710

    iget-object v2, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-static {v2}, Landroid/support/wearable/view/ProgressSpinner;->access$200(Landroid/support/wearable/view/ProgressSpinner;)I

    move-result v2

    sub-int/2addr v1, v2

    rem-int/lit16 v6, v1, 0x2710

    .line 450
    const/high16 v3, 0x43b40000    # 360.0f

    .line 451
    iget-object v1, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-static {v1}, Landroid/support/wearable/view/ProgressSpinner;->access$400(Landroid/support/wearable/view/ProgressSpinner;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    .line 452
    const/4 v1, 0x0

    .line 453
    const/4 v4, 0x0

    .line 458
    iget-object v5, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-static {v5}, Landroid/support/wearable/view/ProgressSpinner;->access$500(Landroid/support/wearable/view/ProgressSpinner;)F

    move-result v5

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v7

    if-gez v5, :cond_4

    .line 459
    const/high16 v3, 0x43b40000    # 360.0f

    move v11, v1

    move v1, v2

    move v2, v11

    .line 490
    :goto_2
    iget-object v5, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 492
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v3, v1

    if-gez v1, :cond_2

    .line 493
    const/high16 v3, 0x3f800000    # 1.0f

    .line 496
    :cond_2
    float-to-double v0, v0

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v8

    if-lez v0, :cond_0

    .line 497
    int-to-float v0, v6

    const v1, 0x38d1b717    # 1.0E-4f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    const/high16 v1, -0x3d4c0000    # -90.0f

    add-float/2addr v0, v1

    add-float/2addr v0, v4

    iget-object v1, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->mInnerCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v4, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->mInnerCircleBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v0, v1, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 500
    iget-object v1, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->mInnerCircleBounds:Landroid/graphics/RectF;

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    :goto_3
    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->mForegroundPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 438
    :cond_3
    invoke-virtual {p0}, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    int-to-float v1, v0

    .line 439
    invoke-virtual {p0}, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    goto/16 :goto_1

    .line 461
    :cond_4
    iget-object v5, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-static {v5}, Landroid/support/wearable/view/ProgressSpinner;->access$400(Landroid/support/wearable/view/ProgressSpinner;)[I

    move-result-object v5

    array-length v7, v5

    .line 462
    const/16 v5, 0x2710

    div-int v8, v5, v7

    .line 464
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v7, :cond_9

    .line 465
    add-int/lit8 v9, v5, 0x1

    mul-int/2addr v9, v8

    if-gt v6, v9, :cond_7

    .line 466
    mul-int v1, v5, v8

    .line 467
    sub-int v1, v6, v1

    int-to-float v1, v1

    int-to-float v2, v8

    div-float v3, v1, v2

    .line 469
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, v3, v1

    if-gez v1, :cond_5

    const/4 v1, 0x1

    .line 470
    :goto_5
    const/high16 v2, 0x42580000    # 54.0f

    mul-float v4, v2, v3

    .line 472
    if-eqz v1, :cond_6

    .line 473
    iget-object v2, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    const/high16 v7, 0x3f000000    # 0.5f

    iget-object v8, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-static {v8}, Landroid/support/wearable/view/ProgressSpinner;->access$400(Landroid/support/wearable/view/ProgressSpinner;)[I

    move-result-object v8

    aget v8, v8, v5

    iget-object v9, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-static {v9}, Landroid/support/wearable/view/ProgressSpinner;->access$400(Landroid/support/wearable/view/ProgressSpinner;)[I

    move-result-object v9

    add-int/lit8 v5, v5, 0x1

    iget-object v10, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-static {v10}, Landroid/support/wearable/view/ProgressSpinner;->access$400(Landroid/support/wearable/view/ProgressSpinner;)[I

    move-result-object v10

    array-length v10, v10

    rem-int/2addr v5, v10

    aget v5, v9, v5

    invoke-static {v2, v3, v7, v8, v5}, Landroid/support/wearable/view/ProgressSpinner;->access$800(Landroid/support/wearable/view/ProgressSpinner;FFII)I

    move-result v2

    .line 478
    const/high16 v5, 0x43990000    # 306.0f

    iget-object v7, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-static {v7}, Landroid/support/wearable/view/ProgressSpinner;->access$700(Landroid/support/wearable/view/ProgressSpinner;)Landroid/view/animation/Interpolator;

    move-result-object v7

    const/4 v8, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-static {v8, v9, v3}, Landroid/support/wearable/view/ProgressSpinner;->access$900(FFF)F

    move-result v3

    invoke-interface {v7, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v3, v5

    move v11, v1

    move v1, v2

    move v2, v11

    goto/16 :goto_2

    .line 469
    :cond_5
    const/4 v1, 0x0

    goto :goto_5

    .line 481
    :cond_6
    iget-object v2, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-static {v2}, Landroid/support/wearable/view/ProgressSpinner;->access$400(Landroid/support/wearable/view/ProgressSpinner;)[I

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-static {v7}, Landroid/support/wearable/view/ProgressSpinner;->access$400(Landroid/support/wearable/view/ProgressSpinner;)[I

    move-result-object v7

    array-length v7, v7

    rem-int/2addr v5, v7

    aget v2, v2, v5

    .line 482
    const/high16 v5, 0x43990000    # 306.0f

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v8, p0, Landroid/support/wearable/view/ProgressSpinner$ProgressDrawable;->this$0:Landroid/support/wearable/view/ProgressSpinner;

    invoke-static {v8}, Landroid/support/wearable/view/ProgressSpinner;->access$700(Landroid/support/wearable/view/ProgressSpinner;)Landroid/view/animation/Interpolator;

    move-result-object v8

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10, v3}, Landroid/support/wearable/view/ProgressSpinner;->access$900(FFF)F

    move-result v3

    invoke-interface {v8, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float v3, v7, v3

    mul-float/2addr v3, v5

    move v11, v1

    move v1, v2

    move v2, v11

    .line 486
    goto/16 :goto_2

    .line 464
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 500
    :cond_8
    const/high16 v0, 0x43990000    # 306.0f

    sub-float v2, v0, v3

    goto/16 :goto_3

    :cond_9
    move v11, v1

    move v1, v2

    move v2, v11

    goto/16 :goto_2
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 510
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 516
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 521
    return-void
.end method
