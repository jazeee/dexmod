.class public final enum Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;
.super Ljava/lang/Enum;
.source "TestCommandType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

.field public static final enum Calibrate:Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

.field public static final enum StartSensor:Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

.field public static final enum StopSensor:Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

    const-string v1, "StartSensor"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;->StartSensor:Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

    const-string v1, "StopSensor"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;->StopSensor:Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

    const-string v1, "Calibrate"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;->Calibrate:Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;->StartSensor:Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;->StopSensor:Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;->Calibrate:Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/test/api/model/enums/TestCommandType;

    return-object v0
.end method
