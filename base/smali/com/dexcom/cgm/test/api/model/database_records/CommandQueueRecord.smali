.class public Lcom/dexcom/cgm/test/api/model/database_records/CommandQueueRecord;
.super Ljava/lang/Object;
.source "CommandQueueRecord.java"


# instance fields
.field private m_bg:I

.field private m_commandType:Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

.field private m_recordID:Ljava/lang/Integer;

.field private m_state:Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

.field private m_timestamp:J

.field private m_transmitterId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/dexcom/cgm/test/api/model/enums/TestCommandType;JILjava/lang/String;Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/CommandQueueRecord;->m_recordID:Ljava/lang/Integer;

    .line 35
    iput-object p2, p0, Lcom/dexcom/cgm/test/api/model/database_records/CommandQueueRecord;->m_commandType:Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

    .line 36
    iput-wide p3, p0, Lcom/dexcom/cgm/test/api/model/database_records/CommandQueueRecord;->m_timestamp:J

    .line 37
    iput p5, p0, Lcom/dexcom/cgm/test/api/model/database_records/CommandQueueRecord;->m_bg:I

    .line 38
    iput-object p6, p0, Lcom/dexcom/cgm/test/api/model/database_records/CommandQueueRecord;->m_transmitterId:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/dexcom/cgm/test/api/model/database_records/CommandQueueRecord;->m_state:Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

    .line 40
    return-void
.end method


# virtual methods
.method public getBg()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/CommandQueueRecord;->m_bg:I

    return v0
.end method

.method public getCommandType()Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/CommandQueueRecord;->m_commandType:Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

    return-object v0
.end method

.method public getRecordID()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/CommandQueueRecord;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/CommandQueueRecord;->m_state:Lcom/dexcom/cgm/test/api/model/enums/TestCommandState;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/CommandQueueRecord;->m_timestamp:J

    return-wide v0
.end method

.method public getTransmitterId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/model/database_records/CommandQueueRecord;->m_transmitterId:Ljava/lang/String;

    return-object v0
.end method
