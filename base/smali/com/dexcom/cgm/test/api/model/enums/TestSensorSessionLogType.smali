.class public final enum Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;
.super Ljava/lang/Enum;
.source "TestSensorSessionLogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

.field public static final enum CGMSessionAlreadyStoppedOnTx:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

.field public static final enum CGMSessionJoinedOnTx:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

.field public static final enum CGMSessionNotMatchingForStop:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

.field public static final enum CGMSessionStaleStartCommand:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

.field public static final enum CGMSessionStaleStopCommand:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

.field public static final enum CGMSessionStartedOnDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

.field public static final enum CGMSessionStartedOnTxFromThisDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

.field public static final enum CGMSessionStoppedDueToTransmitterEndOfLife:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

.field public static final enum CGMSessionStoppedDueToTransmitterError:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

.field public static final enum CGMSessionStoppedOnDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

.field public static final enum CGMSessionStoppedOnTxFromThisDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

.field public static final enum CGMSessionTableNone:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;


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
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    const-string v1, "CGMSessionTableNone"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionTableNone:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    const-string v1, "CGMSessionStartedOnDisplay"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionStartedOnDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    .line 25
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    const-string v1, "CGMSessionStartedOnTxFromThisDisplay"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionStartedOnTxFromThisDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    .line 31
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    const-string v1, "CGMSessionJoinedOnTx"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionJoinedOnTx:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    .line 36
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    const-string v1, "CGMSessionStoppedOnDisplay"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionStoppedOnDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    .line 42
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    const-string v1, "CGMSessionStoppedOnTxFromThisDisplay"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionStoppedOnTxFromThisDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    .line 48
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    const-string v1, "CGMSessionAlreadyStoppedOnTx"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionAlreadyStoppedOnTx:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    .line 54
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    const-string v1, "CGMSessionStaleStartCommand"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionStaleStartCommand:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    .line 60
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    const-string v1, "CGMSessionStaleStopCommand"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionStaleStopCommand:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    .line 65
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    const-string v1, "CGMSessionNotMatchingForStop"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionNotMatchingForStop:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    .line 70
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    const-string v1, "CGMSessionStoppedDueToTransmitterError"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionStoppedDueToTransmitterError:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    .line 75
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    const-string v1, "CGMSessionStoppedDueToTransmitterEndOfLife"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionStoppedDueToTransmitterEndOfLife:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    .line 12
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionTableNone:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionStartedOnDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionStartedOnTxFromThisDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionJoinedOnTx:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionStoppedOnDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionStoppedOnTxFromThisDisplay:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionAlreadyStoppedOnTx:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionStaleStartCommand:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionStaleStopCommand:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionNotMatchingForStop:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionStoppedDueToTransmitterError:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->CGMSessionStoppedDueToTransmitterEndOfLife:Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/test/api/model/enums/TestSensorSessionLogType;

    return-object v0
.end method
