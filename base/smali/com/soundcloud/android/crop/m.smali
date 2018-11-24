.class final Lcom/soundcloud/android/crop/m;
.super Ljava/lang/Object;
.source "HighlightView.java"


# instance fields
.field a:Landroid/graphics/RectF;

.field b:Landroid/graphics/Rect;

.field c:Landroid/graphics/Matrix;

.field private d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private h:Landroid/view/View;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:F

.field private p:F

.field private q:F

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/m;->e:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/m;->f:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/soundcloud/android/crop/m;->g:Landroid/graphics/Paint;

    .line 57
    sget v0, Lcom/soundcloud/android/crop/o;->a:I

    iput v0, p0, Lcom/soundcloud/android/crop/m;->l:I

    .line 58
    sget v0, Lcom/soundcloud/android/crop/n;->a:I

    iput v0, p0, Lcom/soundcloud/android/crop/m;->m:I

    .line 66
    iput-object p1, p0, Lcom/soundcloud/android/crop/m;->h:Landroid/view/View;

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1071
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1072
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Lcom/dexcom/cgm/i/a/e;->cropImageStyle:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1073
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    sget-object v2, Lcom/soundcloud/android/crop/u;->CropImageView:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1075
    :try_start_0
    sget v0, Lcom/soundcloud/android/crop/u;->CropImageView_showThirds:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/soundcloud/android/crop/m;->i:Z

    .line 1076
    sget v0, Lcom/soundcloud/android/crop/u;->CropImageView_showCircle:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/soundcloud/android/crop/m;->j:Z

    .line 1077
    sget v0, Lcom/soundcloud/android/crop/u;->CropImageView_highlightColor:I

    const v2, -0xcc4a1b

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/m;->k:I

    .line 1079
    invoke-static {}, Lcom/soundcloud/android/crop/n;->a()[I

    move-result-object v0

    sget v2, Lcom/soundcloud/android/crop/u;->CropImageView_showHandles:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget v0, v0, v2

    iput v0, p0, Lcom/soundcloud/android/crop/m;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1082
    return-void

    .line 1081
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private a(F)F
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private c()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 362
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 364
    iget-object v1, p0, Lcom/soundcloud/android/crop/m;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 365
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 366
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method


# virtual methods
.method public final a(FF)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/high16 v6, 0x41a00000    # 20.0f

    .line 218
    invoke-direct {p0}, Lcom/soundcloud/android/crop/m;->c()Landroid/graphics/Rect;

    move-result-object v4

    .line 224
    iget v0, v4, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, v6

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_4

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, v6

    cmpg-float v0, p2, v0

    if-gez v0, :cond_4

    move v0, v1

    .line 226
    :goto_0
    iget v3, v4, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    iget v3, v4, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    add-float/2addr v3, v6

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    move v2, v1

    .line 230
    :cond_0
    iget v3, v4, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v6

    if-gez v3, :cond_6

    if-eqz v0, :cond_6

    .line 231
    const/4 v3, 0x3

    .line 233
    :goto_1
    iget v5, v4, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    if-eqz v0, :cond_1

    .line 234
    or-int/lit8 v3, v3, 0x4

    .line 236
    :cond_1
    iget v0, v4, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_2

    if-eqz v2, :cond_2

    .line 237
    or-int/lit8 v3, v3, 0x8

    .line 239
    :cond_2
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_5

    if-eqz v2, :cond_5

    .line 240
    or-int/lit8 v3, v3, 0x10

    move v0, v3

    .line 244
    :goto_2
    if-ne v0, v1, :cond_3

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    const/16 v0, 0x20

    .line 247
    :cond_3
    return v0

    :cond_4
    move v0, v2

    .line 224
    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    move v3, v1

    goto :goto_1
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/soundcloud/android/crop/m;->c()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    .line 371
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/soundcloud/android/crop/m;->l:I

    if-eq p1, v0, :cond_0

    .line 211
    iput p1, p0, Lcom/soundcloud/android/crop/m;->l:I

    .line 212
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 214
    :cond_0
    return-void
.end method

.method final a(IFF)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    const/high16 v4, 0x41c80000    # 25.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 253
    invoke-direct {p0}, Lcom/soundcloud/android/crop/m;->c()Landroid/graphics/Rect;

    move-result-object v3

    .line 254
    const/16 v5, 0x20

    if-ne p1, v5, :cond_0

    .line 256
    iget-object v1, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, p2

    iget-object v2, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    .line 257
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v2, p3

    .line 4277
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4279
    iget-object v4, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 4282
    iget-object v1, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/soundcloud/android/crop/m;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    .line 4283
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v4, p0, Lcom/soundcloud/android/crop/m;->d:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    .line 4284
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 4282
    invoke-virtual {v1, v2, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 4286
    iget-object v1, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/soundcloud/android/crop/m;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v4

    .line 4287
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v4, p0, Lcom/soundcloud/android/crop/m;->d:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    .line 4288
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 4286
    invoke-virtual {v1, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 4290
    invoke-direct {p0}, Lcom/soundcloud/android/crop/m;->c()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    .line 4291
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4292
    iget v0, p0, Lcom/soundcloud/android/crop/m;->p:F

    float-to-int v0, v0

    neg-int v0, v0

    iget v1, p0, Lcom/soundcloud/android/crop/m;->p:F

    float-to-int v1, v1

    neg-int v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 4293
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->h:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 273
    :goto_0
    return-void

    .line 259
    :cond_0
    and-int/lit8 v5, p1, 0x6

    if-nez v5, :cond_1

    move p2, v0

    .line 263
    :cond_1
    and-int/lit8 v5, p1, 0x18

    if-nez v5, :cond_2

    move p3, v0

    .line 268
    :cond_2
    iget-object v5, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v5, p2

    .line 269
    iget-object v6, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v6, v3

    mul-float v6, p3, v3

    .line 270
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_9

    move v3, v1

    :goto_1
    int-to-float v3, v3

    mul-float/2addr v3, v5

    and-int/lit8 v5, p1, 0x8

    if-eqz v5, :cond_a

    :goto_2
    int-to-float v1, v1

    mul-float/2addr v1, v6

    .line 4298
    iget-boolean v2, p0, Lcom/soundcloud/android/crop/m;->n:Z

    if-eqz v2, :cond_f

    .line 4299
    cmpl-float v2, v3, v0

    if-eqz v2, :cond_b

    .line 4300
    iget v1, p0, Lcom/soundcloud/android/crop/m;->o:F

    div-float v1, v3, v1

    move v2, v3

    .line 4309
    :goto_3
    new-instance v3, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    invoke-direct {v3, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 4310
    cmpl-float v5, v2, v0

    if-lez v5, :cond_3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float v6, v7, v2

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/soundcloud/android/crop/m;->d:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 4311
    iget-object v2, p0, Lcom/soundcloud/android/crop/m;->d:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v2, v5

    div-float/2addr v2, v7

    .line 4312
    iget-boolean v5, p0, Lcom/soundcloud/android/crop/m;->n:Z

    if-eqz v5, :cond_3

    .line 4313
    iget v1, p0, Lcom/soundcloud/android/crop/m;->o:F

    div-float v1, v2, v1

    .line 4316
    :cond_3
    cmpl-float v5, v1, v0

    if-lez v5, :cond_4

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float v6, v7, v1

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/soundcloud/android/crop/m;->d:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 4317
    iget-object v1, p0, Lcom/soundcloud/android/crop/m;->d:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v1, v5

    div-float/2addr v1, v7

    .line 4318
    iget-boolean v5, p0, Lcom/soundcloud/android/crop/m;->n:Z

    if-eqz v5, :cond_4

    .line 4319
    iget v2, p0, Lcom/soundcloud/android/crop/m;->o:F

    mul-float/2addr v2, v1

    .line 4323
    :cond_4
    neg-float v2, v2

    neg-float v1, v1

    invoke-virtual {v3, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 4327
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_5

    .line 4328
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v1, v4, v1

    neg-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v3, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 4330
    :cond_5
    iget-boolean v1, p0, Lcom/soundcloud/android/crop/m;->n:Z

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/soundcloud/android/crop/m;->o:F

    div-float v1, v4, v1

    .line 4333
    :goto_4
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_6

    .line 4334
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v1, v2

    neg-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 4338
    :cond_6
    iget v1, v3, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/soundcloud/android/crop/m;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_d

    .line 4339
    iget-object v1, p0, Lcom/soundcloud/android/crop/m;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-virtual {v3, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 4343
    :cond_7
    :goto_5
    iget v1, v3, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/soundcloud/android/crop/m;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    .line 4344
    iget-object v1, p0, Lcom/soundcloud/android/crop/m;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 4349
    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 4350
    invoke-direct {p0}, Lcom/soundcloud/android/crop/m;->c()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    .line 4351
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    :cond_9
    move v3, v2

    .line 270
    goto/16 :goto_1

    :cond_a
    move v1, v2

    goto/16 :goto_2

    .line 4301
    :cond_b
    cmpl-float v2, v1, v0

    if-eqz v2, :cond_f

    .line 4302
    iget v2, p0, Lcom/soundcloud/android/crop/m;->o:F

    mul-float/2addr v2, v1

    goto/16 :goto_3

    :cond_c
    move v1, v4

    .line 4330
    goto :goto_4

    .line 4340
    :cond_d
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/soundcloud/android/crop/m;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 4341
    iget v1, v3, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/soundcloud/android/crop/m;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v3, v1, v0}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_5

    .line 4345
    :cond_e
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/soundcloud/android/crop/m;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 4346
    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/soundcloud/android/crop/m;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_6

    :cond_f
    move v2, v3

    goto/16 :goto_3
.end method

.method protected final a(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 114
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 115
    iget-object v2, p0, Lcom/soundcloud/android/crop/m;->f:Landroid/graphics/Paint;

    iget v3, p0, Lcom/soundcloud/android/crop/m;->q:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1374
    iget-boolean v2, p0, Lcom/soundcloud/android/crop/m;->r:Z

    .line 116
    if-nez v2, :cond_1

    .line 117
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->f:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/soundcloud/android/crop/m;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 121
    iget-object v3, p0, Lcom/soundcloud/android/crop/m;->h:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 123
    new-instance v3, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v3, v4}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 124
    iget-object v3, p0, Lcom/soundcloud/android/crop/m;->f:Landroid/graphics/Paint;

    iget v4, p0, Lcom/soundcloud/android/crop/m;->k:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2169
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-eq v3, v4, :cond_7

    .line 2171
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-le v3, v4, :cond_6

    .line 126
    :cond_2
    :goto_1
    if-eqz v0, :cond_8

    .line 127
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 128
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 133
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 134
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 136
    iget-boolean v0, p0, Lcom/soundcloud/android/crop/m;->i:Z

    if-eqz v0, :cond_3

    .line 3190
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3191
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    int-to-float v6, v0

    .line 3192
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    int-to-float v7, v0

    .line 3194
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float v1, v0, v6

    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float v3, v0, v6

    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/soundcloud/android/crop/m;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3196
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float v1, v6, v8

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float v3, v6, v8

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/soundcloud/android/crop/m;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3198
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v2, v0, v7

    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float v4, v0, v7

    iget-object v5, p0, Lcom/soundcloud/android/crop/m;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3200
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float v2, v7, v8

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float v4, v7, v8

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/soundcloud/android/crop/m;->f:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 140
    :cond_3
    iget-boolean v0, p0, Lcom/soundcloud/android/crop/m;->j:Z

    if-eqz v0, :cond_4

    .line 3205
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3206
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/soundcloud/android/crop/m;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 144
    :cond_4
    iget v0, p0, Lcom/soundcloud/android/crop/m;->m:I

    sget v1, Lcom/soundcloud/android/crop/n;->b:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/soundcloud/android/crop/m;->m:I

    sget v1, Lcom/soundcloud/android/crop/n;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/soundcloud/android/crop/m;->l:I

    sget v1, Lcom/soundcloud/android/crop/o;->c:I

    if-ne v0, v1, :cond_0

    .line 4180
    :cond_5
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 4181
    iget-object v1, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 4183
    iget-object v2, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    int-to-float v3, v1

    iget v4, p0, Lcom/soundcloud/android/crop/m;->p:F

    iget-object v5, p0, Lcom/soundcloud/android/crop/m;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4184
    int-to-float v2, v0

    iget-object v3, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, p0, Lcom/soundcloud/android/crop/m;->p:F

    iget-object v5, p0, Lcom/soundcloud/android/crop/m;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4185
    iget-object v2, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    int-to-float v1, v1

    iget v3, p0, Lcom/soundcloud/android/crop/m;->p:F

    iget-object v4, p0, Lcom/soundcloud/android/crop/m;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 4186
    int-to-float v0, v0

    iget-object v1, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/soundcloud/android/crop/m;->p:F

    iget-object v3, p0, Lcom/soundcloud/android/crop/m;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 2175
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 3155
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/soundcloud/android/crop/m;->e:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3156
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/soundcloud/android/crop/m;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3157
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/soundcloud/android/crop/m;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3158
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/soundcloud/android/crop/m;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method public final a(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x32

    .line 86
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/m;->c:Landroid/graphics/Matrix;

    .line 88
    iput-object p3, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    .line 89
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/soundcloud/android/crop/m;->d:Landroid/graphics/RectF;

    .line 90
    iput-boolean p4, p0, Lcom/soundcloud/android/crop/m;->n:Z

    .line 92
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/soundcloud/android/crop/m;->a:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/soundcloud/android/crop/m;->o:F

    .line 93
    invoke-direct {p0}, Lcom/soundcloud/android/crop/m;->c()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/soundcloud/android/crop/m;->b:Landroid/graphics/Rect;

    .line 95
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->e:Landroid/graphics/Paint;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 96
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/m;->a(F)F

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/m;->q:F

    .line 100
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->g:Landroid/graphics/Paint;

    iget v1, p0, Lcom/soundcloud/android/crop/m;->k:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object v0, p0, Lcom/soundcloud/android/crop/m;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    const/high16 v0, 0x41400000    # 12.0f

    invoke-direct {p0, v0}, Lcom/soundcloud/android/crop/m;->a(F)F

    move-result v0

    iput v0, p0, Lcom/soundcloud/android/crop/m;->p:F

    .line 105
    sget v0, Lcom/soundcloud/android/crop/o;->a:I

    iput v0, p0, Lcom/soundcloud/android/crop/m;->l:I

    .line 106
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 378
    iput-boolean p1, p0, Lcom/soundcloud/android/crop/m;->r:Z

    .line 379
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/soundcloud/android/crop/m;->r:Z

    return v0
.end method
