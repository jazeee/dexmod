.class Landroid/support/wearable/view/ViewportDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ViewportDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final STEP_SIZE_PCT:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "ViewportDrawable"


# instance fields
.field private mAlpha:I

.field private mCenterOffsetX:I

.field private mCenterOffsetY:I

.field private mChangingConfigs:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorFilterColor:I

.field private mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

.field private mDither:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mDrawableBounds:Landroid/graphics/Rect;

.field private mFilterBitmap:Z

.field private mHeightStepSize:F

.field private mMaxPosX:I

.field private mMaxPosY:I

.field private mPositionX:F

.field private mPositionY:F

.field private mScale:F

.field private mSrcHeight:I

.field private mSrcWidth:I

.field private mWidthStepSize:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/wearable/view/ViewportDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 87
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mAlpha:I

    .line 51
    iput-boolean v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mDither:Z

    .line 55
    iput-boolean v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mFilterBitmap:Z

    .line 59
    iput v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosX:I

    .line 60
    iput v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosY:I

    .line 63
    iput v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionX:F

    .line 64
    iput v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionY:F

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    .line 75
    iput v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mScale:F

    .line 88
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/ViewportDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    return-void
.end method

.method private static limit(FII)F
    .locals 1

    .prologue
    .line 313
    int-to-float v0, p1

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    .line 314
    int-to-float p0, p1

    .line 317
    :cond_0
    :goto_0
    return p0

    .line 315
    :cond_1
    int-to-float v0, p2

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 316
    int-to-float p0, p2

    goto :goto_0
.end method

