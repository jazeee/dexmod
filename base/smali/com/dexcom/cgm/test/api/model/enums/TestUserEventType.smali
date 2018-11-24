.class public final enum Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;
.super Ljava/lang/Enum;
.source "TestUserEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

.field public static final enum Carbs:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

.field public static final enum Exercise:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

.field public static final enum Health:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

.field public static final enum Insulin:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

    const-string v1, "Carbs"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;->Carbs:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

    const-string v1, "Insulin"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;->Insulin:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

    const-string v1, "Health"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;->Health:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

    const-string v1, "Exercise"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;->Exercise:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;->Carbs:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;->Insulin:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;->Health:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;->Exercise:Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;->$VALUES:[Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/test/api/model/enums/TestUserEventType;

    return-object v0
.end method
