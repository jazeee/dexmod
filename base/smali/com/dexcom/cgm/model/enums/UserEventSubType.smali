.class public final enum Lcom/dexcom/cgm/model/enums/UserEventSubType;
.super Ljava/lang/Enum;
.source "UserEventSubType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/enums/UserEventSubType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/enums/UserEventSubType;

.field public static final enum EventSubTypeNone:Lcom/dexcom/cgm/model/enums/UserEventSubType;

.field public static final enum ExerciseSubTypeHeavy:Lcom/dexcom/cgm/model/enums/UserEventSubType;

.field public static final enum ExerciseSubTypeLight:Lcom/dexcom/cgm/model/enums/UserEventSubType;

.field public static final enum ExerciseSubTypeMedium:Lcom/dexcom/cgm/model/enums/UserEventSubType;

.field public static final enum HealthSubTypeAlcohol:Lcom/dexcom/cgm/model/enums/UserEventSubType;

.field public static final enum HealthSubTypeCycle:Lcom/dexcom/cgm/model/enums/UserEventSubType;

.field public static final enum HealthSubTypeHighSymptoms:Lcom/dexcom/cgm/model/enums/UserEventSubType;

.field public static final enum HealthSubTypeIllness:Lcom/dexcom/cgm/model/enums/UserEventSubType;

.field public static final enum HealthSubTypeLowSymptoms:Lcom/dexcom/cgm/model/enums/UserEventSubType;

.field public static final enum HealthSubTypeStress:Lcom/dexcom/cgm/model/enums/UserEventSubType;


# instance fields
.field private m_eventSubType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;

    const-string v1, "EventSubTypeNone"

    const-string v2, "None"

    invoke-direct {v0, v1, v4, v2}, Lcom/dexcom/cgm/model/enums/UserEventSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;->EventSubTypeNone:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;

    const-string v1, "HealthSubTypeAlcohol"

    const-string v2, "Alcohol"

    invoke-direct {v0, v1, v5, v2}, Lcom/dexcom/cgm/model/enums/UserEventSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;->HealthSubTypeAlcohol:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;

    const-string v1, "HealthSubTypeCycle"

    const-string v2, "Cycle"

    invoke-direct {v0, v1, v6, v2}, Lcom/dexcom/cgm/model/enums/UserEventSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;->HealthSubTypeCycle:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;

    const-string v1, "HealthSubTypeIllness"

    const-string v2, "Illness"

    invoke-direct {v0, v1, v7, v2}, Lcom/dexcom/cgm/model/enums/UserEventSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;->HealthSubTypeIllness:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;

    const-string v1, "HealthSubTypeLowSymptoms"

    const-string v2, "LowSymptoms"

    invoke-direct {v0, v1, v8, v2}, Lcom/dexcom/cgm/model/enums/UserEventSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;->HealthSubTypeLowSymptoms:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;

    const-string v1, "HealthSubTypeHighSymptoms"

    const/4 v2, 0x5

    const-string v3, "HighSymptoms"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/UserEventSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;->HealthSubTypeHighSymptoms:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;

    const-string v1, "HealthSubTypeStress"

    const/4 v2, 0x6

    const-string v3, "Stress"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/UserEventSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;->HealthSubTypeStress:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;

    const-string v1, "ExerciseSubTypeLight"

    const/4 v2, 0x7

    const-string v3, "Light"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/UserEventSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;->ExerciseSubTypeLight:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;

    const-string v1, "ExerciseSubTypeMedium"

    const/16 v2, 0x8

    const-string v3, "Medium"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/UserEventSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;->ExerciseSubTypeMedium:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;

    const-string v1, "ExerciseSubTypeHeavy"

    const/16 v2, 0x9

    const-string v3, "Heavy"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/enums/UserEventSubType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;->ExerciseSubTypeHeavy:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    .line 9
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/dexcom/cgm/model/enums/UserEventSubType;

    sget-object v1, Lcom/dexcom/cgm/model/enums/UserEventSubType;->EventSubTypeNone:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/model/enums/UserEventSubType;->HealthSubTypeAlcohol:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/model/enums/UserEventSubType;->HealthSubTypeCycle:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/model/enums/UserEventSubType;->HealthSubTypeIllness:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dexcom/cgm/model/enums/UserEventSubType;->HealthSubTypeLowSymptoms:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/model/enums/UserEventSubType;->HealthSubTypeHighSymptoms:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/model/enums/UserEventSubType;->HealthSubTypeStress:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/model/enums/UserEventSubType;->ExerciseSubTypeLight:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/model/enums/UserEventSubType;->ExerciseSubTypeMedium:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/model/enums/UserEventSubType;->ExerciseSubTypeHeavy:Lcom/dexcom/cgm/model/enums/UserEventSubType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;->$VALUES:[Lcom/dexcom/cgm/model/enums/UserEventSubType;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/dexcom/cgm/model/enums/UserEventSubType;->m_eventSubType:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/UserEventSubType;
    .locals 5

    .prologue
    .line 40
    invoke-static {}, Lcom/dexcom/cgm/model/enums/UserEventSubType;->values()[Lcom/dexcom/cgm/model/enums/UserEventSubType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 42
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/UserEventSubType;->getEventSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    :goto_1
    return-object v0

    .line 40
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/UserEventSubType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/enums/UserEventSubType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/model/enums/UserEventSubType;->$VALUES:[Lcom/dexcom/cgm/model/enums/UserEventSubType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/enums/UserEventSubType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/enums/UserEventSubType;

    return-object v0
.end method


# virtual methods
.method public final getEventSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dexcom/cgm/model/enums/UserEventSubType;->m_eventSubType:Ljava/lang/String;

    return-object v0
.end method
