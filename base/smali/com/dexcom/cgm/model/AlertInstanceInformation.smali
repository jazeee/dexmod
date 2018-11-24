.class public Lcom/dexcom/cgm/model/AlertInstanceInformation;
.super Ljava/lang/Object;
.source "AlertInstanceInformation.java"


# instance fields
.field private m_alertKind:Lcom/dexcom/cgm/model/enums/AlertKind;

.field private m_egv:I

.field private m_timestamp:Lcom/dexcom/cgm/k/j;

.field private m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    iput-object v0, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_timestamp:Lcom/dexcom/cgm/k/j;

    .line 22
    sget-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->NotComputable:Lcom/dexcom/cgm/model/enums/TrendArrow;

    iput-object v0, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    iput-object v0, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_timestamp:Lcom/dexcom/cgm/k/j;

    .line 22
    sget-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->NotComputable:Lcom/dexcom/cgm/model/enums/TrendArrow;

    iput-object v0, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 28
    iput-object p1, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_alertKind:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 29
    return-void
.end method

.method public static createGlucoseAlert(Lcom/dexcom/cgm/model/enums/AlertKind;ILcom/dexcom/cgm/model/enums/TrendArrow;)Lcom/dexcom/cgm/model/AlertInstanceInformation;
    .locals 1

    .prologue
    .line 73
    new-instance v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>()V

    .line 74
    iput-object p0, v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_alertKind:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 75
    iput p1, v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_egv:I

    .line 76
    iput-object p2, v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 77
    return-object v0
.end method

.method public static createSensorExpirationAlert(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/AlertInstanceInformation;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>()V

    .line 36
    iput-object p0, v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_alertKind:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 37
    iput-object p1, v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_timestamp:Lcom/dexcom/cgm/k/j;

    .line 38
    return-object v0
.end method

.method public static createTransmitterLowBatteryEndOfLife(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/AlertInstanceInformation;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>()V

    .line 115
    iput-object p0, v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_alertKind:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 116
    iput-object p1, v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_timestamp:Lcom/dexcom/cgm/k/j;

    .line 117
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    if-ne p0, p1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 47
    :cond_3
    check-cast p1, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    .line 49
    iget v2, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_egv:I

    iget v3, p1, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_egv:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 50
    :cond_4
    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_alertKind:Lcom/dexcom/cgm/model/enums/AlertKind;

    iget-object v3, p1, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_alertKind:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 51
    :cond_5
    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_timestamp:Lcom/dexcom/cgm/k/j;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_timestamp:Lcom/dexcom/cgm/k/j;

    iget-object v3, p1, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_timestamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/k/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v0, v1

    .line 52
    goto :goto_0

    .line 51
    :cond_7
    iget-object v2, p1, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_timestamp:Lcom/dexcom/cgm/k/j;

    if-nez v2, :cond_6

    .line 53
    :cond_8
    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    iget-object v3, p1, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAlertKind()Lcom/dexcom/cgm/model/enums/AlertKind;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_alertKind:Lcom/dexcom/cgm/model/enums/AlertKind;

    return-object v0
.end method

.method public getEgv()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_egv:I

    return v0
.end method

.method public getTimestamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_timestamp:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getTrendArrow()Lcom/dexcom/cgm/model/enums/TrendArrow;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_alertKind:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlertKind;->hashCode()I

    move-result v0

    .line 62
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_timestamp:Lcom/dexcom/cgm/k/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_timestamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 63
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_egv:I

    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/TrendArrow;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 65
    return v0

    :cond_1
    move v0, v1

    .line 62
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AlertInstanceInformation{m_alertKind="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_alertKind:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_timestamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_egv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_egv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_trendArrow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertInstanceInformation;->m_trendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
