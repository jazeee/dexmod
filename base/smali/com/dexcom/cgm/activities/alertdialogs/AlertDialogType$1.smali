.class synthetic Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;
.super Ljava/lang/Object;
.source "AlertDialogType.java"


# static fields
.field static final synthetic $SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

.field static final synthetic $SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->values()[Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    :try_start_0
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->UrgentLow:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_31

    :goto_0
    :try_start_1
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->Low:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_30

    :goto_1
    :try_start_2
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->High:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2f

    :goto_2
    :try_start_3
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->RiseRate:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2e

    :goto_3
    :try_start_4
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->FallRate:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2d

    :goto_4
    :try_start_5
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorFailed:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2c

    :goto_5
    :try_start_6
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->LowTransmitterBattery:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2b

    :goto_6
    :try_start_7
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorExpirationSixHours:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2a

    :goto_7
    :try_start_8
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorExpirationTwoHours:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_29

    :goto_8
    :try_start_9
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorExpirationThirtyMinutes:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_28

    :goto_9
    :try_start_a
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorExpiration:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_27

    :goto_a
    :try_start_b
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_26

    :goto_b
    :try_start_c
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterEOLThreeWeeks:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_25

    :goto_c
    :try_start_d
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterEOLTwoWeeks:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_24

    :goto_d
    :try_start_e
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterEOLLastSession:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_23

    :goto_e
    :try_start_f
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->DiskSpaceAlmostFull:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_22

    :goto_f
    :try_start_10
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->DiskSpaceFull:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_21

    :goto_10
    :try_start_11
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterCompatibility:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_20

    :goto_11
    :try_start_12
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SQLError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_1f

    :goto_12
    :try_start_13
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->AlertSettingsError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_1e

    :goto_13
    :try_start_14
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->FirstOfTwoCalibrations:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_1d

    :goto_14
    :try_start_15
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->CalibrationRequired:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_1c

    :goto_15
    :try_start_16
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorErrorLowWedge:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_1b

    :goto_16
    :try_start_17
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorErrorHighWedge:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_1a

    .line 73
    :goto_17
    invoke-static {}, Lcom/dexcom/cgm/model/enums/AlertKind;->values()[Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    :try_start_18
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_19

    :goto_18
    :try_start_19
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_18

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_17

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_16

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorShutoff:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_15

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationFirst:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_14

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationSecond:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_13

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationFinal:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_12

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_11

    :goto_20
    :try_start_21
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_10

    :goto_21
    :try_start_22
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterLowBattery:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_f

    :goto_22
    :try_start_23
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_e

    :goto_23
    :try_start_24
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeFirst:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_d

    :goto_24
    :try_start_25
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeSecond:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_c

    :goto_25
    :try_start_26
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeFinal:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_b

    :goto_26
    :try_start_27
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->PairingFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_a

    :goto_27
    :try_start_28
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowFirstLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_9

    :goto_28
    :try_start_29
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowSecondLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_8

    :goto_29
    :try_start_2a
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowSevereLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_7

    :goto_2a
    :try_start_2b
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterCompatibility:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_6

    :goto_2b
    :try_start_2c
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->SQLError:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_5

    :goto_2c
    :try_start_2d
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->AlertSettingsError:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_4

    :goto_2d
    :try_start_2e
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->DualBloodDrop:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_3

    :goto_2e
    :try_start_2f
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->CalibrationRequired:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2

    :goto_2f
    :try_start_30
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorLowWedgeError:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_1

    :goto_30
    :try_start_31
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorHighWedgeError:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_0

    :goto_31
    return-void

    :catch_0
    move-exception v0

    goto :goto_31

    :catch_1
    move-exception v0

    goto :goto_30

    :catch_2
    move-exception v0

    goto :goto_2f

    :catch_3
    move-exception v0

    goto :goto_2e

    :catch_4
    move-exception v0

    goto :goto_2d

    :catch_5
    move-exception v0

    goto :goto_2c

    :catch_6
    move-exception v0

    goto :goto_2b

    :catch_7
    move-exception v0

    goto :goto_2a

    :catch_8
    move-exception v0

    goto :goto_29

    :catch_9
    move-exception v0

    goto :goto_28

    :catch_a
    move-exception v0

    goto/16 :goto_27

    :catch_b
    move-exception v0

    goto/16 :goto_26

    :catch_c
    move-exception v0

    goto/16 :goto_25

    :catch_d
    move-exception v0

    goto/16 :goto_24

    :catch_e
    move-exception v0

    goto/16 :goto_23

    :catch_f
    move-exception v0

    goto/16 :goto_22

    :catch_10
    move-exception v0

    goto/16 :goto_21

    :catch_11
    move-exception v0

    goto/16 :goto_20

    :catch_12
    move-exception v0

    goto/16 :goto_1f

    :catch_13
    move-exception v0

    goto/16 :goto_1e

    :catch_14
    move-exception v0

    goto/16 :goto_1d

    :catch_15
    move-exception v0

    goto/16 :goto_1c

    :catch_16
    move-exception v0

    goto/16 :goto_1b

    :catch_17
    move-exception v0

    goto/16 :goto_1a

    :catch_18
    move-exception v0

    goto/16 :goto_19

    :catch_19
    move-exception v0

    goto/16 :goto_18

    :catch_1a
    move-exception v0

    goto/16 :goto_17

    :catch_1b
    move-exception v0

    goto/16 :goto_16

    :catch_1c
    move-exception v0

    goto/16 :goto_15

    :catch_1d
    move-exception v0

    goto/16 :goto_14

    :catch_1e
    move-exception v0

    goto/16 :goto_13

    :catch_1f
    move-exception v0

    goto/16 :goto_12

    :catch_20
    move-exception v0

    goto/16 :goto_11

    :catch_21
    move-exception v0

    goto/16 :goto_10

    :catch_22
    move-exception v0

    goto/16 :goto_f

    :catch_23
    move-exception v0

    goto/16 :goto_e

    :catch_24
    move-exception v0

    goto/16 :goto_d

    :catch_25
    move-exception v0

    goto/16 :goto_c

    :catch_26
    move-exception v0

    goto/16 :goto_b

    :catch_27
    move-exception v0

    goto/16 :goto_a

    :catch_28
    move-exception v0

    goto/16 :goto_9

    :catch_29
    move-exception v0

    goto/16 :goto_8

    :catch_2a
    move-exception v0

    goto/16 :goto_7

    :catch_2b
    move-exception v0

    goto/16 :goto_6

    :catch_2c
    move-exception v0

    goto/16 :goto_5

    :catch_2d
    move-exception v0

    goto/16 :goto_4

    :catch_2e
    move-exception v0

    goto/16 :goto_3

    :catch_2f
    move-exception v0

    goto/16 :goto_2

    :catch_30
    move-exception v0

    goto/16 :goto_1

    :catch_31
    move-exception v0

    goto/16 :goto_0
.end method
