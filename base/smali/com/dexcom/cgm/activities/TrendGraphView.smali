.class public Lcom/dexcom/cgm/activities/TrendGraphView;
.super Landroid/view/View;
.source "TrendGraphView.java"


# static fields
.field private static final AXIS_TICK_MARK_LENGTH:I

.field private static final CIRCLE_RADIUS:I

.field private static final LEFT_MARGIN:I

.field public static s_isBackfillShadingEnabled:Z


# instance fields
.field private m_axisLabelHeight:I

.field private m_bitmap:Landroid/graphics/Bitmap;

.field private m_bottomOfGraph:I

.field private m_canvas:Landroid/graphics/Canvas;

.field private m_cgmp:Lcom/dexcom/cgm/i/a;

.field private m_context:Landroid/content/Context;

.field private m_egvAxisX:I

.field private m_egvNumberWidth:I

.field private m_egvScaleWidth:I

.field private m_egvs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/h/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private m_graphHeight:I

.field private m_graphWidth:I

.field private m_isUrgentLowEnabled:Z

.field private m_isUserHighEnabled:Z

.field private m_isUserLowEnabled:Z

.field private m_latestEgv:Lcom/dexcom/cgm/h/a/c;

.field private m_latestEgvsPerTx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/dexcom/cgm/h/a/e;",
            "Lcom/dexcom/cgm/h/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

.field private m_shadingEnabled:Z

.field private m_tappedInvalidate:Z

.field private m_tappedXCoordinate:I

.field private m_tickWidth:I

.field private m_timeScale:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

.field private m_topOfGraph:I

.field private m_urgentLowThreshold:I

.field private m_userEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/i/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private m_userHighThreshold:I

.field private m_userLowThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(D)I

    move-result v0

    sput v0, Lcom/dexcom/cgm/activities/TrendGraphView;->CIRCLE_RADIUS:I

    .line 39
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(I)I

    move-result v0

    sput v0, Lcom/dexcom/cgm/activities/TrendGraphView;->AXIS_TICK_MARK_LENGTH:I

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dexcom/cgm/activities/TrendGraphView;->s_isBackfillShadingEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_bitmap:Landroid/graphics/Bitmap;

    .line 54
    iput v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_userHighThreshold:I

    .line 55
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_isUserHighEnabled:Z

    .line 56
    iput v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_userLowThreshold:I

    .line 57
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_isUserLowEnabled:Z

    .line 58
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_isUrgentLowEnabled:Z

    .line 59
    iput v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_urgentLowThreshold:I

    .line 60
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->ThreeHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_timeScale:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_shadingEnabled:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvs:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_userEvents:Ljava/util/List;

    .line 69
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(D)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_tickWidth:I

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_latestEgvsPerTx:Ljava/util/HashMap;

    .line 74
    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_tappedInvalidate:Z

    .line 81
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_cgmp:Lcom/dexcom/cgm/i/a;

    .line 82
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_context:Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    .line 84
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getAxisTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 86
    const-string v2, "400"

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvNumberWidth:I

    .line 87
    iget v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvNumberWidth:I

    invoke-static {v3}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvScaleWidth:I

    .line 88
    iget v0, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v0, v0

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_axisLabelHeight:I

    .line 89
    return-void
.end method

.method private addEGVScale()V
    .locals 2

    .prologue
    const/16 v0, 0x28

    .line 240
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->drawYAxisLabel(I)V

    .line 241
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->drawYAxisTickMark(I)V

    .line 249
    const/16 v0, 0x64

    :goto_0
    iget v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_graphHeight:I

    if-gt v0, v1, :cond_1

    .line 251
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->drawYAxisTickMark(I)V

    .line 253
    rem-int/lit8 v1, v0, 0x64

    if-nez v1, :cond_0

    .line 254
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->drawYAxisLabel(I)V

    .line 249
    :cond_0
    add-int/lit8 v0, v0, 0x32

    goto :goto_0

    .line 256
    :cond_1
    return-void
.end method

