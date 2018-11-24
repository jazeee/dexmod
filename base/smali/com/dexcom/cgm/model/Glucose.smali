.class public Lcom/dexcom/cgm/model/Glucose;
.super Ljava/lang/Object;
.source "Glucose.java"


# annotations
.annotation runtime Lcom/dexcom/cgm/model/DatabaseTable;
.end annotation


# static fields
.field private static final NOT_BACKFILLED:Z = false

.field private static final UNKNOWN_SEQUENCE_NUMBER:J = 0x0L

.field public static final VALUE_MASK:I = 0x3ff


# instance fields
.field private m_algorithmState:Lcom/dexcom/cgm/model/enums/AlgorithmState;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "algorithm_state"
    .end annotation
.end field

.field private m_glucoseValue:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "glucose_value"
    .end annotation
.end field

.field private m_isDisplayOnly:Z
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "is_display_only"
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
        value = "recorded_time_stamp"
    .end annotation
.end field

.field private m_sequenceNumber:J
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "sequence_number"
    .end annotation
.end field

.field private m_sessionSignature:Lcom/dexcom/cgm/k/n;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "transmitter_session_start_time"
    .end annotation
.end field

.field private m_systemTimeStamp:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "system_time_stamp"
    .end annotation
.end field

.field private m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "transmitter_id"
    .end annotation
.end field

.field private m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "transmitter_time_stamp"
    .end annotation
.end field

.field private m_trendRate:D
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "trend_rate"
    .end annotation
.end field

.field private m_wasBackfilled:Z
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "was_backfilled"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_sequenceNumber:J

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_wasBackfilled:Z

    .line 71
    return-void
.end method

.method private constructor <init>(JLcom/dexcom/cgm/model/enums/AlgorithmState;IDLcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/n;ZZ)V
    .locals 3

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_sequenceNumber:J

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_wasBackfilled:Z

    .line 109
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 110
    iput-wide p1, p0, Lcom/dexcom/cgm/model/Glucose;->m_sequenceNumber:J

    .line 111
    iput-object p3, p0, Lcom/dexcom/cgm/model/Glucose;->m_algorithmState:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 112
    iput p4, p0, Lcom/dexcom/cgm/model/Glucose;->m_glucoseValue:I

    .line 113
    invoke-static {p5, p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;->NotComputable:Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;->getValue()D

    move-result-wide p5

    :cond_0
    iput-wide p5, p0, Lcom/dexcom/cgm/model/Glucose;->m_trendRate:D

    .line 114
    iput-object p7, p0, Lcom/dexcom/cgm/model/Glucose;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 115
    iput-object p8, p0, Lcom/dexcom/cgm/model/Glucose;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    .line 116
    iput-object p9, p0, Lcom/dexcom/cgm/model/Glucose;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    .line 117
    iput-object p10, p0, Lcom/dexcom/cgm/model/Glucose;->m_sessionSignature:Lcom/dexcom/cgm/k/n;

    .line 118
    iput-boolean p11, p0, Lcom/dexcom/cgm/model/Glucose;->m_isDisplayOnly:Z

    .line 119
    iput-boolean p12, p0, Lcom/dexcom/cgm/model/Glucose;->m_wasBackfilled:Z

    .line 120
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/enums/AlgorithmState;IDLcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/n;Z)V
    .locals 15

    .prologue
    .line 153
    const-wide/16 v2, 0x0

    sget-object v9, Lcom/dexcom/cgm/k/n;->Unknown:Lcom/dexcom/cgm/k/n;

    const/4 v13, 0x0

    move-object v1, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v1 .. v13}, Lcom/dexcom/cgm/model/Glucose;-><init>(JLcom/dexcom/cgm/model/enums/AlgorithmState;IDLcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/n;ZZ)V

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/enums/AlgorithmState;IDLcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/n;Z)V
    .locals 15

    .prologue
    .line 131
    const-wide/16 v2, 0x0

    .line 136
    invoke-virtual/range {p5 .. p5}, Lcom/dexcom/cgm/k/m;->getSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v8

    .line 137
    invoke-virtual/range {p5 .. p5}, Lcom/dexcom/cgm/k/m;->getTransmitterTime()Lcom/dexcom/cgm/k/n;

    move-result-object v9

    const/4 v13, 0x0

    move-object v1, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    .line 131
    invoke-direct/range {v1 .. v13}, Lcom/dexcom/cgm/model/Glucose;-><init>(JLcom/dexcom/cgm/model/enums/AlgorithmState;IDLcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/n;ZZ)V

    .line 142
    return-void
