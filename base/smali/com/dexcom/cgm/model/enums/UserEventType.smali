.class public final enum Lcom/dexcom/cgm/model/enums/UserEventType;
.super Ljava/lang/Enum;
.source "UserEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/enums/UserEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/enums/UserEventType;

.field public static final enum Carbs:Lcom/dexcom/cgm/model/enums/UserEventType;

.field public static final enum Exercise:Lcom/dexcom/cgm/model/enums/UserEventType;

.field public static final enum Health:Lcom/dexcom/cgm/model/enums/UserEventType;

.field public static final enum Insulin:Lcom/dexcom/cgm/model/enums/UserEventType;

.field public static final enum Unknown:Lcom/dexcom/cgm/model/enums/UserEventType;


# instance fields
.field private m_userEventType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/dexcom/cgm/model/enums/UserEventType;

    const-string v1, "Unknown"

    const-string v2, "Undefined"

    invoke-direct {v0, v1, v3, v2}, Lcom/dexcom/cgm/model/enums/UserEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/UserEventType;->Unknown:Lcom/dexcom/cgm/model/enums/UserEventType;

    .line 12
    new-instance v0, Lcom/dexcom/cgm/model/enums/UserEventType;

    const-string v1, "Carbs"

    const-string v2, "Carbs"

    invoke-direct {v0, v1, v4, v2}, Lcom/dexcom/cgm/model/enums/UserEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/UserEventType;->Carbs:Lcom/dexcom/cgm/model/enums/UserEventType;

    .line 13
    new-instance v0, Lcom/dexcom/cgm/model/enums/UserEventType;

    const-string v1, "Insulin"

    const-string v2, "Insulin"

    invoke-direct {v0, v1, v5, v2}, Lcom/dexcom/cgm/model/enums/UserEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/UserEventType;->Insulin:Lcom/dexcom/cgm/model/enums/UserEventType;

    .line 14
    new-instance v0, Lcom/dexcom/cgm/model/enums/UserEventType;

    const-string v1, "Health"

    const-string v2, "Health"

    invoke-direct {v0, v1, v6, v2}, Lcom/dexcom/cgm/model/enums/UserEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/UserEventType;->Health:Lcom/dexcom/cgm/model/enums/UserEventType;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/model/enums/UserEventType;

    const-string v1, "Exercise"

    const-string v2, "Exercise"

    invoke-direct {v0, v1, v7, v2}, Lcom/dexcom/cgm/model/enums/UserEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/UserEventType;->Exercise:Lcom/dexcom/cgm/model/enums/UserEventType;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dexcom/cgm/model/enums/UserEventType;

    sget-object v1, Lcom/dexcom/cgm/model/enums/UserEventType;->Unknown:Lcom/dexcom/cgm/model/enums/UserEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/model/enums/UserEventType;->Carbs:Lcom/dexcom/cgm/model/enums/UserEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/model/enums/UserEventType;->Insulin:Lcom/dexcom/cgm/model/enums/UserEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/model/enums/UserEventType;->Health:Lcom/dexcom/cgm/model/enums/UserEventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/model/enums/UserEventType;->Exercise:Lcom/dexcom/cgm/model/enums/UserEventType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/dexcom/cgm/model/enums/UserEventType;->$VALUES:[Lcom/dexcom/cgm/model/enums/UserEventType;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/dexcom/cgm/model/enums/UserEventType;->m_userEventType:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/UserEventType;
    .locals 5

    .prologue
    .line 31
    invoke-static {}, Lcom/dexcom/cgm/model/enums/UserEventType;->values()[Lcom/dexcom/cgm/model/enums/UserEventType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 33
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/enums/UserEventType;->getUserEventType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    :goto_1
    return-object v0

    .line 31
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/UserEventType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/model/enums/UserEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/UserEventType;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/enums/UserEventType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/model/enums/UserEventType;->$VALUES:[Lcom/dexcom/cgm/model/enums/UserEventType;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/enums/UserEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/enums/UserEventType;

    return-object v0
.end method


# virtual methods
.method public final getUserEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dexcom/cgm/model/enums/UserEventType;->m_userEventType:Ljava/lang/String;

    return-object v0
.end method
