.class public final enum Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;
.super Ljava/lang/Enum;
.source "AlertDialogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum AlertSettingsError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum CalibrationRequired:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum DiskSpaceAlmostFull:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum DiskSpaceFull:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum FallRate:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum FirstOfTwoCalibrations:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum High:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum Low:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum LowTransmitterBattery:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum RiseRate:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum SQLError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum SensorErrorHighWedge:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum SensorErrorLowWedge:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum SensorExpiration:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum SensorExpirationSixHours:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum SensorExpirationThirtyMinutes:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum SensorExpirationTwoHours:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum SensorFailed:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum TransmitterCompatibility:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum TransmitterEOLLastSession:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum TransmitterEOLThreeWeeks:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum TransmitterEOLTwoWeeks:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum TransmitterError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum TransmitterPairingFailed:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

.field public static final enum UrgentLow:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;


# instance fields
.field private m_layoutID:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "UrgentLow"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->glucose_alert_base:I

    invoke-direct {v0, v1, v4, v2}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->UrgentLow:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "Low"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->glucose_alert_base:I

    invoke-direct {v0, v1, v5, v2}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->Low:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "High"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->glucose_alert_base:I

    invoke-direct {v0, v1, v6, v2}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->High:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "RiseRate"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->glucose_alert_base:I

    invoke-direct {v0, v1, v7, v2}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->RiseRate:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "FallRate"

    sget v2, Lcom/dexcom/cgm/activities/R$layout;->glucose_alert_base:I

    invoke-direct {v0, v1, v8, v2}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->FallRate:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "SensorFailed"

    const/4 v2, 0x5

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->sensor_failed_popup:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorFailed:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "LowTransmitterBattery"

    const/4 v2, 0x6

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->transmitter_battery_low_popup:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->LowTransmitterBattery:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "SensorExpirationSixHours"

    const/4 v2, 0x7

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->sensor_expiration_6_hours_popup:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorExpirationSixHours:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "SensorExpirationTwoHours"

    const/16 v2, 0x8

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->sensor_expiration_2_hours_popup:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorExpirationTwoHours:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 25
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "SensorExpirationThirtyMinutes"

    const/16 v2, 0x9

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->sensor_expiration_30_minutes_popup:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorExpirationThirtyMinutes:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 26
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "SensorExpiration"

    const/16 v2, 0xa

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->sensor_expired_popup:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorExpiration:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 27
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "TransmitterError"

    const/16 v2, 0xb

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->transmitter_error_popup:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "TransmitterEOLThreeWeeks"

    const/16 v2, 0xc

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->transmitter_expiration_3_weeks_popup:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterEOLThreeWeeks:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 29
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "TransmitterEOLTwoWeeks"

    const/16 v2, 0xd

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->transmitter_expiration_2_weeks_popup:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterEOLTwoWeeks:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 30
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "TransmitterEOLLastSession"

    const/16 v2, 0xe

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->transmitter_expiration_1_week_popup:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterEOLLastSession:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 31
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "TransmitterPairingFailed"

    const/16 v2, 0xf

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->transmitter_pairing_failed_popup:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterPairingFailed:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 32
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "FirstOfTwoCalibrations"

    const/16 v2, 0x10

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->dialog_first_of_two_calibrations:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->FirstOfTwoCalibrations:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 33
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "CalibrationRequired"

    const/16 v2, 0x11

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->dialog_calibration_required:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->CalibrationRequired:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 34
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "SensorErrorLowWedge"

    const/16 v2, 0x12

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->dialog_sensor_low_wedge:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorErrorLowWedge:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 35
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "SensorErrorHighWedge"

    const/16 v2, 0x13

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->dialog_sensor_high_wedge:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorErrorHighWedge:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 36
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "DiskSpaceAlmostFull"

    const/16 v2, 0x14

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->disk_space_almost_full_popup:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->DiskSpaceAlmostFull:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 37
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "DiskSpaceFull"

    const/16 v2, 0x15

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->disk_space_full_popup:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->DiskSpaceFull:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 38
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "SQLError"

    const/16 v2, 0x16

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->dialog_sql_error:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SQLError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 39
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "AlertSettingsError"

    const/16 v2, 0x17

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->dialog_alert_settings_error:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->AlertSettingsError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 40
    new-instance v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    const-string v1, "TransmitterCompatibility"

    const/16 v2, 0x18

    sget v3, Lcom/dexcom/cgm/activities/R$layout;->transmitter_compatibility_popup:I

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterCompatibility:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    .line 14
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->UrgentLow:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->Low:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->High:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->RiseRate:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->FallRate:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorFailed:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->LowTransmitterBattery:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorExpirationSixHours:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorExpirationTwoHours:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorExpirationThirtyMinutes:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorExpiration:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterEOLThreeWeeks:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterEOLTwoWeeks:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterEOLLastSession:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterPairingFailed:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->FirstOfTwoCalibrations:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->CalibrationRequired:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorErrorLowWedge:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorErrorHighWedge:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->DiskSpaceAlmostFull:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->DiskSpaceFull:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SQLError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->AlertSettingsError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterCompatibility:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->$VALUES:[Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->m_layoutID:I

    .line 47
    return-void
.end method

.method public static fromAlertKind(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 128
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 76
    :pswitch_0
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->UrgentLow:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 78
    :pswitch_1
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->Low:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 80
    :pswitch_2
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->High:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 82
    :pswitch_3
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorFailed:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 84
    :pswitch_4
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorExpiration:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 86
    :pswitch_5
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorExpirationSixHours:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 88
    :pswitch_6
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorExpirationTwoHours:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 90
    :pswitch_7
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorExpirationThirtyMinutes:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 92
    :pswitch_8
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->RiseRate:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 94
    :pswitch_9
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->FallRate:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 96
    :pswitch_a
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->LowTransmitterBattery:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 98
    :pswitch_b
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 100
    :pswitch_c
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterEOLThreeWeeks:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 102
    :pswitch_d
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterEOLTwoWeeks:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 104
    :pswitch_e
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterEOLLastSession:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 106
    :pswitch_f
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterPairingFailed:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 109
    :pswitch_10
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->DiskSpaceAlmostFull:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 111
    :pswitch_11
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->DiskSpaceFull:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 113
    :pswitch_12
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->TransmitterCompatibility:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 115
    :pswitch_13
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SQLError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 117
    :pswitch_14
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->AlertSettingsError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 119
    :pswitch_15
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->FirstOfTwoCalibrations:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 121
    :pswitch_16
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->CalibrationRequired:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 123
    :pswitch_17
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorErrorLowWedge:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 125
    :pswitch_18
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SensorErrorHighWedge:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public static toAlertKind(Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;)Lcom/dexcom/cgm/model/enums/AlertKind;
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType$1;->$SwitchMap$com$dexcom$cgm$activities$alertdialogs$AlertDialogType:[I

    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 185
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 137
    :pswitch_0
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 139
    :pswitch_1
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 141
    :pswitch_2
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 143
    :pswitch_3
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 145
    :pswitch_4
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 147
    :pswitch_5
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 149
    :pswitch_6
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterLowBattery:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 151
    :pswitch_7
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationFirst:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 153
    :pswitch_8
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationSecond:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 155
    :pswitch_9
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationFinal:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 157
    :pswitch_a
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorShutoff:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 159
    :pswitch_b
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 161
    :pswitch_c
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeFirst:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 163
    :pswitch_d
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeSecond:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 165
    :pswitch_e
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterEndOfLifeFinal:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 167
    :pswitch_f
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowSecondLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 169
    :pswitch_10
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowSevereLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 171
    :pswitch_11
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterCompatibility:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 173
    :pswitch_12
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SQLError:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 175
    :pswitch_13
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->AlertSettingsError:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 177
    :pswitch_14
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->DualBloodDrop:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 179
    :pswitch_15
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->CalibrationRequired:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 181
    :pswitch_16
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorLowWedgeError:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 183
    :pswitch_17
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorHighWedgeError:Lcom/dexcom/cgm/model/enums/AlertKind;

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->$VALUES:[Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    return-object v0
.end method


# virtual methods
.method public final getLayoutID()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->m_layoutID:I

    return v0
.end method

.method public final hasAcknowledgeButton()Z
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->DiskSpaceFull:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->SQLError:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isGlucoseAlert()Z
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->UrgentLow:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->Low:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->High:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->RiseRate:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;->FallRate:Lcom/dexcom/cgm/activities/alertdialogs/AlertDialogType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
