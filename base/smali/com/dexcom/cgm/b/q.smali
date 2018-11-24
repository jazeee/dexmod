.class final Lcom/dexcom/cgm/b/q;
.super Ljava/lang/Object;
.source "DisplayStateComputer.java"


# instance fields
.field private a:Lcom/dexcom/cgm/b/w;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/b/w;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/dexcom/cgm/b/q;->a:Lcom/dexcom/cgm/b/w;

    .line 32
    return-void
.end method


# virtual methods
.method final a(Lcom/dexcom/cgm/b/v;ZLcom/dexcom/cgm/model/TransmitterInfo;)Lcom/dexcom/cgm/model/DisplayGlucose;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    if-eqz p2, :cond_0

    .line 1085
    sget-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorNotActive:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v1

    .line 1086
    sget-object v2, Lcom/dexcom/cgm/model/enums/TrendArrow;->NotComputable:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 1087
    sget-object v3, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->TransmitterFailed:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    .line 1088
    new-instance v0, Lcom/dexcom/cgm/model/DisplayGlucose;

    sget-object v4, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/DisplayGlucose;-><init>(ILcom/dexcom/cgm/model/enums/TrendArrow;Lcom/dexcom/cgm/model/enums/EGVDisplayState;Lcom/dexcom/cgm/k/j;)V

    .line 64
    :goto_0
    return-object v0

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/dexcom/cgm/b/q;->a:Lcom/dexcom/cgm/b/w;

    invoke-virtual {v2}, Lcom/dexcom/cgm/b/w;->isSessionStarted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1119
    sget-object v0, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->SensorRemoved:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    .line 1120
    invoke-virtual {p3}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterRemainingTime()Lcom/dexcom/cgm/k/k;

    move-result-object v1

    .line 1121
    invoke-virtual {v1}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v2

    sget-object v1, Lcom/dexcom/cgm/b/j;->StartTimespanForTransmitterFinalEolAlert:Lcom/dexcom/cgm/k/k;

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 1123
    sget-object v0, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->PairNewTransmitter:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    .line 1125
    :cond_1
    sget-object v1, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorNotActive:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v2

    .line 1126
    sget-object v3, Lcom/dexcom/cgm/model/enums/TrendArrow;->NotComputable:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 1127
    new-instance v4, Lcom/dexcom/cgm/k/j;

    const-wide v6, 0xffffffffL

    invoke-direct {v4, v6, v7}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    .line 1128
    new-instance v1, Lcom/dexcom/cgm/model/DisplayGlucose;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/dexcom/cgm/model/DisplayGlucose;-><init>(ILcom/dexcom/cgm/model/enums/TrendArrow;Lcom/dexcom/cgm/model/enums/EGVDisplayState;Lcom/dexcom/cgm/k/j;)V

    move-object v0, v1

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    iget-object v2, p0, Lcom/dexcom/cgm/b/q;->a:Lcom/dexcom/cgm/b/w;

    invoke-virtual {v2}, Lcom/dexcom/cgm/b/w;->isSessionStartedOnlyOnTheReceiver()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 49
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 50
    iget-object v4, p0, Lcom/dexcom/cgm/b/q;->a:Lcom/dexcom/cgm/b/w;

    invoke-virtual {v4}, Lcom/dexcom/cgm/b/w;->getSessionStartTime()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 51
    sget-wide v4, Lcom/dexcom/cgm/b/j;->TimespanForDataGap:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 2110
    sget-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorOutOfCal:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v1

    .line 2111
    sget-object v2, Lcom/dexcom/cgm/model/enums/TrendArrow;->NotComputable:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 2112
    sget-object v3, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->StartUpPeriod:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    .line 2113
    new-instance v0, Lcom/dexcom/cgm/model/DisplayGlucose;

    invoke-virtual {p1}, Lcom/dexcom/cgm/b/v;->getSessionStartTime()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/DisplayGlucose;-><init>(ILcom/dexcom/cgm/model/enums/TrendArrow;Lcom/dexcom/cgm/model/enums/EGVDisplayState;Lcom/dexcom/cgm/k/j;)V

    goto :goto_0

    .line 2133
    :cond_3
    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v2

    .line 2134
    invoke-virtual {p1}, Lcom/dexcom/cgm/b/v;->getLastEgvTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 2135
    sget-wide v4, Lcom/dexcom/cgm/b/j;->TimespanForDataGap:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    move v2, v0

    .line 56
    :goto_1
    if-eqz v2, :cond_5

    .line 3093
    sget-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->NoAntenna:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v1

    .line 3094
    sget-object v2, Lcom/dexcom/cgm/model/enums/TrendArrow;->NotComputable:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 3095
    sget-object v3, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->NoAntenna:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    .line 3096
    new-instance v0, Lcom/dexcom/cgm/model/DisplayGlucose;

    invoke-virtual {p1}, Lcom/dexcom/cgm/b/v;->getSessionStartTime()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/model/DisplayGlucose;-><init>(ILcom/dexcom/cgm/model/enums/TrendArrow;Lcom/dexcom/cgm/model/enums/EGVDisplayState;Lcom/dexcom/cgm/k/j;)V

    goto/16 :goto_0

    :cond_4
    move v2, v1

    .line 2139
    goto :goto_1

    .line 3145
    :cond_5
    invoke-virtual {p1}, Lcom/dexcom/cgm/b/v;->getLastEgvTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 3146
    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v4

    .line 3147
    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 60
    :goto_2
    if-eqz v0, :cond_7

    .line 4101
    invoke-virtual {p1}, Lcom/dexcom/cgm/b/v;->getEgvRecord()Lcom/dexcom/cgm/model/Glucose;

    move-result-object v1

    .line 4102
    new-instance v0, Lcom/dexcom/cgm/model/DisplayGlucose;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Glucose;->getGlucoseValue()I

    move-result v2

    .line 4103
    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Glucose;->getTrendArrow()Lcom/dexcom/cgm/model/enums/TrendArrow;

    move-result-object v1

    sget-object v3, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->TimeLoss:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    .line 4105
    invoke-virtual {p1}, Lcom/dexcom/cgm/b/v;->getSessionStartTime()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/dexcom/cgm/model/DisplayGlucose;-><init>(ILcom/dexcom/cgm/model/enums/TrendArrow;Lcom/dexcom/cgm/model/enums/EGVDisplayState;Lcom/dexcom/cgm/k/j;)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 3147
    goto :goto_2

    .line 4159
    :cond_7
    invoke-virtual {p1}, Lcom/dexcom/cgm/b/v;->getLocalEgv()I

    move-result v2

    .line 4160
    invoke-virtual {p1}, Lcom/dexcom/cgm/b/v;->getLocalTrendArrow()Lcom/dexcom/cgm/model/enums/TrendArrow;

    move-result-object v3

    .line 4174
    invoke-virtual {p1}, Lcom/dexcom/cgm/b/v;->isCountsAberrant()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4176
    sget-object v0, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->CountsAberration:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    .line 4162
    :goto_3
    new-instance v1, Lcom/dexcom/cgm/model/DisplayGlucose;

    invoke-virtual {p1}, Lcom/dexcom/cgm/b/v;->getSessionStartTime()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/dexcom/cgm/model/DisplayGlucose;-><init>(ILcom/dexcom/cgm/model/enums/TrendArrow;Lcom/dexcom/cgm/model/enums/EGVDisplayState;Lcom/dexcom/cgm/k/j;)V

    move-object v0, v1

    .line 64
    goto/16 :goto_0

    .line 4178
    :cond_8
    invoke-virtual {p1}, Lcom/dexcom/cgm/b/v;->isResidualAberrant()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4180
    sget-object v0, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->AberrationDetected:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    goto :goto_3

    .line 4182
    :cond_9
    invoke-virtual {p1}, Lcom/dexcom/cgm/b/v;->isTerminallyNoisy()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4184
    sget-object v0, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->TerminalNoise:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    goto :goto_3

    .line 4193
    :cond_a
    sget-object v0, Lcom/dexcom/cgm/b/r;->a:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/b/v;->getLocalAlgorithmState()Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlgorithmState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected algorithm state"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4237
    invoke-virtual {p1}, Lcom/dexcom/cgm/b/v;->getLocalAlgorithmState()Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " session signature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4238
    invoke-virtual {p1}, Lcom/dexcom/cgm/b/v;->getSessionStartTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4196
    :pswitch_0
    sget-object v0, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->SensorRemoved:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    goto :goto_3

    .line 4199
    :pswitch_1
    sget-object v0, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->DualBloodDrop:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    goto :goto_3

    .line 4203
    :pswitch_2
    sget-object v0, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->SensorHighWedgeError:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    goto :goto_3

    .line 4207
    :pswitch_3
    sget-object v0, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->EGVAvailable:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    goto :goto_3

    .line 4212
    :pswitch_4
    sget-object v0, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->OutOfCal:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    goto :goto_3

    .line 4216
    :pswitch_5
    sget-object v0, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->SensorLowWedgeError:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    goto :goto_3

    .line 4220
    :pswitch_6
    sget-object v0, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->FingerStickRequest:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    goto :goto_3

    .line 4223
    :pswitch_7
    sget-object v0, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->SensorRemoved:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    goto :goto_3

    .line 4226
    :pswitch_8
    sget-object v0, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->OneOfTwoDrops:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    goto :goto_3

    .line 4230
    :pswitch_9
    sget-object v0, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->StartUpPeriod:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    goto :goto_3

    .line 4233
    :pswitch_a
    sget-object v0, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->AberrationDetected:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    goto :goto_3

    .line 4193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
