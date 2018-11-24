.class public final enum Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;
.super Ljava/lang/Enum;
.source "TestUserActivityType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum AlertAcknowledged:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum AlertCleared:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum AlertReceived:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum Battery:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum BluetoothDevice:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum BluetoothEvent:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum ButtonTapped:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum DataEntry:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum DiskSpaceLow:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum DisplayingAlert:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum DisplayingScreen:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum Eula:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum Extension:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum Interaction:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum LowMemory:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum OS:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum SQLiteError:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum StateCheck:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum Transmitter:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum TransmitterInfo:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

.field public static final enum UpdatingScreen:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;


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
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "DisplayingScreen"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->DisplayingScreen:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "DisplayingAlert"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->DisplayingAlert:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "UpdatingScreen"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->UpdatingScreen:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "ButtonTapped"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->ButtonTapped:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "OS"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->OS:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "AlertReceived"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->AlertReceived:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "AlertAcknowledged"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->AlertAcknowledged:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "AlertCleared"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->AlertCleared:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "DataEntry"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->DataEntry:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "BluetoothEvent"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->BluetoothEvent:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "Transmitter"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->Transmitter:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 25
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "Eula"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->Eula:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 26
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "DiskSpaceLow"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->DiskSpaceLow:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 27
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "SQLiteError"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->SQLiteError:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "Extension"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->Extension:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 29
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "Battery"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->Battery:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 30
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "LowMemory"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->LowMemory:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 31
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "StateCheck"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->StateCheck:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 32
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "TransmitterInfo"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->TransmitterInfo:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 33
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "BluetoothDevice"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->BluetoothDevice:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 34
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    const-string v1, "Interaction"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->Interaction:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    .line 12
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->DisplayingScreen:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->DisplayingAlert:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->UpdatingScreen:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->ButtonTapped:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->OS:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->AlertReceived:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->AlertAcknowledged:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->AlertCleared:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->DataEntry:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->BluetoothEvent:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->Transmitter:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->Eula:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->DiskSpaceLow:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->SQLiteError:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->Extension:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->Battery:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->LowMemory:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->StateCheck:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->TransmitterInfo:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->BluetoothDevice:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->Interaction:Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/test/api/model/enums/TestUserActivityType;

    return-object v0
.end method
