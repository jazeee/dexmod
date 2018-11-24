.class public final enum Lcom/dexcom/cgm/model/enums/AlertKind;
.super Ljava/lang/Enum;
.source "AlertKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/enums/AlertKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum AberrationDetected:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum AlertSettingsError:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum BluetoothRadioOff:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum BluetoothRadioOn:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum CalibrationRequired:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum CalibrationValueEntered:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum CoarseLocationPermissionOff:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum CoarseLocationPermissionOn:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum DiskSpaceAboveFirstLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum DiskSpaceAboveSecondLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum DiskSpaceAboveSevereLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum DiskSpaceBelowFirstLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum DiskSpaceBelowSecondLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum DiskSpaceBelowSevereLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum DualBloodDrop:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum FingerStickRequest:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum NoCalibrationNeeded:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum None:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum NormalGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum NormalWedge:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum OneOfTwoDrops:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum PacketReceived:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum PairingFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum PreSensorExpirationFinal:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum PreSensorExpirationFirst:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum PreSensorExpirationSecond:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum RateFlat:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum RateMediumDown:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum RateMediumUp:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum SQLError:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum SensorFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum SensorHighWedgeError:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum SensorLowWedgeError:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum SensorRemoved:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum SensorShutoff:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum TransmitterCompatibility:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum TransmitterEndOfLifeFinal:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum TransmitterEndOfLifeFirst:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum TransmitterEndOfLifeSecond:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum TransmitterFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum TransmitterLowBattery:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

