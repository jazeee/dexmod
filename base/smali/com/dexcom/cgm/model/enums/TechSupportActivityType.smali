.class public final enum Lcom/dexcom/cgm/model/enums/TechSupportActivityType;
.super Ljava/lang/Enum;
.source "TechSupportActivityType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/enums/TechSupportActivityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum AlertAcknowledged:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum AlertCleared:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum AlertFailed:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum AlertReceived:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum Application:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum Battery:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum BluetoothEvent:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum ButtonTapped:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum DataEntry:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum DiskSpaceLow:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum DisplayingAlert:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum DisplayingScreen:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum Eula:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum Extension:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum Interaction:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum LowMemory:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum OS:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum SQLiteError:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum StateCheck:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum Test:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum Transmitter:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

.field public static final enum UpdatingScreen:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;


# instance fields
.field private m_activityType:Ljava/lang/String;


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
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "DisplayingScreen"

    const-string v2, "Displaying Screen"

    invoke-direct {v0, v1, v4, v2}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->DisplayingScreen:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 12
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "DisplayingAlert"

    const-string v2, "Displaying Alert View"

    invoke-direct {v0, v1, v5, v2}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->DisplayingAlert:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 13
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "UpdatingScreen"

    const-string v2, "Updating Screen"

    invoke-direct {v0, v1, v6, v2}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->UpdatingScreen:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 14
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "ButtonTapped"

    const-string v2, "Button Tapped"

    invoke-direct {v0, v1, v7, v2}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->ButtonTapped:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "OS"

    const-string v2, "OS"

    invoke-direct {v0, v1, v8, v2}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->OS:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "AlertReceived"

    const/4 v2, 0x5

    const-string v3, "Alert Received"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->AlertReceived:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "AlertFailed"

    const/4 v2, 0x6

    const-string v3, "Alert Failed"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->AlertFailed:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "AlertAcknowledged"

    const/4 v2, 0x7

    const-string v3, "Alert Acknowledged"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->AlertAcknowledged:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "AlertCleared"

    const/16 v2, 0x8

    const-string v3, "Alert Cleared"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->AlertCleared:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "DataEntry"

    const/16 v2, 0x9

    const-string v3, "Data Entry"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->DataEntry:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "BluetoothEvent"

    const/16 v2, 0xa

    const-string v3, "Bluetooth"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->BluetoothEvent:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "Transmitter"

    const/16 v2, 0xb

    const-string v3, "Transmitter"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Transmitter:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "Eula"

    const/16 v2, 0xc

    const-string v3, "EULA"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Eula:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "DiskSpaceLow"

    const/16 v2, 0xd

    const-string v3, "Disk Space Low"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->DiskSpaceLow:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 25
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "SQLiteError"

    const/16 v2, 0xe

    const-string v3, "SQLite Error"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->SQLiteError:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 26
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "Extension"

    const/16 v2, 0xf

    const-string v3, "Extension Log"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Extension:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 27
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "Battery"

    const/16 v2, 0x10

    const-string v3, "Battery State"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Battery:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 28
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "LowMemory"

    const/16 v2, 0x11

    const-string v3, "Low Memory"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->LowMemory:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 29
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "StateCheck"

    const/16 v2, 0x12

    const-string v3, "State Check"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->StateCheck:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 30
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "Interaction"

    const/16 v2, 0x13

    const-string v3, "Interaction"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Interaction:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 31
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "Application"

    const/16 v2, 0x14

    const-string v3, "Application"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Application:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 32
    new-instance v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    const-string v1, "Test"

    const/16 v2, 0x15

    const-string v3, "Test"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Test:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    .line 9
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->DisplayingScreen:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->DisplayingAlert:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->UpdatingScreen:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->ButtonTapped:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->OS:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->AlertReceived:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->AlertFailed:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->AlertAcknowledged:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->AlertCleared:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->DataEntry:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->BluetoothEvent:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Transmitter:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Eula:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->DiskSpaceLow:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->SQLiteError:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Extension:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Battery:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->LowMemory:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->StateCheck:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Interaction:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Application:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->Test:Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->$VALUES:[Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

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
    iput-object p3, p0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->m_activityType:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/TechSupportActivityType;
    .locals 5

    .prologue
    .line 50
    invoke-static {}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->values()[Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 52
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->getActivityType()Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/TechSupportActivityType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/enums/TechSupportActivityType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->$VALUES:[Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/enums/TechSupportActivityType;

    return-object v0
.end method


# virtual methods
.method public final getActivityType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dexcom/cgm/model/enums/TechSupportActivityType;->m_activityType:Ljava/lang/String;

    return-object v0
.end method
