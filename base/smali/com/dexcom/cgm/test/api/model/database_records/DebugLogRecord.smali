.class public Lcom/dexcom/cgm/test/api/model/database_records/DebugLogRecord;
.super Ljava/lang/Object;
.source "DebugLogRecord.java"


# instance fields
.field private m_message:Ljava/lang/String;

.field private m_recordID:Ljava/lang/Integer;

.field private m_recordedTimeStamp:J

.field private m_tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/DebugLogRecord;->m_recordID:Ljava/lang/Integer;

    .line 26
    iput-wide p2, p0, Lcom/dexcom/cgm/test/api/model/database_records/DebugLogRecord;->m_recordedTimeStamp:J

    .line 27
    iput-object p4, p0, Lcom/dexcom/cgm/test/api/model/database_records/DebugLogRecord;->m_message:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/dexcom/cgm/test/api/model/database_records/DebugLogRecord;->m_tag:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/DebugLogRecord;->m_message:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordID()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/DebugLogRecord;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRecordedTimeStamp()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/DebugLogRecord;->m_recordedTimeStamp:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/DebugLogRecord;->m_tag:Ljava/lang/String;

    return-object v0
.end method
