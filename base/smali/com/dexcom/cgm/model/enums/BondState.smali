.class public final enum Lcom/dexcom/cgm/model/enums/BondState;
.super Ljava/lang/Enum;
.source "BondState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/enums/BondState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/enums/BondState;

.field public static final enum BondNone:Lcom/dexcom/cgm/model/enums/BondState;

.field public static final enum Bonded:Lcom/dexcom/cgm/model/enums/BondState;

.field public static final enum Bonding:Lcom/dexcom/cgm/model/enums/BondState;

.field public static final enum Unknown:Lcom/dexcom/cgm/model/enums/BondState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/dexcom/cgm/model/enums/BondState;

    const-string v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/BondState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BondState;->Unknown:Lcom/dexcom/cgm/model/enums/BondState;

    .line 12
    new-instance v0, Lcom/dexcom/cgm/model/enums/BondState;

    const-string v1, "BondNone"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/model/enums/BondState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BondState;->BondNone:Lcom/dexcom/cgm/model/enums/BondState;

    .line 13
    new-instance v0, Lcom/dexcom/cgm/model/enums/BondState;

    const-string v1, "Bonding"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/model/enums/BondState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BondState;->Bonding:Lcom/dexcom/cgm/model/enums/BondState;

    .line 14
    new-instance v0, Lcom/dexcom/cgm/model/enums/BondState;

    const-string v1, "Bonded"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/model/enums/BondState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/BondState;->Bonded:Lcom/dexcom/cgm/model/enums/BondState;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dexcom/cgm/model/enums/BondState;

    sget-object v1, Lcom/dexcom/cgm/model/enums/BondState;->Unknown:Lcom/dexcom/cgm/model/enums/BondState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dexcom/cgm/model/enums/BondState;->BondNone:Lcom/dexcom/cgm/model/enums/BondState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/model/enums/BondState;->Bonding:Lcom/dexcom/cgm/model/enums/BondState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/model/enums/BondState;->Bonded:Lcom/dexcom/cgm/model/enums/BondState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dexcom/cgm/model/enums/BondState;->$VALUES:[Lcom/dexcom/cgm/model/enums/BondState;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/BondState;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/model/enums/BondState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/BondState;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/enums/BondState;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/model/enums/BondState;->$VALUES:[Lcom/dexcom/cgm/model/enums/BondState;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/enums/BondState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/enums/BondState;

    return-object v0
.end method
