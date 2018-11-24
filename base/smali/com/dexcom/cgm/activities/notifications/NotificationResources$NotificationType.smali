.class public final enum Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;
.super Ljava/lang/Enum;
.source "NotificationResources.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum AlertSettingsError:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum CalibrationRequested:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum CalibrationRequired:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum CoarseLocationPermissionOff:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum DiskSpaceCriticallyLow:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum DiskSpaceLow:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum FallRate:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum FirstOfTwoCalibrations:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum HighGlucose:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum HighWedge:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum LowGlucose:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum LowTransmitterBattery:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum LowWedge:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum NoBluetooth:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum NoData:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum RiseRate:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum SQLError:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum SecondOfTwoCalibrations:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum SensorExpiration:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum SensorExpiration2Hours:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum SensorExpiration30Minutes:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum SensorExpiration6Hours:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum SensorFailed:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum TransmitterCompatibility:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum TransmitterEOL:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum TransmitterEOL2Weeks:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum TransmitterEOL3Weeks:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum TransmitterError:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum TransmitterNotFound:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

.field public static final enum UrgentLowGlucose:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;


# instance fields
.field private m_hasAcknowledgeButton:Z

.field private m_hasCalibrationButton:Z

.field private m_notificationMessageID:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private m_notificationSubtextID:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private m_notificationTitleID:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 23
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "UrgentLowGlucose"

    const/4 v2, 0x0

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_urgent_low:I

    const/4 v4, 0x0

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_swipe_to_silence:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->UrgentLowGlucose:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "LowGlucose"

    const/4 v2, 0x1

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_low:I

    const/4 v4, 0x0

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_swipe_to_silence:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->LowGlucose:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 25
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "HighGlucose"

    const/4 v2, 0x2

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_high:I

    const/4 v4, 0x0

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_swipe_to_silence:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->HighGlucose:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 26
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "RiseRate"

    const/4 v2, 0x3

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_rise_rate:I

    const/4 v4, 0x0

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_swipe_to_silence:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->RiseRate:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 27
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "FallRate"

    const/4 v2, 0x4

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_fall_rate:I

    const/4 v4, 0x0

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_swipe_to_silence:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->FallRate:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "NoData"

    const/4 v2, 0x5

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_no_data:I

    const/4 v4, 0x0

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_swipe_to_silence:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->NoData:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 29
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "LowWedge"

    const/4 v2, 0x6

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_calibration_required:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_wedge:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_swipe_to_silence:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->LowWedge:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 30
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "HighWedge"

    const/4 v2, 0x7

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_calibration_required:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_wedge:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_swipe_to_silence:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->HighWedge:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 31
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "FirstOfTwoCalibrations"

    const/16 v2, 0x8

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_calibration_requested:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_first_of_two_cals:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_swipe_to_silence:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->FirstOfTwoCalibrations:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 32
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "SecondOfTwoCalibrations"

    const/16 v2, 0x9

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_calibration_requested:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_second_of_two_cals:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_swipe_to_silence:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SecondOfTwoCalibrations:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 33
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "SensorFailed"

    const/16 v2, 0xa

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_sensor_failed:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_sensor_failed:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SensorFailed:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 34
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "LowTransmitterBattery"

    const/16 v2, 0xb

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_transmitter_low_battery:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_low_transmitter_battery:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_swipe_to_silence:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->LowTransmitterBattery:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 35
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "SensorExpiration6Hours"

    const/16 v2, 0xc

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_sensor_expiring:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_sensor_expiration_6_hours:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SensorExpiration6Hours:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 36
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "SensorExpiration2Hours"

    const/16 v2, 0xd

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_sensor_expiring:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_sensor_expiration_2_hours:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SensorExpiration2Hours:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 37
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "SensorExpiration30Minutes"

    const/16 v2, 0xe

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_sensor_expiring:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_sensor_expiration_30_minutes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_swipe_to_silence:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SensorExpiration30Minutes:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 38
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "SensorExpiration"

    const/16 v2, 0xf

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_sensor_expiration:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_sensor_expired:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SensorExpiration:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 39
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "CalibrationRequired"

    const/16 v2, 0x10

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_calibration_required:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_calibration_required:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_swipe_to_silence:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->CalibrationRequired:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 40
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "CalibrationRequested"

    const/16 v2, 0x11

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_calibration_requested:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_calibration_requested:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_swipe_to_silence:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->CalibrationRequested:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 41
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "TransmitterError"

    const/16 v2, 0x12

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_transmitter_error:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_transmitter_error:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->TransmitterError:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 42
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "TransmitterEOL3Weeks"

    const/16 v2, 0x13

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_transmitter_expiring:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_transmitter_EOL_3_weeks:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_swipe_to_silence:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->TransmitterEOL3Weeks:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 43
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "TransmitterEOL2Weeks"

    const/16 v2, 0x14

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_transmitter_expiring:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_transmitter_EOL_2_weeks:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_swipe_to_silence:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->TransmitterEOL2Weeks:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 44
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "TransmitterEOL"

    const/16 v2, 0x15

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_transmitter_expired:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_transmitter_EOL:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->TransmitterEOL:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 45
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "NoBluetooth"

    const/16 v2, 0x16

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_no_bluetooth:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_no_bluetooth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->NoBluetooth:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 46
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "TransmitterNotFound"

    const/16 v2, 0x17

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_transmitter_not_found:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_transmitter_not_found:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->TransmitterNotFound:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 47
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "DiskSpaceLow"

    const/16 v2, 0x18

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_storage_low:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_disk_space_low:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->DiskSpaceLow:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 48
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "DiskSpaceCriticallyLow"

    const/16 v2, 0x19

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_storage_empty:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_disk_space_critically_low:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_touch_for_more_info:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->DiskSpaceCriticallyLow:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 49
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "SQLError"

    const/16 v2, 0x1a

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_app_failed_alert:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_app_failed:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_touch_for_more_info:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SQLError:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 50
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "CoarseLocationPermissionOff"

    const/16 v2, 0x1b

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_location_permission:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_coarse_location:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_touch_for_more_info:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->CoarseLocationPermissionOff:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 51
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "TransmitterCompatibility"

    const/16 v2, 0x1c

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_transmitter_compatibility:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_transmitter_compatibility:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->TransmitterCompatibility:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 52
    new-instance v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const-string v1, "AlertSettingsError"

    const/16 v2, 0x1d

    sget v3, Lcom/dexcom/cgm/activities/R$string;->notification_title_alert_settings_not_found:I

    sget v4, Lcom/dexcom/cgm/activities/R$string;->notification_message_alert_settings_not_found:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/dexcom/cgm/activities/R$string;->notification_subtext_touch_for_more_info:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;-><init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->AlertSettingsError:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    .line 21
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    const/4 v1, 0x0

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->UrgentLowGlucose:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->LowGlucose:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->HighGlucose:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->RiseRate:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->FallRate:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->NoData:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->LowWedge:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->HighWedge:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->FirstOfTwoCalibrations:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SecondOfTwoCalibrations:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SensorFailed:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->LowTransmitterBattery:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SensorExpiration6Hours:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SensorExpiration2Hours:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SensorExpiration30Minutes:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SensorExpiration:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->CalibrationRequired:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->CalibrationRequested:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->TransmitterError:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->TransmitterEOL3Weeks:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->TransmitterEOL2Weeks:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->TransmitterEOL:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->NoBluetooth:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->TransmitterNotFound:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->DiskSpaceLow:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->DiskSpaceCriticallyLow:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SQLError:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->CoarseLocationPermissionOff:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->TransmitterCompatibility:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->AlertSettingsError:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->$VALUES:[Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/Integer;Ljava/lang/Integer;ZZ)V
    .locals 1
    .param p4    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput p3, p0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->m_notificationTitleID:I

    .line 66
    iput-object p4, p0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->m_notificationMessageID:Ljava/lang/Integer;

    .line 67
    iput-object p5, p0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->m_notificationSubtextID:Ljava/lang/Integer;

    .line 68
    iput-boolean p6, p0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->m_hasAcknowledgeButton:Z

    .line 69
    iput-boolean p7, p0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->m_hasCalibrationButton:Z

    .line 72
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->m_hasAcknowledgeButton:Z

    .line 73
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->m_hasCalibrationButton:Z

    .line 74
    return-void
