.class public Lcom/soundcloud/android/crop/CropImageView;
.super Lcom/soundcloud/android/crop/ImageViewTouchBase;
.source "CropImageView.java"


# instance fields
.field context:Landroid/content/Context;

.field highlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/soundcloud/android/crop/m;",
            ">;"
        }
    .end annotation
.end field

.field private lastX:F

.field private lastY:F

.field private motionEdge:I

.field motionHighlightView:Lcom/soundcloud/android/crop/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/soundcloud/android/crop/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/soundcloud/android/crop/m;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v4, 0x3f19999a    # 0.6f

    .line 166
    iget-object v0, p1, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    .line 168
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 169
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 171
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 172
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 174
    div-float v1, v2, v1

    mul-float/2addr v1, v4

    .line 175
    div-float v0, v3, v0

    mul-float/2addr v0, v4

    .line 177
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 178
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    .line 179
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 181
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getScale()F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v2, v1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 182
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p1, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    aput v2, v1, v6

    iget-object v2, p1, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    aput v2, v1, v7

    .line 183
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 184
    aget v2, v1, v6

    aget v1, v1, v7

    const/high16 v3, 0x43960000    # 300.0f

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/soundcloud/android/crop/CropImageView;->zoomTo(FFFF)V

    .line 187
    :cond_0
    invoke-direct {p0, p1}, Lcom/soundcloud/android/crop/CropImageView;->ensureVisible(Lcom/soundcloud/android/crop/m;)V

    .line 188
    return-void
.end method

.method private ensureVisible(Lcom/soundcloud/android/crop/m;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 147
    iget-object v1, p1, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    .line 149
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getLeft()I

    move-result v0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 150
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getRight()I

    move-result v0

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v3

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 152
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getTop()I

    move-result v0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 153
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getBottom()I

    move-result v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 155
    if-eqz v2, :cond_2

    .line 156
    :goto_0
    if-eqz v0, :cond_3

    .line 158
    :goto_1
    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    int-to-float v1, v2

    int-to-float v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/soundcloud/android/crop/CropImageView;->panBy(FF)V

    .line 161
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 155
    goto :goto_0

    :cond_3
    move v0, v1

    .line 156
    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/soundcloud/android/crop/m;)V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->invalidate()V

    .line 201
    return-void
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->clear()V

    return-void
.end method

