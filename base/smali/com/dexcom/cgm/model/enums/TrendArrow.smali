.class public final enum Lcom/dexcom/cgm/model/enums/TrendArrow;
.super Ljava/lang/Enum;
.source "TrendArrow.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/model/enums/TrendArrow;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/model/enums/TrendArrow;

.field public static final enum DoubleDown:Lcom/dexcom/cgm/model/enums/TrendArrow;

.field public static final enum DoubleUp:Lcom/dexcom/cgm/model/enums/TrendArrow;

.field public static final enum Flat:Lcom/dexcom/cgm/model/enums/TrendArrow;

.field public static final enum FortyFiveDown:Lcom/dexcom/cgm/model/enums/TrendArrow;

.field public static final enum FortyFiveUp:Lcom/dexcom/cgm/model/enums/TrendArrow;

.field public static final enum None:Lcom/dexcom/cgm/model/enums/TrendArrow;

.field public static final enum NotComputable:Lcom/dexcom/cgm/model/enums/TrendArrow;

.field public static final enum RateOutOfRange:Lcom/dexcom/cgm/model/enums/TrendArrow;

.field public static final enum SingleDown:Lcom/dexcom/cgm/model/enums/TrendArrow;

.field public static final enum SingleUp:Lcom/dexcom/cgm/model/enums/TrendArrow;


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
    new-instance v0, Lcom/dexcom/cgm/model/enums/TrendArrow;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/dexcom/cgm/model/enums/TrendArrow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->None:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 12
    new-instance v0, Lcom/dexcom/cgm/model/enums/TrendArrow;

    const-string v1, "DoubleUp"

    invoke-direct {v0, v1, v4}, Lcom/dexcom/cgm/model/enums/TrendArrow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->DoubleUp:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 13
    new-instance v0, Lcom/dexcom/cgm/model/enums/TrendArrow;

    const-string v1, "SingleUp"

    invoke-direct {v0, v1, v5}, Lcom/dexcom/cgm/model/enums/TrendArrow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->SingleUp:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 14
    new-instance v0, Lcom/dexcom/cgm/model/enums/TrendArrow;

    const-string v1, "FortyFiveUp"

    invoke-direct {v0, v1, v6}, Lcom/dexcom/cgm/model/enums/TrendArrow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->FortyFiveUp:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/model/enums/TrendArrow;

    const-string v1, "Flat"

    invoke-direct {v0, v1, v7}, Lcom/dexcom/cgm/model/enums/TrendArrow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->Flat:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 16
    new-instance v0, Lcom/dexcom/cgm/model/enums/TrendArrow;

    const-string v1, "FortyFiveDown"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/TrendArrow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->FortyFiveDown:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 17
    new-instance v0, Lcom/dexcom/cgm/model/enums/TrendArrow;

    const-string v1, "SingleDown"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/TrendArrow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->SingleDown:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/model/enums/TrendArrow;

    const-string v1, "DoubleDown"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/TrendArrow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->DoubleDown:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 19
    new-instance v0, Lcom/dexcom/cgm/model/enums/TrendArrow;

    const-string v1, "NotComputable"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/TrendArrow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->NotComputable:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/model/enums/TrendArrow;

    const-string v1, "RateOutOfRange"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dexcom/cgm/model/enums/TrendArrow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->RateOutOfRange:Lcom/dexcom/cgm/model/enums/TrendArrow;

    .line 9
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/dexcom/cgm/model/enums/TrendArrow;

    sget-object v1, Lcom/dexcom/cgm/model/enums/TrendArrow;->None:Lcom/dexcom/cgm/model/enums/TrendArrow;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/model/enums/TrendArrow;->DoubleUp:Lcom/dexcom/cgm/model/enums/TrendArrow;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/model/enums/TrendArrow;->SingleUp:Lcom/dexcom/cgm/model/enums/TrendArrow;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/model/enums/TrendArrow;->FortyFiveUp:Lcom/dexcom/cgm/model/enums/TrendArrow;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/model/enums/TrendArrow;->Flat:Lcom/dexcom/cgm/model/enums/TrendArrow;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dexcom/cgm/model/enums/TrendArrow;->FortyFiveDown:Lcom/dexcom/cgm/model/enums/TrendArrow;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dexcom/cgm/model/enums/TrendArrow;->SingleDown:Lcom/dexcom/cgm/model/enums/TrendArrow;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dexcom/cgm/model/enums/TrendArrow;->DoubleDown:Lcom/dexcom/cgm/model/enums/TrendArrow;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dexcom/cgm/model/enums/TrendArrow;->NotComputable:Lcom/dexcom/cgm/model/enums/TrendArrow;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dexcom/cgm/model/enums/TrendArrow;->RateOutOfRange:Lcom/dexcom/cgm/model/enums/TrendArrow;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->$VALUES:[Lcom/dexcom/cgm/model/enums/TrendArrow;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/model/enums/TrendArrow;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/model/enums/TrendArrow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/enums/TrendArrow;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/model/enums/TrendArrow;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/model/enums/TrendArrow;->$VALUES:[Lcom/dexcom/cgm/model/enums/TrendArrow;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/model/enums/TrendArrow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/model/enums/TrendArrow;

    return-object v0
.end method
