.class public Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;
.super Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostTransmittedRecord;
.source "DataPostGlucoseRecord.java"


# instance fields
.field private GlucoseDisplayTime:Ljava/lang/String;

.field private GlucoseSystemTime:Ljava/lang/String;

.field private InternalStatus:I

.field private IsBackfilled:Z

.field private SessionStartTime:J

.field private Status:Ljava/lang/String;

.field private TrendArrow:Ljava/lang/String;

.field private TrendRate:D

.field private Value:I


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/Glucose;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/DataPostTransmittedRecord;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getRecordedTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;->setRecordedTime(J)V

    .line 40
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;->setGlucoseTime(J)V

    .line 42
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getTransmitterID()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;->TransmitterId:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getTrendRate()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;->TrendRate:D

    .line 44
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;->setTransmitterTime(J)V

    .line 46
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->wasBackfilled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;->IsBackfilled:Z

    .line 47
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;->calculateStatus(Lcom/dexcom/cgm/model/Glucose;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;->Status:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getAlgorithmState()Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/AlgorithmState;->getValue()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;->InternalStatus:I

    .line 49
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getTrendArrow()Lcom/dexcom/cgm/model/enums/TrendArrow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/TrendArrow;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;->TrendArrow:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getSessionStartTime()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;->SessionStartTime:J

    .line 52
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getGlucoseValue()I

    move-result v0

    iput v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;->Value:I

    .line 53
    iget v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;->Value:I

    const/16 v1, 0x27

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;->Value:I

    const/16 v1, 0x191

    if-le v0, v1, :cond_1

    .line 56
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;->Value:I

    .line 58
    :cond_1
    return-void
.end method

.method private calculateStatus(Lcom/dexcom/cgm/model/Glucose;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getGlucoseValue()I

    move-result v0

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    .line 70
    const-string v0, "Low"

    .line 80
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getGlucoseValue()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    .line 72
    const-string v0, "High"

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getAlgorithmState()Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SensorWarmup:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-ne v0, v1, :cond_2

    .line 74
    const-string v0, "SensorWarmUp"

    goto :goto_0

    .line 75
    :cond_2
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;->wasEGVOutOfCal(Lcom/dexcom/cgm/model/Glucose;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    const-string v0, "OutOfCalibration"

    goto :goto_0

    .line 77
    :cond_3
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;->wasEGVInSensorNoise(Lcom/dexcom/cgm/model/Glucose;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 78
    const-string v0, "SensorNoise"

    goto :goto_0

    .line 80
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setGlucoseTime(J)V
    .locals 1

    .prologue
    .line 62
    invoke-static {p1, p2}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getZuluISO8601DateFromUnixTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;->GlucoseSystemTime:Ljava/lang/String;

    .line 63
    invoke-static {p1, p2}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getLocalISO8601DateFromUnixTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord;->GlucoseDisplayTime:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private wasEGVInSensorNoise(Lcom/dexcom/cgm/model/Glucose;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 103
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getAlgorithmState()Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->TemporarySensorFailure:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-ne v1, v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getGlucoseValue()I

    move-result v1

    const/16 v2, 0x27

    if-lt v1, v2, :cond_0

    .line 109
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private wasEGVOutOfCal(Lcom/dexcom/cgm/model/Glucose;)Z
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/records/public_data/DataPostGlucoseRecord$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlgorithmState:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Glucose;->getAlgorithmState()Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlgorithmState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 96
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 94
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
