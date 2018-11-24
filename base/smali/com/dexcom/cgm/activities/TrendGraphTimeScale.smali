.class public final enum Lcom/dexcom/cgm/activities/TrendGraphTimeScale;
.super Ljava/lang/Enum;
.source "TrendGraphTimeScale.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/activities/TrendGraphTimeScale;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

.field public static final enum OneHour:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

.field public static final enum SixHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

.field public static final enum ThreeHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

.field public static final enum TwelveHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

.field public static final enum TwentyFourHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;


# instance fields
.field private m_hours:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 11
    new-instance v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    const-string v1, "OneHour"

    invoke-direct {v0, v1, v5, v3}, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->OneHour:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    .line 12
    new-instance v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    const-string v1, "ThreeHours"

    invoke-direct {v0, v1, v3, v4}, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->ThreeHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    .line 13
    new-instance v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    const-string v1, "SixHours"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v6, v2}, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->SixHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    .line 14
    new-instance v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    const-string v1, "TwelveHours"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v4, v2}, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->TwelveHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    .line 15
    new-instance v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    const-string v1, "TwentyFourHours"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v7, v2}, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->TwentyFourHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    sget-object v1, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->OneHour:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->ThreeHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->SixHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->TwelveHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->TwentyFourHours:Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    aput-object v1, v0, v7

    sput-object v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->$VALUES:[Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->m_hours:I

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/activities/TrendGraphTimeScale;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/activities/TrendGraphTimeScale;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->$VALUES:[Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/activities/TrendGraphTimeScale;

    return-object v0
.end method


# virtual methods
.method public final getHours()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/dexcom/cgm/activities/TrendGraphTimeScale;->m_hours:I

    return v0
.end method
