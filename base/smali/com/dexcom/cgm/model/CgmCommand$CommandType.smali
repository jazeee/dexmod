.class public final enum Lcom/dexcom/cgm/model/CgmCommand$CommandType;
.super Ljava/lang/Enum;
.source "CgmCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/CgmCommand$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/CgmCommand$CommandType;

.field public static final enum Calibrate:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

.field public static final enum None:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

.field public static final enum StartSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

.field public static final enum StopSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/CgmCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->None:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    .line 32
    new-instance v0, Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    const-string v1, "StartSensor"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/model/CgmCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StartSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    .line 33
    new-instance v0, Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    const-string v1, "StopSensor"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/model/CgmCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StopSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    .line 34
    new-instance v0, Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    const-string v1, "Calibrate"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/model/CgmCommand$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->Calibrate:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    sget-object v1, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->None:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StartSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StopSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->Calibrate:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->$VALUES:[Lcom/dexcom/cgm/model/CgmCommand$CommandType;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/CgmCommand$CommandType;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/CgmCommand$CommandType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->$VALUES:[Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/CgmCommand$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    return-object v0
.end method
