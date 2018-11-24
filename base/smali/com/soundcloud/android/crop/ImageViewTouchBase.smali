.class abstract Lcom/soundcloud/android/crop/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# static fields
.field private static final SCALE_RATE:F = 1.25f


# instance fields
.field protected baseMatrix:Landroid/graphics/Matrix;

.field protected final bitmapDisplayed:Lcom/soundcloud/android/crop/v;

.field private final displayMatrix:Landroid/graphics/Matrix;

.field protected handler:Landroid/os/Handler;

.field private final matrixValues:[F

.field maxZoom:F

.field private onLayoutRunnable:Ljava/lang/Runnable;

.field private recycler:Lcom/soundcloud/android/crop/r;

.field protected suppMatrix:Landroid/graphics/Matrix;

.field thisHeight:I

.field thisWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    .line 43
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    .line 46
    new-instance v0, Lcom/soundcloud/android/crop/v;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/soundcloud/android/crop/v;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/v;

    .line 48
    iput v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    .line 49
    iput v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->handler:Landroid/os/Handler;

    .line 67
    invoke-direct {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->init()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    .line 43
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    .line 46
    new-instance v0, Lcom/soundcloud/android/crop/v;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/soundcloud/android/crop/v;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/v;

    .line 48
    iput v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    .line 49
    iput v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->handler:Landroid/os/Handler;

    .line 72
    invoke-direct {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->init()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    .line 40
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    .line 43
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    .line 46
    new-instance v0, Lcom/soundcloud/android/crop/v;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/soundcloud/android/crop/v;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/v;

    .line 48
    iput v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    .line 49
    iput v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->handler:Landroid/os/Handler;

    .line 77
    invoke-direct {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->init()V

    .line 78
    return-void
.end method

.method private getProperBaseMatrix(Lcom/soundcloud/android/crop/v;Landroid/graphics/Matrix;Z)V
    .locals 8

    .prologue
    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 247
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 248
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 250
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/v;->e()I

    move-result v2

    int-to-float v2, v2

    .line 251
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/v;->d()I

    move-result v3

    int-to-float v3, v3

    .line 252
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 255
    div-float v4, v0, v2

    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 256
    div-float v5, v1, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 257
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 259
    if-eqz p3, :cond_0

    .line 260
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/v;->c()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 262
    :cond_0
    invoke-virtual {p2, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 263
    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    mul-float v2, v3, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v6

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 264
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 228
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 229
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;I)V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/v;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/v;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/v;

    invoke-virtual {v1, p1}, Lcom/soundcloud/android/crop/v;->a(Landroid/graphics/Bitmap;)V

    .line 136
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/v;

    invoke-virtual {v1, p2}, Lcom/soundcloud/android/crop/v;->a(I)V

    .line 138
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->recycler:Lcom/soundcloud/android/crop/r;

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->recycler:Lcom/soundcloud/android/crop/r;

    invoke-interface {v1, v0}, Lcom/soundcloud/android/crop/r;->recycle(Landroid/graphics/Bitmap;)V

    .line 141
    :cond_1
    return-void
.end method


# virtual methods
.method protected calculateMaxZoom()F
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/v;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/v;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 284
    const/high16 v0, 0x3f800000    # 1.0f

    .line 289
    :goto_0
    return v0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/v;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/v;->e()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 288
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/v;

    invoke-virtual {v1}, Lcom/soundcloud/android/crop/v;->d()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 289
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method protected center(ZZ)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 187
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/v;

    invoke-virtual {v1}, Lcom/soundcloud/android/crop/v;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 188
    if-nez v1, :cond_0

    .line 225
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 193
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v3, v0, v0, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 194
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 196
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 197
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 201
    if-eqz p2, :cond_6

    .line 202
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v4

    .line 203
    int-to-float v5, v4

    cmpg-float v5, v1, v5

    if-gez v5, :cond_2

    .line 204
    int-to-float v4, v4

    sub-float v1, v4, v1

    div-float/2addr v1, v6

    iget v4, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v4

    .line 212
    :goto_1
    if-eqz p1, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v4

    .line 214
    int-to-float v5, v4

    cmpg-float v5, v2, v5

    if-gez v5, :cond_4

    .line 215
    int-to-float v0, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v6

    iget v2, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    .line 223
    :cond_1
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->postTranslate(FF)V

    .line 224
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 205
    :cond_2
    iget v1, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    .line 206
    iget v1, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    goto :goto_1

    .line 207
    :cond_3
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    .line 208
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v4

    goto :goto_1

    .line 216
    :cond_4
    iget v2, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_5

    .line 217
    iget v0, v3, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    goto :goto_2

    .line 218
    :cond_5
    iget v2, v3, Landroid/graphics/RectF;->right:F

    int-to-float v5, v4

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    .line 219
    int-to-float v0, v4

    iget v2, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    goto :goto_2

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 145
    return-void
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 271
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 272
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->displayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method public getUnrotatedMatrix()Landroid/graphics/Matrix;
    .locals 3

    .prologue
    .line 276
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 277
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/v;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getProperBaseMatrix(Lcom/soundcloud/android/crop/v;Landroid/graphics/Matrix;Z)V

    .line 278
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 279
    return-object v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 233
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->matrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 111
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 115
    invoke-virtual {p0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomTo(F)V

    .line 116
    const/4 v0, 0x1

    .line 119
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 86
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 87
    sub-int v0, p4, p2

    iput v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisWidth:I

    .line 88
    sub-int v0, p5, p3

    iput v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->thisHeight:I

    .line 89
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onLayoutRunnable:Ljava/lang/Runnable;

    .line 90
    if-eqz v0, :cond_0

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onLayoutRunnable:Ljava/lang/Runnable;

    .line 92
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/v;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/v;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/v;

    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getProperBaseMatrix(Lcom/soundcloud/android/crop/v;Landroid/graphics/Matrix;Z)V

    .line 96
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 98
    :cond_1
    return-void
.end method

.method protected panBy(FF)V
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->postTranslate(FF)V

    .line 381
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 382
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 377
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 125
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/soundcloud/android/crop/v;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/soundcloud/android/crop/v;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/v;Z)V

    .line 152
    return-void
.end method

.method public setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/v;Z)V
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 157
    if-gtz v0, :cond_0

    .line 158
    new-instance v0, Lcom/soundcloud/android/crop/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/soundcloud/android/crop/p;-><init>(Lcom/soundcloud/android/crop/ImageViewTouchBase;Lcom/soundcloud/android/crop/v;Z)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onLayoutRunnable:Ljava/lang/Runnable;

    .line 179
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/v;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getProperBaseMatrix(Lcom/soundcloud/android/crop/v;Landroid/graphics/Matrix;Z)V

    .line 168
    invoke-virtual {p1}, Lcom/soundcloud/android/crop/v;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/soundcloud/android/crop/v;->a()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 174
    :goto_1
    if-eqz p2, :cond_1

    .line 175
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 178
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->calculateMaxZoom()F

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->maxZoom:F

    goto :goto_0

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->baseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setRecycler(Lcom/soundcloud/android/crop/r;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->recycler:Lcom/soundcloud/android/crop/r;

    .line 82
    return-void
.end method

.method protected zoomIn()V
    .locals 1

    .prologue
    .line 332
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomIn(F)V

    .line 333
    return-void
.end method

.method protected zoomIn(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 340
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v0

    iget v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->maxZoom:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/v;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/v;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 348
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 350
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 351
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected zoomOut()V
    .locals 1

    .prologue
    .line 336
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomOut(F)V

    .line 337
    return-void
.end method

.method protected zoomOut(F)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 355
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->bitmapDisplayed:Lcom/soundcloud/android/crop/v;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/v;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 360
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 363
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 364
    div-float v3, v5, p1

    div-float v4, v5, p1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 366
    invoke-virtual {p0, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5, v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 371
    :goto_1
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 372
    invoke-virtual {p0, v6, v6}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->center(ZZ)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object v2, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    div-float v3, v5, p1

    div-float v4, v5, p1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1
.end method

.method protected zoomTo(F)V
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 326
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 327
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 328
    invoke-virtual {p0, p1, v0, v1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomTo(FFF)V

    .line 329
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 293
    iget v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->maxZoom:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 294
    iget p1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->maxZoom:F

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v0

    .line 298
    div-float v0, p1, v0

    .line 300
    iget-object v1, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->suppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 301
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 302
    invoke-virtual {p0, v2, v2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->center(ZZ)V

    .line 303
    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 10

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v7, v0, p4

    .line 308
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getScale()F

    move-result v6

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 311
    iget-object v0, p0, Lcom/soundcloud/android/crop/ImageViewTouchBase;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/soundcloud/android/crop/q;

    move-object v2, p0

    move v3, p4

    move v8, p2

    move v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/soundcloud/android/crop/q;-><init>(Lcom/soundcloud/android/crop/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method
