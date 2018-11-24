.class public final enum Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;
.super Ljava/lang/Enum;
.source "TestMeterEntryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum PrunedDueToTooManyBgs:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum SentToTransmitterBGIsDuplicate:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum SentToTransmitterBGNotInChronologicalOrder:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum SentToTransmitterBGOutsideOf20to600:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum SentToTransmitterBGOutsideOf40to400Fail:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum SentToTransmitterBGOutsideOf40to400Pass:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum SentToTransmitterBGTimestampEarlierThanSessionStartCommandReceived:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum SentToTransmitterBGTimestampInTheFuture:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum SentToTransmitterBGTimestampTooEarly:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum SentToTransmitterBGUnmatched:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum SentToTransmitterCalibrationAlreadyDoneWithOtherDevice:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum SentToTransmitterCalibrationError0:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum SentToTransmitterCalibrationError1:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum SentToTransmitterCalibrationLinearityFitFailure:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum SentToTransmitterCalibrationSuccess:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum SentToTransmitterNotInSession:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum SentToTransmitterOutlierCalibrationFailure:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum SentToTransmitterOutlierCalibrationRequest:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum SentToTransmitterResponseUnknown:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum SentToTransmitterSecondStartupBGRequired:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

.field public static final enum UserEntered:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;


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
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "SentToTransmitterResponseUnknown"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterResponseUnknown:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "SentToTransmitterCalibrationSuccess"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterCalibrationSuccess:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "SentToTransmitterCalibrationError0"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterCalibrationError0:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "SentToTransmitterCalibrationError1"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterCalibrationError1:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "SentToTransmitterCalibrationLinearityFitFailure"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterCalibrationLinearityFitFailure:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "SentToTransmitterOutlierCalibrationFailure"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterOutlierCalibrationFailure:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "SentToTransmitterBGOutsideOf40to400Fail"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterBGOutsideOf40to400Fail:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "SentToTransmitterSecondStartupBGRequired"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterSecondStartupBGRequired:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "SentToTransmitterBGOutsideOf40to400Pass"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterBGOutsideOf40to400Pass:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "SentToTransmitterOutlierCalibrationRequest"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterOutlierCalibrationRequest:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "SentToTransmitterBGUnmatched"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterBGUnmatched:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 25
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "SentToTransmitterBGOutsideOf20to600"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterBGOutsideOf20to600:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 26
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "SentToTransmitterNotInSession"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterNotInSession:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 27
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "SentToTransmitterBGTimestampInTheFuture"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterBGTimestampInTheFuture:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "SentToTransmitterBGIsDuplicate"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterBGIsDuplicate:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 29
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "SentToTransmitterBGTimestampTooEarly"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterBGTimestampTooEarly:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 30
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "SentToTransmitterBGTimestampEarlierThanSessionStartCommandReceived"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterBGTimestampEarlierThanSessionStartCommandReceived:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 31
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "SentToTransmitterBGNotInChronologicalOrder"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterBGNotInChronologicalOrder:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 32
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "SentToTransmitterCalibrationAlreadyDoneWithOtherDevice"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterCalibrationAlreadyDoneWithOtherDevice:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 33
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "UserEntered"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->UserEntered:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 34
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    const-string v1, "PrunedDueToTooManyBgs"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->PrunedDueToTooManyBgs:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    .line 12
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterResponseUnknown:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterCalibrationSuccess:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterCalibrationError0:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterCalibrationError1:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterCalibrationLinearityFitFailure:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterOutlierCalibrationFailure:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterBGOutsideOf40to400Fail:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterSecondStartupBGRequired:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterBGOutsideOf40to400Pass:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterOutlierCalibrationRequest:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterBGUnmatched:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterBGOutsideOf20to600:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterNotInSession:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterBGTimestampInTheFuture:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterBGIsDuplicate:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterBGTimestampTooEarly:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterBGTimestampEarlierThanSessionStartCommandReceived:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterBGNotInChronologicalOrder:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->SentToTransmitterCalibrationAlreadyDoneWithOtherDevice:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->UserEntered:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->PrunedDueToTooManyBgs:Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/test/api/model/enums/TestMeterEntryType;

    return-object v0
.end method