.end method

.method public static fromAlertKind(Lcom/dexcom/cgm/h/a/a/a;)Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 141
    if-nez p0, :cond_0

    .line 229
    :goto_0
    :pswitch_0
    return-object v0

    .line 144
    :cond_0
    sget-object v1, Lcom/dexcom/cgm/activities/notifications/NotificationResources$1;->$SwitchMap$com$dexcom$cgm$presentation$model$enums$DexAlertKind:[I

    invoke-virtual {p0}, Lcom/dexcom/cgm/h/a/a/a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 149
    :pswitch_1
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->UrgentLowGlucose:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 151
    :pswitch_2
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->LowGlucose:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 153
    :pswitch_3
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->HighGlucose:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 157
    :pswitch_4
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->CalibrationRequired:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 159
    :pswitch_5
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->CalibrationRequested:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 161
    :pswitch_6
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SensorFailed:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 163
    :pswitch_7
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->FirstOfTwoCalibrations:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 165
    :pswitch_8
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SecondOfTwoCalibrations:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 167
    :pswitch_9
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SensorExpiration:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 169
    :pswitch_a
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SensorExpiration:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 171
    :pswitch_b
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SensorExpiration6Hours:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 173
    :pswitch_c
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SensorExpiration2Hours:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 175
    :pswitch_d
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SensorExpiration30Minutes:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 177
    :pswitch_e
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->HighWedge:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 179
    :pswitch_f
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->LowWedge:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 183
    :pswitch_10
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->NoData:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 185
    :pswitch_11
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->RiseRate:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 193
    :pswitch_12
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->FallRate:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 199
    :pswitch_13
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->LowTransmitterBattery:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 201
    :pswitch_14
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->TransmitterError:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 205
    :pswitch_15
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->TransmitterEOL3Weeks:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 207
    :pswitch_16
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->TransmitterEOL2Weeks:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 213
    :pswitch_17
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->TransmitterNotFound:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 215
    :pswitch_18
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->DiskSpaceCriticallyLow:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 218
    :pswitch_19
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->DiskSpaceLow:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 220
    :pswitch_1a
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->NoBluetooth:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 222
    :pswitch_1b
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->CoarseLocationPermissionOff:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 224
    :pswitch_1c
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->TransmitterCompatibility:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 226
    :pswitch_1d
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->AlertSettingsError:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
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
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->$VALUES:[Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    return-object v0
.end method


# virtual methods
.method public final getNotificationMessage()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->m_notificationMessageID:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->m_notificationMessageID:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getNotificationSubtext()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->m_notificationSubtextID:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->m_notificationSubtextID:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getNotificationTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/dexcom/cgm/activities/TheApplicationContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->m_notificationTitleID:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasAcknowledgeButton()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->m_hasAcknowledgeButton:Z

    return v0
.end method

.method public final hasCalibrationButton()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->m_hasCalibrationButton:Z

    return v0
.end method

.method public final isCriticalAlert()Z
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->UrgentLowGlucose:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->TransmitterError:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SensorFailed:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMuteOverrideEnabled()Z
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->UrgentLowGlucose:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->LowGlucose:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->HighGlucose:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->RiseRate:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->FallRate:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->NoData:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->LowWedge:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->HighWedge:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->FirstOfTwoCalibrations:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SensorFailed:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SensorExpiration:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->CalibrationRequired:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->TransmitterError:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->DiskSpaceCriticallyLow:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->SQLError:Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toAlertKind()Lcom/dexcom/cgm/h/a/a/a;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 238
    invoke-static {}, Lcom/dexcom/cgm/h/a/a/a;->values()[Lcom/dexcom/cgm/h/a/a/a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 240
    invoke-static {v0}, Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;->fromAlertKind(Lcom/dexcom/cgm/h/a/a/a;)Lcom/dexcom/cgm/activities/notifications/NotificationResources$NotificationType;

    move-result-object v4

    if-ne v4, p0, :cond_0

    .line 244
    :goto_1
    return-object v0

    .line 238
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 244
    :cond_1
    sget-object v0, Lcom/dexcom/cgm/h/a/a/a;->None:Lcom/dexcom/cgm/h/a/a/a;

    goto :goto_1
.end method
