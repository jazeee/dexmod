.class public Lcom/dexcom/cgm/test/api/model/database_records/TestAlertStateRecord;
.super Ljava/lang/Object;
.source "TestAlertStateRecord.java"


# instance fields
.field private m_alertDisplayCount:I

.field private m_alertState:Lcom/dexcom/cgm/test/api/model/enums/TestAlertState;

.field private m_alertType:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field private m_recordID:Ljava/lang/Integer;

.field private m_recordedTimeStamp:J

.field private m_triggerTime:J


# direct methods
.method public constructor <init>(IJLcom/dexcom/cgm/test/api/model/enums/TestAlertType;Lcom/dexcom/cgm/test/api/model/enums/TestAlertState;JI)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/TestAlertStateRecord;->m_recordID:Ljava/lang/Integer;

    .line 35
    iput-wide p2, p0, Lcom/dexcom/cgm/test/api/model/database_records/TestAlertStateRecord;->m_recordedTimeStamp:J

    .line 36
    iput-object p4, p0, Lcom/dexcom/cgm/test/api/model/database_records/TestAlertStateRecord;->m_alertType:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 37
    iput-object p5, p0, Lcom/dexcom/cgm/test/api/model/database_records/TestAlertStateRecord;->m_alertState:Lcom/dexcom/cgm/test/api/model/enums/TestAlertState;

    .line 38
    iput-wide p6, p0, Lcom/dexcom/cgm/test/api/model/database_records/TestAlertStateRecord;->m_triggerTime:J

    .line 39
    iput p8, p0, Lcom/dexcom/cgm/test/api/model/database_records/TestAlertStateRecord;->m_alertDisplayCount:I

    .line 40
    return-void
.end method


# virtual methods
.method public getAlertDisplayCount()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/TestAlertStateRecord;->m_alertDisplayCount:I

    return v0
.end method

.method public getAlertState()Lcom/dexcom/cgm/test/api/model/enums/TestAlertState;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/TestAlertStateRecord;->m_alertState:Lcom/dexcom/cgm/test/api/model/enums/TestAlertState;

    return-object v0
.end method

.method public getAlertType()Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/TestAlertStateRecord;->m_alertType:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    return-object v0
.end method

.method public getRecordID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/TestAlertStateRecord;->m_recordID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRecordedTimeStamp()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/TestAlertStateRecord;->m_recordedTimeStamp:J

    return-wide v0
.end method

.method public getTriggerTime()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/TestAlertStateRecord;->m_triggerTime:J

    return-wide v0
.end method
