.class public Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;
.super Ljava/lang/Object;
.source "GlucoseRecord.java"


# instance fields
.field private m_algorithmState:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field private m_glucoseValue:I

.field private m_isDisplayOnly:Z

.field private m_isImmediateMatch:Z

.field private m_recordID:I

.field private m_recordedTimeStamp:J

.field private m_sequenceNumber:J

.field private m_sessionSignature:J

.field private m_systemTimeStamp:J

.field private m_transmitterID:Ljava/lang/String;

.field private m_transmitterTimeStamp:J

.field private m_trendRate:D

.field private m_wasBackfilled:Z


# direct methods
.method public constructor <init>(IJJJLjava/lang/String;JJIDLcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;ZZZ)V
    .locals 4

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_recordID:I

    .line 57
    iput-wide p2, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_recordedTimeStamp:J

    .line 58
    iput-wide p4, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_systemTimeStamp:J

    .line 59
    iput-wide p6, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_transmitterTimeStamp:J

    .line 60
    iput-object p8, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_transmitterID:Ljava/lang/String;

    .line 61
    iput-wide p9, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_sessionSignature:J

    .line 62
    iput-wide p11, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_sequenceNumber:J

    .line 63
    move/from16 v0, p13

    iput v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_glucoseValue:I

    .line 64
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_trendRate:D

    .line 65
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_algorithmState:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 66
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_isDisplayOnly:Z

    .line 67
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_isImmediateMatch:Z

    .line 68
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_wasBackfilled:Z

    .line 69
    return-void
.end method


# virtual methods
.method public getAlgorithmState()Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_algorithmState:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    return-object v0
.end method

.method public getGlucoseValue()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_glucoseValue:I

    return v0
.end method

.method public getRecordID()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_recordID:I

    return v0
.end method

.method public getRecordedTimeStamp()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_recordedTimeStamp:J

    return-wide v0
.end method

.method public getSequenceNumber()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_sequenceNumber:J

    return-wide v0
.end method

.method public getSessionSignature()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_sessionSignature:J

    return-wide v0
.end method

.method public getSystemTimestamp()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_systemTimeStamp:J

    return-wide v0
.end method

.method public getTransmitterID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_transmitterID:Ljava/lang/String;

    return-object v0
.end method

.method public getTransmitterTimeStamp()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_transmitterTimeStamp:J

    return-wide v0
.end method

.method public getTrendRate()D
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_trendRate:D

    return-wide v0
.end method

.method public isDisplayOnly()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_isDisplayOnly:Z

    return v0
.end method

.method public isImmediateMatch()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_isImmediateMatch:Z

    return v0
.end method

.method public wasBackfilled()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/GlucoseRecord;->m_wasBackfilled:Z

    return v0
.end method
