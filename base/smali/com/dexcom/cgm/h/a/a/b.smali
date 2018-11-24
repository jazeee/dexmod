.class public final enum Lcom/dexcom/cgm/h/a/a/b;
.super Ljava/lang/Enum;
.source "DexDisplayState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/h/a/a/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum AberrationDetected:Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum BluetoothOff:Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum CountsAberration:Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum DualBloodDrop:Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum EGVAvailable:Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum FingerStickRequest:Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum NoAntenna:Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum None:Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum OneOfTwoDrops:Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum OutOfCal:Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum PairNewTransmitter:Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum SensorHighWedgeError:Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum SensorLowWedgeError:Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum SensorRemoved:Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum StartUpPeriod:Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum TerminalNoise:Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum TimeLoss:Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum TransmitterFailed:Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum TransmitterNotFound:Lcom/dexcom/cgm/h/a/a/b;

.field public static final enum TransmitterPairing:Lcom/dexcom/cgm/h/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->None:Lcom/dexcom/cgm/h/a/a/b;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "AberrationDetected"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->AberrationDetected:Lcom/dexcom/cgm/h/a/a/b;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "CountsAberration"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->CountsAberration:Lcom/dexcom/cgm/h/a/a/b;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "DualBloodDrop"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->DualBloodDrop:Lcom/dexcom/cgm/h/a/a/b;

    .line 32
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "EGVAvailable"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->EGVAvailable:Lcom/dexcom/cgm/h/a/a/b;

    .line 36
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "FingerStickRequest"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->FingerStickRequest:Lcom/dexcom/cgm/h/a/a/b;

    .line 41
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "NoAntenna"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->NoAntenna:Lcom/dexcom/cgm/h/a/a/b;

    .line 46
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "OneOfTwoDrops"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->OneOfTwoDrops:Lcom/dexcom/cgm/h/a/a/b;

    .line 50
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "OutOfCal"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->OutOfCal:Lcom/dexcom/cgm/h/a/a/b;

    .line 56
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "SensorHighWedgeError"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->SensorHighWedgeError:Lcom/dexcom/cgm/h/a/a/b;

    .line 62
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "SensorLowWedgeError"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->SensorLowWedgeError:Lcom/dexcom/cgm/h/a/a/b;

    .line 66
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "SensorRemoved"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->SensorRemoved:Lcom/dexcom/cgm/h/a/a/b;

    .line 71
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "StartUpPeriod"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->StartUpPeriod:Lcom/dexcom/cgm/h/a/a/b;

    .line 75
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "TerminalNoise"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->TerminalNoise:Lcom/dexcom/cgm/h/a/a/b;

    .line 80
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "TransmitterNotFound"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->TransmitterNotFound:Lcom/dexcom/cgm/h/a/a/b;

    .line 84
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "TransmitterFailed"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->TransmitterFailed:Lcom/dexcom/cgm/h/a/a/b;

    .line 90
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "TransmitterPairing"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->TransmitterPairing:Lcom/dexcom/cgm/h/a/a/b;

    .line 95
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "PairNewTransmitter"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->PairNewTransmitter:Lcom/dexcom/cgm/h/a/a/b;

    .line 100
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "TimeLoss"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->TimeLoss:Lcom/dexcom/cgm/h/a/a/b;

    .line 104
    new-instance v0, Lcom/dexcom/cgm/h/a/a/b;

    const-string v1, "BluetoothOff"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/h/a/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->BluetoothOff:Lcom/dexcom/cgm/h/a/a/b;

    .line 14
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/dexcom/cgm/h/a/a/b;

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->None:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->AberrationDetected:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->CountsAberration:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->DualBloodDrop:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/h/a/a/b;->EGVAvailable:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/h/a/a/b;->FingerStickRequest:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/h/a/a/b;->NoAntenna:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/h/a/a/b;->OneOfTwoDrops:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/h/a/a/b;->OutOfCal:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/h/a/a/b;->SensorHighWedgeError:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/h/a/a/b;->SensorLowWedgeError:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/h/a/a/b;->SensorRemoved:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/h/a/a/b;->StartUpPeriod:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/h/a/a/b;->TerminalNoise:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/h/a/a/b;->TransmitterNotFound:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/h/a/a/b;->TransmitterFailed:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/h/a/a/b;->TransmitterPairing:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/h/a/a/b;->PairNewTransmitter:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/h/a/a/b;->TimeLoss:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/h/a/a/b;->BluetoothOff:Lcom/dexcom/cgm/h/a/a/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/h/a/a/b;->$VALUES:[Lcom/dexcom/cgm/h/a/a/b;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInternal(Lcom/dexcom/cgm/model/enums/EGVDisplayState;)Lcom/dexcom/cgm/h/a/a/b;
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/dexcom/cgm/h/a/a/b;->values()[Lcom/dexcom/cgm/h/a/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    .line 114
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/h/a/a/b;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/dexcom/cgm/h/a/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/h/a/a/b;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/h/a/a/b;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/dexcom/cgm/h/a/a/b;->$VALUES:[Lcom/dexcom/cgm/h/a/a/b;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/h/a/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/h/a/a/b;

    return-object v0
.end method
