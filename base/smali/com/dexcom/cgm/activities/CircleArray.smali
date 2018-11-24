.class public Lcom/dexcom/cgm/activities/CircleArray;
.super Landroid/view/View;
.source "CircleArray.java"


# instance fields
.field public m_Gray:Landroid/graphics/Paint;

.field public m_Green:Landroid/graphics/Paint;

.field private m_currentCircle:I

.field private m_height:I

.field private m_numCircles:I

.field private m_width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_Gray:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_Green:Landroid/graphics/Paint;

    .line 29
    sget-object v0, Lcom/dexcom/cgm/activities/R$styleable;->CircleArray:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/CircleArray;->parseAttributes(Landroid/content/res/TypedArray;)V

    .line 30
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/CircleArray;->setupPaints()V

    .line 31
    return-void
.end method

.method private parseAttributes(Landroid/content/res/TypedArray;)V
    .locals 2

    .prologue
    .line 35
    sget v0, Lcom/dexcom/cgm/activities/R$styleable;->CircleArray_numCircles:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_numCircles:I

    .line 36
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    return-void
.end method

.method private setupPaints()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 42
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_Gray:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_Gray:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CircleArray;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_light_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_Gray:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_Gray:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_Gray:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_Green:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_Green:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CircleArray;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_Green:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_Green:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_Green:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    return-void
.end method


# virtual methods
.method public decrement()V
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_currentCircle:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_currentCircle:I

    .line 120
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CircleArray;->postInvalidate()V

    .line 121
    return-void
.end method

.method public increment()V
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_currentCircle:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_currentCircle:I

    .line 114
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CircleArray;->postInvalidate()V

    .line 115
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/high16 v2, 0x3e800000    # 0.25f

    .line 68
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    iget v1, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_width:I

    .line 71
    iget v3, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_height:I

    .line 72
    iget v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_numCircles:I

    div-int v4, v1, v0

    .line 76
    if-le v4, v3, :cond_0

    .line 78
    int-to-float v0, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 85
    :goto_0
    iget v2, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_numCircles:I

    mul-int/2addr v2, v4

    if-ge v2, v1, :cond_1

    .line 87
    iget v2, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_numCircles:I

    mul-int/2addr v2, v4

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v4, 0x2

    add-int/2addr v1, v2

    .line 94
    :goto_1
    const/4 v2, 0x0

    move v9, v2

    move v2, v1

    move v1, v9

    :goto_2
    iget v5, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_numCircles:I

    if-ge v1, v5, :cond_3

    .line 96
    iget v5, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_currentCircle:I

    if-ne v1, v5, :cond_2

    .line 98
    int-to-float v5, v2

    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    int-to-float v7, v0

    iget-object v8, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_Green:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 105
    :goto_3
    add-int/2addr v2, v4

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 82
    :cond_0
    int-to-float v0, v4

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 91
    :cond_1
    div-int/lit8 v1, v4, 0x2

    goto :goto_1

    .line 102
    :cond_2
    int-to-float v5, v2

    div-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    int-to-float v7, v0

    iget-object v8, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_Gray:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 109
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 59
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_width:I

    .line 60
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_height:I

    .line 62
    iget v0, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_width:I

    iget v1, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_height:I

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/CircleArray;->setMeasuredDimension(II)V

    .line 63
    return-void
.end method

.method public setNumCircles(I)V
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/dexcom/cgm/activities/CircleArray;->m_numCircles:I

    .line 126
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/CircleArray;->postInvalidate()V

    .line 127
    return-void
.end method
