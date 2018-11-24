.class public Lcom/dexcom/cgm/activities/MagGlassCompass;
.super Landroid/view/View;
.source "MagGlassCompass.java"


# static fields
.field private static s_innerPaint:Landroid/graphics/Paint;

.field private static s_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

.field private static s_outerPaint:Landroid/graphics/Paint;


# instance fields
.field m_height:I

.field m_innerCircleRadius:I

.field m_outerCircleRadius:I

.field m_width:I

.field m_x:I

.field m_y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/activities/MagGlassCompass;->s_outerPaint:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/activities/MagGlassCompass;->s_innerPaint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->build()Lcom/dexcom/cgm/activities/MagGlassState;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/activities/MagGlassCompass;->s_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method private drawBitmaps(Landroid/graphics/Canvas;Lcom/dexcom/cgm/activities/MagGlassState;II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 85
    invoke-virtual {p2}, Lcom/dexcom/cgm/activities/MagGlassState;->getNumTrendArrows()I

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/MagGlassCompass;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->magnifying_glass:I

    invoke-static {v0, v1, p3, p4, v3}, Lcom/dexcom/cgm/activities/BitmapLeaser;->getMagWithTipBitmap(Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_width:I

    sub-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_height:I

    sub-int/2addr v2, p4

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 91
    invoke-virtual {p2}, Lcom/dexcom/cgm/activities/MagGlassState;->getNumTrendArrows()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/MagGlassCompass;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->arrows1:I

    invoke-static {v0, v1, p3, p4, v3}, Lcom/dexcom/cgm/activities/BitmapLeaser;->getOneArrowBitmap(Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_width:I

    sub-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_height:I

    sub-int/2addr v2, p4

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 107
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/MagGlassCompass;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->arrows2:I

    invoke-static {v0, v1, p3, p4, v3}, Lcom/dexcom/cgm/activities/BitmapLeaser;->getTwoArrowsBitmap(Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_width:I

    sub-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_height:I

    sub-int/2addr v2, p4

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/MagGlassCompass;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$drawable;->no_tip:I

    invoke-static {v0, v1, p3, p4, v3}, Lcom/dexcom/cgm/activities/BitmapLeaser;->getMagNoTipBitmap(Landroid/content/res/Resources;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_width:I

    sub-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_height:I

    sub-int/2addr v2, p4

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public getMagGlassState()Lcom/dexcom/cgm/activities/MagGlassState;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/dexcom/cgm/activities/MagGlassCompass;->s_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    return-object v0
.end method

.method public getPaintColor()I
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/dexcom/cgm/activities/MagGlassCompass;->s_innerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-wide v4, 0x3fd3333333333333L    # 0.3

    .line 54
    sget-object v0, Lcom/dexcom/cgm/activities/MagGlassCompass;->s_outerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    sget-object v0, Lcom/dexcom/cgm/activities/MagGlassCompass;->s_outerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/MagGlassCompass;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    sget-object v0, Lcom/dexcom/cgm/activities/MagGlassCompass;->s_outerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    sget-object v0, Lcom/dexcom/cgm/activities/MagGlassCompass;->s_innerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    sget-object v0, Lcom/dexcom/cgm/activities/MagGlassCompass;->s_innerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/MagGlassCompass;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dexcom/cgm/activities/MagGlassCompass;->s_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/MagGlassState;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    sget-object v0, Lcom/dexcom/cgm/activities/MagGlassCompass;->s_innerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 63
    iget v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_height:I

    iget v1, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_width:I

    if-le v0, v1, :cond_0

    .line 65
    iget v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_width:I

    iput v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_x:I

    .line 66
    iget v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_width:I

    iput v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_y:I

    .line 67
    iget v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_width:I

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_outerCircleRadius:I

    .line 77
    :goto_0
    sget-object v0, Lcom/dexcom/cgm/activities/MagGlassCompass;->s_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    iget v1, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_x:I

    iget v2, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_y:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/dexcom/cgm/activities/MagGlassCompass;->drawBitmaps(Landroid/graphics/Canvas;Lcom/dexcom/cgm/activities/MagGlassState;II)V

    .line 78
    iget v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_outerCircleRadius:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_innerCircleRadius:I

    .line 79
    iget v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_width:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_height:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_outerCircleRadius:I

    int-to-float v2, v2

    sget-object v3, Lcom/dexcom/cgm/activities/MagGlassCompass;->s_outerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 80
    iget v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_width:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_height:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_innerCircleRadius:I

    int-to-float v2, v2

    sget-object v3, Lcom/dexcom/cgm/activities/MagGlassCompass;->s_innerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 81
    return-void

    .line 72
    :cond_0
    iget v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_height:I

    iput v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_x:I

    .line 73
    iget v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_height:I

    iput v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_y:I

    .line 74
    iget v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_y:I

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_outerCircleRadius:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 44
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_width:I

    .line 45
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_height:I

    .line 47
    iget v0, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_width:I

    iget v1, p0, Lcom/dexcom/cgm/activities/MagGlassCompass;->m_height:I

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/MagGlassCompass;->setMeasuredDimension(II)V

    .line 48
    return-void
.end method

.method public setMagGlassState(Lcom/dexcom/cgm/activities/MagGlassState;)V
    .locals 0

    .prologue
    .line 112
    sput-object p1, Lcom/dexcom/cgm/activities/MagGlassCompass;->s_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    .line 113
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/MagGlassCompass;->invalidate()V

    .line 114
    return-void
.end method
