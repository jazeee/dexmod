.class public final enum Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;
.super Ljava/lang/Enum;
.source "SpecialTrendRateValues.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;

.field public static final enum NotComputable:Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;


# instance fields
.field private final m_value:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;

    const-string v1, "NotComputable"

    const-wide v2, 0x4029666666666666L    # 12.7

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;->NotComputable:Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;

    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;

    sget-object v1, Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;->NotComputable:Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;->$VALUES:[Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-wide p3, p0, Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;->m_value:D

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;->$VALUES:[Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;

    return-object v0
.end method


# virtual methods
.method public final getValue()D
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/dexcom/cgm/model/enums/SpecialTrendRateValues;->m_value:D

    return-wide v0
.end method
