.class public Lcom/dexcom/cgm/b/c;
.super Ljava/lang/Object;
.source "CalibrationStateMachine.java"


# instance fields
.field private FIVE_MINUTES:J

.field private m_inputState:Lcom/dexcom/cgm/b/v;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1028
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1029
    return-void
.end method

.method constructor <init>(Lcom/dexcom/cgm/b/v;)V
    .locals 4

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dexcom/cgm/b/c;->FIVE_MINUTES:J

    .line 38
    iput-object p1, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    .line 39
    return-void
.end method

.method public static createWithBackfillStream(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/tx/mediator/al;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/model/TransmitterId;",
            "Lcom/dexcom/cgm/k/m;",
            "Lcom/dexcom/cgm/tx/mediator/al;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1061
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1063
    if-eqz p2, :cond_0

    .line 1067
    invoke-virtual {p2}, Lcom/dexcom/cgm/tx/mediator/al;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1068
    new-instance v11, Lcom/dexcom/cgm/tx/a/f;

    invoke-direct {v11, v0}, Lcom/dexcom/cgm/tx/a/f;-><init>(Ljava/nio/ByteBuffer;)V

    .line 1069
    :goto_0
    invoke-virtual {v11}, Lcom/dexcom/cgm/tx/a/f;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {v11}, Lcom/dexcom/cgm/tx/a/f;->next()Lcom/dexcom/cgm/tx/a/e;

    move-result-object v6

    .line 1073
    invoke-virtual {v6}, Lcom/dexcom/cgm/tx/a/e;->getSequenceNumber()J

    move-result-wide v0

    .line 1074
    invoke-virtual {v6}, Lcom/dexcom/cgm/tx/a/e;->getAlgorithmState()B

    move-result v2

    invoke-static {v2}, Lcom/dexcom/cgm/model/enums/AlgorithmState;->valueOf(I)Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v2

    .line 1075
    invoke-virtual {v6}, Lcom/dexcom/cgm/tx/a/e;->getEgv()I

    move-result v3

    .line 1076
    invoke-virtual {v6}, Lcom/dexcom/cgm/tx/a/e;->getRate()D

    move-result-wide v4

    new-instance v7, Lcom/dexcom/cgm/k/n;

    .line 1077
    invoke-virtual {v6}, Lcom/dexcom/cgm/tx/a/e;->getTransmitterTime()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    invoke-static {p1, v7}, Lcom/dexcom/cgm/k/m;->create(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/k/m;

    move-result-object v6

    sget-object v8, Lcom/dexcom/cgm/k/n;->Unknown:Lcom/dexcom/cgm/k/n;

    const/4 v9, 0x1

    move-object v7, p0

    .line 1072
    invoke-static/range {v0 .. v9}, Lcom/dexcom/cgm/model/Glucose;->createWithTxData(JLcom/dexcom/cgm/model/enums/AlgorithmState;IDLcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/n;Z)Lcom/dexcom/cgm/model/Glucose;

    move-result-object v0

    .line 1081
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1087
    :catch_0
    move-exception v0

    .line 1089
    const-string v1, "TransmitterBLE"

    const-string v2, "Failed to parse backfill records"

    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v10

    .line 1085
    goto :goto_1
.end method

.method public static createWithEgvResponse(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/tx/a/l;)Lcom/dexcom/cgm/model/Glucose;
    .locals 10

    .prologue
    .line 1037
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 1039
    :cond_0
    const/4 v0, 0x0

    .line 1043
    :goto_0
    return-object v0

    .line 1044
    :cond_1
    invoke-virtual {p3}, Lcom/dexcom/cgm/tx/a/l;->getSequenceNumber()J

    move-result-wide v0

    .line 1045
    invoke-virtual {p3}, Lcom/dexcom/cgm/tx/a/l;->getAlgorithmState()B

    move-result v2

    invoke-static {v2}, Lcom/dexcom/cgm/model/enums/AlgorithmState;->valueOf(I)Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v2

    .line 1046
    invoke-virtual {p3}, Lcom/dexcom/cgm/tx/a/l;->getEgv()I

    move-result v3

    .line 1047
    invoke-virtual {p3}, Lcom/dexcom/cgm/tx/a/l;->getRate()D

    move-result-wide v4

    new-instance v6, Lcom/dexcom/cgm/k/n;

    .line 1048
    invoke-virtual {p3}, Lcom/dexcom/cgm/tx/a/l;->getTransmitterTime()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    invoke-static {p1, v6}, Lcom/dexcom/cgm/k/m;->create(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/k/m;

    move-result-object v6

    const/4 v9, 0x0

    move-object v7, p0

    move-object v8, p2

    .line 1043
    invoke-static/range {v0 .. v9}, Lcom/dexcom/cgm/model/Glucose;->createWithTxData(JLcom/dexcom/cgm/model/enums/AlgorithmState;IDLcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/n;Z)Lcom/dexcom/cgm/model/Glucose;

    move-result-object v0

    goto :goto_0
.end method

.method private doError0Error1Check$7b2032b9(Lcom/dexcom/cgm/model/Meter;)I
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    const/16 v1, 0x190

    if-le v0, v1, :cond_1

    .line 149
    :cond_0
    sget v0, Lcom/dexcom/cgm/b/e;->b:I

    .line 159
    :goto_0
    return v0

    .line 151
    :cond_1
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    iget-object v1, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/v;->getCalBounds()Lcom/dexcom/cgm/model/CalBounds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/CalBounds;->getError0Bound()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 153
    sget v0, Lcom/dexcom/cgm/b/e;->c:I

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    iget-object v1, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/v;->getCalBounds()Lcom/dexcom/cgm/model/CalBounds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/CalBounds;->getError1Bound()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 157
    sget v0, Lcom/dexcom/cgm/b/e;->d:I

    goto :goto_0

    .line 159
    :cond_3
    sget v0, Lcom/dexcom/cgm/b/e;->b:I

    goto :goto_0
.end method

.method private doMinMaxErrorCheck(Lcom/dexcom/cgm/model/Meter;)Z
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    iget-object v1, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/v;->getCalBounds()Lcom/dexcom/cgm/model/CalBounds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/CalBounds;->getLinearityCheckLow()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    iget-object v1, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/v;->getCalBounds()Lcom/dexcom/cgm/model/CalBounds;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/CalBounds;->getLinearityCheckHigh()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 140
    :cond_0
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isMeterWithin40To400(Lcom/dexcom/cgm/model/Meter;)Z
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    const/16 v1, 0x190

    if-le v0, v1, :cond_1

    .line 166
    :cond_0
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private performFirstOfTwoCalibrationsNeeded(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;
    .locals 4

    .prologue
    .line 502
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SecondOfTwoBGsNeeded:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 503
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->isMeterWithin40To400(Lcom/dexcom/cgm/model/Meter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;->FirstOfTwoBGsNeeded:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 507
    :cond_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorOutOfCal:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v1

    .line 508
    new-instance v2, Lcom/dexcom/cgm/b/v;

    iget-object v3, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-direct {v2, v3, v0, v1}, Lcom/dexcom/cgm/b/v;-><init>(Lcom/dexcom/cgm/b/v;Lcom/dexcom/cgm/model/enums/AlgorithmState;I)V

    return-object v2
.end method

.method private performHighWedgeDisplay(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;
    .locals 4

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->doError0Error1Check$7b2032b9(Lcom/dexcom/cgm/model/Meter;)I

    move-result v2

    .line 244
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->None:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 245
    sget-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorOutOfCal:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v0

    .line 246
    sget-object v3, Lcom/dexcom/cgm/b/d;->b:[I

    add-int/lit8 v2, v2, -0x1

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 276
    :goto_0
    new-instance v2, Lcom/dexcom/cgm/b/v;

    iget-object v3, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-direct {v2, v3, v1, v0}, Lcom/dexcom/cgm/b/v;-><init>(Lcom/dexcom/cgm/b/v;Lcom/dexcom/cgm/model/enums/AlgorithmState;I)V

    return-object v2

    .line 249
    :pswitch_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_HighWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 252
    :pswitch_1
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LowWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 255
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->doMinMaxErrorCheck(Lcom/dexcom/cgm/model/Meter;)Z

    move-result v1

    .line 256
    if-eqz v1, :cond_1

    .line 258
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->isMeterWithin40To400(Lcom/dexcom/cgm/model/Meter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_InCalDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 261
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    goto :goto_0

    .line 265
    :cond_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_HighWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 270
    :cond_1
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LinearityFitDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performHighWedgeTransmitter(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;
    .locals 4

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->doError0Error1Check$7b2032b9(Lcom/dexcom/cgm/model/Meter;)I

    move-result v2

    .line 398
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->None:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 399
    sget-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorOutOfCal:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v0

    .line 400
    sget-object v3, Lcom/dexcom/cgm/b/d;->b:[I

    add-int/lit8 v2, v2, -0x1

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 430
    :goto_0
    new-instance v2, Lcom/dexcom/cgm/b/v;

    iget-object v3, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-direct {v2, v3, v1, v0}, Lcom/dexcom/cgm/b/v;-><init>(Lcom/dexcom/cgm/b/v;Lcom/dexcom/cgm/model/enums/AlgorithmState;I)V

    return-object v2

    .line 403
    :pswitch_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_HighWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 406
    :pswitch_1
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LowWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 409
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->doMinMaxErrorCheck(Lcom/dexcom/cgm/model/Meter;)Z

    move-result v1

    .line 410
    if-eqz v1, :cond_1

    .line 412
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->isMeterWithin40To400(Lcom/dexcom/cgm/model/Meter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_InCalDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 415
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    goto :goto_0

    .line 419
    :cond_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalibrationError1:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 424
    :cond_1
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LinearityFitDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performInCalDisplay(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;
    .locals 8

    .prologue
    const/16 v0, 0x191

    const/16 v4, 0x27

    .line 435
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->doError0Error1Check$7b2032b9(Lcom/dexcom/cgm/model/Meter;)I

    move-result v5

    .line 436
    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->None:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 437
    sget-object v1, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorOutOfCal:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v2

    .line 438
    sget-object v1, Lcom/dexcom/cgm/model/enums/TrendArrow;->NotComputable:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 439
    sget-object v6, Lcom/dexcom/cgm/b/d;->b:[I

    add-int/lit8 v5, v5, -0x1

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    move-object v0, v1

    move v1, v2

    move-object v2, v3

    .line 463
    :goto_0
    new-instance v3, Lcom/dexcom/cgm/b/v;

    iget-object v4, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-direct {v3, v4, v2, v1, v0}, Lcom/dexcom/cgm/b/v;-><init>(Lcom/dexcom/cgm/b/v;Lcom/dexcom/cgm/model/enums/AlgorithmState;ILcom/dexcom/cgm/model/enums/TrendArrow;)V

    return-object v3

    .line 442
    :pswitch_0
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_HighWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-object v7, v1

    move v1, v2

    move-object v2, v0

    move-object v0, v7

    .line 443
    goto :goto_0

    .line 445
    :pswitch_1
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LowWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-object v7, v1

    move v1, v2

    move-object v2, v0

    move-object v0, v7

    .line 446
    goto :goto_0

    .line 448
    :pswitch_2
    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_InCalDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 449
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v1

    .line 450
    if-ge v1, v4, :cond_0

    move v1, v4

    .line 454
    :cond_0
    if-le v1, v0, :cond_1

    .line 458
    :goto_1
    iget-object v1, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/v;->getLocalTrendArrow()Lcom/dexcom/cgm/model/enums/TrendArrow;

    move-result-object v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performInCalTransmitter(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;
    .locals 5

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->doError0Error1Check$7b2032b9(Lcom/dexcom/cgm/model/Meter;)I

    move-result v3

    .line 470
    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->None:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 471
    sget-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorOutOfCal:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v1

    .line 472
    sget-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->NotComputable:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 473
    sget-object v4, Lcom/dexcom/cgm/b/d;->b:[I

    add-int/lit8 v3, v3, -0x1

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    .line 497
    :goto_0
    new-instance v3, Lcom/dexcom/cgm/b/v;

    iget-object v4, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-direct {v3, v4, v2, v1, v0}, Lcom/dexcom/cgm/b/v;-><init>(Lcom/dexcom/cgm/b/v;Lcom/dexcom/cgm/model/enums/AlgorithmState;ILcom/dexcom/cgm/model/enums/TrendArrow;)V

    return-object v3

    .line 476
    :pswitch_0
    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_HighWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 479
    :pswitch_1
    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LowWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 482
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->doMinMaxErrorCheck(Lcom/dexcom/cgm/model/Meter;)Z

    move-result v2

    .line 483
    if-eqz v2, :cond_0

    .line 485
    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_InCalDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 486
    iget-object v0, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/v;->getLocalEgv()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/b/c;->weightedAverage(Lcom/dexcom/cgm/model/Meter;I)I

    move-result v1

    .line 487
    iget-object v0, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/v;->getLocalTrendArrow()Lcom/dexcom/cgm/model/enums/TrendArrow;

    move-result-object v0

    goto :goto_0

    .line 491
    :cond_0
    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LinearityFitDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performLinearityFitDisplay(Lcom/dexcom/cgm/model/Meter;Lcom/dexcom/cgm/b/v;)Lcom/dexcom/cgm/b/v;
    .locals 4

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->doError0Error1Check$7b2032b9(Lcom/dexcom/cgm/model/Meter;)I

    move-result v2

    .line 176
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->None:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 177
    sget-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorOutOfCal:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v0

    .line 178
    sget-object v3, Lcom/dexcom/cgm/b/d;->b:[I

    add-int/lit8 v2, v2, -0x1

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 200
    :goto_0
    new-instance v2, Lcom/dexcom/cgm/b/v;

    invoke-direct {v2, p2, v1, v0}, Lcom/dexcom/cgm/b/v;-><init>(Lcom/dexcom/cgm/b/v;Lcom/dexcom/cgm/model/enums/AlgorithmState;I)V

    return-object v2

    .line 181
    :pswitch_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_HighWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 184
    :pswitch_1
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LowWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 187
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->isMeterWithin40To400(Lcom/dexcom/cgm/model/Meter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_InCalDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 190
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    goto :goto_0

    .line 194
    :cond_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LinearityFitDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performLinearityFitTransmitter(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;
    .locals 4

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->doError0Error1Check$7b2032b9(Lcom/dexcom/cgm/model/Meter;)I

    move-result v2

    .line 321
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->None:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 322
    sget-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorOutOfCal:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v0

    .line 323
    sget-object v3, Lcom/dexcom/cgm/b/d;->b:[I

    add-int/lit8 v2, v2, -0x1

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 353
    :goto_0
    new-instance v2, Lcom/dexcom/cgm/b/v;

    iget-object v3, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-direct {v2, v3, v1, v0}, Lcom/dexcom/cgm/b/v;-><init>(Lcom/dexcom/cgm/b/v;Lcom/dexcom/cgm/model/enums/AlgorithmState;I)V

    return-object v2

    .line 326
    :pswitch_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_HighWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 329
    :pswitch_1
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LowWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 332
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->doMinMaxErrorCheck(Lcom/dexcom/cgm/model/Meter;)Z

    move-result v1

    .line 333
    if-eqz v1, :cond_1

    .line 335
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->isMeterWithin40To400(Lcom/dexcom/cgm/model/Meter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_InCalDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 338
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    goto :goto_0

    .line 342
    :cond_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalibrationLinearityFitFailure:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 347
    :cond_1
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LinearityFitDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performLowWedgeDisplay(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;
    .locals 4

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->doError0Error1Check$7b2032b9(Lcom/dexcom/cgm/model/Meter;)I

    move-result v2

    .line 206
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->None:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 207
    sget-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorOutOfCal:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v0

    .line 208
    sget-object v3, Lcom/dexcom/cgm/b/d;->b:[I

    add-int/lit8 v2, v2, -0x1

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 238
    :goto_0
    new-instance v2, Lcom/dexcom/cgm/b/v;

    iget-object v3, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-direct {v2, v3, v1, v0}, Lcom/dexcom/cgm/b/v;-><init>(Lcom/dexcom/cgm/b/v;Lcom/dexcom/cgm/model/enums/AlgorithmState;I)V

    return-object v2

    .line 211
    :pswitch_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_HighWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 214
    :pswitch_1
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LowWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 217
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->doMinMaxErrorCheck(Lcom/dexcom/cgm/model/Meter;)Z

    move-result v1

    .line 218
    if-eqz v1, :cond_1

    .line 220
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->isMeterWithin40To400(Lcom/dexcom/cgm/model/Meter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_InCalDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 223
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    goto :goto_0

    .line 227
    :cond_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LowWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 232
    :cond_1
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LinearityFitDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performLowWedgeTransmitter(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;
    .locals 4

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->doError0Error1Check$7b2032b9(Lcom/dexcom/cgm/model/Meter;)I

    move-result v2

    .line 359
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->None:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 360
    sget-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorOutOfCal:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v0

    .line 361
    sget-object v3, Lcom/dexcom/cgm/b/d;->b:[I

    add-int/lit8 v2, v2, -0x1

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 392
    :goto_0
    new-instance v2, Lcom/dexcom/cgm/b/v;

    iget-object v3, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-direct {v2, v3, v1, v0}, Lcom/dexcom/cgm/b/v;-><init>(Lcom/dexcom/cgm/b/v;Lcom/dexcom/cgm/model/enums/AlgorithmState;I)V

    return-object v2

    .line 364
    :pswitch_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_HighWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 367
    :pswitch_1
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LowWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 370
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->doMinMaxErrorCheck(Lcom/dexcom/cgm/model/Meter;)Z

    move-result v1

    .line 371
    if-eqz v1, :cond_1

    .line 373
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->isMeterWithin40To400(Lcom/dexcom/cgm/model/Meter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_InCalDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 376
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    goto :goto_0

    .line 380
    :cond_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalibrationError0:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 385
    :cond_1
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LinearityFitDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performOutOfCalDueToOutlierTransmitter(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;
    .locals 4

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->doError0Error1Check$7b2032b9(Lcom/dexcom/cgm/model/Meter;)I

    move-result v2

    .line 282
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->None:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 283
    sget-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorOutOfCal:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v0

    .line 284
    sget-object v3, Lcom/dexcom/cgm/b/d;->b:[I

    add-int/lit8 v2, v2, -0x1

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 315
    :goto_0
    new-instance v2, Lcom/dexcom/cgm/b/v;

    iget-object v3, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-direct {v2, v3, v1, v0}, Lcom/dexcom/cgm/b/v;-><init>(Lcom/dexcom/cgm/b/v;Lcom/dexcom/cgm/model/enums/AlgorithmState;I)V

    return-object v2

    .line 287
    :pswitch_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_HighWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 290
    :pswitch_1
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LowWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 293
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->doMinMaxErrorCheck(Lcom/dexcom/cgm/model/Meter;)Z

    move-result v1

    .line 294
    if-eqz v1, :cond_1

    .line 296
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->isMeterWithin40To400(Lcom/dexcom/cgm/model/Meter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_InCalDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 299
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    goto :goto_0

    .line 303
    :cond_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->OutOfCalDueToOutlier:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 308
    :cond_1
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LinearityFitDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private performSecondOfTwoBGsNeeded(Lcom/dexcom/cgm/model/Meter;Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;
    .locals 6

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->doError0Error1Check$7b2032b9(Lcom/dexcom/cgm/model/Meter;)I

    move-result v2

    .line 516
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->None:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 517
    sget-object v0, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorOutOfCal:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v0

    .line 518
    sget-object v3, Lcom/dexcom/cgm/b/d;->b:[I

    add-int/lit8 v2, v2, -0x1

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 573
    :goto_0
    new-instance v2, Lcom/dexcom/cgm/b/v;

    iget-object v3, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-direct {v2, v3, v1, v0}, Lcom/dexcom/cgm/b/v;-><init>(Lcom/dexcom/cgm/b/v;Lcom/dexcom/cgm/model/enums/AlgorithmState;I)V

    return-object v2

    .line 521
    :pswitch_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_HighWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 524
    :pswitch_1
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LowWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 527
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->doMinMaxErrorCheck(Lcom/dexcom/cgm/model/Meter;)Z

    move-result v1

    .line 528
    if-eqz v1, :cond_3

    .line 530
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/c;->isMeterWithin40To400(Lcom/dexcom/cgm/model/Meter;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 532
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SecondOfTwoBGsNeeded:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 536
    :cond_0
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_InCalDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 537
    const/4 v0, 0x0

    .line 540
    if-eqz p2, :cond_1

    .line 542
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 543
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    .line 544
    sub-long/2addr v2, v4

    .line 545
    iget-wide v4, p0, Lcom/dexcom/cgm/b/c;->FIVE_MINUTES:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 546
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/b/c;->isMeterWithin40To400(Lcom/dexcom/cgm/model/Meter;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 548
    const/4 v0, 0x1

    .line 552
    :cond_1
    if-eqz v0, :cond_2

    .line 554
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    invoke-virtual {p2}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v2

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 558
    :cond_2
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    goto :goto_0

    .line 564
    :cond_3
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LinearityFitDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    goto :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private weightedAverage(Lcom/dexcom/cgm/model/Meter;I)I
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 122
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    const/16 v1, 0x190

    if-le v0, v1, :cond_1

    :cond_0
    move v0, p2

    .line 132
    :goto_0
    return v0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/v;->getCalBounds()Lcom/dexcom/cgm/model/CalBounds;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CalBounds;->getBgWeight()S

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 127
    int-to-double v2, p2

    mul-double/2addr v2, v0

    sub-double v0, v6, v0

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    .line 129
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 130
    sub-double/2addr v0, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v4

    if-ltz v0, :cond_2

    add-double v0, v2, v6

    double-to-int v0, v0

    goto :goto_0

    :cond_2
    double-to-int v0, v2

    goto :goto_0
.end method


# virtual methods
.method final runStateMachine(Lcom/dexcom/cgm/model/Meter;Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;
    .locals 4

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    sget-object v1, Lcom/dexcom/cgm/b/d;->a:[I

    iget-object v2, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-virtual {v2}, Lcom/dexcom/cgm/b/v;->getLocalAlgorithmState()Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/enums/AlgorithmState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-virtual {v2}, Lcom/dexcom/cgm/b/v;->getLocalAlgorithmState()Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :pswitch_0
    new-instance v0, Lcom/dexcom/cgm/b/v;

    iget-object v1, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_StartUp:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    sget-object v3, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->SensorOutOfCal:Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;

    .line 51
    invoke-virtual {v3}, Lcom/dexcom/cgm/model/enums/SpecialGlucoseValues;->getValue()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/b/v;-><init>(Lcom/dexcom/cgm/b/v;Lcom/dexcom/cgm/model/enums/AlgorithmState;I)V

    .line 117
    :goto_0
    :pswitch_1
    return-object v0

    .line 54
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/b/c;->performFirstOfTwoCalibrationsNeeded(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;

    move-result-object v0

    goto :goto_0

    .line 57
    :pswitch_3
    invoke-direct {p0, p2, p1}, Lcom/dexcom/cgm/b/c;->performSecondOfTwoBGsNeeded(Lcom/dexcom/cgm/model/Meter;Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;

    move-result-object v0

    goto :goto_0

    .line 62
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/b/c;->performInCalTransmitter(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/b/c;->performInCalDisplay(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;

    move-result-object v0

    goto :goto_0

    .line 68
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/b/c;->performHighWedgeTransmitter(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/b/c;->performLowWedgeTransmitter(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;

    move-result-object v0

    goto :goto_0

    .line 74
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/b/c;->performLinearityFitTransmitter(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;

    move-result-object v0

    goto :goto_0

    .line 77
    :pswitch_9
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/b/c;->performOutOfCalDueToOutlierTransmitter(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;

    move-result-object v0

    goto :goto_0

    .line 80
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/b/c;->performHighWedgeDisplay(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;

    move-result-object v0

    goto :goto_0

    .line 83
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/b/c;->performLowWedgeDisplay(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;

    move-result-object v0

    goto :goto_0

    .line 86
    :pswitch_c
    iget-object v0, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-direct {p0, p2, v0}, Lcom/dexcom/cgm/b/c;->performLinearityFitDisplay(Lcom/dexcom/cgm/model/Meter;Lcom/dexcom/cgm/b/v;)Lcom/dexcom/cgm/b/v;

    move-result-object v0

    goto :goto_0

    .line 97
    :pswitch_d
    iget-object v0, p0, Lcom/dexcom/cgm/b/c;->m_inputState:Lcom/dexcom/cgm/b/v;

    invoke-static {v0}, Lcom/dexcom/cgm/b/v;->copyStateForCalibration(Lcom/dexcom/cgm/b/v;)Lcom/dexcom/cgm/b/v;

    move-result-object v0

    goto :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
