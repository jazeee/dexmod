.class public Lcom/dexcom/cgm/activities/CGMStateCircle;
.super Landroid/view/ViewGroup;
.source "CGMStateCircle.java"


# instance fields
.field private barColor:I

.field private barLength:I

.field private barPaint:Landroid/graphics/Paint;

.field private barWidth:I

.field private centerCircleColor:I

.field private centerCirclePaint:Landroid/graphics/Paint;

.field private centerCircleRadius:I

.field private circleBounds:Landroid/graphics/RectF;

.field private delayMillis:I

.field private gapColor:I

.field private gapPaint:Landroid/graphics/Paint;

.field public height:I

.field private m_isDisplayingProgressBar:Z

.field private meterImage:Landroid/widget/ImageView;

.field progress:F

.field private progressBarPadding:I

.field private rimColor:I

.field private rimPaint:Landroid/graphics/Paint;

.field private rimWidth:I

.field private spinSpeed:I

.field private stateCircleContents:Landroid/view/View;

.field private textIconView:Landroid/widget/ImageView;

.field private textView:Landroid/widget/TextView;

.field public width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2, v1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleRadius:I

    .line 27
    const/16 v0, 0x3c

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barLength:I

    .line 28
    iput v2, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barWidth:I

    .line 29
    iput v2, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->rimWidth:I

    .line 34
    const/16 v0, 0x8

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->progressBarPadding:I

    .line 37
    const/high16 v0, -0x56000000

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barColor:I

    .line 38
    iput v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->gapColor:I

    .line 39
    iput v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleColor:I

    .line 40
    const v0, -0x55222223

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->rimColor:I

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barPaint:Landroid/graphics/Paint;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->gapPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCirclePaint:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->rimPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->circleBounds:Landroid/graphics/RectF;

    .line 53
    const/4 v0, 0x2

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->spinSpeed:I

    .line 55
    iput v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->delayMillis:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->progress:F

    .line 58
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->m_isDisplayingProgressBar:Z

    .line 83
    sget-object v0, Lcom/dexcom/cgm/activities/R$styleable;->CGMStateCircle:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/CGMStateCircle;->parseAttributes(Landroid/content/res/TypedArray;)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/CGMStateCircle;->setWillNotDraw(Z)V

    .line 85
    const-string v0, "layout_inflater"

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 87
    sget v1, Lcom/dexcom/cgm/activities/R$layout;->state_circle_contents:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->stateCircleContents:Landroid/view/View;

    .line 88
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->stateCircleContents:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/CGMStateCircle;->addView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->stateCircleContents:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->textView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->textView:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->stateCircleContents:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->textIconView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->textIconView:Landroid/widget/ImageView;

    .line 91
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->stateCircleContents:Landroid/view/View;

    sget v1, Lcom/dexcom/cgm/activities/R$id;->meter_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->meterImage:Landroid/widget/ImageView;

    .line 92
    return-void
.end method

.method private parseAttributes(Landroid/content/res/TypedArray;)V
    .locals 2

    .prologue
    .line 192
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->CGMStateCircle_spinSpeed:I

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->spinSpeed:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->spinSpeed:I

    .line 193
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->CGMStateCircle_delayMillis:I

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->delayMillis:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->delayMillis:I

    .line 194
    iget v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->delayMillis:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->delayMillis:I

    .line 196
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->CGMStateCircle_barColor:I

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barColor:I

    .line 197
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->CGMStateCircle_bar_Length:I

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barLength:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barLength:I

    .line 198
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->CGMStateCircle_rimColor:I

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->rimColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->rimColor:I

    .line 199
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->CGMStateCircle_gapColor:I

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->gapColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->gapColor:I

    .line 200
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->CGMStateCircle_rimWidth:I

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->rimWidth:I

    .line 201
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->CGMStateCircle_bar_Width:I

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barWidth:I

    .line 202
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->CGMStateCircle_centerCircleRadius:I

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleRadius:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleRadius:I

    .line 204
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->CGMStateCircle_centerCircleColor:I

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleColor:I

    .line 208
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    return-void

    .line 194
    :cond_0
    iget v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->delayMillis:I

    goto :goto_0
.end method

.method private setCenterCircleColor(I)V
    .locals 2

    .prologue
    .line 288
    iput p1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleColor:I

    .line 290
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCirclePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 294
    :cond_0
    return-void
.end method

.method private setProgress(F)V
    .locals 2

    .prologue
    .line 253
    const/high16 v0, 0x43b40000    # 360.0f

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v1, p1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->progress:F

    .line 254
    return-void
.end method