.method private addTimeToGraph()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const-wide/32 v0, 0x7fffffff

    const-wide/16 v4, 0x1

    .line 327
    .line 329
    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_timeScale:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    sget-object v3, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->OneHour:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    if-ne v2, v3, :cond_1

    .line 331
    const-wide/16 v2, 0xf

    .line 359
    :goto_0
    const/16 v4, 0x120

    invoke-direct {p0, v4}, Lcom/dexcom/cgm/activities/TrendGraphView;->drawTimeTick(I)V

    .line 362
    invoke-static {}, Lcom/dexcom/cgm/k/a;->getUserDisplayTimeSeconds()J

    move-result-wide v4

    .line 364
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    long-to-int v5, v4

    .line 365
    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_timeScale:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    .line 366
    invoke-virtual {v6}, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->getHours()I

    move-result v6

    int-to-long v6, v6

    .line 365
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    long-to-int v4, v6

    sub-int v6, v5, v4

    .line 368
    const-wide/high16 v8, 0x4072000000000000L    # 288.0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v7, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_timeScale:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    invoke-virtual {v7}, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->getHours()I

    move-result v7

    int-to-long v10, v7

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v10

    long-to-double v10, v10

    div-double/2addr v8, v10

    move v4, v5

    .line 371
    :goto_1
    if-lt v4, v6, :cond_6

    .line 373
    sub-int v7, v5, v4

    .line 374
    int-to-double v10, v7

    mul-double/2addr v10, v8

    double-to-int v7, v10

    .line 375
    rsub-int v7, v7, 0x120

    .line 376
    int-to-long v10, v4

    rem-long/2addr v10, v2

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    .line 378
    invoke-direct {p0, v7, v4}, Lcom/dexcom/cgm/activities/TrendGraphView;->drawTime(II)V

    .line 371
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 334
    :cond_1
    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_timeScale:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    sget-object v3, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->ThreeHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    if-ne v2, v3, :cond_2

    .line 336
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    .line 337
    const-wide/16 v0, 0x1e

    goto :goto_0

    .line 339
    :cond_2
    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_timeScale:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    sget-object v3, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->SixHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    if-ne v2, v3, :cond_3

    .line 341
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    .line 342
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    goto :goto_0

    .line 344
    :cond_3
    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_timeScale:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    sget-object v3, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->TwelveHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    if-ne v2, v3, :cond_4

    .line 346
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    .line 347
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    goto :goto_0

    .line 349
    :cond_4
    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_timeScale:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    sget-object v3, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->TwentyFourHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    if-ne v2, v3, :cond_7

    .line 351
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x6

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v2

    .line 352
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    goto/16 :goto_0

    .line 380
    :cond_5
    int-to-long v10, v4

    rem-long/2addr v10, v0

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    .line 382
    invoke-direct {p0, v7}, Lcom/dexcom/cgm/activities/TrendGraphView;->drawTimeTick(I)V

    goto :goto_2

    .line 385
    :cond_6
    return-void

    :cond_7
    move-wide v2, v0

    goto/16 :goto_0
.end method

.method private buildBaseImage()V
    .locals 6

    .prologue
    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 198
    iget v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_topOfGraph:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 199
    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 200
    iget v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_graphWidth:I

    add-int/lit8 v1, v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 201
    iget v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_bottomOfGraph:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 202
    iget v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_graphWidth:I

    add-int/lit8 v1, v1, 0x0

    iput v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvAxisX:I

    .line 203
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getBackgroundPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 204
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->addEGVScale()V

    .line 208
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvAxisX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_topOfGraph:I

    iget v3, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_tickWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvAxisX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_bottomOfGraph:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    .line 212
    invoke-virtual {v5}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getAxisAndTicksPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 208
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 213
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    iget v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_bottomOfGraph:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvAxisX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_bottomOfGraph:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    .line 214
    invoke-virtual {v5}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getAxisAndTicksPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 213
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 215
    return-void
.end method

.method private drawAlertLevels()V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->shadeAlertLevelsIfNeeded()V

    .line 401
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->drawAlertLines()V

    .line 402
    return-void
.end method

.method private drawAlertLines()V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->drawHighAlertLineIfNeeded()V

    .line 408
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->drawLowAlertLine()V

    .line 409
    return-void
.end method

