.class public Lcom/dexcom/cgm/model/DisplayGlucose;
.super Ljava/lang/Object;
.source "DisplayGlucose.java"


# instance fields
.field private m_displayState:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

.field private m_egv:I

.field private m_sessionStartTime:Lcom/dexcom/cgm/k/j;

.field private m_transmitterIdSettingTime:Lcom/dexcom/cgm/k/j;

.field private m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/dexcom/cgm/k/j;

    const-wide v2, 0xffffffffL

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    iput-object v0, p0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_sessionStartTime:Lcom/dexcom/cgm/k/j;

    .line 45
    return-void
.end method

.method public constructor <init>(ILcom/dexcom/cgm/model/enums/TrendArrow;Lcom/dexcom/cgm/model/enums/EGVDisplayState;Lcom/dexcom/cgm/k/j;)V
    .locals 4

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/dexcom/cgm/k/j;

    const-wide v2, 0xffffffffL

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    iput-object v0, p0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_sessionStartTime:Lcom/dexcom/cgm/k/j;

    .line 27
    and-int/lit16 v0, p1, 0x3ff

    iput v0, p0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_egv:I

    .line 28
    iput-object p2, p0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 29
    iput-object p3, p0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_displayState:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    .line 30
    iput-object p4, p0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_sessionStartTime:Lcom/dexcom/cgm/k/j;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/enums/EGVDisplayState;Lcom/dexcom/cgm/k/j;)V
    .locals 4

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/dexcom/cgm/k/j;

    const-wide v2, 0xffffffffL

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    iput-object v0, p0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_sessionStartTime:Lcom/dexcom/cgm/k/j;

    .line 41
    iput-object p1, p0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_displayState:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    .line 42
    iput-object p2, p0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_transmitterIdSettingTime:Lcom/dexcom/cgm/k/j;

    .line 43
    return-void
.end method

.method public static createDisplayGlucoseForBluetoothOff()Lcom/dexcom/cgm/model/DisplayGlucose;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/dexcom/cgm/model/DisplayGlucose;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/DisplayGlucose;-><init>()V

    .line 49
    sget-object v1, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->BluetoothOff:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    iput-object v1, v0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_displayState:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    .line 50
    return-object v0
.end method


# virtual methods
.method public getDisplayState()Lcom/dexcom/cgm/model/enums/EGVDisplayState;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_displayState:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    return-object v0
.end method

.method public getEgv()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_egv:I

    return v0
.end method

.method public getSessionStartTime()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_sessionStartTime:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getTransmitterIdSettingTime()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_transmitterIdSettingTime:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getTrendArrow()Lcom/dexcom/cgm/model/enums/TrendArrow;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->None:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 73
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{displayState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_displayState:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_sessionStartTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", egv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_egv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", trendArrow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/DisplayGlucose;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
