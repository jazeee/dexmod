.class public final enum Lcom/dexcom/cgm/h/a/a/a;
.super Ljava/lang/Enum;
.source "DexAlertKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/h/a/a/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum AberrationDetected:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum AlertSettingsError:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum BluetoothRadioOff:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum BluetoothRadioOn:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum CalibrationRequired:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum CalibrationValueEntered:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum CoarseLocationPermissionOff:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum CoarseLocationPermissionOn:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum DiskSpaceAboveFirstLimit:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum DiskSpaceAboveSecondLimit:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum DiskSpaceAboveSevereLimit:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum DiskSpaceBelowFirstLimit:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum DiskSpaceBelowSecondLimit:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum DiskSpaceBelowSevereLimit:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum DualBloodDrop:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum FingerStickRequest:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum NoCalibrationNeeded:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum None:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum NormalGlucose:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum NormalWedge:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum OneOfTwoDrops:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum OutOfRange:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum PacketReceived:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum PairingFailed:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum PreSensorExpirationFinal:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum PreSensorExpirationFirst:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum PreSensorExpirationSecond:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum RateDownAlarm:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum RateFlat:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum RateMediumDown:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum RateMediumUp:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum RateUpAlarm:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum SQLError:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum SensorFailed:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum SensorHighWedgeError:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum SensorLowWedgeError:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum SensorRemoved:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum SensorShutoff:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum TransmitterCompatibility:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum TransmitterEndOfLifeFinal:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum TransmitterEndOfLifeFirst:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum TransmitterEndOfLifeSecond:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum TransmitterFailed:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum TransmitterLowBattery:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum UrgentLowGlucose:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum UserSelectHighGlucose:Lcom/dexcom/cgm/h/a/a/a;

