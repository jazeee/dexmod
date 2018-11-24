.class public final enum Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;
.super Ljava/lang/Enum;
.source "TestAlertType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum BluetoothRadioOff:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum CalibrationError0:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum CalibrationError1:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum CalibrationRequest:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum CalibrationRequired:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum FallRate:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum FirstOfTwoBGs:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum HighGlucose:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum LowGlucose:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum PairingFailed:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum PowerAberration:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum RiseRate:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum SecondOfTwoBGs:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum SensorExpiration2Hours:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum SensorExpiration30Minutes:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum SensorExpiration6Hours:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum SensorFailed:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum SensorShutoff:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum SignalLoss:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum TransmitterEOL:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum TransmitterEOL2Weeks:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum TransmitterEOL3Weeks:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum TransmitterEOLLastSession:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum TransmitterFailed:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum TransmitterLowBattery:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

.field public static final enum UrgentLowGlucose:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;


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
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "UrgentLowGlucose"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->UrgentLowGlucose:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 12
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "LowGlucose"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->LowGlucose:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 13
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "HighGlucose"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->HighGlucose:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 14
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "RiseRate"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->RiseRate:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "FallRate"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->FallRate:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "FirstOfTwoBGs"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->FirstOfTwoBGs:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "SecondOfTwoBGs"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->SecondOfTwoBGs:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "CalibrationRequest"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->CalibrationRequest:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "CalibrationRequired"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->CalibrationRequired:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "CalibrationError0"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->CalibrationError0:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 27
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "CalibrationError1"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->CalibrationError1:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "SensorExpiration6Hours"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->SensorExpiration6Hours:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 29
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "SensorExpiration2Hours"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->SensorExpiration2Hours:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 30
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "SensorExpiration30Minutes"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->SensorExpiration30Minutes:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 31
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "SensorShutoff"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->SensorShutoff:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 32
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "SensorFailed"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->SensorFailed:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 33
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "SignalLoss"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->SignalLoss:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 34
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "TransmitterFailed"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->TransmitterFailed:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 35
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "PairingFailed"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->PairingFailed:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 36
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "TransmitterEOL3Weeks"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->TransmitterEOL3Weeks:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 37
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "TransmitterEOL2Weeks"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->TransmitterEOL2Weeks:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 38
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "TransmitterEOLLastSession"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->TransmitterEOLLastSession:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 39
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "TransmitterEOL"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->TransmitterEOL:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 40
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "TransmitterLowBattery"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->TransmitterLowBattery:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 41
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "PowerAberration"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->PowerAberration:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 42
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    const-string v1, "BluetoothRadioOff"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->BluetoothRadioOff:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    .line 9
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->UrgentLowGlucose:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->LowGlucose:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->HighGlucose:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->RiseRate:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->FallRate:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->FirstOfTwoBGs:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->SecondOfTwoBGs:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->CalibrationRequest:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->CalibrationRequired:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->CalibrationError0:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->CalibrationError1:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->SensorExpiration6Hours:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->SensorExpiration2Hours:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->SensorExpiration30Minutes:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->SensorShutoff:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->SensorFailed:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->SignalLoss:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->TransmitterFailed:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->PairingFailed:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->TransmitterEOL3Weeks:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->TransmitterEOL2Weeks:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->TransmitterEOLLastSession:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->TransmitterEOL:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->TransmitterLowBattery:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->PowerAberration:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->BluetoothRadioOff:Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/test/api/model/enums/TestAlertType;

    return-object v0
.end method
