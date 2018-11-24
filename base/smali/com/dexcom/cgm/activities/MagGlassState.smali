.class public Lcom/dexcom/cgm/activities/MagGlassState;
.super Ljava/lang/Object;
.source "MagGlassState.java"


# static fields
.field public static final FALLING:I = 0x25a

.field public static final RISING:I = 0x259


# instance fields
.field private final m_angle:F

.field private final m_circleColor:I

.field private final m_egv:I

.field private final m_numTrendArrows:I


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/activities/MagGlassState$Builder;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->access$100(Lcom/dexcom/cgm/activities/MagGlassState$Builder;)F

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/MagGlassState;->m_angle:F

    .line 79
    invoke-static {p1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->access$200(Lcom/dexcom/cgm/activities/MagGlassState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/MagGlassState;->m_circleColor:I

    .line 80
    invoke-static {p1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->access$300(Lcom/dexcom/cgm/activities/MagGlassState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/MagGlassState;->m_numTrendArrows:I

    .line 81
    invoke-static {p1}, Lcom/dexcom/cgm/activities/MagGlassState$Builder;->access$400(Lcom/dexcom/cgm/activities/MagGlassState$Builder;)I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/activities/MagGlassState;->m_egv:I

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/activities/MagGlassState$Builder;Lcom/dexcom/cgm/activities/MagGlassState$1;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/MagGlassState;-><init>(Lcom/dexcom/cgm/activities/MagGlassState$Builder;)V

    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/dexcom/cgm/activities/MagGlassState;->m_angle:F

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/dexcom/cgm/activities/MagGlassState;->m_circleColor:I

    return v0
.end method

.method public getEgv()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/dexcom/cgm/activities/MagGlassState;->m_egv:I

    return v0
.end method

.method public getNumTrendArrows()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/dexcom/cgm/activities/MagGlassState;->m_numTrendArrows:I

    return v0
.end method
