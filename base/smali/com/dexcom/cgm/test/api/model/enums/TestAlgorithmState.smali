.class public final enum Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;
.super Ljava/lang/Enum;
.source "TestAlgorithmState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum CalState_FirstOfTwoCalibrationsNeeded:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum CalState_HighWedgeDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum CalState_HighWedgeTransmitter:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum CalState_InCalDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum CalState_InCalTransmitter:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum CalState_LinearityFitDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum CalState_LinearityFitTransmitter:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum CalState_LowWedgeDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum CalState_LowWedgeTransmitter:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum CalState_OutOfCalDueToOutlierTransmitter:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum CalState_SecondOfTwoCalibrationsNeeded:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum CalState_SessionNotInProgress:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum CalState_Start:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum CalState_StartUp:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum CalibrationError0:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum CalibrationError1:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum CalibrationLinearityFitFailure:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum CalibrationRequest:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum FirstOfTwoBGsNeeded:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum InCalibration:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum None:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum NotUsed:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum OutOfCalDueToOutlier:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum OutlierCalibrationRequest:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum SecondOfTwoBGsNeeded:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum SensorFailedDueToCountsAberration:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum SensorFailedDueToResidualAberration:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum SensorWarmup:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum SessionExpired:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum SessionFailedDueToTransmitterError:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum SessionFailedDueToUnrecoverableError:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum SessionStopped:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum TemporarySensorFailure:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum Unused_CalState_HighWedgeDisplayWithFirstBG:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

.field public static final enum Unused_CalState_LowWedgeDisplayWithFirstBG:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->None:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "SessionStopped"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->SessionStopped:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "SensorWarmup"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->SensorWarmup:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "NotUsed"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->NotUsed:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "FirstOfTwoBGsNeeded"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->FirstOfTwoBGsNeeded:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "SecondOfTwoBGsNeeded"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->SecondOfTwoBGsNeeded:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "InCalibration"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->InCalibration:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "CalibrationRequest"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalibrationRequest:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "CalibrationError1"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalibrationError1:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "CalibrationError0"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalibrationError0:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "CalibrationLinearityFitFailure"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalibrationLinearityFitFailure:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 25
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "SensorFailedDueToCountsAberration"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->SensorFailedDueToCountsAberration:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 26
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "SensorFailedDueToResidualAberration"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->SensorFailedDueToResidualAberration:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 27
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "OutOfCalDueToOutlier"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->OutOfCalDueToOutlier:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "OutlierCalibrationRequest"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->OutlierCalibrationRequest:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 29
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "SessionExpired"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->SessionExpired:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 30
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "SessionFailedDueToUnrecoverableError"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->SessionFailedDueToUnrecoverableError:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 31
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "SessionFailedDueToTransmitterError"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->SessionFailedDueToTransmitterError:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 32
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "TemporarySensorFailure"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->TemporarySensorFailure:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 35
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "CalState_Start"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_Start:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 36
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "CalState_StartUp"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_StartUp:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 37
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "CalState_FirstOfTwoCalibrationsNeeded"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_FirstOfTwoCalibrationsNeeded:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 38
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "Unused_CalState_HighWedgeDisplayWithFirstBG"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->Unused_CalState_HighWedgeDisplayWithFirstBG:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 39
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "Unused_CalState_LowWedgeDisplayWithFirstBG"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->Unused_CalState_LowWedgeDisplayWithFirstBG:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 40
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "CalState_SecondOfTwoCalibrationsNeeded"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_SecondOfTwoCalibrationsNeeded:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 41
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "CalState_InCalTransmitter"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_InCalTransmitter:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 42
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "CalState_InCalDisplay"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_InCalDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 43
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "CalState_HighWedgeTransmitter"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_HighWedgeTransmitter:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 44
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "CalState_LowWedgeTransmitter"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_LowWedgeTransmitter:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 45
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "CalState_LinearityFitTransmitter"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_LinearityFitTransmitter:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 46
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "CalState_OutOfCalDueToOutlierTransmitter"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_OutOfCalDueToOutlierTransmitter:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 47
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "CalState_HighWedgeDisplay"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_HighWedgeDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 48
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "CalState_LowWedgeDisplay"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_LowWedgeDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 49
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "CalState_LinearityFitDisplay"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_LinearityFitDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 50
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    const-string v1, "CalState_SessionNotInProgress"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_SessionNotInProgress:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    .line 12
    const/16 v0, 0x23

    new-array v0, v0, [Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->None:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->SessionStopped:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->SensorWarmup:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->NotUsed:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->FirstOfTwoBGsNeeded:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->SecondOfTwoBGsNeeded:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->InCalibration:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalibrationRequest:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalibrationError1:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalibrationError0:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalibrationLinearityFitFailure:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->SensorFailedDueToCountsAberration:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->SensorFailedDueToResidualAberration:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->OutOfCalDueToOutlier:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->OutlierCalibrationRequest:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->SessionExpired:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->SessionFailedDueToUnrecoverableError:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->SessionFailedDueToTransmitterError:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->TemporarySensorFailure:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_Start:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_StartUp:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_FirstOfTwoCalibrationsNeeded:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->Unused_CalState_HighWedgeDisplayWithFirstBG:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->Unused_CalState_LowWedgeDisplayWithFirstBG:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_SecondOfTwoCalibrationsNeeded:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_InCalTransmitter:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_InCalDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_HighWedgeTransmitter:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_LowWedgeTransmitter:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_LinearityFitTransmitter:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_OutOfCalDueToOutlierTransmitter:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_HighWedgeDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_LowWedgeDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_LinearityFitDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->CalState_SessionNotInProgress:Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/test/api/model/enums/TestAlgorithmState;

    return-object v0
.end method
