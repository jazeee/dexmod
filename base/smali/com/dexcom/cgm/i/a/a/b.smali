.class public final enum Lcom/dexcom/cgm/i/a/a/b;
.super Ljava/lang/Enum;
.source "DexUserEventSubType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/i/a/a/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/i/a/a/b;

.field public static final enum EventSubTypeNone:Lcom/dexcom/cgm/i/a/a/b;

.field public static final enum ExerciseSubTypeHeavy:Lcom/dexcom/cgm/i/a/a/b;

.field public static final enum ExerciseSubTypeLight:Lcom/dexcom/cgm/i/a/a/b;

.field public static final enum ExerciseSubTypeMedium:Lcom/dexcom/cgm/i/a/a/b;

.field public static final enum HealthSubTypeAlcohol:Lcom/dexcom/cgm/i/a/a/b;

.field public static final enum HealthSubTypeCycle:Lcom/dexcom/cgm/i/a/a/b;

.field public static final enum HealthSubTypeHighSymptoms:Lcom/dexcom/cgm/i/a/a/b;

.field public static final enum HealthSubTypeIllness:Lcom/dexcom/cgm/i/a/a/b;

.field public static final enum HealthSubTypeLowSymptoms:Lcom/dexcom/cgm/i/a/a/b;

.field public static final enum HealthSubTypeStress:Lcom/dexcom/cgm/i/a/a/b;


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

    .line 12
    new-instance v0, Lcom/dexcom/cgm/i/a/a/b;

    const-string v1, "EventSubTypeNone"

    const-string v2, "None"

    invoke-direct {v0, v1, v4, v2}, Lcom/dexcom/cgm/i/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/i/a/a/b;->EventSubTypeNone:Lcom/dexcom/cgm/i/a/a/b;

    .line 14
    new-instance v0, Lcom/dexcom/cgm/i/a/a/b;

    const-string v1, "HealthSubTypeAlcohol"

    const-string v2, "Alcohol"

    invoke-direct {v0, v1, v5, v2}, Lcom/dexcom/cgm/i/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeAlcohol:Lcom/dexcom/cgm/i/a/a/b;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/i/a/a/b;

    const-string v1, "HealthSubTypeCycle"

    const-string v2, "Cycle"

    invoke-direct {v0, v1, v6, v2}, Lcom/dexcom/cgm/i/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeCycle:Lcom/dexcom/cgm/i/a/a/b;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/i/a/a/b;

    const-string v1, "HealthSubTypeIllness"

    const-string v2, "Illness"

    invoke-direct {v0, v1, v7, v2}, Lcom/dexcom/cgm/i/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeIllness:Lcom/dexcom/cgm/i/a/a/b;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/i/a/a/b;

    const-string v1, "HealthSubTypeLowSymptoms"

    const-string v2, "LowSymptoms"

    invoke-direct {v0, v1, v8, v2}, Lcom/dexcom/cgm/i/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeLowSymptoms:Lcom/dexcom/cgm/i/a/a/b;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/i/a/a/b;

    const-string v1, "HealthSubTypeHighSymptoms"

    const/4 v2, 0x5

    const-string v3, "HighSymptoms"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/i/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeHighSymptoms:Lcom/dexcom/cgm/i/a/a/b;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/i/a/a/b;

    const-string v1, "HealthSubTypeStress"

    const/4 v2, 0x6

    const-string v3, "Stress"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/i/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeStress:Lcom/dexcom/cgm/i/a/a/b;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/i/a/a/b;

    const-string v1, "ExerciseSubTypeLight"

    const/4 v2, 0x7

    const-string v3, "Light"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/i/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/i/a/a/b;->ExerciseSubTypeLight:Lcom/dexcom/cgm/i/a/a/b;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/i/a/a/b;

    const-string v1, "ExerciseSubTypeMedium"

    const/16 v2, 0x8

    const-string v3, "Medium"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/i/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/i/a/a/b;->ExerciseSubTypeMedium:Lcom/dexcom/cgm/i/a/a/b;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/i/a/a/b;

    const-string v1, "ExerciseSubTypeHeavy"

    const/16 v2, 0x9

    const-string v3, "Heavy"

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/i/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/i/a/a/b;->ExerciseSubTypeHeavy:Lcom/dexcom/cgm/i/a/a/b;

    .line 8
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/dexcom/cgm/i/a/a/b;

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->EventSubTypeNone:Lcom/dexcom/cgm/i/a/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeAlcohol:Lcom/dexcom/cgm/i/a/a/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeCycle:Lcom/dexcom/cgm/i/a/a/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeIllness:Lcom/dexcom/cgm/i/a/a/b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeLowSymptoms:Lcom/dexcom/cgm/i/a/a/b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeHighSymptoms:Lcom/dexcom/cgm/i/a/a/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/i/a/a/b;->HealthSubTypeStress:Lcom/dexcom/cgm/i/a/a/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/i/a/a/b;->ExerciseSubTypeLight:Lcom/dexcom/cgm/i/a/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/i/a/a/b;->ExerciseSubTypeMedium:Lcom/dexcom/cgm/i/a/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/i/a/a/b;->ExerciseSubTypeHeavy:Lcom/dexcom/cgm/i/a/a/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/i/a/a/b;->$VALUES:[Lcom/dexcom/cgm/i/a/a/b;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/dexcom/cgm/i/a/a/b;->m_eventSubType:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static fromInernal(Lcom/dexcom/cgm/model/enums/UserEventSubType;)Lcom/dexcom/cgm/i/a/a/b;
    .locals 2

    .prologue
    .line 50
    invoke-static {}, Lcom/dexcom/cgm/i/a/a/b;->values()[Lcom/dexcom/cgm/i/a/a/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/model/enums/UserEventSubType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/dexcom/cgm/i/a/a/b;
    .locals 5

    .prologue
    .line 39
    invoke-static {}, Lcom/dexcom/cgm/i/a/a/b;->values()[Lcom/dexcom/cgm/i/a/a/b;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 41
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a/b;->getEventSubType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    :goto_1
    return-object v0

    .line 39
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/i/a/a/b;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/dexcom/cgm/i/a/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/i/a/a/b;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/i/a/a/b;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/dexcom/cgm/i/a/a/b;->$VALUES:[Lcom/dexcom/cgm/i/a/a/b;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/i/a/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/i/a/a/b;

    return-object v0
.end method


# virtual methods
.method public final getEventSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/a/b;->m_eventSubType:Ljava/lang/String;

    return-object v0
.end method

.method public final toInternal()Lcom/dexcom/cgm/model/enums/UserEventSubType;
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/dexcom/cgm/model/enums/UserEventSubType;->values()[Lcom/dexcom/cgm/model/enums/UserEventSubType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/i/a/a/b;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method