.method public bridge synthetic getUnrotatedMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 193
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/m;

    .line 194
    invoke-virtual {v0, p1}, Lcom/soundcloud/android/crop/m;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    .line 37
    invoke-super/range {p0 .. p5}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 38
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->bitmapDisplayed:Lcom/soundcloud/android/crop/v;

    invoke-virtual {v0}, Lcom/soundcloud/android/crop/v;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/m;

    .line 41
    iget-object v2, v0, Lcom/soundcloud/android/crop/m;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 42
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/m;->a()V

    .line 43
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/m;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageView;->centerBasedOnHighlightView(Lcom/soundcloud/android/crop/m;)V

    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 88
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->context:Landroid/content/Context;

    check-cast v0, Lcom/soundcloud/android/crop/CropImageActivity;

    .line 89
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/CropImageActivity;->isSaving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 127
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :cond_2
    :goto_2
    move v0, v1

    .line 142
    goto :goto_0

    .line 95
    :pswitch_0
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/m;

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/soundcloud/android/crop/m;->a(FF)I

    move-result v3

    .line 97
    if-eq v3, v1, :cond_3

    .line 98
    iput v3, p0, Lcom/soundcloud/android/crop/CropImageView;->motionEdge:I

    .line 99
    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->motionHighlightView:Lcom/soundcloud/android/crop/m;

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/CropImageView;->lastX:F

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/CropImageView;->lastY:F

    .line 102
    iget-object v2, p0, Lcom/soundcloud/android/crop/CropImageView;->motionHighlightView:Lcom/soundcloud/android/crop/m;

    const/16 v0, 0x20

    if-ne v3, v0, :cond_4

    sget v0, Lcom/soundcloud/android/crop/o;->b:I

    :goto_3
    invoke-virtual {v2, v0}, Lcom/soundcloud/android/crop/m;->a(I)V

    goto :goto_1

    :cond_4
    sget v0, Lcom/soundcloud/android/crop/o;->c:I

    goto :goto_3

    .line 110
    :pswitch_1
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->motionHighlightView:Lcom/soundcloud/android/crop/m;

    if-eqz v0, :cond_5

    .line 111
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->motionHighlightView:Lcom/soundcloud/android/crop/m;

    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageView;->centerBasedOnHighlightView(Lcom/soundcloud/android/crop/m;)V

    .line 112
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->motionHighlightView:Lcom/soundcloud/android/crop/m;

    sget v2, Lcom/soundcloud/android/crop/o;->a:I

    invoke-virtual {v0, v2}, Lcom/soundcloud/android/crop/m;->a(I)V

    .line 114
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->motionHighlightView:Lcom/soundcloud/android/crop/m;

    goto :goto_1

    .line 117
    :pswitch_2
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->motionHighlightView:Lcom/soundcloud/android/crop/m;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->motionHighlightView:Lcom/soundcloud/android/crop/m;

    iget v2, p0, Lcom/soundcloud/android/crop/CropImageView;->motionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/soundcloud/android/crop/CropImageView;->lastX:F

    sub-float/2addr v3, v4

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/soundcloud/android/crop/CropImageView;->lastY:F

    sub-float/2addr v4, v5

    .line 118
    invoke-virtual {v0, v2, v3, v4}, Lcom/soundcloud/android/crop/m;->a(IFF)V

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/CropImageView;->lastX:F

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/CropImageView;->lastY:F

    .line 122
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->motionHighlightView:Lcom/soundcloud/android/crop/m;

    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/CropImageView;->ensureVisible(Lcom/soundcloud/android/crop/m;)V

    goto/16 :goto_1

    .line 129
    :pswitch_3
    invoke-virtual {p0, v1, v1}, Lcom/soundcloud/android/crop/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 136
    :pswitch_4
    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getScale()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 137
    invoke-virtual {p0, v1, v1}, Lcom/soundcloud/android/crop/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 127
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->postTranslate(FF)V

    .line 80
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/m;

    .line 81
    iget-object v2, v0, Lcom/soundcloud/android/crop/m;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 82
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/m;->a()V

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method public bridge synthetic setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public bridge synthetic setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/v;Z)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/soundcloud/android/crop/v;Z)V

    return-void
.end method

.method public bridge synthetic setRecycler(Lcom/soundcloud/android/crop/r;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->setRecycler(Lcom/soundcloud/android/crop/r;)V

    return-void
.end method

.method protected zoomIn()V
    .locals 4

    .prologue
    .line 61
    invoke-super {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomIn()V

    .line 62
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/m;

    .line 63
    iget-object v2, v0, Lcom/soundcloud/android/crop/m;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 64
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/m;->a()V

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method protected zoomOut()V
    .locals 4

    .prologue
    .line 70
    invoke-super {p0}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomOut()V

    .line 71
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/m;

    .line 72
    iget-object v2, v0, Lcom/soundcloud/android/crop/m;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 73
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/m;->a()V

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/soundcloud/android/crop/ImageViewTouchBase;->zoomTo(FFF)V

    .line 53
    iget-object v0, p0, Lcom/soundcloud/android/crop/CropImageView;->highlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/soundcloud/android/crop/m;

    .line 54
    iget-object v2, v0, Lcom/soundcloud/android/crop/m;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/soundcloud/android/crop/CropImageView;->getUnrotatedMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 55
    invoke-virtual {v0}, Lcom/soundcloud/android/crop/m;->a()V

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method
