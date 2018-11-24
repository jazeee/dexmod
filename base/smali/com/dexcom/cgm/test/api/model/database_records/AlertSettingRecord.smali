.class public Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;
.super Ljava/lang/Object;
.source "AlertSettingRecord.java"


# instance fields
.field private m_alertScheduleIndex:I

.field private m_alertSound:Lcom/dexcom/cgm/test/api/model/enums/TestAlertSound;

.field private m_alertType:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field private m_isDaytimeAlert:Z

.field private m_isEnabled:Z

.field private m_recordedTimeStamp:J

.field private m_repeatTime:I

.field private m_threshold:I


# direct methods
.method public constructor <init>(JLcom/dexcom/cgm/test/api/model/enums/TestAlertType;ZIIZLcom/dexcom/cgm/test/api/model/enums/TestAlertSound;I)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_recordedTimeStamp:J

    .line 42
    iput-object p3, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_alertType:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 43
    iput-boolean p4, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_isDaytimeAlert:Z

    .line 44
    iput p5, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_threshold:I

    .line 45
    iput p6, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_repeatTime:I

    .line 46
    iput-boolean p7, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_isEnabled:Z

    .line 47
    iput-object p8, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_alertSound:Lcom/dexcom/cgm/test/api/model/enums/TestAlertSound;

    .line 48
    iput p9, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_alertScheduleIndex:I

    .line 49
    return-void
.end method


# virtual methods
.method public getAlertScheduleIndex()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_alertScheduleIndex:I

    return v0
.end method

.method public getAlertSound()Lcom/dexcom/cgm/test/api/model/enums/TestAlertSound;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_alertSound:Lcom/dexcom/cgm/test/api/model/enums/TestAlertSound;

    return-object v0
.end method

.method public getAlertType()Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_alertType:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    return-object v0
.end method

.method public getRecordedTimeStamp()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_recordedTimeStamp:J

    return-wide v0
.end method

.method public getRepeatTime()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_repeatTime:I

    return v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_threshold:I

    return v0
.end method

.method public isDaytimeAlert()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_isDaytimeAlert:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_isEnabled:Z

    return v0
.end method

.method public modifyEnabled(Z)Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;
    .locals 11

    .prologue
    .line 114
    new-instance v1, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;

    iget-wide v2, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_recordedTimeStamp:J

    iget-object v4, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_alertType:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    iget-boolean v5, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_isDaytimeAlert:Z

    iget v6, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_threshold:I

    iget v7, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_repeatTime:I

    iget-object v9, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_alertSound:Lcom/dexcom/cgm/test/api/model/enums/TestAlertSound;

    iget v10, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_alertScheduleIndex:I

    move v8, p1

    invoke-direct/range {v1 .. v10}, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;-><init>(JLcom/dexcom/cgm/test/api/model/enums/TestAlertType;ZIIZLcom/dexcom/cgm/test/api/model/enums/TestAlertSound;I)V

    return-object v1
.end method

.method public modifyRepeatTime(I)Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;
    .locals 11

    .prologue
    .line 102
    new-instance v1, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;

    iget-wide v2, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_recordedTimeStamp:J

    iget-object v4, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_alertType:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    iget-boolean v5, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_isDaytimeAlert:Z

    iget v6, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_threshold:I

    iget-boolean v8, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_isEnabled:Z

    iget-object v9, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_alertSound:Lcom/dexcom/cgm/test/api/model/enums/TestAlertSound;

    iget v10, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_alertScheduleIndex:I

    move v7, p1

    invoke-direct/range {v1 .. v10}, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;-><init>(JLcom/dexcom/cgm/test/api/model/enums/TestAlertType;ZIIZLcom/dexcom/cgm/test/api/model/enums/TestAlertSound;I)V

    return-object v1
.end method

.method public modifySound(Lcom/dexcom/cgm/test/api/model/enums/TestAlertSound;)Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;
    .locals 11

    .prologue
    .line 126
    new-instance v1, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;

    iget-wide v2, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_recordedTimeStamp:J

    iget-object v4, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_alertType:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    iget-boolean v5, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_isDaytimeAlert:Z

    iget v6, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_threshold:I

    iget v7, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_repeatTime:I

    iget-boolean v8, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_isEnabled:Z

    iget v10, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_alertScheduleIndex:I

    move-object v9, p1

    invoke-direct/range {v1 .. v10}, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;-><init>(JLcom/dexcom/cgm/test/api/model/enums/TestAlertType;ZIIZLcom/dexcom/cgm/test/api/model/enums/TestAlertSound;I)V

    return-object v1
.end method

.method public modifyThreshold(I)Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;
    .locals 11

    .prologue
    .line 90
    new-instance v1, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;

    iget-wide v2, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_recordedTimeStamp:J

    iget-object v4, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_alertType:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    iget-boolean v5, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_isDaytimeAlert:Z

    iget v7, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_repeatTime:I

    iget-boolean v8, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_isEnabled:Z

    iget-object v9, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_alertSound:Lcom/dexcom/cgm/test/api/model/enums/TestAlertSound;

    iget v10, p0, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;->m_alertScheduleIndex:I

    move v6, p1

    invoke-direct/range {v1 .. v10}, Lcom/dexcom/cgm/test/api/model/database_records/AlertSettingRecord;-><init>(JLcom/dexcom/cgm/test/api/model/enums/TestAlertType;ZIIZLcom/dexcom/cgm/test/api/model/enums/TestAlertSound;I)V

    return-object v1
.end method
