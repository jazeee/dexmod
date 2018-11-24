.class public Lcom/dexcom/cgm/test/api/SimCommand;
.super Ljava/lang/Object;
.source "SimCommand.java"


# instance fields
.field private final m_bg:Ljava/lang/Integer;

.field private final m_commandType:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

.field private final m_systemTime:J

.field private final m_transmitterTime:J


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/test/api/SimCommand$CommandType;JJLjava/lang/Integer;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_commandType:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    .line 41
    iput-wide p2, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_systemTime:J

    .line 42
    iput-wide p4, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_transmitterTime:J

    .line 43
    iput-object p6, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_bg:Ljava/lang/Integer;

    .line 44
    return-void
.end method

.method public static createCalibrate(JJI)Lcom/dexcom/cgm/test/api/SimCommand;
    .locals 8

    .prologue
    .line 35
    new-instance v0, Lcom/dexcom/cgm/test/api/SimCommand;

    sget-object v1, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;->Calibrate:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/dexcom/cgm/test/api/SimCommand;-><init>(Lcom/dexcom/cgm/test/api/SimCommand$CommandType;JJLjava/lang/Integer;)V

    return-object v0
.end method

.method public static createStartSensor(JJ)Lcom/dexcom/cgm/test/api/SimCommand;
    .locals 8

    .prologue
    .line 25
    new-instance v0, Lcom/dexcom/cgm/test/api/SimCommand;

    sget-object v1, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;->StartSensor:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    const/4 v6, 0x0

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/dexcom/cgm/test/api/SimCommand;-><init>(Lcom/dexcom/cgm/test/api/SimCommand$CommandType;JJLjava/lang/Integer;)V

    return-object v0
.end method

.method public static createStopSensor(JJ)Lcom/dexcom/cgm/test/api/SimCommand;
    .locals 8

    .prologue
    .line 30
    new-instance v0, Lcom/dexcom/cgm/test/api/SimCommand;

    sget-object v1, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;->StopSensor:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    const/4 v6, 0x0

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/dexcom/cgm/test/api/SimCommand;-><init>(Lcom/dexcom/cgm/test/api/SimCommand$CommandType;JJLjava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    if-ne p0, p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 83
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

    .line 85
    :cond_3
    check-cast p1, Lcom/dexcom/cgm/test/api/SimCommand;

    .line 87
    iget-wide v2, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_systemTime:J

    iget-wide v4, p1, Lcom/dexcom/cgm/test/api/SimCommand;->m_systemTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 88
    :cond_4
    iget-wide v2, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_transmitterTime:J

    iget-wide v4, p1, Lcom/dexcom/cgm/test/api/SimCommand;->m_transmitterTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 89
    :cond_5
    iget-object v2, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_commandType:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    iget-object v3, p1, Lcom/dexcom/cgm/test/api/SimCommand;->m_commandType:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 90
    :cond_6
    iget-object v2, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_bg:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_bg:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/dexcom/cgm/test/api/SimCommand;->m_bg:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/dexcom/cgm/test/api/SimCommand;->m_bg:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public equalsWithTimeDelta(Lcom/dexcom/cgm/test/api/SimCommand;J)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    if-ne p0, p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 69
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

    .line 71
    :cond_3
    iget-wide v2, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_systemTime:J

    iget-wide v4, p1, Lcom/dexcom/cgm/test/api/SimCommand;->m_systemTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-gez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 72
    :cond_4
    iget-wide v2, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_transmitterTime:J

    iget-wide v4, p1, Lcom/dexcom/cgm/test/api/SimCommand;->m_transmitterTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-gez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 73
    :cond_5
    iget-object v2, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_commandType:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    iget-object v3, p1, Lcom/dexcom/cgm/test/api/SimCommand;->m_commandType:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 74
    :cond_6
    iget-object v2, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_bg:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_bg:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/dexcom/cgm/test/api/SimCommand;->m_bg:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/dexcom/cgm/test/api/SimCommand;->m_bg:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getBg()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_bg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCommandType()Lcom/dexcom/cgm/test/api/SimCommand$CommandType;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_commandType:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    return-object v0
.end method

.method public getSystemTime()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_systemTime:J

    return-wide v0
.end method

.method public getTransmitterTime()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_transmitterTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 98
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_commandType:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    invoke-virtual {v0}, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;->hashCode()I

    move-result v0

    .line 99
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_systemTime:J

    iget-wide v4, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_systemTime:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 100
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_transmitterTime:J

    iget-wide v4, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_transmitterTime:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 101
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_bg:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_bg:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 102
    return v0

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SimCommand{m_commandType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_commandType:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_systemTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_systemTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_transmitterTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_transmitterTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_bg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/test/api/SimCommand;->m_bg:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
