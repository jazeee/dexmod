.class public final enum Lcom/dexcom/cgm/model/enums/BluetoothEventType;
.super Ljava/lang/Enum;
.source "BluetoothEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/enums/BluetoothEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum Battery:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum BluetoothLocationPermissionGranted:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum BluetoothLocationPermissionNeeded:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum BluetoothOff:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum BluetoothOn:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum BluetoothTurningOff:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum BluetoothTurningOn:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum BondChange:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum CommunicationStart:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum CommunicationStop:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum ConnectionError:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum ConnectionSuccess:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum IncompatibleTransmitter:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum ScanError:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum ScanStart:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum ServiceCreate:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum ServiceDestroy:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum ServiceError:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum TestCaptureEnd:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum TestCaptureStart:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

.field public static final enum TransmitterComponentCreate:Lcom/dexcom/cgm/model/enums/BluetoothEventType;


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
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "TransmitterComponentCreate"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->TransmitterComponentCreate:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 13
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "ServiceCreate"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->ServiceCreate:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 14
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "ServiceDestroy"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->ServiceDestroy:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "ServiceError"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->ServiceError:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "CommunicationStart"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->CommunicationStart:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "CommunicationStop"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->CommunicationStop:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "ScanStart"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->ScanStart:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "ScanError"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->ScanError:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "IncompatibleTransmitter"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->IncompatibleTransmitter:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "ConnectionSuccess"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->ConnectionSuccess:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "ConnectionError"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->ConnectionError:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "BondChange"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BondChange:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "BluetoothTurningOff"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BluetoothTurningOff:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 25
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "BluetoothTurningOn"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BluetoothTurningOn:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 26
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "BluetoothOff"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BluetoothOff:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 27
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "BluetoothOn"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BluetoothOn:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "BluetoothLocationPermissionNeeded"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BluetoothLocationPermissionNeeded:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 29
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "BluetoothLocationPermissionGranted"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BluetoothLocationPermissionGranted:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 30
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "Battery"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->Battery:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 32
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "TestCaptureStart"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->TestCaptureStart:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 33
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    const-string v1, "TestCaptureEnd"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/BluetoothEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->TestCaptureEnd:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 9
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->TransmitterComponentCreate:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->ServiceCreate:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->ServiceDestroy:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->ServiceError:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->CommunicationStart:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->CommunicationStop:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->ScanStart:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->ScanError:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->IncompatibleTransmitter:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->ConnectionSuccess:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->ConnectionError:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BondChange:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BluetoothTurningOff:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BluetoothTurningOn:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BluetoothOff:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BluetoothOn:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BluetoothLocationPermissionNeeded:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BluetoothLocationPermissionGranted:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->Battery:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->TestCaptureStart:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->TestCaptureEnd:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->$VALUES:[Lcom/dexcom/cgm/model/enums/BluetoothEventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/BluetoothEventType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/enums/BluetoothEventType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->$VALUES:[Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/enums/BluetoothEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    return-object v0
.end method
