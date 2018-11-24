.class public Lcom/dexcom/cgm/test/api/model/database_records/SensorSessionRecord;
.super Ljava/lang/Object;
.source "SensorSessionRecord.java"


# instance fields
.field private m_logType:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

.field private m_recordID:Ljava/lang/Integer;

.field private m_recordedTimeStamp:J

.field private m_systemTimeStamp:J

.field private m_transmitterID:Ljava/lang/String;

.field private m_transmitterSessionStartTime:J

.field private m_transmitterTimeStamp:J


# direct methods
.method public constructor <init>(IJLjava/lang/String;JJJLcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/SensorSessionRecord;->m_recordID:Ljava/lang/Integer;

    .line 37
    iput-wide p2, p0, Lcom/dexcom/cgm/test/api/model/database_records/SensorSessionRecord;->m_recordedTimeStamp:J

    .line 38
    iput-object p4, p0, Lcom/dexcom/cgm/test/api/model/database_records/SensorSessionRecord;->m_transmitterID:Ljava/lang/String;

    .line 39
    iput-wide p5, p0, Lcom/dexcom/cgm/test/api/model/database_records/SensorSessionRecord;->m_systemTimeStamp:J

    .line 40
    iput-wide p7, p0, Lcom/dexcom/cgm/test/api/model/database_records/SensorSessionRecord;->m_transmitterTimeStamp:J

    .line 41
    iput-wide p9, p0, Lcom/dexcom/cgm/test/api/model/database_records/SensorSessionRecord;->m_transmitterSessionStartTime:J

    .line 42
    iput-object p11, p0, Lcom/dexcom/cgm/test/api/model/database_records/SensorSessionRecord;->m_logType:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    .line 43
    return-void
.end method


# virtual methods
.method public getLogType()Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/SensorSessionRecord;->m_logType:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    return-object v0
.end method

.method public getRecordID()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/SensorSessionRecord;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRecordedTimeStamp()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/SensorSessionRecord;->m_recordedTimeStamp:J

    return-wide v0
.end method

.method public getSystemTimeStamp()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/SensorSessionRecord;->m_systemTimeStamp:J

    return-wide v0
.end method

.method public getTransmitterID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/SensorSessionRecord;->m_transmitterID:Ljava/lang/String;

    return-object v0
.end method

.method public getTransmitterSessionStartTime()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/SensorSessionRecord;->m_transmitterSessionStartTime:J

    return-wide v0
.end method

.method public getTransmitterTimeStamp()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/SensorSessionRecord;->m_transmitterTimeStamp:J

    return-wide v0
.end method
