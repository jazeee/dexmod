.class final Lcom/dexcom/cgm/b/a;
.super Ljava/lang/Object;
.source "AlertGenerator.java"


# instance fields
.field private final a:Lcom/dexcom/cgm/b/j;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/b/j;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/b/a;->b:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lcom/dexcom/cgm/b/a;->a:Lcom/dexcom/cgm/b/j;

    .line 31
    return-void
.end method

.method private a(Lcom/dexcom/cgm/model/enums/AlertKind;)V
    .locals 2

    .prologue
    .line 245
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorShutoff:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p1, v0, :cond_2

    .line 248
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 249
    iget-object v1, p0, Lcom/dexcom/cgm/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_1
    :goto_0
    return-void

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/b/a;->a:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/j;->getCurrentStateInfo()Lcom/dexcom/cgm/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/v;->isSessionStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    new-instance v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 255
    iget-object v1, p0, Lcom/dexcom/cgm/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Lcom/dexcom/cgm/model/enums/AlertKind;ILcom/dexcom/cgm/model/enums/TrendArrow;)V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/dexcom/cgm/b/a;->a:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/j;->getCurrentStateInfo()Lcom/dexcom/cgm/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/v;->isSessionStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {p1, p2, p3}, Lcom/dexcom/cgm/model/AlertInstanceInformation;->createGlucoseAlert(Lcom/dexcom/cgm/model/enums/AlertKind;ILcom/dexcom/cgm/model/enums/TrendArrow;)Lcom/dexcom/cgm/model/AlertInstanceInformation;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/dexcom/cgm/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_0
    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 117
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->NormalWedge:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 118
    iget-object v0, p0, Lcom/dexcom/cgm/b/a;->a:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/j;->getCurrentStateInfo()Lcom/dexcom/cgm/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/v;->getLocalAlgorithmState()Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->InCalibration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-ne v0, v1, :cond_0

    .line 120
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->NoCalibrationNeeded:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/a;->a:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/j;->getCurrentStateInfo()Lcom/dexcom/cgm/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/v;->getLocalEgv()I

    move-result v0

    const/16 v1, 0x27

    if-ge v0, v1, :cond_2

    .line 3202
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/b/a;->a:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/j;->getCurrentStateInfo()Lcom/dexcom/cgm/b/v;

    move-result-object v0

    .line 2210
    iget-object v1, p0, Lcom/dexcom/cgm/b/a;->a:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getActiveAlertSettings()Lcom/dexcom/cgm/model/AlertSettings;

    move-result-object v1

    .line 2211
    invoke-virtual {v0}, Lcom/dexcom/cgm/b/v;->getLocalEgv()I

    move-result v2

    .line 2212
    invoke-virtual {v0}, Lcom/dexcom/cgm/b/v;->getLocalTrendArrow()Lcom/dexcom/cgm/model/enums/TrendArrow;

    move-result-object v0

    .line 2213
    const/16 v3, 0x37

    if-gt v2, v3, :cond_3

    .line 2215
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v1, v2, v0}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;ILcom/dexcom/cgm/model/enums/TrendArrow;)V

    .line 3133
    :goto_1
    iget-object v0, p0, Lcom/dexcom/cgm/b/a;->a:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/j;->getActiveAlertSettings()Lcom/dexcom/cgm/model/AlertSettings;

    move-result-object v0

    .line 3134
    iget-object v1, p0, Lcom/dexcom/cgm/b/a;->a:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getCurrentStateInfo()Lcom/dexcom/cgm/b/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/v;->getLocalEgv()I

    move-result v1

    .line 3135
    iget-object v2, p0, Lcom/dexcom/cgm/b/a;->a:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v2}, Lcom/dexcom/cgm/b/j;->getCurrentStateInfo()Lcom/dexcom/cgm/b/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/b/v;->getLocalTrendArrow()Lcom/dexcom/cgm/model/enums/TrendArrow;

    move-result-object v2

    .line 3137
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertSettings;->getRiseRate()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v3

    .line 3138
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertSettings;->getFallRate()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    .line 3139
    sget-object v4, Lcom/dexcom/cgm/b/b;->b:[I

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/enums/TrendArrow;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 3204
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown arrow: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2218
    :cond_3
    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AlertSettings;->getUserLow()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v3

    .line 2219
    invoke-virtual {v3}, Lcom/dexcom/cgm/model/UserAlertProperties;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/dexcom/cgm/model/UserAlertProperties;->getThreshold()I

    move-result v3

    if-gt v2, v3, :cond_4

    .line 2221
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v1, v2, v0}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;ILcom/dexcom/cgm/model/enums/TrendArrow;)V

    goto :goto_1

    .line 2224
    :cond_4
    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AlertSettings;->getUserHigh()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    .line 2225
    invoke-virtual {v1}, Lcom/dexcom/cgm/model/UserAlertProperties;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getThreshold()I

    move-result v1

    if-lt v2, v1, :cond_5

    .line 2227
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v1, v2, v0}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;ILcom/dexcom/cgm/model/enums/TrendArrow;)V

    goto :goto_1

    .line 2230
    :cond_5
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->NormalGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v1, v2, v0}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;ILcom/dexcom/cgm/model/enums/TrendArrow;)V

    goto :goto_1

    .line 3142
    :pswitch_1
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateFlat:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;ILcom/dexcom/cgm/model/enums/TrendArrow;)V

    goto/16 :goto_0

    .line 3146
    :pswitch_2
    invoke-virtual {v3}, Lcom/dexcom/cgm/model/UserAlertProperties;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3148
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateMediumUp:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;ILcom/dexcom/cgm/model/enums/TrendArrow;)V

    goto/16 :goto_0

    .line 3153
    :pswitch_3
    invoke-virtual {v3}, Lcom/dexcom/cgm/model/UserAlertProperties;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3155
    invoke-virtual {v3}, Lcom/dexcom/cgm/model/UserAlertProperties;->getThreshold()I

    move-result v0

    if-le v0, v6, :cond_6

    .line 3157
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateMediumUp:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;ILcom/dexcom/cgm/model/enums/TrendArrow;)V

    goto/16 :goto_0

    .line 3161
    :cond_6
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;ILcom/dexcom/cgm/model/enums/TrendArrow;)V

    goto/16 :goto_0

    .line 3167
    :pswitch_4
    invoke-virtual {v3}, Lcom/dexcom/cgm/model/UserAlertProperties;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3169
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;ILcom/dexcom/cgm/model/enums/TrendArrow;)V

    goto/16 :goto_0

    .line 3174
    :pswitch_5
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3176
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateMediumDown:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;ILcom/dexcom/cgm/model/enums/TrendArrow;)V

    goto/16 :goto_0

    .line 3181
    :pswitch_6
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3183
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->getThreshold()I

    move-result v0

    if-le v0, v6, :cond_7

    .line 3185
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateMediumDown:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;ILcom/dexcom/cgm/model/enums/TrendArrow;)V

    goto/16 :goto_0

    .line 3189
    :cond_7
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;ILcom/dexcom/cgm/model/enums/TrendArrow;)V

    goto/16 :goto_0

    .line 3195
    :pswitch_7
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3197
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0, v1, v2}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;ILcom/dexcom/cgm/model/enums/TrendArrow;)V

    goto/16 :goto_0

    .line 3139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private c()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 269
    iget-object v1, p0, Lcom/dexcom/cgm/b/a;->a:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getPreviousStateInfo()Lcom/dexcom/cgm/b/v;

    move-result-object v1

    if-nez v1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/dexcom/cgm/b/a;->a:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getPreviousStateInfo()Lcom/dexcom/cgm/b/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/v;->getLocalAlgorithmState()Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v1

    .line 275
    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SensorWarmup:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->InCalibration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalibrationRequest:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SecondOfTwoBGsNeeded:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->FirstOfTwoBGsNeeded:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->OutlierCalibrationRequest:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->TemporarySensorFailure:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionStopped:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SensorFailedDueToCountsAberration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SensorFailedDueToResidualAberration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionExpired:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionFailedDueToUnrecoverableError:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionFailedDueToTransmitterError:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_FirstOfTwoCalibrationsNeeded:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_SecondOfTwoCalibrationsNeeded:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_InCalDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_StartUp:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq v1, v2, :cond_0

    .line 295
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/dexcom/cgm/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorHighWedgeError:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 304
    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/dexcom/cgm/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorLowWedgeError:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 313
    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/dexcom/cgm/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->CalibrationRequired:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 321
    :cond_0
    return-void
