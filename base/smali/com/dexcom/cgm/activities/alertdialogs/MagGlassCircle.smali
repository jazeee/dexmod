.class public Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;
.super Landroid/view/View;
.source "MagGlassCircle.java"


# static fields
.field private static s_innerPaint:Landroid/graphics/Paint;

.field private static s_outerPaint:Landroid/graphics/Paint;


# instance fields
.field private doubleArrowBitmap:Landroid/graphics/Bitmap;

.field private egvTextView:Landroid/widget/TextView;

.field private m_innerCircleColor:I

.field private m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

.field private magGlassBitmap:Landroid/graphics/Bitmap;

.field private noArrowBitmap:Landroid/graphics/Bitmap;

.field private singleArrowBitmap:Landroid/graphics/Bitmap;

.field private unitsTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->s_outerPaint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->s_innerPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_light_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->m_innerCircleColor:I

    .line 37
    new-instance v0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;-><init>()V

    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_gray:I

    .line 38
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->circleColor(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->numTrendArrows(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->angle(F)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 41
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->egv(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->build()Lcom/dexcom/cgm/activities/MagGlassState;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    .line 50
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->s_outerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->s_outerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->s_outerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->s_innerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->s_innerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_light_gray:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->m_innerCircleColor:I

    .line 37
    new-instance v0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;-><init>()V

    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_gray:I

    .line 38
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->circleColor(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->numTrendArrows(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->angle(F)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 41
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->egv(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->build()Lcom/dexcom/cgm/activities/MagGlassState;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    .line 60
    return-void
.end method

.method private createBitmap(I)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const-wide v4, 0x3fea8f5c28f5c28fL    # 0.83

    .line 152
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    .line 153
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getHeight()I

    move-result v1

    int-to-double v2, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 154
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 163
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 164
    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 165
    return-void
.end method

.method private drawBitmaps(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->initializeBitmapsIfNeeded()V

    .line 171
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/MagGlassState;->getNumTrendArrows()I

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->noArrowBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 189
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->magGlassBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 179
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/MagGlassState;->getNumTrendArrows()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 181
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->singleArrowBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 188
    :goto_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/MagGlassState;->getAngle()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->setRotation(F)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->doubleArrowBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private drawCircle(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    int-to-float v2, p2

    invoke-virtual {p1, v0, v1, v2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 93
    return-void
.end method

.method private drawCircles(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 84
    add-int/lit8 v1, v0, -0xa

    .line 85
    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->s_innerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->m_innerCircleColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->s_outerPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v2}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->drawCircle(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 87
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->s_innerPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v1, v0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->drawCircle(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 88
    return-void
.end method

.method private getTextColor(I)I
    .locals 1

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->isColorBright(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    sget v0, Lcom/dexcom/cgm/activities/R$color;->dex_dark_gray:I

    .line 262
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/dexcom/cgm/activities/R$color;->dex_white:I

    goto :goto_0
.end method

.method private getViewGroup(Landroid/view/ViewParent;)Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 118
    move-object v0, p1

    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 119
    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 121
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method private initializeBitmapsIfNeeded()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->magGlassBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 133
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->magnifying_glass:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->createBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->magGlassBitmap:Landroid/graphics/Bitmap;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->singleArrowBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 137
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->arrows1:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->createBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->singleArrowBitmap:Landroid/graphics/Bitmap;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->doubleArrowBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 141
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->arrows2:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->createBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->doubleArrowBitmap:Landroid/graphics/Bitmap;

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->noArrowBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 145
    sget v0, Lcom/dexcom/cgm/activities/R$drawable;->no_tip:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->createBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->noArrowBitmap:Landroid/graphics/Bitmap;

    .line 147
    :cond_3
    return-void
.end method

.method private initializeTextIfNeeded()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->egvTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getViewGroup(Landroid/view/ViewParent;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->egv_circle_text:I

    .line 102
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 104
    sget v0, Lcom/dexcom/cgm/activities/R$id;->textViewGlucose:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->egvTextView:Landroid/widget/TextView;

    .line 105
    sget v0, Lcom/dexcom/cgm/activities/R$id;->textViewGlucoseUnits:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->unitsTextView:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->unitsTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_dark_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "helvetica-neue-cond-bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->egvTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 110
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->egvTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_dark_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/MagGlassState;->getEgv()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->setText(I)V

    .line 114
    :cond_0
    return-void
.end method

.method private isColorBright(I)Z
    .locals 8

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 269
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 270
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 271
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 275
    mul-int/2addr v1, v1

    int-to-double v4, v1

    const-wide v6, 0x3fced916872b020cL    # 0.241

    mul-double/2addr v4, v6

    mul-int v1, v2, v2

    int-to-double v2, v1

    const-wide v6, 0x3fe61cac083126e9L    # 0.691

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    mul-int/2addr v0, v0

    int-to-double v0, v0

    const-wide v4, 0x3fb16872b020c49cL    # 0.068

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 277
    const/16 v1, 0x8c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setText(I)V
    .locals 6

    .prologue
    const/16 v2, 0x259

    const/high16 v5, 0x42480000    # 50.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 209
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->egvTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->egvTextView:Landroid/widget/TextView;

    const/high16 v1, 0x42800000    # 64.0f

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 212
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->unitsTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 214
    if-eq p1, v2, :cond_0

    const/16 v0, 0x25a

    if-ne p1, v0, :cond_3

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->egvTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 220
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->unitsTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->egvTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 223
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 225
    if-ne p1, v2, :cond_2

    .line 227
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->egvTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->glucose_alert_text_rising:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :goto_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    .line 250
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/MagGlassState;->getColor()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getTextColor(I)I

    move-result v1

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 252
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->egvTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 253
    iget-object v1, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->unitsTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    :cond_1
    return-void

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->egvTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->glucose_alert_text_falling:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 234
    :cond_3
    const/16 v0, 0x27

    if-ne p1, v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->egvTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->glucose_alert_text_low:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->egvTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 239
    :cond_4
    const/16 v0, 0x191

    if-ne p1, v0, :cond_5

    .line 241
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->egvTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->glucose_alert_text_high:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->egvTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 246
    :cond_5
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->egvTextView:Landroid/widget/TextView;

    const-string v1, "%d"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->initializeTextIfNeeded()V

    .line 69
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->drawBitmaps(Landroid/graphics/Canvas;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->drawCircles(Landroid/graphics/Canvas;)V

    .line 72
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0, p1, p1}, Landroid/view/View;->onMeasure(II)V

    .line 79
    return-void
.end method

.method public setMagGlassState(Lcom/dexcom/cgm/activities/MagGlassState;)V
    .locals 2

    .prologue
    .line 193
    iput-object p1, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    .line 194
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/MagGlassState;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->m_innerCircleColor:I

    .line 195
    iget-object v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/MagGlassState;->getEgv()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->setText(I)V

    .line 196
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/MagGlassCircle;->postInvalidate()V

    .line 197
    return-void
.end method
