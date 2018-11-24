.class public final Lcom/dexcom/cgm/b/v;
.super Ljava/lang/Object;
.source "LocalAlgorithmStateInfo.java"


# instance fields
.field private m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

.field private m_egvRecord:Lcom/dexcom/cgm/model/Glucose;

.field private m_localAlgorithmState:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field private m_localEgv:I

.field private m_localTrendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

.field private m_sessionTracker:Lcom/dexcom/cgm/b/w;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/dexcom/cgm/b/v;Lcom/dexcom/cgm/model/enums/AlgorithmState;I)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object v0, p1, Lcom/dexcom/cgm/b/v;->m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

    iput-object v0, p0, Lcom/dexcom/cgm/b/v;->m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

    .line 42
    iget-object v0, p1, Lcom/dexcom/cgm/b/v;->m_egvRecord:Lcom/dexcom/cgm/model/Glucose;

    iput-object v0, p0, Lcom/dexcom/cgm/b/v;->m_egvRecord:Lcom/dexcom/cgm/model/Glucose;

    .line 43
    iput-object p2, p0, Lcom/dexcom/cgm/b/v;->m_localAlgorithmState:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 44
    iput p3, p0, Lcom/dexcom/cgm/b/v;->m_localEgv:I

    .line 45
    iget-object v0, p1, Lcom/dexcom/cgm/b/v;->m_sessionTracker:Lcom/dexcom/cgm/b/w;

    iput-object v0, p0, Lcom/dexcom/cgm/b/v;->m_sessionTracker:Lcom/dexcom/cgm/b/w;

    .line 46
    sget-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->NotComputable:Lcom/dexcom/cgm/model/enums/TrendArrow;

    iput-object v0, p0, Lcom/dexcom/cgm/b/v;->m_localTrendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 47
    return-void
.end method

.method constructor <init>(Lcom/dexcom/cgm/b/v;Lcom/dexcom/cgm/model/enums/AlgorithmState;ILcom/dexcom/cgm/model/enums/TrendArrow;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iget-object v0, p1, Lcom/dexcom/cgm/b/v;->m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

    iput-object v0, p0, Lcom/dexcom/cgm/b/v;->m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

    .line 56
    iget-object v0, p1, Lcom/dexcom/cgm/b/v;->m_egvRecord:Lcom/dexcom/cgm/model/Glucose;

    iput-object v0, p0, Lcom/dexcom/cgm/b/v;->m_egvRecord:Lcom/dexcom/cgm/model/Glucose;

    .line 57
    iput-object p2, p0, Lcom/dexcom/cgm/b/v;->m_localAlgorithmState:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 58
    iput p3, p0, Lcom/dexcom/cgm/b/v;->m_localEgv:I

    .line 59
    iget-object v0, p1, Lcom/dexcom/cgm/b/v;->m_sessionTracker:Lcom/dexcom/cgm/b/w;

    iput-object v0, p0, Lcom/dexcom/cgm/b/v;->m_sessionTracker:Lcom/dexcom/cgm/b/w;

    .line 60
    iput-object p4, p0, Lcom/dexcom/cgm/b/v;->m_localTrendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/Glucose;Lcom/dexcom/cgm/model/CalBounds;Lcom/dexcom/cgm/b/w;)V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/dexcom/cgm/b/v;->m_egvRecord:Lcom/dexcom/cgm/model/Glucose;

    .line 107
    if-nez p2, :cond_0

    invoke-static {}, Lcom/dexcom/cgm/model/CalBounds;->getDefault()Lcom/dexcom/cgm/model/CalBounds;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/dexcom/cgm/b/v;->m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

    .line 108
    iput-object p3, p0, Lcom/dexcom/cgm/b/v;->m_sessionTracker:Lcom/dexcom/cgm/b/w;

    .line 109
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getAlgorithmState()Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/v;->m_localAlgorithmState:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 110
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getGlucoseValue()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/b/v;->m_localEgv:I

    .line 111
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getTrendArrow()Lcom/dexcom/cgm/model/enums/TrendArrow;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/v;->m_localTrendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 112
    return-void
.end method