.end method

.method public static createWithTxData(JLcom/dexcom/cgm/model/enums/AlgorithmState;IDLcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/n;Z)Lcom/dexcom/cgm/model/Glucose;
    .locals 14

    .prologue
    .line 84
    new-instance v1, Lcom/dexcom/cgm/model/Glucose;

    .line 89
    invoke-virtual/range {p6 .. p6}, Lcom/dexcom/cgm/k/m;->getSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v8

    .line 90
    invoke-virtual/range {p6 .. p6}, Lcom/dexcom/cgm/k/m;->getTransmitterTime()Lcom/dexcom/cgm/k/n;

    move-result-object v9

    const/4 v12, 0x0

    move-wide v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v13, p9

    invoke-direct/range {v1 .. v13}, Lcom/dexcom/cgm/model/Glucose;-><init>(JLcom/dexcom/cgm/model/enums/AlgorithmState;IDLcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/n;ZZ)V

    return-object v1
.end method

.method public static getDefault()Lcom/dexcom/cgm/model/Glucose;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 314
    new-instance v0, Lcom/dexcom/cgm/model/Glucose;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/Glucose;-><init>()V

    .line 316
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionStopped:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    iput-object v1, v0, Lcom/dexcom/cgm/model/Glucose;->m_algorithmState:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 317
    sget-object v1, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorNotActive:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v1

    iput v1, v0, Lcom/dexcom/cgm/model/Glucose;->m_glucoseValue:I

    .line 318
    sget-object v1, Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;->NotComputable:Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;->getValue()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/dexcom/cgm/model/Glucose;->m_trendRate:D

    .line 319
    iput-object v4, v0, Lcom/dexcom/cgm/model/Glucose;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    .line 320
    sget-object v1, Lcom/dexcom/cgm/k/j;->Min:Lcom/dexcom/cgm/k/j;

    iput-object v1, v0, Lcom/dexcom/cgm/model/Glucose;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 321
    iput-object v4, v0, Lcom/dexcom/cgm/model/Glucose;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    .line 322
    sget-object v1, Lcom/dexcom/cgm/k/n;->Unknown:Lcom/dexcom/cgm/k/n;

    iput-object v1, v0, Lcom/dexcom/cgm/model/Glucose;->m_sessionSignature:Lcom/dexcom/cgm/k/n;

    .line 323
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/dexcom/cgm/model/Glucose;->m_isDisplayOnly:Z

    .line 324
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    iput-object v1, v0, Lcom/dexcom/cgm/model/Glucose;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 326
    return-object v0
.end method


# virtual methods
.method public getAlgorithmState()Lcom/dexcom/cgm/model/enums/AlgorithmState;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_algorithmState:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    return-object v0
.end method

.method public getGlucoseValue()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_glucoseValue:I

    and-int/lit16 v0, v0, 0x3ff

    return v0
.end method

.method public getRecordID()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRecordedTimeStamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getSequenceNumber()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_sequenceNumber:J

    return-wide v0
.end method

.method public getSessionStartTime()Lcom/dexcom/cgm/k/n;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_sessionSignature:Lcom/dexcom/cgm/k/n;

    return-object v0
.end method

.method public getSystemTimeStamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getTransmitterID()Lcom/dexcom/cgm/model/TransmitterId;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    return-object v0
.end method

.method public getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    return-object v0
.end method