.end method

.method private g()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 338
    iget-object v0, p0, Lcom/dexcom/cgm/b/a;->a:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/j;->getMetersFromUser()Ljava/util/ArrayList;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 350
    :goto_0
    return v0

    .line 343
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Meter;

    .line 344
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Meter;->getMeterTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 345
    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v4

    .line 346
    const-wide/16 v6, 0x384

    add-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    move v0, v1

    .line 348
    goto :goto_0

    .line 350
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dexcom/cgm/b/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 37
    sget-object v0, Lcom/dexcom/cgm/b/b;->a:[I

    iget-object v1, p0, Lcom/dexcom/cgm/b/a;->a:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getCurrentStateInfo()Lcom/dexcom/cgm/b/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/v;->getLocalAlgorithmState()Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlgorithmState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 107
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/a;->a:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/j;->getCurrentStateInfo()Lcom/dexcom/cgm/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/v;->isCountsAberrant()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/dexcom/cgm/b/a;->a:Lcom/dexcom/cgm/b/j;

    .line 108
    invoke-virtual {v0}, Lcom/dexcom/cgm/b/j;->getCurrentStateInfo()Lcom/dexcom/cgm/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/v;->isResidualAberrant()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1355
    :cond_1
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->AberrationDetected:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/b/a;->b:Ljava/util/ArrayList;

    return-object v0

    .line 1261
    :pswitch_1
    invoke-direct {p0}, Lcom/dexcom/cgm/b/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->DualBloodDrop:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    goto :goto_0

    .line 46
    :pswitch_2
    invoke-direct {p0}, Lcom/dexcom/cgm/b/a;->d()V

    goto :goto_0

    .line 49
    :pswitch_3
    invoke-direct {p0}, Lcom/dexcom/cgm/b/a;->b()V

    goto :goto_0

    .line 53
    :pswitch_4
    invoke-direct {p0}, Lcom/dexcom/cgm/b/a;->f()V

    goto :goto_0

    .line 56
    :pswitch_5
    invoke-direct {p0}, Lcom/dexcom/cgm/b/a;->e()V

    goto :goto_0

    .line 60
    :pswitch_6
    invoke-direct {p0}, Lcom/dexcom/cgm/b/a;->b()V

    .line 1325
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->FingerStickRequest:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    goto :goto_0

    .line 1330
    :pswitch_7
    invoke-direct {p0}, Lcom/dexcom/cgm/b/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->OneOfTwoDrops:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    goto :goto_0

    .line 70
    :pswitch_8
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->NormalWedge:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 71
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->NoCalibrationNeeded:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    goto :goto_0

    .line 93
    :pswitch_9
    invoke-direct {p0}, Lcom/dexcom/cgm/b/a;->d()V

    goto :goto_0

    .line 96
    :pswitch_a
    invoke-direct {p0}, Lcom/dexcom/cgm/b/a;->e()V

    goto :goto_0

    .line 99
    :pswitch_b
    invoke-direct {p0}, Lcom/dexcom/cgm/b/a;->f()V

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
