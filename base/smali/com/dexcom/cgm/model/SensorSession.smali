.class public Lcom/dexcom/cgm/model/SensorSession;
.super Ljava/lang/Object;
.source "SensorSession.java"


# annotations
.annotation runtime Lcom/dexcom/cgm/model/DatabaseTable;
.end annotation


# static fields
.field public static final SessionStoppedSignature:J = 0xffffffffL


# instance fields
.field private m_logType:Lcom/dexcom/cgm/model/enums/SessionLogType;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "log_type"
    .end annotation
.end field

.field private m_recordID:Ljava/lang/Integer;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "record_id"
    .end annotation

    .annotation runtime Lcom/dexcom/cgm/model/DatabasePrimaryKey;
    .end annotation
.end field

.field private m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "recorded_time_stamp"
    .end annotation
.end field

.field private m_systemTimeStamp:Lcom/dexcom/cgm/k/j;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "system_time_stamp"
    .end annotation
.end field

.field private m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "transmitter_id"
    .end annotation
.end field

.field private m_transmitterSessionStartTime:J
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "transmitter_session_start_time"
    .end annotation
.end field

.field private m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;
    .annotation runtime Lcom/dexcom/cgm/model/DatabaseColumn;
        value = "transmitter_time_stamp"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/enums/SessionLogType;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    .line 87
    iput-object p2, p0, Lcom/dexcom/cgm/model/SensorSession;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 88
    sget-object v0, Lcom/dexcom/cgm/k/n;->Unknown:Lcom/dexcom/cgm/k/n;

    iput-object v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    .line 89
    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterSessionStartTime:J

    .line 90
    iput-object p3, p0, Lcom/dexcom/cgm/model/SensorSession;->m_logType:Lcom/dexcom/cgm/model/enums/SessionLogType;

    .line 91
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/SessionLogType;)V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    .line 74
    invoke-virtual {p2}, Lcom/dexcom/cgm/k/m;->getSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 75
    invoke-virtual {p2}, Lcom/dexcom/cgm/k/m;->getTransmitterTime()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    .line 76
    invoke-virtual {p3}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterSessionStartTime:J

    .line 77
    iput-object p4, p0, Lcom/dexcom/cgm/model/SensorSession;->m_logType:Lcom/dexcom/cgm/model/enums/SessionLogType;

    .line 78
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    .line 79
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    if-ne p0, p1, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 196
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 198
    :cond_3
    check-cast p1, Lcom/dexcom/cgm/model/SensorSession;

    .line 200
    iget-wide v2, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterSessionStartTime:J

    iget-wide v4, p1, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterSessionStartTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 201
    :cond_4
    iget-object v2, p0, Lcom/dexcom/cgm/model/SensorSession;->m_logType:Lcom/dexcom/cgm/model/enums/SessionLogType;

    iget-object v3, p1, Lcom/dexcom/cgm/model/SensorSession;->m_logType:Lcom/dexcom/cgm/model/enums/SessionLogType;

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 202
    :cond_5
    iget-object v2, p0, Lcom/dexcom/cgm/model/SensorSession;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/dexcom/cgm/model/SensorSession;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    iget-object v3, p1, Lcom/dexcom/cgm/model/SensorSession;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/k/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v0, v1

    .line 204
    goto :goto_0

    .line 202
    :cond_7
    iget-object v2, p1, Lcom/dexcom/cgm/model/SensorSession;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    if-nez v2, :cond_6

    .line 205
    :cond_8
    iget-object v2, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    iget-object v3, p1, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/model/TransmitterId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move v0, v1

    .line 207
    goto :goto_0

    .line 205
    :cond_a
    iget-object v2, p1, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    if-nez v2, :cond_9

    .line 208
    :cond_b
    iget-object v2, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    iget-object v3, p1, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/k/n;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 210
    goto :goto_0

    .line 208
    :cond_c
    iget-object v2, p1, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getLogType()Lcom/dexcom/cgm/model/enums/SessionLogType;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_logType:Lcom/dexcom/cgm/model/enums/SessionLogType;

    return-object v0
.end method

.method public getRecordID()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRecordedSystemTime()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getSessionSignature()J
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterSessionStartTime:J

    return-wide v0
.end method

.method public getSessionSignatureAsSyncTime()Lcom/dexcom/cgm/k/m;
    .locals 4

    .prologue
    .line 186
    new-instance v0, Lcom/dexcom/cgm/k/m;

    iget-object v1, p0, Lcom/dexcom/cgm/model/SensorSession;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    iget-object v2, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/k/m;-><init>(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;)V

    .line 187
    new-instance v1, Lcom/dexcom/cgm/k/n;

    iget-wide v2, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterSessionStartTime:J

    invoke-direct {v1, v2, v3}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    invoke-static {v0, v1}, Lcom/dexcom/cgm/k/m;->create(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/k/m;

    move-result-object v0

    .line 189
    return-object v0
.end method

.method public getSystemTimeStamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public getTransmitterID()Lcom/dexcom/cgm/model/TransmitterId;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    return-object v0
.end method

.method public getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterId;->hashCode()I

    move-result v0

    .line 219
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 220
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    .line 221
    invoke-virtual {v0}, Lcom/dexcom/cgm/k/n;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 222
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterSessionStartTime:J

    iget-wide v4, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterSessionStartTime:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 223
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dexcom/cgm/model/SensorSession;->m_logType:Lcom/dexcom/cgm/model/enums/SessionLogType;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/dexcom/cgm/model/SensorSession;->m_logType:Lcom/dexcom/cgm/model/enums/SessionLogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/SessionLogType;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 224
    return v0

    :cond_1
    move v0, v1

    .line 218
    goto :goto_0

    :cond_2
    move v0, v1

    .line 219
    goto :goto_1

    :cond_3
    move v0, v1

    .line 221
    goto :goto_2
.end method

.method public isSessionStarted()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 95
    .line 96
    sget-object v1, Lcom/dexcom/cgm/model/SensorSession$1;->$SwitchMap$com$dexcom$cgm$model$enums$SessionLogType:[I

    iget-object v2, p0, Lcom/dexcom/cgm/model/SensorSession;->m_logType:Lcom/dexcom/cgm/model/enums/SessionLogType;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/enums/SessionLogType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 118
    :goto_0
    :pswitch_0
    return v0

    .line 104
    :pswitch_1
    const/4 v0, 0x1

    .line 105
    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SensorSession{m_transmitterID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterID:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_systemTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/SensorSession;->m_systemTimeStamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_transmitterTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterTimeStamp:Lcom/dexcom/cgm/k/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_transmitterSessionStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dexcom/cgm/model/SensorSession;->m_transmitterSessionStartTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_logType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/SensorSession;->m_logType:Lcom/dexcom/cgm/model/enums/SessionLogType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_recordedTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/SensorSession;->m_recordedTimeStamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", m_recordID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/model/SensorSession;->m_recordID:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
