.class public final enum Lcom/dexcom/cgm/model/enums/AlgorithmState;
.super Ljava/lang/Enum;
.source "AlgorithmState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/enums/AlgorithmState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum CalState_FirstOfTwoCalibrationsNeeded:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum CalState_HighWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum CalState_HighWedgeTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum CalState_InCalDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum CalState_InCalTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum CalState_LinearityFitDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum CalState_LinearityFitTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum CalState_LowWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum CalState_LowWedgeTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum CalState_OutOfCalDueToOutlierTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum CalState_SecondOfTwoCalibrationsNeeded:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum CalState_SessionNotInProgress:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum CalState_Start:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum CalState_StartUp:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum CalibrationError0:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum CalibrationError1:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum CalibrationLinearityFitFailure:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum CalibrationRequest:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum FirstOfTwoBGsNeeded:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum InCalibration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum None:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum NotUsed:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum OutOfCalDueToOutlier:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum OutlierCalibrationRequest:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum Reserved1:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum SecondOfTwoBGsNeeded:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum SensorFailedDueToCountsAberration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum SensorFailedDueToResidualAberration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum SensorWarmup:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum SessionExpired:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum SessionFailedDueToTransmitterError:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum SessionFailedDueToUnrecoverableError:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum SessionStopped:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum TemporarySensorFailure:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum Unused_CalState_HighWedgeDisplayWithFirstBG:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field public static final enum Unused_CalState_LowWedgeDisplayWithFirstBG:Lcom/dexcom/cgm/model/enums/AlgorithmState;