.method private setupBounds()V
    .locals 6

    .prologue
    .line 164
    iget v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->width:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleRadius:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->progressBarPadding:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barWidth:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->width:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleRadius:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->progressBarPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barWidth:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 169
    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->width:I

    if-le v0, v1, :cond_1

    .line 171
    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleRadius:I

    iget v2, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->width:I

    sub-int/2addr v0, v2

    sub-int v0, v1, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleRadius:I

    .line 178
    :cond_0
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->width:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleRadius:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->progressBarPadding:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->height:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleRadius:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->progressBarPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->width:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleRadius:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->progressBarPadding:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barWidth:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->height:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleRadius:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->progressBarPadding:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barWidth:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->circleBounds:Landroid/graphics/RectF;

    .line 183
    return-void

    .line 173
    :cond_1
    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->width:I

    if-ne v0, v1, :cond_0

    .line 175
    iget v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleRadius:I

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleRadius:I

    goto :goto_0
.end method

.method private setupPaints()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 139
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 144
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->rimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->rimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->gapPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->gapColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->gapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 151
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->gapPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 152
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->gapPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42860000    # 67.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 153
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->gapPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 155
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    return-void
.end method


# virtual methods
.method public displayCircleWithoutProgress(I)V
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->m_isDisplayingProgressBar:Z

    .line 327
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/CGMStateCircle;->setCenterCircleColor(I)V

    .line 328
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateCircle;->postInvalidate()V

    .line 329
    return-void
.end method

.method public displayProgress(FI)V
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->m_isDisplayingProgressBar:Z

    .line 319
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/CGMStateCircle;->setProgress(F)V

    .line 320
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/activities/CGMStateCircle;->setCenterCircleColor(I)V

    .line 321
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateCircle;->postInvalidate()V

    .line 322
    return-void
.end method

.method public getBarColor()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barColor:I

    return v0
.end method

.method public getBarLength()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barLength:I

    return v0
.end method

.method public getCenterCircleColor()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleColor:I

    return v0
.end method

.method public getMeterImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->meterImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->progress:F

    return v0
.end method

.method public getRimColor()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->rimColor:I

    return v0
.end method

.method public getTextIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->textIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v4, 0x0

    .line 216
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 218
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->m_isDisplayingProgressBar:Z

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->circleBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->rimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 224
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->circleBounds:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v3, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->progress:F

    iget-object v5, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 227
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->circleBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x43b20000    # 356.0f

    iget-object v5, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->gapPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 228
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->circleBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x43300000    # 176.0f

    iget-object v5, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->gapPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 230
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->circleBounds:Landroid/graphics/RectF;

    const v2, 0x439b8000    # 311.0f

    iget-object v5, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->gapPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 231
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->circleBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x43030000    # 131.0f

    iget-object v5, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->gapPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 233
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->circleBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x43850000    # 266.0f

    iget-object v5, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->gapPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 234
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->circleBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x42ac0000    # 86.0f

    iget-object v5, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->gapPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 236
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->circleBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x435d0000    # 221.0f

    iget-object v5, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->gapPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 237
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->circleBounds:Landroid/graphics/RectF;

    const/high16 v2, 0x42240000    # 41.0f

    iget-object v5, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->gapPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 240
    iget v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->width:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->height:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 249
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    iget v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->width:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->height:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 97
    iget v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleRadius:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 98
    iget-object v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->stateCircleContents:Landroid/view/View;

    iget v2, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->width:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleRadius:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->width:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->centerCircleRadius:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 102
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-static {v1, p1}, Lcom/dexcom/cgm/activities/CGMStateCircle;->getDefaultSize(II)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->width:I

    .line 108
    invoke-static {v1, p2}, Lcom/dexcom/cgm/activities/CGMStateCircle;->getDefaultSize(II)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->height:I

    .line 110
    iget v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->width:I

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 111
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 113
    invoke-virtual {p0, v1, v1}, Lcom/dexcom/cgm/activities/CGMStateCircle;->measureChildren(II)V

    .line 115
    invoke-virtual {p0, v0, v0}, Lcom/dexcom/cgm/activities/CGMStateCircle;->setMeasuredDimension(II)V

    .line 116
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 128
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateCircle;->setupBounds()V

    .line 129
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CGMStateCircle;->setupPaints()V

    .line 130
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CGMStateCircle;->invalidate()V

    .line 131
    return-void
.end method

.method public setBarColor(I)V
    .locals 2

    .prologue
    .line 273
    iput p1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barColor:I

    .line 275
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    :cond_0
    return-void
.end method

.method public setBarLength(I)V
    .locals 0

    .prologue
    .line 263
    iput p1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->barLength:I

    .line 264
    return-void
.end method

.method public setRimColor(I)V
    .locals 2

    .prologue
    .line 303
    iput p1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->rimColor:I

    .line 305
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->rimPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/dexcom/cgm/activities/CGMStateCircle;->rimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    :cond_0
    return-void
.end method
