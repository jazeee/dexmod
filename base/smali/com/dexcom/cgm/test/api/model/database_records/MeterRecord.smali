.class public Lcom/dexcom/cgm/test/api/model/database_records/MeterRecord;
.super Ljava/lang/Object;
.source "MeterRecord.java"


# instance fields
.field private m_meterEntryType:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field private m_meterValue:I

.field private m_recordID:I

.field private m_recordedTimeStamp:J

.field private m_systemTimeStamp:J

.field private m_transmitterID:Ljava/lang/String;

.field private m_transmitterTimeStamp:J


# direct methods
.method public constructor <init>(IJILcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;JJLjava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/dexcom/cgm/test/api/model/database_records/MeterRecord;->m_recordID:I

    .line 37
    iput-wide p2, p0, Lcom/dexcom/cgm/test/api/model/database_records/MeterRecord;->m_recordedTimeStamp:J

    .line 38
    iput p4, p0, Lcom/dexcom/cgm/test/api/model/database_records/MeterRecord;->m_meterValue:I

    .line 39
    iput-object p5, p0, Lcom/dexcom/cgm/test/api/model/database_records/MeterRecord;->m_meterEntryType:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 40
    iput-wide p6, p0, Lcom/dexcom/cgm/test/api/model/database_records/MeterRecord;->m_systemTimeStamp:J

    .line 41
    iput-wide p8, p0, Lcom/dexcom/cgm/test/api/model/database_records/MeterRecord;->m_transmitterTimeStamp:J

    .line 42
    iput-object p10, p0, Lcom/dexcom/cgm/test/api/model/database_records/MeterRecord;->m_transmitterID:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getMeterEntryType()Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/MeterRecord;->m_meterEntryType:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    return-object v0
.end method

.method public getMeterValue()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/MeterRecord;->m_meterValue:I

    return v0
.end method

.method public getRecordID()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/MeterRecord;->m_recordID:I

    return v0
.end method

.method public getRecordedTimeStamp()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/MeterRecord;->m_recordedTimeStamp:J

    return-wide v0
.end method

.method public getSystemTimeStamp()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/MeterRecord;->m_systemTimeStamp:J

    return-wide v0
.end method

.method public getTransmitterID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/MeterRecord;->m_transmitterID:Ljava/lang/String;

    return-object v0
.end method

.method public getTransmitterTimeStamp()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/MeterRecord;->m_transmitterTimeStamp:J

    return-wide v0
.end method