.method public static computeNewLocalAlgorithmState(Lcom/dexcom/cgm/b/v;Lcom/dexcom/cgm/model/Meter;Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;
    .locals 1

    .prologue
    .line 182
    new-instance v0, Lcom/dexcom/cgm/b/c;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/b/c;-><init>(Lcom/dexcom/cgm/b/v;)V

    .line 183
    invoke-virtual {v0, p1, p2}, Lcom/dexcom/cgm/b/c;->runStateMachine(Lcom/dexcom/cgm/model/Meter;Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;

    move-result-object v0

    return-object v0
.end method

.method static copyStateForCalibration(Lcom/dexcom/cgm/b/v;)Lcom/dexcom/cgm/b/v;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/dexcom/cgm/b/v;

    invoke-direct {v0}, Lcom/dexcom/cgm/b/v;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/dexcom/cgm/b/v;->m_egvRecord:Lcom/dexcom/cgm/model/Glucose;

    iput-object v1, v0, Lcom/dexcom/cgm/b/v;->m_egvRecord:Lcom/dexcom/cgm/model/Glucose;

    .line 92
    iget-object v1, p0, Lcom/dexcom/cgm/b/v;->m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

    iput-object v1, v0, Lcom/dexcom/cgm/b/v;->m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

    .line 93
    iget-object v1, p0, Lcom/dexcom/cgm/b/v;->m_sessionTracker:Lcom/dexcom/cgm/b/w;

    iput-object v1, v0, Lcom/dexcom/cgm/b/v;->m_sessionTracker:Lcom/dexcom/cgm/b/w;

    .line 94
    iget v1, p0, Lcom/dexcom/cgm/b/v;->m_localEgv:I

    iput v1, v0, Lcom/dexcom/cgm/b/v;->m_localEgv:I

    .line 95
    iget-object v1, p0, Lcom/dexcom/cgm/b/v;->m_localAlgorithmState:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    iput-object v1, v0, Lcom/dexcom/cgm/b/v;->m_localAlgorithmState:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 97
    sget-object v1, Lcom/dexcom/cgm/model/enums/TrendArrow;->NotComputable:Lcom/dexcom/cgm/model/enums/TrendArrow;

    iput-object v1, v0, Lcom/dexcom/cgm/b/v;->m_localTrendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 98
    return-object v0
.end method

.method public static createStartSessionState(Lcom/dexcom/cgm/b/w;)Lcom/dexcom/cgm/b/v;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/dexcom/cgm/b/v;

    invoke-direct {v0}, Lcom/dexcom/cgm/b/v;-><init>()V

    .line 77
    invoke-static {}, Lcom/dexcom/cgm/model/CalBounds;->getDefault()Lcom/dexcom/cgm/model/CalBounds;

    move-result-object v1

    iput-object v1, v0, Lcom/dexcom/cgm/b/v;->m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

    .line 78
    invoke-static {}, Lcom/dexcom/cgm/model/Glucose;->getDefault()Lcom/dexcom/cgm/model/Glucose;

    move-result-object v1

    iput-object v1, v0, Lcom/dexcom/cgm/b/v;->m_egvRecord:Lcom/dexcom/cgm/model/Glucose;

    .line 79
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SensorWarmup:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    iput-object v1, v0, Lcom/dexcom/cgm/b/v;->m_localAlgorithmState:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 80
    sget-object v1, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorOutOfCal:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v1

    iput v1, v0, Lcom/dexcom/cgm/b/v;->m_localEgv:I

    .line 81
    sget-object v1, Lcom/dexcom/cgm/model/enums/TrendArrow;->NotComputable:Lcom/dexcom/cgm/model/enums/TrendArrow;

    iput-object v1, v0, Lcom/dexcom/cgm/b/v;->m_localTrendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 82
    iput-object p0, v0, Lcom/dexcom/cgm/b/v;->m_sessionTracker:Lcom/dexcom/cgm/b/w;

    .line 83
    return-object v0
.end method

.method public static createStopSessionState(Lcom/dexcom/cgm/b/w;)Lcom/dexcom/cgm/b/v;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/dexcom/cgm/b/v;

    invoke-direct {v0}, Lcom/dexcom/cgm/b/v;-><init>()V

    .line 65
    invoke-static {}, Lcom/dexcom/cgm/model/CalBounds;->getDefault()Lcom/dexcom/cgm/model/CalBounds;

    move-result-object v1

    iput-object v1, v0, Lcom/dexcom/cgm/b/v;->m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

    .line 66
    invoke-static {}, Lcom/dexcom/cgm/model/Glucose;->getDefault()Lcom/dexcom/cgm/model/Glucose;

    move-result-object v1

    iput-object v1, v0, Lcom/dexcom/cgm/b/v;->m_egvRecord:Lcom/dexcom/cgm/model/Glucose;

    .line 67
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionStopped:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    iput-object v1, v0, Lcom/dexcom/cgm/b/v;->m_localAlgorithmState:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 68
    sget-object v1, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorNotActive:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v1

    iput v1, v0, Lcom/dexcom/cgm/b/v;->m_localEgv:I

    .line 69
    sget-object v1, Lcom/dexcom/cgm/model/enums/TrendArrow;->NotComputable:Lcom/dexcom/cgm/model/enums/TrendArrow;

    iput-object v1, v0, Lcom/dexcom/cgm/b/v;->m_localTrendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 70
    iput-object p0, v0, Lcom/dexcom/cgm/b/v;->m_sessionTracker:Lcom/dexcom/cgm/b/w;

    .line 71
    return-object v0
.end method

.method public static getLocalStateForTransmitterFailure()Lcom/dexcom/cgm/b/v;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Lcom/dexcom/cgm/b/v;

    invoke-direct {v0}, Lcom/dexcom/cgm/b/v;-><init>()V

    .line 162
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionStopped:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    iput-object v1, v0, Lcom/dexcom/cgm/b/v;->m_localAlgorithmState:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 163
    sget-object v1, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorNotActive:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v1

    iput v1, v0, Lcom/dexcom/cgm/b/v;->m_localEgv:I

    .line 164
    invoke-static {}, Lcom/dexcom/cgm/model/CalBounds;->getDefault()Lcom/dexcom/cgm/model/CalBounds;

    move-result-object v1

    iput-object v1, v0, Lcom/dexcom/cgm/b/v;->m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

    .line 165
    sget-object v1, Lcom/dexcom/cgm/model/enums/TrendArrow;->NotComputable:Lcom/dexcom/cgm/model/enums/TrendArrow;

    iput-object v1, v0, Lcom/dexcom/cgm/b/v;->m_localTrendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 166
    return-object v0
.end method

.method public static getLocalStateFromTransmitterInfo(Lcom/dexcom/cgm/model/Glucose;Lcom/dexcom/cgm/model/CalBounds;Lcom/dexcom/cgm/b/w;)Lcom/dexcom/cgm/b/v;
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lcom/dexcom/cgm/b/v;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/cgm/b/v;-><init>(Lcom/dexcom/cgm/model/Glucose;Lcom/dexcom/cgm/model/CalBounds;Lcom/dexcom/cgm/b/w;)V

    return-object v0
.end method


# virtual methods
.method final getCalBounds()Lcom/dexcom/cgm/model/CalBounds;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dexcom/cgm/b/v;->m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

    return-object v0
.end method

.method final getEgvRecord()Lcom/dexcom/cgm/model/Glucose;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dexcom/cgm/b/v;->m_egvRecord:Lcom/dexcom/cgm/model/Glucose;

    return-object v0
.end method

.method public final getLastEgvTimestamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dexcom/cgm/b/v;->m_egvRecord:Lcom/dexcom/cgm/model/Glucose;

    if-nez v0, :cond_0

    .line 145
    sget-object v0, Lcom/dexcom/cgm/k/j;->Min:Lcom/dexcom/cgm/k/j;

    .line 147
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/v;->m_egvRecord:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    goto :goto_0
.end method

.method public final getLocalAlgorithmState()Lcom/dexcom/cgm/model/enums/AlgorithmState;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dexcom/cgm/b/v;->m_localAlgorithmState:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    return-object v0
.end method

.method public final getLocalEgv()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/dexcom/cgm/b/v;->m_localEgv:I

    return v0
.end method

.method public final getLocalTrendArrow()Lcom/dexcom/cgm/model/enums/TrendArrow;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dexcom/cgm/b/v;->m_localTrendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    return-object v0
.end method

.method public final getSessionStartTime()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dexcom/cgm/b/v;->m_sessionTracker:Lcom/dexcom/cgm/b/w;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/w;->getSessionStartTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    return-object v0
.end method

.method public final isCountsAberrant()Z
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dexcom/cgm/b/v;->m_egvRecord:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getGlucoseValue()I

    move-result v0

    sget-object v1, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->CountsAberration:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isResidualAberrant()Z
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dexcom/cgm/b/v;->m_egvRecord:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getGlucoseValue()I

    move-result v0

    sget-object v1, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->AbsoluteAberration:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSessionStarted()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/dexcom/cgm/b/v;->m_sessionTracker:Lcom/dexcom/cgm/b/w;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/w;->isSessionStarted()Z

    move-result v0

    return v0
.end method

.method public final isTerminallyNoisy()Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dexcom/cgm/b/v;->m_egvRecord:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getGlucoseValue()I

    move-result v0

    sget-object v1, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->PowerAberration:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocalAlgorithmStateInfo{m_egvRecord="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/b/v;->m_egvRecord:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_calBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/b/v;->m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_sessionTracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/b/v;->m_sessionTracker:Lcom/dexcom/cgm/b/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_localAlgorithmState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/b/v;->m_localAlgorithmState:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_localEgv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/b/v;->m_localEgv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_localTrendArrow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/b/v;->m_localTrendArrow:Lcom/dexcom/cgm/model/enums/TrendArrow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