.field public static final enum UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->None:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 13
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "UrgentLowGlucose"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 14
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "UserSelectLowGlucose"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "UserSelectHighGlucose"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "NormalGlucose"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->NormalGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "CalibrationRequired"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->CalibrationRequired:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "FingerStickRequest"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->FingerStickRequest:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "SensorFailed"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "DualBloodDrop"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->DualBloodDrop:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "OneOfTwoDrops"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->OneOfTwoDrops:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "SensorRemoved"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorRemoved:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "SensorShutoff"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorShutoff:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 25
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "PreSensorExpirationFirst"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationFirst:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 26
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "PreSensorExpirationSecond"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationSecond:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 27
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "PreSensorExpirationFinal"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationFinal:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "SensorHighWedgeError"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorHighWedgeError:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 29
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "SensorLowWedgeError"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorLowWedgeError:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 30
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "NormalWedge"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->NormalWedge:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 31
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "OutOfRange"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 32
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "RateUpAlarm"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 33
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "RateMediumUp"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateMediumUp:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 34
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "RateFlat"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateFlat:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 35
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "RateMediumDown"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateMediumDown:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 36
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "RateDownAlarm"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 37
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "AberrationDetected"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->AberrationDetected:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 38
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "CalibrationValueEntered"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->CalibrationValueEntered:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 39
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "TransmitterLowBattery"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterLowBattery:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 40
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "TransmitterFailed"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 41
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "NoCalibrationNeeded"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->NoCalibrationNeeded:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 42
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "TransmitterEndOfLifeFirst"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeFirst:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 43
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "TransmitterEndOfLifeSecond"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeSecond:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 44
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "TransmitterEndOfLifeFinal"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeFinal:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 45
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "PacketReceived"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->PacketReceived:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 46
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "PairingFailed"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->PairingFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 47
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "DiskSpaceBelowFirstLimit"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowFirstLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 48
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "DiskSpaceBelowSecondLimit"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowSecondLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 49
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "DiskSpaceBelowSevereLimit"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowSevereLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 50
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "DiskSpaceAboveFirstLimit"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceAboveFirstLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 51
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "DiskSpaceAboveSecondLimit"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceAboveSecondLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 52
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "DiskSpaceAboveSevereLimit"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceAboveSevereLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 53
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "BluetoothRadioOn"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->BluetoothRadioOn:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 54
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "BluetoothRadioOff"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->BluetoothRadioOff:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 55
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "CoarseLocationPermissionOn"

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->CoarseLocationPermissionOn:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 56
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "CoarseLocationPermissionOff"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->CoarseLocationPermissionOff:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 57
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "TransmitterCompatibility"

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterCompatibility:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 58
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "SQLError"

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SQLError:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 59
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    const-string v1, "AlertSettingsError"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/AlertKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->AlertSettingsError:Lcom/dexcom/cgm/model/enums/AlertKind;

    .line 9
    const/16 v0, 0x2f

    new-array v0, v0, [Lcom/dexcom/cgm/model/enums/AlertKind;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->None:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->NormalGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->CalibrationRequired:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->FingerStickRequest:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->DualBloodDrop:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->OneOfTwoDrops:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorRemoved:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorShutoff:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationFirst:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationSecond:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationFinal:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorHighWedgeError:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorLowWedgeError:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->NormalWedge:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->RateMediumUp:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->RateFlat:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->RateMediumDown:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->AberrationDetected:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->CalibrationValueEntered:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterLowBattery:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->NoCalibrationNeeded:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeFirst:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeSecond:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeFinal:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->PacketReceived:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->PairingFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowFirstLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowSecondLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowSevereLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceAboveFirstLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceAboveSecondLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceAboveSevereLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x28

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->BluetoothRadioOn:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x29

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->BluetoothRadioOff:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->CoarseLocationPermissionOn:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->CoarseLocationPermissionOff:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterCompatibility:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->SQLError:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->AlertSettingsError:Lcom/dexcom/cgm/model/enums/AlertKind;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->$VALUES:[Lcom/dexcom/cgm/model/enums/AlertKind;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/AlertKind;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/AlertKind;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/enums/AlertKind;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->$VALUES:[Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/enums/AlertKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/enums/AlertKind;

    return-object v0
.end method


# virtual methods
.method public final isCriticalAlert()Z
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isGlucoseAlert()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p0, v0, :cond_2

    move v0, v1

    .line 76
    :goto_0
    sget-object v3, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p0, v3, :cond_3

    move v3, v1

    .line 77
    :goto_1
    sget-object v4, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p0, v4, :cond_4

    move v4, v1

    .line 78
    :goto_2
    sget-object v5, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p0, v5, :cond_5

    move v5, v1

    .line 79
    :goto_3
    sget-object v6, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p0, v6, :cond_6

    move v6, v1

    .line 81
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

    .line 75
    goto :goto_0

    :cond_3
    move v3, v2

    .line 76
    goto :goto_1

    :cond_4
    move v4, v2

    .line 77
    goto :goto_2

    :cond_5
    move v5, v2

    .line 78
    goto :goto_3

    :cond_6
    move v6, v2

    .line 79
    goto :goto_4
.end method

.method public final isMuteOverrideEnabled()Z
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/enums/AlertKind;->isUserAlert()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorLowWedgeError:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorHighWedgeError:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->DualBloodDrop:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorShutoff:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->CalibrationRequired:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowSevereLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SQLError:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSensorExpirationAlert()Z
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorShutoff:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationFirst:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationSecond:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationFinal:Lcom/dexcom/cgm/model/enums/AlertKind;

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
    .line 94
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeFirst:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeSecond:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeFinal:Lcom/dexcom/cgm/model/enums/AlertKind;

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

    .line 63
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p0, v0, :cond_2

    move v0, v1

    .line 64
    :goto_0
    sget-object v3, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p0, v3, :cond_3

    move v3, v1

    .line 65
    :goto_1
    sget-object v4, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p0, v4, :cond_4

    move v4, v1

    .line 66
    :goto_2
    sget-object v5, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p0, v5, :cond_5

    move v5, v1

    .line 67
    :goto_3
    sget-object v6, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p0, v6, :cond_6

    move v6, v1

    .line 68
    :goto_4
    sget-object v7, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p0, v7, :cond_7

    move v7, v1

    .line 70
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

    .line 63
    goto :goto_0

    :cond_3
    move v3, v2

    .line 64
    goto :goto_1

    :cond_4
    move v4, v2

    .line 65
    goto :goto_2

    :cond_5
    move v5, v2

    .line 66
    goto :goto_3

    :cond_6
    move v6, v2

    .line 67
    goto :goto_4

    :cond_7
    move v7, v2

    .line 68
    goto :goto_5
.end method
