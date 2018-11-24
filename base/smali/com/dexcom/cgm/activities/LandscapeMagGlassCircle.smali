.class public Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;
.super Landroid/view/View;
.source "LandscapeMagGlassCircle.java"


# static fields
.field private static s_innerPaint:Landroid/graphics/Paint;

.field private static s_outerPaint:Landroid/graphics/Paint;

.field private static s_whitePaint:Landroid/graphics/Paint;


# instance fields
.field private egvTextView:Landroid/widget/TextView;

.field private m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

.field private unitsTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->s_outerPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->s_whitePaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->s_innerPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 45
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;-><init>()V

    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_gray:I

    .line 35
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->circleColor(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->numTrendArrows(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->angle(F)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 38
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->egv(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->build()Lcom/dexcom/cgm/activities/MagGlassState;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    .line 47
    sget-object v0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->s_outerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 48
    sget-object v0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->s_outerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    sget-object v0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->s_outerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_gloomy_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    sget-object v0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->s_whitePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    sget-object v0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->s_whitePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    sget-object v0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->s_whitePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    sget-object v0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->s_innerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    sget-object v0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->s_innerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    sget-object v0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->s_innerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_light_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;-><init>()V

    sget v1, Lcom/dexcom/cgm/activities/R$color;->dex_gray:I

    .line 35
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->circleColor(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->numTrendArrows(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->angle(F)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    const/4 v1, -0x1

    .line 38
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->egv(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->build()Lcom/dexcom/cgm/activities/MagGlassState;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    .line 61
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    int-to-float v2, p2

    invoke-virtual {p1, v0, v1, v2, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 101
    return-void
.end method

.method private drawCircles(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 84
    const/16 v0, 0x1b

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(I)I

    move-result v0

    .line 85
    sget-object v1, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->s_outerPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->drawCircle(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 87
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(I)I

    move-result v1

    .line 89
    sub-int/2addr v0, v1

    .line 90
    sget-object v1, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->s_whitePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->drawCircle(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 92
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(I)I

    move-result v1

    .line 94
    sub-int/2addr v0, v1

    .line 95
    sget-object v1, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->s_innerPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0, v1}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->drawCircle(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    .line 96
    return-void
.end method

.method private getTextColor(I)I
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->isColorBright(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    sget v0, Lcom/dexcom/cgm/activities/R$color;->dex_dark_gray:I

    .line 176
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/dexcom/cgm/activities/R$color;->dex_white:I

    goto :goto_0
.end method

.method private getViewGroup(Landroid/view/ViewParent;)Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 128
    move-object v0, p1

    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 129
    check-cast v0, Landroid/view/ViewGroup;

    return-object v0

    .line 131
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method private initializeTextIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 105
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->egvTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->getViewGroup(Landroid/view/ViewParent;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->reflection_egv_circle_text:I

    .line 110
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 112
    sget v0, Lcom/dexcom/cgm/activities/R$id;->textViewGlucose:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->egvTextView:Landroid/widget/TextView;

    .line 113
    sget v0, Lcom/dexcom/cgm/activities/R$id;->textViewGlucoseUnits:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->unitsTextView:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->unitsTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->unitsTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 115
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->unitsTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_dark_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->unitsTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 118
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "helvetica-neue-cond-bold.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->egvTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 120
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->egvTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_dark_gray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 122
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/MagGlassState;->getEgv()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->setText(I)V

    .line 124
    :cond_0
    return-void
.end method

.method private isColorBright(I)Z
    .locals 8

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 183
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 184
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 185
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 189
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

    .line 191
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
    .locals 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->egvTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 150
    const/16 v0, 0x27

    if-ne p1, v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->egvTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->glucose_alert_text_low:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :goto_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    .line 164
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/MagGlassState;->getColor()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->getTextColor(I)I

    move-result v1

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->egvTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v1, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->unitsTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 169
    :cond_0
    return-void

    .line 154
    :cond_1
    const/16 v0, 0x191

    if-ne p1, v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->egvTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$string;->glucose_alert_text_high:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->egvTextView:Landroid/widget/TextView;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->initializeTextIfNeeded()V

    .line 70
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->drawCircles(Landroid/graphics/Canvas;)V

    .line 71
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 76
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 77
    invoke-super {p0, v0, v0}, Landroid/view/View;->onMeasure(II)V

    .line 78
    return-void
.end method

.method public setMagGlassState(Lcom/dexcom/cgm/activities/MagGlassState;)V
    .locals 3

    .prologue
    .line 136
    iput-object p1, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    .line 137
    sget-object v0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->s_innerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/MagGlassState;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object v0, p0, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->m_magGlassState:Lcom/dexcom/cgm/activities/MagGlassState;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/MagGlassState;->getEgv()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->setText(I)V

    .line 139
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/LandscapeMagGlassCircle;->postInvalidate()V

    .line 140
    return-void
.end method
