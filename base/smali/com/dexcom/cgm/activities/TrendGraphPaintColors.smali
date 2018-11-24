.class public Lcom/dexcom/cgm/activities/TrendGraphPaintColors;
.super Ljava/lang/Object;
.source "TrendGraphPaintColors.java"


# instance fields
.field private m_axisAndTicksPaint:Landroid/graphics/Paint;

.field private m_axisTextPaint:Landroid/graphics/Paint;

.field private m_backgroundAndLowEGVPaint:Landroid/graphics/Paint;

.field private m_egvBackfillPaint:Landroid/graphics/Paint;

.field private m_egvPaint:Landroid/graphics/Paint;

.field private m_highAreaPaint:Landroid/graphics/Paint;

.field private m_lowAreaPaint:Landroid/graphics/Paint;

.field private m_targetAreaPaint:Landroid/graphics/Paint;

.field private m_userEventSquarePaint:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_axisAndTicksPaint:Landroid/graphics/Paint;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_highAreaPaint:Landroid/graphics/Paint;

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_lowAreaPaint:Landroid/graphics/Paint;

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_backgroundAndLowEGVPaint:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_axisTextPaint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_targetAreaPaint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_userEventSquarePaint:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_egvPaint:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_egvBackfillPaint:Landroid/graphics/Paint;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/high16 v3, 0x40c00000    # 6.0f

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_axisAndTicksPaint:Landroid/graphics/Paint;

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_highAreaPaint:Landroid/graphics/Paint;

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_lowAreaPaint:Landroid/graphics/Paint;

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_backgroundAndLowEGVPaint:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_axisTextPaint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_targetAreaPaint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_userEventSquarePaint:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_egvPaint:Landroid/graphics/Paint;

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_egvBackfillPaint:Landroid/graphics/Paint;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_axisAndTicksPaint:Landroid/graphics/Paint;

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_graph_axis_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_axisAndTicksPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_highAreaPaint:Landroid/graphics/Paint;

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_yellow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_highAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_lowAreaPaint:Landroid/graphics/Paint;

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_red:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_lowAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_backgroundAndLowEGVPaint:Landroid/graphics/Paint;

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_white:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_backgroundAndLowEGVPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_axisTextPaint:Landroid/graphics/Paint;

    sget v2, Lcom/dexcom/cgm/activities/R$dimen;->trendGraphEGVAxisFontSize:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 50
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_axisTextPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 51
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_axisTextPaint:Landroid/graphics/Paint;

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_graph_axis_color:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_targetAreaPaint:Landroid/graphics/Paint;

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_light_gray:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_userEventSquarePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_userEventSquarePaint:Landroid/graphics/Paint;

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_white:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_egvPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_egvPaint:Landroid/graphics/Paint;

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_dark_gray:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_egvBackfillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_egvBackfillPaint:Landroid/graphics/Paint;

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_lighter_gray:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    return-void
.end method


# virtual methods
.method public getAxisAndTicksPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_axisAndTicksPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getAxisTextPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_axisTextPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getBackgroundPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_backgroundAndLowEGVPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getCurrentEGVPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_backgroundAndLowEGVPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getEGVBackfillPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_egvBackfillPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getEGVPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_egvPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getHighAreaPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_highAreaPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLowAreaPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_lowAreaPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getLowEGVPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_backgroundAndLowEGVPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getTargetAreaPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_targetAreaPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getUserEventBorderPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_axisAndTicksPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getUserEventSquarePaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->m_userEventSquarePaint:Landroid/graphics/Paint;

    return-object v0
.end method
