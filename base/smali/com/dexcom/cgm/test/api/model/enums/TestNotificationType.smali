.class public final enum Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;
.super Ljava/lang/Enum;
.source "TestNotificationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum CalibrationRequested:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum CalibrationRequired:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum CoarseLocationPermissionOff:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum DiskSpaceCriticallyLow:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum DiskSpaceLow:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum FallRate:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum FirstOfTwoCalibrations:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum HighGlucose:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum HighWedge:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum LowGlucose:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum LowTransmitterBattery:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum LowWedge:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum NoBluetooth:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum NoData:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum RiseRate:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum SQLError:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum SecondOfTwoCalibrations:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum SensorExpiration:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum SensorExpiration2Hours:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum SensorExpiration30Minutes:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum SensorExpiration6Hours:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum SensorFailed:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum TransmitterCompatibility:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum TransmitterEOL:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum TransmitterEOL2Weeks:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum TransmitterEOL3Weeks:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum TransmitterEOLLastSession:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum TransmitterError:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum TransmitterNotFound:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

.field public static final enum UrgentLowGlucose:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;


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
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "UrgentLowGlucose"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->UrgentLowGlucose:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 12
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "LowGlucose"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->LowGlucose:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 13
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "HighGlucose"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->HighGlucose:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 14
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "RiseRate"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->RiseRate:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "FallRate"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->FallRate:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "NoData"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->NoData:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "LowWedge"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->LowWedge:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "HighWedge"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->HighWedge:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "FirstOfTwoCalibrations"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->FirstOfTwoCalibrations:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "SecondOfTwoCalibrations"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->SecondOfTwoCalibrations:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "SensorFailed"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->SensorFailed:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "LowTransmitterBattery"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->LowTransmitterBattery:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "SensorExpiration6Hours"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->SensorExpiration6Hours:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "SensorExpiration2Hours"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->SensorExpiration2Hours:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 25
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "SensorExpiration30Minutes"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->SensorExpiration30Minutes:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 26
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "SensorExpiration"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->SensorExpiration:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 27
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "CalibrationRequired"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->CalibrationRequired:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "CalibrationRequested"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->CalibrationRequested:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 29
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "TransmitterError"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->TransmitterError:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 30
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "TransmitterEOL3Weeks"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->TransmitterEOL3Weeks:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 31
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "TransmitterEOL2Weeks"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->TransmitterEOL2Weeks:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 32
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "TransmitterEOLLastSession"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->TransmitterEOLLastSession:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 33
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "TransmitterEOL"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->TransmitterEOL:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 34
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "NoBluetooth"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->NoBluetooth:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 35
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "TransmitterNotFound"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->TransmitterNotFound:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 36
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "DiskSpaceLow"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->DiskSpaceLow:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 37
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "DiskSpaceCriticallyLow"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->DiskSpaceCriticallyLow:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 38
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "SQLError"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->SQLError:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 39
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "CoarseLocationPermissionOff"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->CoarseLocationPermissionOff:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 40
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    const-string v1, "TransmitterCompatibility"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->TransmitterCompatibility:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    .line 9
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->UrgentLowGlucose:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->LowGlucose:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->HighGlucose:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->RiseRate:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->FallRate:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->NoData:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->LowWedge:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->HighWedge:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->FirstOfTwoCalibrations:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->SecondOfTwoCalibrations:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->SensorFailed:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->LowTransmitterBattery:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->SensorExpiration6Hours:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->SensorExpiration2Hours:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->SensorExpiration30Minutes:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->SensorExpiration:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->CalibrationRequired:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->CalibrationRequested:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->TransmitterError:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->TransmitterEOL3Weeks:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->TransmitterEOL2Weeks:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->TransmitterEOLLastSession:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->TransmitterEOL:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->NoBluetooth:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->TransmitterNotFound:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->DiskSpaceLow:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->DiskSpaceCriticallyLow:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->SQLError:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->CoarseLocationPermissionOff:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->TransmitterCompatibility:Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/test/api/model/enums/TestNotificationType;

    return-object v0
.end method
