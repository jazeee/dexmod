.class public Lcom/dexcom/cgm/test/api/model/database_records/UserEventRecord;
.super Ljava/lang/Object;
.source "UserEventRecord.java"


# instance fields
.field private m_eventSubType:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

.field private m_eventTime:J

.field private m_eventType:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

.field private m_eventValue:I

.field private m_recordID:Ljava/lang/Integer;

.field private m_recordedTimeStamp:J


# direct methods
.method public constructor <init>(IJLcom/dexcom/cgm/test/api/model/enums/TestUserEventType;Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;JI)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserEventRecord;->m_recordID:Ljava/lang/Integer;

    .line 35
    iput-wide p2, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserEventRecord;->m_recordedTimeStamp:J

    .line 36
    iput-object p4, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserEventRecord;->m_eventType:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

    .line 37
    iput-object p5, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserEventRecord;->m_eventSubType:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    .line 38
    iput-wide p6, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserEventRecord;->m_eventTime:J

    .line 39
    iput p8, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserEventRecord;->m_eventValue:I

    .line 40
    return-void
.end method


# virtual methods
.method public getEventSubType()Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserEventRecord;->m_eventSubType:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    return-object v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserEventRecord;->m_eventTime:J

    return-wide v0
.end method

.method public getEventType()Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserEventRecord;->m_eventType:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

    return-object v0
.end method

.method public getEventValue()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserEventRecord;->m_eventValue:I

    return v0
.end method

.method public getRecordID()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserEventRecord;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRecordedTimeStamp()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserEventRecord;->m_recordedTimeStamp:J

    return-wide v0
.end method
