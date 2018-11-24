.class public final enum Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;
.super Ljava/lang/Enum;
.source "TechSupportLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

.field public static final enum ErrorCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

.field public static final enum PairingCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

.field public static final enum WarmUpCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

    const-string v1, "ErrorCircle"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;->ErrorCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

    .line 259
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

    const-string v1, "WarmUpCircle"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;->WarmUpCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

    .line 260
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

    const-string v1, "PairingCircle"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;->PairingCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

    .line 256
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;->ErrorCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;->WarmUpCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;->PairingCircle:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;->$VALUES:[Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

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
    .line 256
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;
    .locals 1

    .prologue
    .line 256
    const-class v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;->$VALUES:[Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$CircleStateLogType;

    return-object v0
.end method