.method public getTrendArrow()Lcom/dexcom/cgm/model/enums/TrendArrow;
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, -0x3ff8000000000000L    # -3.0

    const-wide/high16 v6, -0x4000000000000000L    # -2.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 231
    iget-wide v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_trendRate:D

    sget-object v2, Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;->NotComputable:Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;->getValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 232
    sget-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->NotComputable:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 259
    :goto_0
    return-object v0

    .line 244
    :cond_0
    iget-wide v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_trendRate:D

    const-wide/high16 v2, -0x3fe0000000000000L    # -8.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_trendRate:D

    cmpg-double v0, v0, v8

    if-gtz v0, :cond_1

    .line 245
    sget-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->DoubleDown:Lcom/dexcom/cgm/model/enums/TrendArrow;

    goto :goto_0

    .line 246
    :cond_1
    iget-wide v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_trendRate:D

    cmpl-double v0, v0, v8

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_trendRate:D

    cmpg-double v0, v0, v6

    if-gtz v0, :cond_2

    .line 247
    sget-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->SingleDown:Lcom/dexcom/cgm/model/enums/TrendArrow;

    goto :goto_0

    .line 248
    :cond_2
    iget-wide v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_trendRate:D

    cmpl-double v0, v0, v6

    if-lez v0, :cond_3

    iget-wide v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_trendRate:D

    cmpg-double v0, v0, v4

    if-gtz v0, :cond_3

    .line 249
    sget-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->FortyFiveDown:Lcom/dexcom/cgm/model/enums/TrendArrow;

    goto :goto_0

    .line 250
    :cond_3
    iget-wide v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_trendRate:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_4

    iget-wide v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_trendRate:D

    cmpg-double v0, v0, v10

    if-gez v0, :cond_4

    .line 251
    sget-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->Flat:Lcom/dexcom/cgm/model/enums/TrendArrow;

    goto :goto_0

    .line 252
    :cond_4
    iget-wide v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_trendRate:D

    cmpl-double v0, v0, v10

    if-ltz v0, :cond_5

    iget-wide v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_trendRate:D

    cmpg-double v0, v0, v12

    if-gez v0, :cond_5

    .line 253
    sget-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->FortyFiveUp:Lcom/dexcom/cgm/model/enums/TrendArrow;

    goto :goto_0

    .line 254
    :cond_5
    iget-wide v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_trendRate:D

    cmpl-double v0, v0, v12

    if-ltz v0, :cond_6

    iget-wide v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_trendRate:D

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_6

    .line 255
    sget-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->SingleUp:Lcom/dexcom/cgm/model/enums/TrendArrow;

    goto :goto_0

    .line 256
    :cond_6
    iget-wide v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_trendRate:D

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_7

    iget-wide v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_trendRate:D

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_7

    .line 257
    sget-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->DoubleUp:Lcom/dexcom/cgm/model/enums/TrendArrow;

    goto :goto_0

    .line 259
    :cond_7
    sget-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->RateOutOfRange:Lcom/dexcom/cgm/model/enums/TrendArrow;

    goto :goto_0
.end method

.method public getTrendRate()D
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_trendRate:D

    return-wide v0
.end method

.method public isBgGeneratedOnTx()Z
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_glucoseValue:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisplayOnly()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_isDisplayOnly:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 335
    const-string v0, ""

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recordID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/Glucose;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "systemTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/Glucose;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "transmitterTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/Glucose;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "transmitterID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/Glucose;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sessionSignature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/Glucose;->m_sessionSignature:Lcom/dexcom/cgm/k/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sequenceNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dexcom/cgm/model/Glucose;->m_sequenceNumber:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "glucoseValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/Glucose;->m_glucoseValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "trendRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dexcom/cgm/model/Glucose;->m_trendRate:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "algorithmState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/Glucose;->m_algorithmState:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isDisplayOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dexcom/cgm/model/Glucose;->m_isDisplayOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wasBackfilled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dexcom/cgm/model/Glucose;->m_wasBackfilled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recordedTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/Glucose;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    return-object v0
.end method

.method public wasBackfilled()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/dexcom/cgm/model/Glucose;->m_wasBackfilled:Z

    return v0
.end method
