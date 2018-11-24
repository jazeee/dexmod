.class public final enum Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;
.super Ljava/lang/Enum;
.source "TechSupportLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

.field public static final enum Charging:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

.field public static final enum Discharging:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

.field public static final enum FullyCharged:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

.field public static final enum Unknown:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;


# instance fields
.field private m_displayString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 324
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

    const-string v1, "Unknown"

    const-string v2, "Battery status is unknown."

    invoke-direct {v0, v1, v3, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;->Unknown:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

    .line 325
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

    const-string v1, "Discharging"

    const-string v2, "Battery is in use (discharging)."

    invoke-direct {v0, v1, v4, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;->Discharging:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

    .line 326
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

    const-string v1, "Charging"

    const-string v2, "Battery is charging."

    invoke-direct {v0, v1, v5, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;->Charging:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

    .line 327
    new-instance v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

    const-string v1, "FullyCharged"

    const-string v2, "Battery is fully charged."

    invoke-direct {v0, v1, v6, v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;->FullyCharged:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

    .line 322
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;->Unknown:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;->Discharging:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;->Charging:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;->FullyCharged:Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;->$VALUES:[Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

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
    .line 332
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 333
    iput-object p3, p0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;->m_displayString:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;
    .locals 1

    .prologue
    .line 322
    const-class v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;->$VALUES:[Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;

    return-object v0
.end method


# virtual methods
.method public final getDisplayString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger$BatteryStateLogType;->m_displayString:Ljava/lang/String;

    return-object v0
.end method