.field private static final m_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/dexcom/cgm/model/enums/AlgorithmState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 13
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "None"

    invoke-direct {v1, v2, v0, v0}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->None:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 14
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "SessionStopped"

    invoke-direct {v1, v2, v5, v5}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionStopped:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 15
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "SensorWarmup"

    invoke-direct {v1, v2, v6, v6}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SensorWarmup:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 16
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "NotUsed"

    invoke-direct {v1, v2, v7, v7}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->NotUsed:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 17
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "FirstOfTwoBGsNeeded"

    invoke-direct {v1, v2, v8, v8}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->FirstOfTwoBGsNeeded:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 18
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "SecondOfTwoBGsNeeded"

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SecondOfTwoBGsNeeded:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 19
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "InCalibration"

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->InCalibration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 20
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "CalibrationRequest"

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalibrationRequest:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 21
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "CalibrationError1"

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalibrationError1:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 22
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "CalibrationError0"

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalibrationError0:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 23
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "CalibrationLinearityFitFailure"

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalibrationLinearityFitFailure:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 24
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "SensorFailedDueToCountsAberration"

    const/16 v3, 0xb

    const/16 v4, 0xb

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SensorFailedDueToCountsAberration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 25
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "SensorFailedDueToResidualAberration"

    const/16 v3, 0xc

    const/16 v4, 0xc

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SensorFailedDueToResidualAberration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 26
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "OutOfCalDueToOutlier"

    const/16 v3, 0xd

    const/16 v4, 0xd

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->OutOfCalDueToOutlier:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 27
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "OutlierCalibrationRequest"

    const/16 v3, 0xe

    const/16 v4, 0xe

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->OutlierCalibrationRequest:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 28
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "SessionExpired"

    const/16 v3, 0xf

    const/16 v4, 0xf

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionExpired:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 29
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "SessionFailedDueToUnrecoverableError"

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionFailedDueToUnrecoverableError:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 30
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "SessionFailedDueToTransmitterError"

    const/16 v3, 0x11

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionFailedDueToTransmitterError:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 31
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "TemporarySensorFailure"

    const/16 v3, 0x12

    const/16 v4, 0x12

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->TemporarySensorFailure:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 32
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "Reserved1"

    const/16 v3, 0x13

    const/16 v4, 0x13

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->Reserved1:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 34
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "CalState_Start"

    const/16 v3, 0x14

    const/16 v4, 0x80

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_Start:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 35
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "CalState_StartUp"

    const/16 v3, 0x15

    const/16 v4, 0x81

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_StartUp:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 36
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "CalState_FirstOfTwoCalibrationsNeeded"

    const/16 v3, 0x16

    const/16 v4, 0x82

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_FirstOfTwoCalibrationsNeeded:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 38
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "Unused_CalState_HighWedgeDisplayWithFirstBG"

    const/16 v3, 0x17

    const/16 v4, 0x83

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->Unused_CalState_HighWedgeDisplayWithFirstBG:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 39
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "Unused_CalState_LowWedgeDisplayWithFirstBG"

    const/16 v3, 0x18

    const/16 v4, 0x84

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->Unused_CalState_LowWedgeDisplayWithFirstBG:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 40
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "CalState_SecondOfTwoCalibrationsNeeded"

    const/16 v3, 0x19

    const/16 v4, 0x85

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_SecondOfTwoCalibrationsNeeded:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 42
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "CalState_InCalTransmitter"

    const/16 v3, 0x1a

    const/16 v4, 0x86

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_InCalTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 43
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "CalState_InCalDisplay"

    const/16 v3, 0x1b

    const/16 v4, 0x87

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_InCalDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 45
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "CalState_HighWedgeTransmitter"

    const/16 v3, 0x1c

    const/16 v4, 0x88

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_HighWedgeTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 47
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "CalState_LowWedgeTransmitter"

    const/16 v3, 0x1d

    const/16 v4, 0x89

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LowWedgeTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 48
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "CalState_LinearityFitTransmitter"

    const/16 v3, 0x1e

    const/16 v4, 0x8a

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LinearityFitTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 50
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "CalState_OutOfCalDueToOutlierTransmitter"

    const/16 v3, 0x1f

    const/16 v4, 0x8b

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_OutOfCalDueToOutlierTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 52
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "CalState_HighWedgeDisplay"

    const/16 v3, 0x20

    const/16 v4, 0x8c

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_HighWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 54
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "CalState_LowWedgeDisplay"

    const/16 v3, 0x21

    const/16 v4, 0x8d

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LowWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 56
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "CalState_LinearityFitDisplay"

    const/16 v3, 0x22

    const/16 v4, 0x8e

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LinearityFitDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 58
    new-instance v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    const-string v2, "CalState_SessionNotInProgress"

    const/16 v3, 0x23

    const/16 v4, 0x8f

    invoke-direct {v1, v2, v3, v4}, Lcom/dexcom/cgm/model/enums/AlgorithmState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_SessionNotInProgress:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 11
    const/16 v1, 0x24

    new-array v1, v1, [Lcom/dexcom/cgm/model/enums/AlgorithmState;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->None:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v2, v1, v0

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionStopped:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SensorWarmup:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->NotUsed:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlgorithmState;->FirstOfTwoBGsNeeded:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SecondOfTwoBGsNeeded:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->InCalibration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalibrationRequest:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalibrationError1:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalibrationError0:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalibrationLinearityFitFailure:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SensorFailedDueToCountsAberration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SensorFailedDueToResidualAberration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->OutOfCalDueToOutlier:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->OutlierCalibrationRequest:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionExpired:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionFailedDueToUnrecoverableError:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionFailedDueToTransmitterError:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->TemporarySensorFailure:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->Reserved1:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_Start:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_StartUp:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_FirstOfTwoCalibrationsNeeded:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->Unused_CalState_HighWedgeDisplayWithFirstBG:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->Unused_CalState_LowWedgeDisplayWithFirstBG:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_SecondOfTwoCalibrationsNeeded:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_InCalTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_InCalDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_HighWedgeTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LowWedgeTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LinearityFitTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_OutOfCalDueToOutlierTransmitter:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x20

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_HighWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x21

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LowWedgeDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x22

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_LinearityFitDisplay:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    const/16 v2, 0x23

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_SessionNotInProgress:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    aput-object v3, v1, v2

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->$VALUES:[Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/dexcom/cgm/model/enums/AlgorithmState;->m_map:Ljava/util/HashMap;

    .line 66
    invoke-static {}, Lcom/dexcom/cgm/model/enums/AlgorithmState;->values()[Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 68
    sget-object v4, Lcom/dexcom/cgm/model/enums/AlgorithmState;->m_map:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/dexcom/cgm/model/enums/AlgorithmState;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput p3, p0, Lcom/dexcom/cgm/model/enums/AlgorithmState;->m_value:I

    .line 75
    return-void
.end method

.method public static isStopped(Lcom/dexcom/cgm/model/enums/AlgorithmState;)Z
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionStopped:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SensorFailedDueToCountsAberration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SensorFailedDueToResidualAberration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionExpired:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionFailedDueToUnrecoverableError:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionFailedDueToTransmitterError:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;->Reserved1:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;->CalState_SessionNotInProgress:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(I)Lcom/dexcom/cgm/model/enums/AlgorithmState;
    .locals 3

    .prologue
    .line 84
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;->m_map:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    .line 85
    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown AlgorithmState value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/AlgorithmState;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/enums/AlgorithmState;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;->$VALUES:[Lcom/dexcom/cgm/model/enums/AlgorithmState;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/enums/AlgorithmState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/enums/AlgorithmState;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/dexcom/cgm/model/enums/AlgorithmState;->m_value:I

    return v0
.end method
