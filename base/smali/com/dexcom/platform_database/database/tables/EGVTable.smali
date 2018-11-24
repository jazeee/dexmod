.class public Lcom/dexcom/platform_database/database/tables/EGVTable;
.super Lcom/dexcom/platform_database/database/tables/BaseTable;
.source "EGVTable.java"

# interfaces
.implements Lcom/dexcom/cgm/e/k;


# static fields
.field private static COLUMN_ALGORITHM_STATE:Ljava/lang/String;

.field private static COLUMN_RECORD_SYSTEM_TIME_STAMP:Ljava/lang/String;

.field private static COLUMN_SYSTEM_TIME_STAMP:Ljava/lang/String;

.field private static final m_inSessionQueryString:Ljava/lang/String;

.field private static final m_inSessionStates:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "system_time_stamp"

    sput-object v0, Lcom/dexcom/platform_database/database/tables/EGVTable;->COLUMN_SYSTEM_TIME_STAMP:Ljava/lang/String;

    .line 27
    const-string v0, "recorded_time_stamp"

    sput-object v0, Lcom/dexcom/platform_database/database/tables/EGVTable;->COLUMN_RECORD_SYSTEM_TIME_STAMP:Ljava/lang/String;

    .line 112
    const-string v0, "algorithm_state"

    sput-object v0, Lcom/dexcom/platform_database/database/tables/EGVTable;->COLUMN_ALGORITHM_STATE:Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/dexcom/platform_database/database/tables/EGVTable;->getQueryString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dexcom/platform_database/database/tables/EGVTable;->m_inSessionQueryString:Ljava/lang/String;

    .line 155
    invoke-static {}, Lcom/dexcom/platform_database/database/tables/EGVTable;->getInSessionStates()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dexcom/platform_database/database/tables/EGVTable;->m_inSessionStates:[Ljava/lang/String;

    .line 156
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    const-class v0, Lcom/dexcom/cgm/model/Glucose;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/BaseTable;-><init>(Ljava/lang/Class;Z)V

    .line 24
    return-void
.end method

.method private static getInSessionStates()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->InCalibration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalibrationRequest:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalibrationError0:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalibrationError1:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalibrationLinearityFitFailure:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SensorFailedDueToCountsAberration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SensorFailedDueToResidualAberration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->OutOfCalDueToOutlier:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->OutlierCalibrationRequest:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionExpired:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionFailedDueToUnrecoverableError:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionFailedDueToTransmitterError:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->TemporarySensorFailure:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_InCalTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_InCalDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_HighWedgeTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LowWedgeTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LinearityFitTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_OutOfCalDueToOutlierTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_HighWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LowWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LinearityFitDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 186
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlgorithmState;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 189
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static getQueryString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/dexcom/platform_database/database/tables/EGVTable;->COLUMN_ALGORITHM_STATE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " IN ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {}, Lcom/dexcom/platform_database/database/tables/EGVTable;->getInSessionStates()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v2, v1

    .line 133
    :goto_0
    if-ge v2, v3, :cond_2

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 137
    add-int/lit8 v0, v3, -0x1

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    .line 138
    :goto_1
    if-nez v0, :cond_1

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 137
    goto :goto_1

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 148
    :cond_2
    return-object v0
.end method

.method private getTimeColumn(Lcom/dexcom/cgm/e/l;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    sget-object v0, Lcom/dexcom/platform_database/database/tables/EGVTable$1;->$SwitchMap$com$dexcom$cgm$database$EGVDatabaseOperations$GlucoseTimeType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/e/l;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown time type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :pswitch_0
    const-string v0, "recorded_time_stamp"

    .line 87
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/dexcom/platform_database/database/tables/EGVTable;->COLUMN_SYSTEM_TIME_STAMP:Ljava/lang/String;

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isDuplicateRecord(Lcom/dexcom/cgm/model/Glucose;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->isDisplayOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    const-string v2, "transmitter_time_stamp = ? AND transmitter_id = ?"

    .line 55
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getTransmitterID()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 56
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/dexcom/platform_database/database/tables/EGVTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 57
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public createEGVRecord(Lcom/dexcom/cgm/model/Glucose;)V
    .locals 0

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/dexcom/platform_database/database/tables/EGVTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    .line 33
    return-void
.end method

.method public createEGVRecords(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Glucose;

    .line 40
    invoke-direct {p0, v0}, Lcom/dexcom/platform_database/database/tables/EGVTable;->isDuplicateRecord(Lcom/dexcom/cgm/model/Glucose;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/EGVTable;->createOrUpdateRecord(Ljava/lang/Object;)J

    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method public hasCompletedSensorWarmUpAtLeastOnce()Z
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/dexcom/platform_database/database/tables/EGVTable;->m_inSessionQueryString:Ljava/lang/String;

    sget-object v1, Lcom/dexcom/platform_database/database/tables/EGVTable;->m_inSessionStates:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/platform_database/database/tables/EGVTable;->countRecords(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 118
    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readEGVRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/e/l;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/e/l;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/dexcom/platform_database/database/tables/EGVTable;->COLUMN_SYSTEM_TIME_STAMP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 73
    invoke-direct {p0, p3}, Lcom/dexcom/platform_database/database/tables/EGVTable;->getTimeColumn(Lcom/dexcom/cgm/e/l;)Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {p1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 75
    invoke-virtual {p2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    move-object v0, p0

    .line 72
    invoke-virtual/range {v0 .. v6}, Lcom/dexcom/platform_database/database/tables/EGVTable;->readRecordsBasedOnTime(Ljava/lang/String;JJLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 77
    return-object v0
.end method

.method public readEGVRecordsWithSequenceNumber(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/model/TransmitterId;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-virtual {p1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-gez v0, :cond_0

    move v2, v3

    .line 98
    :goto_0
    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 101
    :goto_1
    if-eqz v2, :cond_2

    .line 102
    invoke-virtual {p2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/dexcom/platform_database/database/tables/EGVTable;->COLUMN_SYSTEM_TIME_STAMP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " >= ? AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/dexcom/platform_database/database/tables/EGVTable;->COLUMN_SYSTEM_TIME_STAMP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " <= ? AND transmitter_id = ? AND sequence_number != 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v4

    aput-object v0, v6, v3

    const/4 v0, 0x2

    invoke-virtual {p3}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "sequence_number"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    const-string v0, " ASC"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v5, v6, v0, p4}, Lcom/dexcom/platform_database/database/tables/EGVTable;->readRecords(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    move v2, v4

    .line 96
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {p1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 107
    :cond_3
    const-string v0, " DESC"

    goto :goto_3
.end method

.method public readLatestEGVRecord()Lcom/dexcom/cgm/model/Glucose;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/dexcom/platform_database/database/tables/EGVTable;->COLUMN_SYSTEM_TIME_STAMP:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/dexcom/platform_database/database/tables/EGVTable;->readTopRecord(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Glucose;

    return-object v0
.end method