.method private recomputeScale()V
    .locals 7

    .prologue
    const/4 v3, -0x1

    const/high16 v6, 0x40000000    # 2.0f

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 236
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcWidth:I

    .line 249
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcHeight:I

    .line 250
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcWidth:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcHeight:I

    if-ne v0, v3, :cond_3

    .line 257
    :cond_2
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcWidth:I

    .line 258
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcHeight:I

    .line 259
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mScale:F

    .line 260
    iput v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mWidthStepSize:F

    .line 261
    iput v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mHeightStepSize:F

    .line 262
    iput v5, p0, Landroid/support/wearable/view/ViewportDrawable;->mCenterOffsetX:I

    .line 263
    iput v5, p0, Landroid/support/wearable/view/ViewportDrawable;->mCenterOffsetY:I

    goto :goto_0

    .line 266
    :cond_3
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mWidthStepSize:F

    .line 267
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mHeightStepSize:F

    .line 272
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosX:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mWidthStepSize:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 273
    iget-object v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosY:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mHeightStepSize:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 281
    iget v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcWidth:I

    int-to-float v2, v2

    div-float v2, v0, v2

    iget v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcHeight:I

    int-to-float v3, v3

    div-float v3, v1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mScale:F

    .line 282
    iget v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mScale:F

    mul-float/2addr v2, v3

    .line 283
    iget v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mSrcHeight:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/wearable/view/ViewportDrawable;->mScale:F

    mul-float/2addr v3, v4

    .line 289
    cmpl-float v4, v2, v0

    if-lez v4, :cond_4

    .line 290
    sub-float v0, v2, v0

    div-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mCenterOffsetX:I

    .line 291
    iput v5, p0, Landroid/support/wearable/view/ViewportDrawable;->mCenterOffsetY:I

    goto/16 :goto_0

    .line 293
    :cond_4
    sub-float v0, v3, v1

    div-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mCenterOffsetY:I

    .line 294
    iput v5, p0, Landroid/support/wearable/view/ViewportDrawable;->mCenterOffsetX:I

    goto/16 :goto_0
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

    .line 355
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 359
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 302
    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 303
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mCenterOffsetX:I

    int-to-float v0, v0

    iget v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionX:F

    iget v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mWidthStepSize:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 304
    iget v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mCenterOffsetY:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionY:F

    iget v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mHeightStepSize:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 305
    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 306
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mScale:F

    iget v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 307
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 308
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 310
    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mAlpha:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mChangingConfigs:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 445
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 404
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 366
    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 231
    invoke-direct {p0}, Landroid/support/wearable/view/ViewportDrawable;->recomputeScale()V

    .line 232
    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->invalidateSelf()V

    .line 233
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    .line 396
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStateChange([I)Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 388
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 452
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 415
    iput p1, p0, Landroid/support/wearable/view/ViewportDrawable;->mAlpha:I

    .line 416
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 420
    :cond_0
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mChangingConfigs:I

    if-eq v0, p1, :cond_0

    .line 371
    iput p1, p0, Landroid/support/wearable/view/ViewportDrawable;->mChangingConfigs:I

    .line 372
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 376
    :cond_0
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilterColor:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p2, :cond_1

    .line 343
    :cond_0
    iput p1, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilterColor:I

    .line 344
    iput-object p2, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

    .line 345
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 349
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 425
    iput-object p1, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 426
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 430
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDither:Z

    if-eq v0, p1, :cond_0

    .line 333
    iput-boolean p1, p0, Landroid/support/wearable/view/ViewportDrawable;->mDither:Z

    .line 334
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 338
    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .prologue
    .line 92
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 101
    :cond_2
    iput-object p1, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 104
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 105
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 106
    iget-object v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 107
    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 108
    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    .line 115
    iget-object v3, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    :goto_1
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 124
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 127
    :cond_3
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_4

    .line 128
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilterColor:I

    iget-object v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mColorFilterMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 130
    :cond_4
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mDither:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 131
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mFilterBitmap:Z

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 132
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 133
    invoke-direct {p0}, Landroid/support/wearable/view/ViewportDrawable;->recomputeScale()V

    .line 134
    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->invalidateSelf()V

    goto/16 :goto_0

    .line 121
    :cond_5
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mFilterBitmap:Z

    if-eq v0, p1, :cond_0

    .line 323
    iput-boolean p1, p0, Landroid/support/wearable/view/ViewportDrawable;->mFilterBitmap:Z

    .line 324
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 328
    :cond_0
    return-void
.end method

.method public setHorizontalPosition(F)V
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionY:F

    invoke-virtual {p0, p1, v0}, Landroid/support/wearable/view/ViewportDrawable;->setPosition(FF)V

    .line 178
    return-void
.end method

.method public setHorizontalStops(I)V
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosY:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/wearable/view/ViewportDrawable;->setStops(II)V

    .line 213
    return-void
.end method

.method public setPosition(FF)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 149
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionX:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 153
    :cond_0
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosX:I

    invoke-static {p1, v1, v0}, Landroid/support/wearable/view/ViewportDrawable;->limit(FII)F

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionX:F

    .line 154
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosY:I

    invoke-static {p2, v1, v0}, Landroid/support/wearable/view/ViewportDrawable;->limit(FII)F

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionY:F

    .line 155
    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->invalidateSelf()V

    .line 157
    :cond_1
    return-void
.end method

.method public setStops(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 190
    add-int/lit8 v0, p1, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 191
    add-int/lit8 v1, p2, -0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 192
    iget v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosX:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosY:I

    if-eq v1, v2, :cond_1

    .line 196
    :cond_0
    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosX:I

    .line 197
    iput v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosY:I

    .line 198
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionX:F

    iget v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosX:I

    invoke-static {v0, v3, v1}, Landroid/support/wearable/view/ViewportDrawable;->limit(FII)F

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionX:F

    .line 199
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionY:F

    iget v1, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosY:I

    invoke-static {v0, v3, v1}, Landroid/support/wearable/view/ViewportDrawable;->limit(FII)F

    move-result v0

    iput v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionY:F

    .line 200
    invoke-direct {p0}, Landroid/support/wearable/view/ViewportDrawable;->recomputeScale()V

    .line 201
    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->invalidateSelf()V

    .line 203
    :cond_1
    return-void
.end method

.method public setVerticalPosition(F)V
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mPositionX:F

    invoke-virtual {p0, v0, p1}, Landroid/support/wearable/view/ViewportDrawable;->setPosition(FF)V

    .line 167
    return-void
.end method

.method public setVerticalStops(I)V
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mMaxPosX:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/support/wearable/view/ViewportDrawable;->setStops(II)V

    .line 223
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Landroid/support/wearable/view/ViewportDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Landroid/support/wearable/view/ViewportDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 459
    :cond_0
    return-void
.end method
