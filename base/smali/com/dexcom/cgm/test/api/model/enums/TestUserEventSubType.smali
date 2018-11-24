.class public final enum Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;
.super Ljava/lang/Enum;
.source "TestUserEventSubType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

.field public static final enum EventSubTypeNone:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

.field public static final enum ExerciseSubTypeHeavy:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

.field public static final enum ExerciseSubTypeLight:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

.field public static final enum ExerciseSubTypeMedium:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

.field public static final enum HealthSubTypeAlcohol:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

.field public static final enum HealthSubTypeCycle:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

.field public static final enum HealthSubTypeHighSymptoms:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

.field public static final enum HealthSubTypeIllness:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

.field public static final enum HealthSubTypeLowSymptoms:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

.field public static final enum HealthSubTypeStress:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;


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
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    const-string v1, "EventSubTypeNone"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->EventSubTypeNone:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    const-string v1, "HealthSubTypeAlcohol"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->HealthSubTypeAlcohol:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    const-string v1, "HealthSubTypeCycle"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->HealthSubTypeCycle:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    const-string v1, "HealthSubTypeIllness"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->HealthSubTypeIllness:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    const-string v1, "HealthSubTypeLowSymptoms"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->HealthSubTypeLowSymptoms:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    const-string v1, "HealthSubTypeHighSymptoms"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->HealthSubTypeHighSymptoms:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    const-string v1, "HealthSubTypeStress"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->HealthSubTypeStress:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    const-string v1, "ExerciseSubTypeLight"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->ExerciseSubTypeLight:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    const-string v1, "ExerciseSubTypeMedium"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->ExerciseSubTypeMedium:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    .line 25
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    const-string v1, "ExerciseSubTypeHeavy"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->ExerciseSubTypeHeavy:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    .line 12
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->EventSubTypeNone:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->HealthSubTypeAlcohol:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->HealthSubTypeCycle:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->HealthSubTypeIllness:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->HealthSubTypeLowSymptoms:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->HealthSubTypeHighSymptoms:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->HealthSubTypeStress:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->ExerciseSubTypeLight:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->ExerciseSubTypeMedium:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->ExerciseSubTypeHeavy:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/test/api/model/enums/TestUserEventSubType;

    return-object v0
.end method
