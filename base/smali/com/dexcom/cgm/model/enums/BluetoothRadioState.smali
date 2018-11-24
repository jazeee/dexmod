.class public final enum Lcom/dexcom/cgm/model/enums/BluetoothRadioState;
.super Ljava/lang/Enum;
.source "BluetoothRadioState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/enums/BluetoothRadioState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

.field public static final enum Off:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

.field public static final enum On:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

.field public static final enum TurningOff:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

.field public static final enum TurningOn:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    const-string v1, "On"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;->On:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    .line 12
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    const-string v1, "Off"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;->Off:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    .line 13
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    const-string v1, "TurningOn"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;->TurningOn:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    .line 14
    new-instance v0, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    const-string v1, "TurningOff"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;->TurningOff:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;->On:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;->Off:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;->TurningOn:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;->TurningOff:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;->$VALUES:[Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/BluetoothRadioState;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/enums/BluetoothRadioState;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;->$VALUES:[Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/enums/BluetoothRadioState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    return-object v0
.end method
