.class public final enum Lcom/dexcom/cgm/model/enums/AlertState;
.super Ljava/lang/Enum;
.source "AlertState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/enums/AlertState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/enums/AlertState;

.field public static final enum AlertStateActiveAlarming:Lcom/dexcom/cgm/model/enums/AlertState;

.field public static final enum AlertStateActiveSnoozed:Lcom/dexcom/cgm/model/enums/AlertState;

.field public static final enum AlertStateInactive:Lcom/dexcom/cgm/model/enums/AlertState;


# instance fields
.field private m_alertStateName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertState;

    const-string v1, "AlertStateInactive"

    const-string v2, "AlertStateInactive"

    invoke-direct {v0, v1, v3, v2}, Lcom/dexcom/cgm/model/enums/AlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertState;->AlertStateInactive:Lcom/dexcom/cgm/model/enums/AlertState;

    .line 12
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertState;

    const-string v1, "AlertStateActiveAlarming"

    const-string v2, "AlertStateActiveAlarming"

    invoke-direct {v0, v1, v4, v2}, Lcom/dexcom/cgm/model/enums/AlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertState;->AlertStateActiveAlarming:Lcom/dexcom/cgm/model/enums/AlertState;

    .line 13
    new-instance v0, Lcom/dexcom/cgm/model/enums/AlertState;

    const-string v1, "AlertStateActiveSnoozed"

    const-string v2, "AlertStateActiveSnoozed"

    invoke-direct {v0, v1, v5, v2}, Lcom/dexcom/cgm/model/enums/AlertState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertState;->AlertStateActiveSnoozed:Lcom/dexcom/cgm/model/enums/AlertState;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dexcom/cgm/model/enums/AlertState;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertState;->AlertStateInactive:Lcom/dexcom/cgm/model/enums/AlertState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertState;->AlertStateActiveAlarming:Lcom/dexcom/cgm/model/enums/AlertState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertState;->AlertStateActiveSnoozed:Lcom/dexcom/cgm/model/enums/AlertState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dexcom/cgm/model/enums/AlertState;->$VALUES:[Lcom/dexcom/cgm/model/enums/AlertState;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/dexcom/cgm/model/enums/AlertState;->m_alertStateName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/AlertState;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/model/enums/AlertState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/AlertState;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/enums/AlertState;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertState;->$VALUES:[Lcom/dexcom/cgm/model/enums/AlertState;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/enums/AlertState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/enums/AlertState;

    return-object v0
.end method


# virtual methods
.method public final getAlertStateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dexcom/cgm/model/enums/AlertState;->m_alertStateName:Ljava/lang/String;

    return-object v0
.end method
