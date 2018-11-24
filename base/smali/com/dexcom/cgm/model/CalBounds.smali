.class public Lcom/dexcom/cgm/model/CalBounds;
.super Ljava/lang/Object;
.source "CalBounds.java"


# annotations
.annotation runtime Lcom/dexcom/cgm/model/DatabaseTable;
.end annotation


# instance fields
.field private m_bgWeight:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "bg_weight"
    .end annotation
.end field

.field private m_lastBg:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "last_bag"
    .end annotation
.end field

.field private m_lastBgSystemTime:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "last_bg_system_time"
    .end annotation
.end field

.field private m_lastTransmitterTime:Lcom/dexcom/cgm/k/n;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "last_bg_transmitter_time"
    .end annotation
.end field

.field private m_linearityBoundHigh:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "linearity_bound_high"
    .end annotation
.end field

.field private m_linearityBoundLow:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "linearity_bound_low"
    .end annotation
.end field

.field private m_recordID:Ljava/lang/Integer;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "record_id"
    .end annotation

    .annotation runtime Lcom/dexcom/cgm/model/DatabasePrimaryKey;
    .end annotation
.end field

.field private m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "system_time_stamp"
    .end annotation
.end field

.field private m_wedgeBoundError0:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "wedge_bound_error0"
    .end annotation
.end field