.method private drawEGVPoints()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 646
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 691
    :cond_0
    return-void

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_latestEgv:Lcom/dexcom/cgm/h/a/c;

    if-eqz v0, :cond_5

    .line 653
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_latestEgv:Lcom/dexcom/cgm/h/a/c;

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/c;->isDisplayOnly()Z

    move-result v0

    move v1, v0

    .line 655
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/h/a/c;

    .line 657
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getXCoordinateForEGV(Lcom/dexcom/cgm/h/a/c;)I

    move-result v5

    .line 658
    if-ltz v5, :cond_2

    iget v3, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_graphWidth:I

    if-gt v5, v3, :cond_2

    .line 660
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getYCoordinateForEGV(Lcom/dexcom/cgm/h/a/c;)I

    move-result v6

    .line 667
    iget-object v3, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvs:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_3

    const/4 v3, 0x1

    .line 668
    :goto_2
    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->latestEGVIsStale()Z

    move-result v3

    if-nez v3, :cond_4

    .line 670
    if-nez v1, :cond_4

    .line 676
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    int-to-float v3, v5

    int-to-float v7, v6

    sget v8, Lcom/dexcom/cgm/activities/TrendGraphView;->CIRCLE_RADIUS:I

    const/4 v9, 0x2

    .line 677
    invoke-static {v9}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(I)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    .line 678
    invoke-virtual {v9}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getAxisAndTicksPaint()Landroid/graphics/Paint;

    move-result-object v9

    .line 676
    invoke-virtual {v0, v3, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 679
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    int-to-float v3, v5

    int-to-float v5, v6

    sget v6, Lcom/dexcom/cgm/activities/TrendGraphView;->CIRCLE_RADIUS:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    .line 682
    invoke-virtual {v7}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getCurrentEGVPaint()Landroid/graphics/Paint;

    move-result-object v7

    .line 679
    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    move v3, v2

    .line 667
    goto :goto_2

    .line 687
    :cond_4
    iget-object v3, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    int-to-float v5, v5

    int-to-float v6, v6

    sget v7, Lcom/dexcom/cgm/activities/TrendGraphView;->CIRCLE_RADIUS:I

    int-to-float v7, v7

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getEGVDotColor(Lcom/dexcom/cgm/h/a/c;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v3, v5, v6, v7, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method private drawHighAlertLineIfNeeded()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 417
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_isUserHighEnabled:Z

    if-nez v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_graphHeight:I

    iget v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_userHighThreshold:I

    if-ge v0, v2, :cond_2

    const/4 v0, 0x1

    .line 422
    :goto_1
    if-nez v0, :cond_0

    .line 425
    iget v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_userHighThreshold:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->egvY(I)I

    move-result v4

    .line 426
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/TrendGraphView;->egvX(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v4

    .line 428
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getCoordinateOfRightEdgeOfGraph()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    .line 430
    invoke-virtual {v5}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getHighAreaPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 426
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 421
    goto :goto_1
.end method

.method private drawLollipopLine(I)V
    .locals 6

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/TrendGraphView;->findClosestEGVToXCoordinate(I)Lcom/dexcom/cgm/h/a/c;

    move-result-object v2

    .line 184
    if-eqz v2, :cond_0

    .line 186
    invoke-virtual {p0, v2}, Lcom/dexcom/cgm/activities/TrendGraphView;->getXCoordinateForEGV(Lcom/dexcom/cgm/h/a/c;)I

    move-result v3

    .line 187
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    int-to-float v1, v3

    .line 188
    invoke-direct {p0, v2}, Lcom/dexcom/cgm/activities/TrendGraphView;->getYCoordinateForEGV(Lcom/dexcom/cgm/h/a/c;)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    .line 191
    invoke-virtual {v5}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getAxisAndTicksPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 187
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 193
    :cond_0
    return-void
.end method

.method private drawLowAlertLine()V
    .locals 6

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getBottomLine()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->egvY(I)I

    move-result v4

    .line 442
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/TrendGraphView;->egvX(I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v4

    .line 444
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getCoordinateOfRightEdgeOfGraph()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    .line 446
    invoke-virtual {v5}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getLowAreaPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 442
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 447
    return-void
.end method

.method private drawSquareCenteredAt(II)V
    .locals 7

    .prologue
    .line 720
    const-wide/high16 v0, 0x400e000000000000L    # 3.75

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(D)I

    move-result v6

    .line 721
    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    invoke-static {v0, v1}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(D)I

    move-result v4

    .line 723
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    sub-int v1, p1, v6

    sub-int/2addr v1, v4

    int-to-float v1, v1

    sub-int v2, p2, v6

    sub-int/2addr v2, v4

    int-to-float v2, v2

    add-int v3, p1, v6

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-int v5, p2, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    .line 728
    invoke-virtual {v5}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getUserEventBorderPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 723
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 729
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    sub-int v1, p1, v6

    int-to-float v1, v1

    sub-int v2, p2, v6

    int-to-float v2, v2

    add-int v3, p1, v6

    int-to-float v3, v3

    add-int v4, p2, v6

    int-to-float v4, v4

    iget-object v5, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    .line 734
    invoke-virtual {v5}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getUserEventSquarePaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 729
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 735
    return-void
.end method

.method private drawTime(II)V
    .locals 5

    .prologue
    .line 292
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/TrendGraphView;->getTimeText(J)Ljava/lang/String;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getAxisTextPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    .line 294
    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    .line 295
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/TrendGraphView;->egvX(I)I

    move-result v3

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v3, v1

    int-to-float v1, v1

    iget v3, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_bottomOfGraph:I

    iget v4, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_axisLabelHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    .line 297
    invoke-virtual {v4}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getAxisTextPaint()Landroid/graphics/Paint;

    move-result-object v4

    .line 294
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 298
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/TrendGraphView;->drawTimeTick(I)V

    .line 299
    return-void
.end method

.method private drawTimeTick(I)V
    .locals 6

    .prologue
    .line 389
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/TrendGraphView;->egvX(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_bottomOfGraph:I

    int-to-float v2, v2

    .line 391
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/TrendGraphView;->egvX(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_bottomOfGraph:I

    sget v5, Lcom/dexcom/cgm/activities/TrendGraphView;->AXIS_TICK_MARK_LENGTH:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    .line 393
    invoke-virtual {v5}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getAxisAndTicksPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 389
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 394
    return-void
.end method

.method private drawUserEventSquares()V
    .locals 4

    .prologue
    .line 695
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_userEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 716
    :cond_0
    return-void

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_userEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/i/a/d;

    .line 702
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getNearestPreviousEGV(Lcom/dexcom/cgm/i/a/d;)Lcom/dexcom/cgm/h/a/c;

    move-result-object v0

    .line 703
    if-eqz v0, :cond_2

    .line 705
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getXCoordinateForEGV(Lcom/dexcom/cgm/h/a/c;)I

    move-result v2

    .line 706
    if-ltz v2, :cond_2

    iget v3, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_graphWidth:I

    if-gt v2, v3, :cond_2

    .line 708
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getYCoordinateForEGV(Lcom/dexcom/cgm/h/a/c;)I

    move-result v0

    .line 713
    invoke-direct {p0, v2, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->drawSquareCenteredAt(II)V

    goto :goto_0
.end method

.method private drawYAxisLabel(I)V
    .locals 6

    .prologue
    .line 260
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getAxisTextPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 261
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getAxisTextPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 263
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v2, v2

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 265
    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x120

    .line 266
    invoke-direct {p0, v4}, Lcom/dexcom/cgm/activities/TrendGraphView;->egvX(I)I

    move-result v4

    const/4 v5, 0x7

    invoke-static {v5}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 267
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/TrendGraphView;->egvY(I)I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v1, v1

    .line 265
    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 269
    return-void
.end method

.method private drawYAxisTickMark(I)V
    .locals 6

    .prologue
    .line 273
    const/16 v0, 0x120

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->egvX(I)I

    move-result v3

    .line 274
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/TrendGraphView;->egvY(I)I

    move-result v4

    .line 275
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    int-to-float v1, v3

    int-to-float v2, v4

    sget v5, Lcom/dexcom/cgm/activities/TrendGraphView;->AXIS_TICK_MARK_LENGTH:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    int-to-float v4, v4

    iget-object v5, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    .line 276
    invoke-virtual {v5}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getAxisAndTicksPaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 275
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 277
    return-void
.end method

.method private egvIsInvalid(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 627
    const/16 v2, 0x27

    if-ge p1, v2, :cond_2

    move v3, v1

    .line 628
    :goto_0
    const/16 v2, 0x191

    if-le p1, v2, :cond_3

    move v2, v1

    .line 629
    :goto_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v3, v0

    .line 627
    goto :goto_0

    :cond_3
    move v2, v0

    .line 628
    goto :goto_1
.end method

.method private egvX(I)I
    .locals 2

    .prologue
    .line 836
    iget v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_graphWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x43900000    # 288.0f

    div-float/2addr v0, v1

    .line 837
    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x0

    return v0
.end method

.method private egvY(I)I
    .locals 6

    .prologue
    .line 284
    iget v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_graphHeight:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_graphHeight:I

    .line 285
    :cond_0
    iget v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_bottomOfGraph:I

    iget v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_topOfGraph:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_tickWidth:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 286
    int-to-double v2, v0

    iget v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_graphHeight:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    int-to-double v4, p1

    mul-double/2addr v2, v4

    .line 287
    double-to-int v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_topOfGraph:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_tickWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method private findClosestEGVToXCoordinate(I)Lcom/dexcom/cgm/h/a/c;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 898
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 899
    const/4 v1, 0x0

    .line 900
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/h/a/c;

    .line 902
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getXCoordinateForEGV(Lcom/dexcom/cgm/h/a/c;)I

    move-result v5

    .line 904
    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 905
    int-to-double v6, v5

    cmpg-double v6, v6, v2

    if-gez v6, :cond_1

    .line 907
    int-to-double v2, v5

    :goto_1
    move-object v1, v0

    .line 910
    goto :goto_0

    .line 912
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private getBottomLine()I
    .locals 2

    .prologue
    .line 568
    const/4 v0, -0x1

    .line 570
    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_isUrgentLowEnabled:Z

    if-eqz v1, :cond_0

    .line 572
    iget v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_urgentLowThreshold:I

    .line 575
    :cond_0
    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_isUserLowEnabled:Z

    if-eqz v1, :cond_1

    .line 577
    iget v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_userLowThreshold:I

    .line 580
    :cond_1
    return v0
.end method

.method private getCoordinateOfRightEdgeOfGraph()I
    .locals 6

    .prologue
    .line 535
    iget v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvAxisX:I

    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getAxisAndTicksPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-int v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method private getCurrentTransmitterTime(Lcom/dexcom/cgm/h/a/e;)J
    .locals 6

    .prologue
    .line 822
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_latestEgvsPerTx:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/h/a/c;

    .line 823
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/c;->getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v2

    .line 824
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/c;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    .line 825
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    .line 826
    sub-long v0, v4, v0

    .line 827
    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getEGVDotColor(Lcom/dexcom/cgm/h/a/c;)Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 842
    sget-boolean v0, Lcom/dexcom/cgm/activities/TrendGraphView;->s_isBackfillShadingEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/c;->wasBackfilled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getEGVBackfillPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 879
    :goto_0
    return-object v0

    .line 848
    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->latestEGVIsStale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getAxisAndTicksPaint()Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    .line 852
    :cond_1
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_shadingEnabled:Z

    if-nez v0, :cond_2

    .line 853
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getAxisAndTicksPaint()Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    .line 868
    :cond_2
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->latestEGVIsLow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 870
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getEGVPaint()Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    .line 873
    :cond_3
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/c;->getGlucoseValue()I

    move-result v0

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getBottomLine()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 875
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getLowEGVPaint()Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0

    .line 879
    :cond_4
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getEGVPaint()Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_0
.end method

.method private getNearestPreviousEGV(Lcom/dexcom/cgm/i/a/d;)Lcom/dexcom/cgm/h/a/c;
    .locals 12
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 744
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-object v6

    .line 748
    :cond_1
    const-wide/32 v0, 0x7fffffff

    .line 749
    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v2, v0

    move-object v1, v6

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/h/a/c;

    .line 751
    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/d;->getEventTime()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/c;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v8

    invoke-virtual {v8}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v8

    sub-long/2addr v4, v8

    .line 753
    if-nez v1, :cond_2

    move-wide v2, v4

    move-object v1, v0

    .line 756
    goto :goto_1

    .line 760
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-ltz v8, :cond_3

    .line 764
    cmp-long v8, v4, v2

    if-gez v8, :cond_4

    move-object v2, v0

    move-wide v0, v4

    :goto_2
    move-wide v10, v0

    move-object v1, v2

    move-wide v2, v10

    .line 770
    goto :goto_1

    .line 776
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    move-object v6, v1

    .line 781
    goto :goto_0

    :cond_4
    move-wide v10, v2

    move-object v2, v1

    move-wide v0, v10

    goto :goto_2
.end method

.method private getTimeText(J)Ljava/lang/String;
    .locals 5

    .prologue
    .line 303
    new-instance v0, Ljava/util/Date;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 304
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_context:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 305
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getYCoordinateForEGV(Lcom/dexcom/cgm/h/a/c;)I
    .locals 1

    .prologue
    .line 803
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/c;->getGlucoseValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->egvY(I)I

    move-result v0

    return v0
.end method

.method public static isBackfillShadingEnabled()Z
    .locals 1

    .prologue
    .line 939
    sget-boolean v0, Lcom/dexcom/cgm/activities/TrendGraphView;->s_isBackfillShadingEnabled:Z

    return v0
.end method

.method private latestEGVIsHigh()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 585
    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_isUserHighEnabled:Z

    if-nez v1, :cond_1

    .line 590
    :cond_0
    :goto_0
    return v0

    .line 588
    :cond_1
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->readLatestGlucoseValue()I

    move-result v1

    .line 590
    iget v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_userHighThreshold:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private latestEGVIsLow()Z
    .locals 2

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->readLatestGlucoseValue()I

    move-result v0

    .line 562
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getBottomLine()I

    move-result v1

    .line 563
    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private latestEGVIsStale()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 543
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    .line 550
    :goto_0
    return v0

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvs:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/h/a/c;

    .line 547
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/c;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 548
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    const-wide/16 v6, 0x1e

    add-long/2addr v4, v6

    .line 549
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v6

    sub-long v4, v6, v4

    .line 550
    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readAlertSettings()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_cgmp:Lcom/dexcom/cgm/i/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getActiveAlertSettings()Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUserHigh()Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_isUserHighEnabled:Z

    .line 223
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_userHighThreshold:I

    .line 225
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_isUserLowEnabled:Z

    .line 227
    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v1

    iput v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_userLowThreshold:I

    .line 229
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUrgentLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_isUrgentLowEnabled:Z

    .line 231
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_urgentLowThreshold:I

    .line 232
    return-void
.end method

.method private readEGVs()V
    .locals 8

    .prologue
    .line 595
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 596
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_timeScale:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    .line 597
    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->getHours()I

    move-result v2

    int-to-long v2, v2

    .line 596
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/dexcom/cgm/k/j;->subtractMilliseconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v1

    .line 599
    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_cgmp:Lcom/dexcom/cgm/i/a;

    invoke-interface {v2, v1, v0}, Lcom/dexcom/cgm/i/a;->getCgmDataInInterval(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;

    move-result-object v1

    .line 600
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_latestEgv:Lcom/dexcom/cgm/h/a/c;

    .line 601
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_latestEgvsPerTx:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 602
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 603
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/h/a/c;

    .line 605
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/c;->getGlucoseValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/TrendGraphView;->egvIsInvalid(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 607
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 600
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/h/a/c;

    goto :goto_0

    .line 610
    :cond_2
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/c;->isDisplayOnly()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 612
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 616
    :cond_3
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_latestEgvsPerTx:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/c;->getTransmitterID()Lcom/dexcom/cgm/h/a/e;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dexcom/cgm/h/a/c;

    .line 617
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/dexcom/cgm/h/a/c;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/c;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 619
    :cond_4
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_latestEgvsPerTx:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/c;->getTransmitterID()Lcom/dexcom/cgm/h/a/e;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 622
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvs:Ljava/util/ArrayList;

    .line 623
    return-void
.end method

.method private readLatestGlucoseValue()I
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/h/a/c;

    .line 556
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/c;->getGlucoseValue()I

    move-result v0

    return v0
.end method

.method private readUserEvents()V
    .locals 4

    .prologue
    .line 634
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 635
    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_timeScale:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    .line 636
    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->getHours()I

    move-result v2

    int-to-long v2, v2

    .line 635
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/dexcom/cgm/k/j;->subtractMilliseconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v1

    .line 637
    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_cgmp:Lcom/dexcom/cgm/i/a;

    invoke-interface {v2, v1, v0}, Lcom/dexcom/cgm/i/a;->getUserEvents(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_userEvents:Ljava/util/List;

    .line 640
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_userEvents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_userEvents:Ljava/util/List;

    .line 642
    :cond_0
    return-void
.end method

.method private redrawGraph()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_cgmp:Lcom/dexcom/cgm/i/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getGraphHeight()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_graphHeight:I

    .line 166
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->readAlertSettings()V

    .line 167
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->readEGVs()V

    .line 168
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->readUserEvents()V

    .line 169
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->buildBaseImage()V

    .line 170
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->drawAlertLevels()V

    .line 171
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->addTimeToGraph()V

    .line 172
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->drawUserEventSquares()V

    .line 173
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->drawEGVPoints()V

    .line 175
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_tappedInvalidate:Z

    if-eqz v0, :cond_0

    .line 177
    iget v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_tappedXCoordinate:I

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->drawLollipopLine(I)V

    .line 179
    :cond_0
    return-void
.end method

.method public static resolveSizeAndState(II)I
    .locals 2

    .prologue
    .line 108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 109
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 111
    sparse-switch v1, :sswitch_data_0

    .line 130
    :cond_0
    :goto_0
    return p0

    .line 114
    :sswitch_0
    if-ge v0, p0, :cond_0

    .line 116
    const/high16 v1, 0x1000000

    or-int p0, v0, v1

    goto :goto_0

    :sswitch_1
    move p0, v0

    .line 125
    goto :goto_0

    .line 111
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public static setBackfillShadingEnabled(Z)V
    .locals 0

    .prologue
    .line 934
    sput-boolean p0, Lcom/dexcom/cgm/activities/TrendGraphView;->s_isBackfillShadingEnabled:Z

    .line 935
    return-void
.end method

.method private shadeAlertLevelsIfNeeded()V
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_shadingEnabled:Z

    if-nez v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->shadeTargetAreaIfNeeded()V

    .line 456
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->shadeLowAreaIfNeeded()V

    .line 458
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->shadeHighAreaIfNeeded()V

    goto :goto_0
.end method

.method private shadeHighAreaIfNeeded()V
    .locals 4

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->latestEGVIsStale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->latestEGVIsHigh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 525
    iget v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_topOfGraph:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 526
    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 527
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getCoordinateOfRightEdgeOfGraph()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 528
    iget v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_userHighThreshold:I

    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getHighAreaPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 529
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 528
    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/TrendGraphView;->egvY(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 530
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getHighAreaPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private shadeLowAreaIfNeeded()V
    .locals 4

    .prologue
    .line 489
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->latestEGVIsStale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->latestEGVIsLow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 500
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getBottomLine()I

    move-result v1

    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getLowAreaPaint()Landroid/graphics/Paint;

    move-result-object v2

    .line 501
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 500
    invoke-direct {p0, v1}, Lcom/dexcom/cgm/activities/TrendGraphView;->egvY(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 502
    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 503
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getCoordinateOfRightEdgeOfGraph()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 504
    iget v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_bottomOfGraph:I

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 505
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    invoke-virtual {v2}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getLowAreaPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private shadeTargetAreaIfNeeded()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 467
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_isUserHighEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_isUserLowEnabled:Z

    if-nez v0, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_graphHeight:I

    iget v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_userHighThreshold:I

    if-ge v0, v2, :cond_2

    const/4 v0, 0x1

    .line 471
    :goto_1
    if-eqz v0, :cond_3

    iget v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_graphHeight:I

    .line 474
    :goto_2
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 475
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->egvY(I)I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 476
    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 477
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getCoordinateOfRightEdgeOfGraph()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 478
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getBottomLine()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->egvY(I)I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 480
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_paintColors:Lcom/dexcom/cgm/activities/TrendGraphPaintColors;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/TrendGraphPaintColors;->getTargetAreaPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 470
    goto :goto_1

    .line 471
    :cond_3
    iget v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_userHighThreshold:I

    goto :goto_2
.end method


# virtual methods
.method public drawToBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 142
    iput-object p2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_bitmap:Landroid/graphics/Bitmap;

    .line 143
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/dexcom/cgm/activities/R$color;->dex_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 144
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    .line 145
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 147
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->redrawGraph()V

    .line 148
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUserEventsForEGV(Lcom/dexcom/cgm/h/a/c;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/h/a/c;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/i/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 788
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_userEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/i/a/d;

    .line 790
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getNearestPreviousEGV(Lcom/dexcom/cgm/i/a/d;)Lcom/dexcom/cgm/h/a/c;

    move-result-object v3

    .line 791
    if-eqz v3, :cond_0

    .line 794
    invoke-virtual {v3}, Lcom/dexcom/cgm/h/a/c;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/c;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 795
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 798
    :cond_1
    return-object v1
.end method

.method public getXCoordinateForEGV(Lcom/dexcom/cgm/h/a/c;)I
    .locals 6

    .prologue
    .line 808
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/c;->getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v0

    .line 809
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/c;->getTransmitterID()Lcom/dexcom/cgm/h/a/e;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/dexcom/cgm/activities/TrendGraphView;->getCurrentTransmitterTime(Lcom/dexcom/cgm/h/a/e;)J

    move-result-wide v2

    sub-long v0, v2, v0

    long-to-float v0, v0

    .line 812
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 814
    iget-object v1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_timeScale:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->getHours()I

    move-result v1

    .line 815
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-float v1, v2

    iget v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_graphWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 817
    iget v2, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_graphWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    float-to-int v0, v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_canvas:Landroid/graphics/Canvas;

    .line 159
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->redrawGraph()V

    .line 160
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 95
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 96
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 99
    invoke-static {v0, p1}, Lcom/dexcom/cgm/activities/TrendGraphView;->resolveSizeAndState(II)I

    move-result v0

    .line 100
    invoke-static {v1, p2}, Lcom/dexcom/cgm/activities/TrendGraphView;->resolveSizeAndState(II)I

    move-result v1

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/TrendGraphView;->setMeasuredDimension(II)V

    .line 103
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/activities/TrendGraphView;->setUpGraphDimensions(II)V

    .line 104
    return-void
.end method

.method public onReleaseTap()V
    .locals 1

    .prologue
    .line 918
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_tappedInvalidate:Z

    .line 919
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->invalidate()V

    .line 920
    return-void
.end method

.method public onTap(I)Lcom/dexcom/cgm/h/a/c;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_tappedInvalidate:Z

    .line 887
    iput p1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_tappedXCoordinate:I

    .line 888
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/TrendGraphView;->postInvalidate()V

    .line 889
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/TrendGraphView;->findClosestEGVToXCoordinate(I)Lcom/dexcom/cgm/h/a/c;

    move-result-object v0

    return-object v0
.end method

.method public setShadingEnabled(Z)V
    .locals 0

    .prologue
    .line 929
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_shadingEnabled:Z

    .line 930
    return-void
.end method

.method public setTimeScale(Lcom/dexcom/cgm/activities/TrendGraphTimeScale;)V
    .locals 0

    .prologue
    .line 924
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_timeScale:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    .line 925
    return-void
.end method

.method public setUpGraphDimensions(II)V
    .locals 4

    .prologue
    .line 135
    iget v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_egvScaleWidth:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_graphWidth:I

    .line 136
    iget v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_axisLabelHeight:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_topOfGraph:I

    .line 137
    iget v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_axisLabelHeight:I

    sub-int v0, p2, v0

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/dexcom/cgm/activities/DPPXConverter;->getPXFromDP(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/dexcom/cgm/activities/TrendGraphView;->m_bottomOfGraph:I

    .line 138
    return-void
.end method
