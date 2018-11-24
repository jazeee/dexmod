.class public Lcom/dexcom/cgm/model/CgmCommand;
.super Ljava/lang/Object;
.source "CgmCommand.java"


# annotations
.annotation runtime Lcom/dexcom/cgm/model/DatabaseTable;
.end annotation


# instance fields
.field private m_bg:I
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "bg"
    .end annotation
.end field

.field private m_commandType:Lcom/dexcom/cgm/model/CgmCommand$CommandType;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "command_type"
    .end annotation
.end field

.field private m_recordID:Ljava/lang/Integer;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "record_id"
    .end annotation

    .annotation runtime Lcom/dexcom/cgm/model/DatabasePrimaryKey;
    .end annotation
.end field

.field private m_state:Lcom/dexcom/cgm/model/CgmCommand$CommandState;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "command_state"
    .end annotation
.end field

.field private m_timestamp:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "system_time_stamp"
    .end annotation
.end field

.field private m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "transmitter_id"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public static createCalibrateCommand(Lcom/dexcom/cgm/k/j;ILcom/dexcom/cgm/model/CgmCommand$CommandState;Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/model/CgmCommand;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lcom/dexcom/cgm/model/CgmCommand;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/CgmCommand;-><init>()V

    .line 141
    sget-object v1, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->Calibrate:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    iput-object v1, v0, Lcom/dexcom/cgm/model/CgmCommand;->m_commandType:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    .line 142
    iput-object p0, v0, Lcom/dexcom/cgm/model/CgmCommand;->m_timestamp:Lcom/dexcom/cgm/k/j;

    .line 143
    iput p1, v0, Lcom/dexcom/cgm/model/CgmCommand;->m_bg:I

    .line 144
    iput-object p2, v0, Lcom/dexcom/cgm/model/CgmCommand;->m_state:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    .line 145
    iput-object p3, v0, Lcom/dexcom/cgm/model/CgmCommand;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 146
    return-object v0
.end method

.method public static createCompletedCommand(Lcom/dexcom/cgm/model/CgmCommand;Lcom/dexcom/cgm/model/CgmCommand$CommandState;)Lcom/dexcom/cgm/model/CgmCommand;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Lcom/dexcom/cgm/model/CgmCommand;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/CgmCommand;-><init>()V

    .line 100
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/CgmCommand;->getBg()I

    move-result v1

    iput v1, v0, Lcom/dexcom/cgm/model/CgmCommand;->m_bg:I

    .line 101
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v1

    iput-object v1, v0, Lcom/dexcom/cgm/model/CgmCommand;->m_commandType:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    .line 102
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/CgmCommand;->getTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    iput-object v1, v0, Lcom/dexcom/cgm/model/CgmCommand;->m_timestamp:Lcom/dexcom/cgm/k/j;

    .line 103
    iput-object p1, v0, Lcom/dexcom/cgm/model/CgmCommand;->m_state:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    .line 104
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/CgmCommand;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    iput-object v1, v0, Lcom/dexcom/cgm/model/CgmCommand;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 105
    return-object v0
.end method

.method public static createStartCommand(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/CgmCommand$CommandState;Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/model/CgmCommand;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/dexcom/cgm/model/CgmCommand;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/CgmCommand;-><init>()V

    .line 114
    sget-object v1, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StartSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    iput-object v1, v0, Lcom/dexcom/cgm/model/CgmCommand;->m_commandType:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    .line 115
    iput-object p0, v0, Lcom/dexcom/cgm/model/CgmCommand;->m_timestamp:Lcom/dexcom/cgm/k/j;

    .line 116
    iput-object p1, v0, Lcom/dexcom/cgm/model/CgmCommand;->m_state:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    .line 117
    iput-object p2, v0, Lcom/dexcom/cgm/model/CgmCommand;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 118
    return-object v0
.end method

.method public static createStopCommand(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/CgmCommand$CommandState;Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/model/CgmCommand;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcom/dexcom/cgm/model/CgmCommand;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/CgmCommand;-><init>()V

    .line 127
    sget-object v1, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StopSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    iput-object v1, v0, Lcom/dexcom/cgm/model/CgmCommand;->m_commandType:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    .line 128
    iput-object p0, v0, Lcom/dexcom/cgm/model/CgmCommand;->m_timestamp:Lcom/dexcom/cgm/k/j;

    .line 129
    iput-object p1, v0, Lcom/dexcom/cgm/model/CgmCommand;->m_state:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    .line 130
    iput-object p2, v0, Lcom/dexcom/cgm/model/CgmCommand;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 131
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 152
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 160
    check-cast p1, Lcom/dexcom/cgm/model/CgmCommand;

    .line 161
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/CgmCommand;->getTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/CgmCommand;->getTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 163
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/CgmCommand;->getState()Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/CgmCommand;->getState()Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/CgmCommand;->getBg()I

    move-result v1

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/CgmCommand;->getBg()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 165
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/CgmCommand;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/CgmCommand;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/model/TransmitterId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBg()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/dexcom/cgm/model/CgmCommand;->m_bg:I

    return v0
.end method

.method public getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dexcom/cgm/model/CgmCommand;->m_commandType:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    return-object v0
.end method

.method public getRecordID()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dexcom/cgm/model/CgmCommand;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/dexcom/cgm/model/CgmCommand$CommandState;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dexcom/cgm/model/CgmCommand;->m_state:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    return-object v0
.end method

.method public getTimestamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dexcom/cgm/model/CgmCommand;->m_timestamp:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dexcom/cgm/model/CgmCommand;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dexcom/cgm/model/CgmCommand;->m_timestamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CgmCommand{m_recordID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/model/CgmCommand;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_commandType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/CgmCommand;->m_commandType:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/CgmCommand;->m_timestamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_bg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/model/CgmCommand;->m_bg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_transmitterId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/CgmCommand;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/CgmCommand;->m_state:Lcom/dexcom/cgm/model/CgmCommand$CommandState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