.field private m_wedgeBoundError1:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "wedge_bound_error1"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(IIIISILcom/dexcom/cgm/k/m;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p4, p0, Lcom/dexcom/cgm/model/CalBounds;->m_linearityBoundHigh:I

    .line 70
    iput p3, p0, Lcom/dexcom/cgm/model/CalBounds;->m_linearityBoundLow:I

    .line 71
    iput p1, p0, Lcom/dexcom/cgm/model/CalBounds;->m_wedgeBoundError1:I

    .line 72
    iput p2, p0, Lcom/dexcom/cgm/model/CalBounds;->m_wedgeBoundError0:I

    .line 73
    iput p5, p0, Lcom/dexcom/cgm/model/CalBounds;->m_bgWeight:I

    .line 74
    iput p6, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastBg:I

    .line 75
    if-eqz p7, :cond_0

    .line 76
    invoke-virtual {p7}, Lcom/dexcom/cgm/k/m;->getTransmitterTime()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/k/n;->Zero:Lcom/dexcom/cgm/k/n;

    .line 77
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/k/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    iput-object v2, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastBgSystemTime:Lcom/dexcom/cgm/k/j;

    .line 80
    iput-object v2, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastTransmitterTime:Lcom/dexcom/cgm/k/n;

    .line 87
    :goto_0
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/CalBounds;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 88
    return-void

    .line 84
    :cond_1
    invoke-virtual {p7}, Lcom/dexcom/cgm/k/m;->getSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastBgSystemTime:Lcom/dexcom/cgm/k/j;

    .line 85
    invoke-virtual {p7}, Lcom/dexcom/cgm/k/m;->getTransmitterTime()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastTransmitterTime:Lcom/dexcom/cgm/k/n;

    goto :goto_0
.end method

.method public static getDefault()Lcom/dexcom/cgm/model/CalBounds;
    .locals 8

    .prologue
    const/16 v2, 0x258

    const/16 v1, 0x14

    const/4 v5, 0x0

    .line 52
    new-instance v0, Lcom/dexcom/cgm/model/CalBounds;

    const/4 v7, 0x0

    move v3, v1

    move v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/model/CalBounds;-><init>(IIIISILcom/dexcom/cgm/k/m;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    if-ne p0, p1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v0

    .line 136
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

    .line 138
    :cond_3
    check-cast p1, Lcom/dexcom/cgm/model/CalBounds;

    .line 140
    iget v2, p0, Lcom/dexcom/cgm/model/CalBounds;->m_bgWeight:I

    iget v3, p1, Lcom/dexcom/cgm/model/CalBounds;->m_bgWeight:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 141
    :cond_4
    iget v2, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastBg:I

    iget v3, p1, Lcom/dexcom/cgm/model/CalBounds;->m_lastBg:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 142
    :cond_5
    iget v2, p0, Lcom/dexcom/cgm/model/CalBounds;->m_linearityBoundLow:I

    iget v3, p1, Lcom/dexcom/cgm/model/CalBounds;->m_linearityBoundLow:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 143
    :cond_6
    iget v2, p0, Lcom/dexcom/cgm/model/CalBounds;->m_linearityBoundHigh:I

    iget v3, p1, Lcom/dexcom/cgm/model/CalBounds;->m_linearityBoundHigh:I

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    .line 144
    :cond_7
    iget v2, p0, Lcom/dexcom/cgm/model/CalBounds;->m_wedgeBoundError0:I

    iget v3, p1, Lcom/dexcom/cgm/model/CalBounds;->m_wedgeBoundError0:I

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    .line 145
    :cond_8
    iget v2, p0, Lcom/dexcom/cgm/model/CalBounds;->m_wedgeBoundError1:I

    iget v3, p1, Lcom/dexcom/cgm/model/CalBounds;->m_wedgeBoundError1:I

    if-eq v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    .line 146
    :cond_9
    iget-object v2, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastBgSystemTime:Lcom/dexcom/cgm/k/j;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastBgSystemTime:Lcom/dexcom/cgm/k/j;

    iget-object v3, p1, Lcom/dexcom/cgm/model/CalBounds;->m_lastBgSystemTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/k/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    .line 148
    goto :goto_0

    .line 146
    :cond_b
    iget-object v2, p1, Lcom/dexcom/cgm/model/CalBounds;->m_lastBgSystemTime:Lcom/dexcom/cgm/k/j;

    if-nez v2, :cond_a

    .line 149
    :cond_c
    iget-object v2, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastTransmitterTime:Lcom/dexcom/cgm/k/n;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastTransmitterTime:Lcom/dexcom/cgm/k/n;

    iget-object v3, p1, Lcom/dexcom/cgm/model/CalBounds;->m_lastTransmitterTime:Lcom/dexcom/cgm/k/n;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/k/n;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 151
    goto :goto_0

    .line 149
    :cond_d
    iget-object v2, p1, Lcom/dexcom/cgm/model/CalBounds;->m_lastTransmitterTime:Lcom/dexcom/cgm/k/n;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getBgWeight()S
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/dexcom/cgm/model/CalBounds;->m_bgWeight:I

    int-to-short v0, v0

    return v0
.end method

.method public getError0Bound()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/dexcom/cgm/model/CalBounds;->m_wedgeBoundError0:I

    return v0
.end method

.method public getError1Bound()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/dexcom/cgm/model/CalBounds;->m_wedgeBoundError1:I

    return v0
.end method

.method public getLastBg()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastBg:I

    return v0
.end method

.method public getLastCalibrationTime()Lcom/dexcom/cgm/k/m;
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastBgSystemTime:Lcom/dexcom/cgm/k/j;

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/dexcom/cgm/k/m;

    iget-object v1, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastBgSystemTime:Lcom/dexcom/cgm/k/j;

    iget-object v2, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastTransmitterTime:Lcom/dexcom/cgm/k/n;

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/k/m;-><init>(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;)V

    goto :goto_0
.end method

.method public getLinearityCheckHigh()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/dexcom/cgm/model/CalBounds;->m_linearityBoundHigh:I

    return v0
.end method

.method public getLinearityCheckLow()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/dexcom/cgm/model/CalBounds;->m_linearityBoundLow:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/dexcom/cgm/model/CalBounds;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dexcom/cgm/model/CalBounds;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->hashCode()I

    move-result v0

    .line 160
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/dexcom/cgm/model/CalBounds;->m_bgWeight:I

    add-int/2addr v0, v2

    .line 161
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastBg:I

    add-int/2addr v0, v2

    .line 162
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastBgSystemTime:Lcom/dexcom/cgm/k/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastBgSystemTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 163
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastTransmitterTime:Lcom/dexcom/cgm/k/n;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastTransmitterTime:Lcom/dexcom/cgm/k/n;

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/n;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 165
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dexcom/cgm/model/CalBounds;->m_linearityBoundLow:I

    add-int/2addr v0, v1

    .line 166
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dexcom/cgm/model/CalBounds;->m_linearityBoundHigh:I

    add-int/2addr v0, v1

    .line 167
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dexcom/cgm/model/CalBounds;->m_wedgeBoundError0:I

    add-int/2addr v0, v1

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/dexcom/cgm/model/CalBounds;->m_wedgeBoundError1:I

    add-int/2addr v0, v1

    .line 169
    return v0

    :cond_1
    move v0, v1

    .line 159
    goto :goto_0

    :cond_2
    move v0, v1

    .line 162
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CalBounds{m_recordedTimeStamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/model/CalBounds;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_recordID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/CalBounds;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_bgWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/CalBounds;->m_bgWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_lastBg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastBg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_lastBgSystemTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastBgSystemTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_lastTransmitterTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/CalBounds;->m_lastTransmitterTime:Lcom/dexcom/cgm/k/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_linearityBoundLow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/CalBounds;->m_linearityBoundLow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_linearityBoundHigh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/CalBounds;->m_linearityBoundHigh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_wedgeBoundError0="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/CalBounds;->m_wedgeBoundError0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_wedgeBoundError1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/CalBounds;->m_wedgeBoundError1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
