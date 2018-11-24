.class public final enum Lcom/dexcom/cgm/model/enums/MeterEntryType;
.super Ljava/lang/Enum;
.source "MeterEntryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/enums/MeterEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum PrunedDueToTooManyBgs:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum SentToTransmitterBGIsDuplicate:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum SentToTransmitterBGNotInChronologicalOrder:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum SentToTransmitterBGOutsideOf20to600:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum SentToTransmitterBGOutsideOf40to400Fail:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum SentToTransmitterBGOutsideOf40to400Pass:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum SentToTransmitterBGTimestampEarlierThanSessionStartCommandReceived:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum SentToTransmitterBGTimestampInTheFuture:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum SentToTransmitterBGTimestampTooEarly:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum SentToTransmitterBGUnmatched:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum SentToTransmitterCalibrationAlreadyDoneWithOtherDevice:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum SentToTransmitterCalibrationError0:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum SentToTransmitterCalibrationError1:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum SentToTransmitterCalibrationLinearityFitFailure:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum SentToTransmitterCalibrationSuccess:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum SentToTransmitterNotInSession:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum SentToTransmitterOutlierCalibrationFailure:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum SentToTransmitterOutlierCalibrationRequest:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum SentToTransmitterResponseUnknown:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum SentToTransmitterSecondStartupBGRequired:Lcom/dexcom/cgm/model/enums/MeterEntryType;

.field public static final enum UserEntered:Lcom/dexcom/cgm/model/enums/MeterEntryType;


# instance fields
.field private m_meterEntryType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "SentToTransmitterResponseUnknown"

    const-string v2, "SentToTransmitterResponseUnknown"

    invoke-direct {v0, v1, v4, v2}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterResponseUnknown:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 12
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "SentToTransmitterCalibrationSuccess"

    const-string v2, "SentToTransmitterCalibrationSuccess"

    invoke-direct {v0, v1, v5, v2}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterCalibrationSuccess:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 13
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "SentToTransmitterCalibrationError0"

    const-string v2, "SentToTransmitterCalibrationError0"

    invoke-direct {v0, v1, v6, v2}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterCalibrationError0:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 14
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "SentToTransmitterCalibrationError1"

    const-string v2, "SentToTransmitterCalibrationError1"

    invoke-direct {v0, v1, v7, v2}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterCalibrationError1:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "SentToTransmitterCalibrationLinearityFitFailure"

    const-string v2, "SentToTransmitterCalibrationLinearityFitFailure"

    invoke-direct {v0, v1, v8, v2}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterCalibrationLinearityFitFailure:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "SentToTransmitterOutlierCalibrationFailure"

    const/4 v2, 0x5

    const-string v3, "SentToTransmitterOutlierCalibrationFailure"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterOutlierCalibrationFailure:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "SentToTransmitterBGOutsideOf40to400Fail"

    const/4 v2, 0x6

    const-string v3, "SentToTransmitterBGOutsideOf40to400Fail"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGOutsideOf40to400Fail:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "SentToTransmitterSecondStartupBGRequired"

    const/4 v2, 0x7

    const-string v3, "SentToTransmitterSecondStartupBGRequired"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterSecondStartupBGRequired:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "SentToTransmitterBGOutsideOf40to400Pass"

    const/16 v2, 0x8

    const-string v3, "SentToTransmitterBGOutsideOf40to400Pass"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGOutsideOf40to400Pass:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "SentToTransmitterOutlierCalibrationRequest"

    const/16 v2, 0x9

    const-string v3, "SentToTransmitterOutlierCalibrationRequest"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterOutlierCalibrationRequest:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "SentToTransmitterBGUnmatched"

    const/16 v2, 0xa

    const-string v3, "SentToTransmitterBGUnmatched"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGUnmatched:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "SentToTransmitterBGOutsideOf20to600"

    const/16 v2, 0xb

    const-string v3, "SentToTransmitterBGOutsideOf20to600"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGOutsideOf20to600:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "SentToTransmitterNotInSession"

    const/16 v2, 0xc

    const-string v3, "SentToTransmitterNotInSession"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterNotInSession:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 25
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "SentToTransmitterBGTimestampInTheFuture"

    const/16 v2, 0xd

    const-string v3, "SentToTransmitterBGTimestampInTheFuture"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGTimestampInTheFuture:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 26
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "SentToTransmitterBGIsDuplicate"

    const/16 v2, 0xe

    const-string v3, "SentToTransmitterBGIsDuplicate"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGIsDuplicate:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 27
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "SentToTransmitterBGTimestampTooEarly"

    const/16 v2, 0xf

    const-string v3, "SentToTransmitterBGTimestampTooEarly"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGTimestampTooEarly:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "SentToTransmitterBGTimestampEarlierThanSessionStartCommandReceived"

    const/16 v2, 0x10

    const-string v3, "SentToTransmitterBGTimestampEarlierThanSessionStartCommandReceived"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGTimestampEarlierThanSessionStartCommandReceived:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 30
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "SentToTransmitterBGNotInChronologicalOrder"

    const/16 v2, 0x11

    const-string v3, "SentToTransmitterBGNotInChronologicalOrder"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGNotInChronologicalOrder:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 31
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "SentToTransmitterCalibrationAlreadyDoneWithOtherDevice"

    const/16 v2, 0x12

    const-string v3, "SentToTransmitterCalibrationAlreadyDoneWithOtherDevice"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterCalibrationAlreadyDoneWithOtherDevice:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 33
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "UserEntered"

    const/16 v2, 0x13

    const-string v3, "User Entered"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->UserEntered:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 34
    new-instance v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    const-string v1, "PrunedDueToTooManyBgs"

    const/16 v2, 0x14

    const-string v3, "PrunedDueToTooManyBgs"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/MeterEntryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->PrunedDueToTooManyBgs:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 9
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/dexcom/cgm/model/enums/MeterEntryType;

    sget-object v1, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterResponseUnknown:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterCalibrationSuccess:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterCalibrationError0:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterCalibrationError1:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterCalibrationLinearityFitFailure:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterOutlierCalibrationFailure:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGOutsideOf40to400Fail:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterSecondStartupBGRequired:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGOutsideOf40to400Pass:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterOutlierCalibrationRequest:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGUnmatched:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGOutsideOf20to600:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterNotInSession:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGTimestampInTheFuture:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGIsDuplicate:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGTimestampTooEarly:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGTimestampEarlierThanSessionStartCommandReceived:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterBGNotInChronologicalOrder:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterCalibrationAlreadyDoneWithOtherDevice:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/model/enums/MeterEntryType;->UserEntered:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dexcom/cgm/model/enums/MeterEntryType;->PrunedDueToTooManyBgs:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->$VALUES:[Lcom/dexcom/cgm/model/enums/MeterEntryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->m_meterEntryType:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/MeterEntryType;
    .locals 5

    .prologue
    .line 50
    invoke-static {}, Lcom/dexcom/cgm/model/enums/MeterEntryType;->values()[Lcom/dexcom/cgm/model/enums/MeterEntryType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 52
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/MeterEntryType;->getStringifiedMeterEntryType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    :goto_1
    return-object v0

    .line 50
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/MeterEntryType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/enums/MeterEntryType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->$VALUES:[Lcom/dexcom/cgm/model/enums/MeterEntryType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/enums/MeterEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/enums/MeterEntryType;

    return-object v0
.end method


# virtual methods
.method public final getStringifiedMeterEntryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dexcom/cgm/model/enums/MeterEntryType;->m_meterEntryType:Ljava/lang/String;

    return-object v0
.end method
