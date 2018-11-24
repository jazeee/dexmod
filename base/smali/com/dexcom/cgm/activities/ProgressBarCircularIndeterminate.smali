.class public Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;
.super Landroid/widget/RelativeLayout;
.source "ProgressBarCircularIndeterminate.java"


# static fields
.field private static final CIRCLE_LENGTH_ADDED_PER_UPDATE:I = 0x6

.field private static final CIRCLE_ROTATION_PER_UPDATE:I = 0x4

.field private static final MAX_ARC_LENGTH:I = 0x122

.field private static final OUTER_CIRCLE_RADIUS:I

.field private static final SHADOW_THICKNESS:I

.field private static final SPINNER_SIZE:I

.field private static final SPINNER_THICKNESS:I

.field private static final innerCirclePaint:Landroid/graphics/Paint;

.field private static final outerCirclePaint:Landroid/graphics/Paint;

.field private static final spinnerPaint:Landroid/graphics/Paint;


# instance fields
.field private arcLength:I

.field private arcStartAngle:I

.field private currentRotation:F

.field private resources:Landroid/content/res/Resources;

.field private startOfCircle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 20
    const/16 v0, 0x41

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(I)I

    move-result v0

    sput v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->SPINNER_SIZE:I

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->spinnerPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->outerCirclePaint:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->innerCirclePaint:Landroid/graphics/Paint;

    .line 67
    invoke-static {v1}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(I)I

    move-result v0

    sput v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->OUTER_CIRCLE_RADIUS:I

    .line 68
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(I)I

    move-result v0

    sput v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->SPINNER_THICKNESS:I

    .line 69
    invoke-static {v1}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(I)I

    move-result v0

    sput v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->SHADOW_THICKNESS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->resources:Landroid/content/res/Resources;

    .line 57
    iput v1, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->arcStartAngle:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->arcLength:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->currentRotation:F

    .line 60
    iput v1, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->startOfCircle:I

    .line 27
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 29
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->initializePaints()V

    .line 31
    sget v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->SPINNER_SIZE:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setMinimumHeight(I)V

    .line 32
    sget v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->SPINNER_SIZE:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->setMinimumWidth(I)V

    .line 33
    return-void
.end method

.method private doAnimationMath()V
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->arcStartAngle:I

    iget v1, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->startOfCircle:I

    if-ne v0, v1, :cond_0

    .line 99
    iget v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->arcLength:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->arcLength:I

    .line 103
    :cond_0
    iget v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->arcLength:I

    const/16 v1, 0x122

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->arcStartAngle:I

    iget v1, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->startOfCircle:I

    if-le v0, v1, :cond_2

    .line 105
    :cond_1
    iget v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->arcStartAngle:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->arcStartAngle:I

    .line 106
    iget v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->arcLength:I

    add-int/lit8 v0, v0, -0x6

    iput v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->arcLength:I

    .line 110
    :cond_2
    iget v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->arcStartAngle:I

    iget v1, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->startOfCircle:I

    add-int/lit16 v1, v1, 0x122

    if-le v0, v1, :cond_3

    .line 112
    iget v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->arcStartAngle:I

    iput v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->startOfCircle:I

    .line 113
    iget v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->startOfCircle:I

    iput v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->arcStartAngle:I

    .line 114
    const/4 v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->arcLength:I

    .line 116
    :cond_3
    return-void
.end method

.method private drawInnerCircle(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 142
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 144
    sget v2, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->SPINNER_THICKNESS:I

    sub-int v2, v0, v2

    sget v3, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->SHADOW_THICKNESS:I

    sub-int/2addr v2, v3

    sget v3, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->OUTER_CIRCLE_RADIUS:I

    sub-int/2addr v2, v3

    .line 146
    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    sget-object v3, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->innerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 147
    return-void
.end method

.method private drawRotationAnimation(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->doAnimationMath()V

    .line 80
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->rotateCanvas(Landroid/graphics/Canvas;)V

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 86
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 88
    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->drawSpinnerArc(Landroid/graphics/Canvas;)V

    .line 90
    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->drawInnerCircle(Landroid/graphics/Canvas;)V

    .line 92
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 93
    return-void
.end method

.method private drawSpinnerArc(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 130
    sget v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->OUTER_CIRCLE_RADIUS:I

    sget v1, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->SHADOW_THICKNESS:I

    add-int/2addr v0, v1

    .line 132
    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    .line 133
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v4, v4

    .line 134
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->getHeight()I

    move-result v5

    sub-int v0, v5, v0

    int-to-float v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 136
    iget v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->arcStartAngle:I

    int-to-float v2, v0

    iget v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->arcLength:I

    int-to-float v3, v0

    const/4 v4, 0x1

    sget-object v5, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->spinnerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 137
    return-void
.end method

.method private initializePaints()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 42
    sget-object v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->spinnerPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_green:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    sget-object v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->spinnerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    sget-object v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->innerCirclePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    sget-object v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->innerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    return-void
.end method

.method private rotateCanvas(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 120
    iget v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->currentRotation:F

    const/high16 v1, 0x40800000    # 4.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->currentRotation:F

    .line 122
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 123
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 125
    iget v2, p0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->currentRotation:F

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 126
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->drawRotationAnimation(Landroid/graphics/Canvas;)V

    .line 54
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->invalidate()V

    .line 55
    return-void
.end method

.method public setInnerCirclePaint(I)V
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->innerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/ProgressBarCircularIndeterminate;->invalidate()V

    .line 153
    return-void
.end method
