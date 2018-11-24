.class public Lcom/dexcom/cgm/activities/MagGlassState$Builder;
.super Ljava/lang/Object;
.source "MagGlassState.java"


# instance fields
.field private m_angle:F

.field private m_circleColor:I

.field private m_egv:I

.field private m_numTrendArrows:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->m_angle:F

    .line 32
    sget v0, Lcom/dexcom/cgm/activities/R$color;->dex_light_gray:I

    iput v0, p0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->m_circleColor:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->m_numTrendArrows:I

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->m_egv:I

    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/MagGlassState$Builder;)F
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->m_angle:F

    return v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/MagGlassState$Builder;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->m_circleColor:I

    return v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/MagGlassState$Builder;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->m_numTrendArrows:I

    return v0
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/activities/MagGlassState$Builder;)I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->m_egv:I

    return v0
.end method


# virtual methods
.method public angle(F)Lcom/dexcom/cgm/activities/MagGlassState$Builder;
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->m_angle:F

    .line 43
    return-object p0
.end method

.method public build()Lcom/dexcom/cgm/activities/MagGlassState;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/dexcom/cgm/activities/MagGlassState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dexcom/cgm/activities/MagGlassState;-><init>(Lcom/dexcom/cgm/activities/MagGlassState$Builder;Lcom/dexcom/cgm/activities/MagGlassState$1;)V

    return-object v0
.end method

.method public circleColor(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->m_circleColor:I

    .line 49
    return-object p0
.end method

.method public egv(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->m_egv:I

    .line 65
    return-object p0
.end method

.method public numTrendArrows(I)Lcom/dexcom/cgm/activities/MagGlassState$Builder;
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->m_numTrendArrows:I

    .line 59
    return-object p0
.end method
