.class public Lcom/dexcom/cgm/b/s;
.super Ljava/lang/Object;
.source "EvCgmAlertSettingsUpdate.java"


# instance fields
.field private final m_alertProperties:Lcom/dexcom/cgm/model/UserAlertProperties;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/UserAlertProperties;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/dexcom/cgm/b/s;->m_alertProperties:Lcom/dexcom/cgm/model/UserAlertProperties;

    .line 21
    return-void
.end method

.method public static getMeterEntryType(B)Lcom/dexcom/cgm/model/enums/MeterEntryType;
    .locals 3

    .prologue
    .line 1017
    packed-switch p0, :pswitch_data_0

    .line 1075
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown calibration response code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1020
    :pswitch_0
    sget-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterCalibrationSuccess:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 1077
    :goto_0
    return-object v0

    .line 1023
    :pswitch_1
    sget-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterCalibrationError0:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    goto :goto_0

    .line 1026
    :pswitch_2
    sget-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterCalibrationError1:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    goto :goto_0

    .line 1029
    :pswitch_3
    sget-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterCalibrationLinearityFitFailure:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    goto :goto_0

    .line 1032
    :pswitch_4
    sget-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterOutlierCalibrationFailure:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    goto :goto_0

    .line 1035
    :pswitch_5
    sget-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGOutsideOf40to400Fail:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    goto :goto_0

    .line 1038
    :pswitch_6
    sget-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterSecondStartupBGRequired:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    goto :goto_0

    .line 1041
    :pswitch_7
    sget-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGOutsideOf40to400Pass:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    goto :goto_0

    .line 1044
    :pswitch_8
    sget-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterOutlierCalibrationRequest:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    goto :goto_0

    .line 1047
    :pswitch_9
    sget-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGUnmatched:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    goto :goto_0

    .line 1050
    :pswitch_a
    sget-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGOutsideOf20to600:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    goto :goto_0

    .line 1053
    :pswitch_b
    sget-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterNotInSession:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    goto :goto_0

    .line 1056
    :pswitch_c
    sget-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGTimestampInTheFuture:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    goto :goto_0

    .line 1059
    :pswitch_d
    sget-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGIsDuplicate:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    goto :goto_0

    .line 1062
    :pswitch_e
    sget-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGTimestampTooEarly:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    goto :goto_0

    .line 1065
    :pswitch_f
    sget-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGTimestampEarlierThanSessionStartCommandReceived:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    goto :goto_0

    .line 1069
    :pswitch_10
    sget-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGNotInChronologicalOrder:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    goto :goto_0

    .line 1072
    :pswitch_11
    sget-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterCalibrationAlreadyDoneWithOtherDevice:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    goto :goto_0

    .line 1017
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public final getUserAlertProperties()Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dexcom/cgm/b/s;->m_alertProperties:Lcom/dexcom/cgm/model/UserAlertProperties;

    return-object v0
.end method