.field public static final enum UserSelectLowGlucose:Lcom/dexcom/cgm/h/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->None:Lcom/dexcom/cgm/h/a/a/a;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "UrgentLowGlucose"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->UrgentLowGlucose:Lcom/dexcom/cgm/h/a/a/a;

    .line 27
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "UserSelectLowGlucose"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->UserSelectLowGlucose:Lcom/dexcom/cgm/h/a/a/a;

    .line 31
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "UserSelectHighGlucose"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->UserSelectHighGlucose:Lcom/dexcom/cgm/h/a/a/a;

    .line 37
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "NormalGlucose"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->NormalGlucose:Lcom/dexcom/cgm/h/a/a/a;

    .line 42
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "CalibrationRequired"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->CalibrationRequired:Lcom/dexcom/cgm/h/a/a/a;

    .line 49
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "FingerStickRequest"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->FingerStickRequest:Lcom/dexcom/cgm/h/a/a/a;

    .line 54
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "SensorFailed"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->SensorFailed:Lcom/dexcom/cgm/h/a/a/a;

    .line 59
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "DualBloodDrop"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->DualBloodDrop:Lcom/dexcom/cgm/h/a/a/a;

    .line 63
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "OneOfTwoDrops"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->OneOfTwoDrops:Lcom/dexcom/cgm/h/a/a/a;

    .line 67
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "SensorRemoved"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->SensorRemoved:Lcom/dexcom/cgm/h/a/a/a;

    .line 71
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "SensorShutoff"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->SensorShutoff:Lcom/dexcom/cgm/h/a/a/a;

    .line 75
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "PreSensorExpirationFirst"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->PreSensorExpirationFirst:Lcom/dexcom/cgm/h/a/a/a;

    .line 79
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "PreSensorExpirationSecond"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->PreSensorExpirationSecond:Lcom/dexcom/cgm/h/a/a/a;

    .line 83
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "PreSensorExpirationFinal"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->PreSensorExpirationFinal:Lcom/dexcom/cgm/h/a/a/a;

    .line 90
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "SensorHighWedgeError"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->SensorHighWedgeError:Lcom/dexcom/cgm/h/a/a/a;

    .line 97
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "SensorLowWedgeError"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->SensorLowWedgeError:Lcom/dexcom/cgm/h/a/a/a;

    .line 102
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "NormalWedge"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->NormalWedge:Lcom/dexcom/cgm/h/a/a/a;

    .line 107
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "OutOfRange"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->OutOfRange:Lcom/dexcom/cgm/h/a/a/a;

    .line 108
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "RateUpAlarm"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->RateUpAlarm:Lcom/dexcom/cgm/h/a/a/a;

    .line 109
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "RateMediumUp"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->RateMediumUp:Lcom/dexcom/cgm/h/a/a/a;

    .line 110
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "RateFlat"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->RateFlat:Lcom/dexcom/cgm/h/a/a/a;

    .line 111
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "RateMediumDown"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->RateMediumDown:Lcom/dexcom/cgm/h/a/a/a;

    .line 112
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "RateDownAlarm"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->RateDownAlarm:Lcom/dexcom/cgm/h/a/a/a;

    .line 116
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "AberrationDetected"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->AberrationDetected:Lcom/dexcom/cgm/h/a/a/a;

    .line 120
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "CalibrationValueEntered"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->CalibrationValueEntered:Lcom/dexcom/cgm/h/a/a/a;

    .line 121
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "TransmitterLowBattery"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->TransmitterLowBattery:Lcom/dexcom/cgm/h/a/a/a;

    .line 122
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "TransmitterFailed"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->TransmitterFailed:Lcom/dexcom/cgm/h/a/a/a;

    .line 123
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "NoCalibrationNeeded"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->NoCalibrationNeeded:Lcom/dexcom/cgm/h/a/a/a;

    .line 124
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "TransmitterEndOfLifeFirst"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->TransmitterEndOfLifeFirst:Lcom/dexcom/cgm/h/a/a/a;

    .line 125
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "TransmitterEndOfLifeSecond"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->TransmitterEndOfLifeSecond:Lcom/dexcom/cgm/h/a/a/a;

    .line 126
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "TransmitterEndOfLifeFinal"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->TransmitterEndOfLifeFinal:Lcom/dexcom/cgm/h/a/a/a;

    .line 127
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "PacketReceived"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->PacketReceived:Lcom/dexcom/cgm/h/a/a/a;

    .line 128
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "PairingFailed"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->PairingFailed:Lcom/dexcom/cgm/h/a/a/a;

    .line 129
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "DiskSpaceBelowFirstLimit"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->DiskSpaceBelowFirstLimit:Lcom/dexcom/cgm/h/a/a/a;

    .line 130
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "DiskSpaceBelowSecondLimit"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->DiskSpaceBelowSecondLimit:Lcom/dexcom/cgm/h/a/a/a;

    .line 131
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "DiskSpaceBelowSevereLimit"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->DiskSpaceBelowSevereLimit:Lcom/dexcom/cgm/h/a/a/a;

    .line 132
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "DiskSpaceAboveFirstLimit"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->DiskSpaceAboveFirstLimit:Lcom/dexcom/cgm/h/a/a/a;

    .line 133
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "DiskSpaceAboveSecondLimit"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->DiskSpaceAboveSecondLimit:Lcom/dexcom/cgm/h/a/a/a;

    .line 134
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "DiskSpaceAboveSevereLimit"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->DiskSpaceAboveSevereLimit:Lcom/dexcom/cgm/h/a/a/a;

    .line 135
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "BluetoothRadioOn"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->BluetoothRadioOn:Lcom/dexcom/cgm/h/a/a/a;

    .line 136
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "BluetoothRadioOff"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->BluetoothRadioOff:Lcom/dexcom/cgm/h/a/a/a;

    .line 137
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "CoarseLocationPermissionOn"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->CoarseLocationPermissionOn:Lcom/dexcom/cgm/h/a/a/a;

    .line 138
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "CoarseLocationPermissionOff"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->CoarseLocationPermissionOff:Lcom/dexcom/cgm/h/a/a/a;

    .line 139
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "TransmitterCompatibility"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->TransmitterCompatibility:Lcom/dexcom/cgm/h/a/a/a;

    .line 140
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "SQLError"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->SQLError:Lcom/dexcom/cgm/h/a/a/a;

    .line 141
    new-instance v0, Lcom/dexcom/cgm/h/a/a/a;

    const-string v1, "AlertSettingsError"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->AlertSettingsError:Lcom/dexcom/cgm/h/a/a/a;

    .line 16
    const/16 v0, 0x2f

    new-array v0, v0, [Lcom/dexcom/cgm/h/a/a/a;

    sget-object v1, Lcom/dexcom/cgm/h/a/a/a;->None:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/h/a/a/a;->UrgentLowGlucose:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/h/a/a/a;->UserSelectLowGlucose:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/h/a/a/a;->UserSelectHighGlucose:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/h/a/a/a;->NormalGlucose:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->CalibrationRequired:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->FingerStickRequest:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->SensorFailed:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->DualBloodDrop:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->OneOfTwoDrops:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->SensorRemoved:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->SensorShutoff:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->PreSensorExpirationFirst:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->PreSensorExpirationSecond:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->PreSensorExpirationFinal:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->SensorHighWedgeError:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->SensorLowWedgeError:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->NormalWedge:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->OutOfRange:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->RateUpAlarm:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->RateMediumUp:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->RateFlat:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->RateMediumDown:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->RateDownAlarm:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->AberrationDetected:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->CalibrationValueEntered:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->TransmitterLowBattery:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->TransmitterFailed:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->NoCalibrationNeeded:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->TransmitterEndOfLifeFirst:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->TransmitterEndOfLifeSecond:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->TransmitterEndOfLifeFinal:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->PacketReceived:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->PairingFailed:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->DiskSpaceBelowFirstLimit:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->DiskSpaceBelowSecondLimit:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->DiskSpaceBelowSevereLimit:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->DiskSpaceAboveFirstLimit:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->DiskSpaceAboveSecondLimit:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->DiskSpaceAboveSevereLimit:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->BluetoothRadioOn:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->BluetoothRadioOff:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->CoarseLocationPermissionOn:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->CoarseLocationPermissionOff:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->TransmitterCompatibility:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->SQLError:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/dexcom/cgm/h/a/a/a;->AlertSettingsError:Lcom/dexcom/cgm/h/a/a/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/h/a/a/a;->$VALUES:[Lcom/dexcom/cgm/h/a/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInternal(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/h/a/a/a;
    .locals 2

    .prologue
    .line 213
    invoke-static {}, Lcom/dexcom/cgm/h/a/a/a;->values()[Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/h/a/a/a;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/dexcom/cgm/h/a/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/h/a/a/a;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/h/a/a/a;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/dexcom/cgm/h/a/a/a;->$VALUES:[Lcom/dexcom/cgm/h/a/a/a;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/h/a/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/h/a/a/a;

    return-object v0
.end method


# virtual methods
.method public final isGlucoseAlert()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    sget-object v0, Lcom/dexcom/cgm/h/a/a/a;->UrgentLowGlucose:Lcom/dexcom/cgm/h/a/a/a;

    if-ne p0, v0, :cond_2

    move v0, v1

    .line 166
    :goto_0
    sget-object v3, Lcom/dexcom/cgm/h/a/a/a;->UserSelectLowGlucose:Lcom/dexcom/cgm/h/a/a/a;

    if-ne p0, v3, :cond_3

    move v3, v1

    .line 167
    :goto_1
    sget-object v4, Lcom/dexcom/cgm/h/a/a/a;->UserSelectHighGlucose:Lcom/dexcom/cgm/h/a/a/a;

    if-ne p0, v4, :cond_4

    move v4, v1

    .line 168
    :goto_2
    sget-object v5, Lcom/dexcom/cgm/h/a/a/a;->RateUpAlarm:Lcom/dexcom/cgm/h/a/a/a;

    if-ne p0, v5, :cond_5

    move v5, v1

    .line 169
    :goto_3
    sget-object v6, Lcom/dexcom/cgm/h/a/a/a;->RateDownAlarm:Lcom/dexcom/cgm/h/a/a/a;

    if-ne p0, v6, :cond_6

    move v6, v1

    .line 171
    :goto_4
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 165
    goto :goto_0

    :cond_3
    move v3, v2

    .line 166
    goto :goto_1

    :cond_4
    move v4, v2

    .line 167
    goto :goto_2

    :cond_5
    move v5, v2

    .line 168
    goto :goto_3

    :cond_6
    move v6, v2

    .line 169
    goto :goto_4
.end method

.method public final isSensorExpirationAlert()Z
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/dexcom/cgm/h/a/a/a;->SensorShutoff:Lcom/dexcom/cgm/h/a/a/a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/h/a/a/a;->PreSensorExpirationFirst:Lcom/dexcom/cgm/h/a/a/a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/h/a/a/a;->PreSensorExpirationSecond:Lcom/dexcom/cgm/h/a/a/a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/h/a/a/a;->PreSensorExpirationFinal:Lcom/dexcom/cgm/h/a/a/a;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isTransmitterEolAlert()Z
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/dexcom/cgm/h/a/a/a;->TransmitterEndOfLifeFirst:Lcom/dexcom/cgm/h/a/a/a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/h/a/a/a;->TransmitterEndOfLifeSecond:Lcom/dexcom/cgm/h/a/a/a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/h/a/a/a;->TransmitterEndOfLifeFinal:Lcom/dexcom/cgm/h/a/a/a;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isUserAlert()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    sget-object v0, Lcom/dexcom/cgm/h/a/a/a;->UrgentLowGlucose:Lcom/dexcom/cgm/h/a/a/a;

    if-ne p0, v0, :cond_2

    move v0, v1

    .line 150
    :goto_0
    sget-object v3, Lcom/dexcom/cgm/h/a/a/a;->UserSelectLowGlucose:Lcom/dexcom/cgm/h/a/a/a;

    if-ne p0, v3, :cond_3

    move v3, v1

    .line 151
    :goto_1
    sget-object v4, Lcom/dexcom/cgm/h/a/a/a;->UserSelectHighGlucose:Lcom/dexcom/cgm/h/a/a/a;

    if-ne p0, v4, :cond_4

    move v4, v1

    .line 152
    :goto_2
    sget-object v5, Lcom/dexcom/cgm/h/a/a/a;->RateUpAlarm:Lcom/dexcom/cgm/h/a/a/a;

    if-ne p0, v5, :cond_5

    move v5, v1

    .line 153
    :goto_3
    sget-object v6, Lcom/dexcom/cgm/h/a/a/a;->RateDownAlarm:Lcom/dexcom/cgm/h/a/a/a;

    if-ne p0, v6, :cond_6

    move v6, v1

    .line 154
    :goto_4
    sget-object v7, Lcom/dexcom/cgm/h/a/a/a;->OutOfRange:Lcom/dexcom/cgm/h/a/a/a;

    if-ne p0, v7, :cond_7

    move v7, v1

    .line 156
    :goto_5
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    if-eqz v7, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 149
    goto :goto_0

    :cond_3
    move v3, v2

    .line 150
    goto :goto_1

    :cond_4
    move v4, v2

    .line 151
    goto :goto_2

    :cond_5
    move v5, v2

    .line 152
    goto :goto_3

    :cond_6
    move v6, v2

    .line 153
    goto :goto_4

    :cond_7
    move v7, v2

    .line 154
    goto :goto_5
.end method

.method public final toInternal()Lcom/dexcom/cgm/model/enums/AlertKind;
    .locals 2

    .prologue
    .line 203
    invoke-static {}, Lcom/dexcom/cgm/model/enums/AlertKind;->values()[Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/h/a/a/a;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
