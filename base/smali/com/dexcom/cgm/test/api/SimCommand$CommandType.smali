.class public final enum Lcom/dexcom/cgm/test/api/SimCommand$CommandType;
.super Ljava/lang/Enum;
.source "SimCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/test/api/SimCommand$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

.field public static final enum Calibrate:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

.field public static final enum StartSensor:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

.field public static final enum StopSensor:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    const-string v1, "StartSensor"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;->StartSensor:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    .line 14
    new-instance v0, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    const-string v1, "StopSensor"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;->StopSensor:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    const-string v1, "Calibrate"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;->Calibrate:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    sget-object v1, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;->StartSensor:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;->StopSensor:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;->Calibrate:Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;->$VALUES:[Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/test/api/SimCommand$CommandType;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/test/api/SimCommand$CommandType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/dexcom/cgm/test/api/SimCommand$CommandType;->$VALUES:[Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/test/api/SimCommand$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/test/api/SimCommand$CommandType;

    return-object v0
.end method
