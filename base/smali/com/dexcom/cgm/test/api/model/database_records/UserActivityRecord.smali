.class public Lcom/dexcom/cgm/test/api/model/database_records/UserActivityRecord;
.super Ljava/lang/Object;
.source "UserActivityRecord.java"


# instance fields
.field private m_activitySubType:Ljava/lang/String;

.field private m_activityType:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field private m_data:Ljava/lang/String;

.field private m_recordID:Ljava/lang/Integer;

.field private m_recordedTimeStamp:J


# direct methods
.method public constructor <init>(IJLcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserActivityRecord;->m_recordID:Ljava/lang/Integer;

    .line 31
    iput-wide p2, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserActivityRecord;->m_recordedTimeStamp:J

    .line 32
    iput-object p4, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserActivityRecord;->m_activityType:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 33
    iput-object p5, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserActivityRecord;->m_activitySubType:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserActivityRecord;->m_data:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getActivitySubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserActivityRecord;->m_activitySubType:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityType()Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserActivityRecord;->m_activityType:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserActivityRecord;->m_data:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordID()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserActivityRecord;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRecordedTimeStamp()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/UserActivityRecord;->m_recordedTimeStamp:J

    return-wide v0
.end method
