.class public final enum Lcom/dexcom/cgm/h/a/a/d;
.super Ljava/lang/Enum;
.source "DexSpecialTrendRateValues.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dexcom/cgm/h/a/a/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dexcom/cgm/h/a/a/d;

.field public static final enum NotComputable:Lcom/dexcom/cgm/h/a/a/d;


# instance fields
.field private final m_value:D


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 14
    new-instance v0, Lcom/dexcom/cgm/h/a/a/d;

    const-string v1, "NotComputable"

    const-wide v2, 0x4029666666666666L    # 12.7

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/dexcom/cgm/h/a/a/d;-><init>(Ljava/lang/String;ID)V

    sput-object v0, Lcom/dexcom/cgm/h/a/a/d;->NotComputable:Lcom/dexcom/cgm/h/a/a/d;

    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/dexcom/cgm/h/a/a/d;

    sget-object v1, Lcom/dexcom/cgm/h/a/a/d;->NotComputable:Lcom/dexcom/cgm/h/a/a/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dexcom/cgm/h/a/a/d;->$VALUES:[Lcom/dexcom/cgm/h/a/a/d;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-wide p3, p0, Lcom/dexcom/cgm/h/a/a/d;->m_value:D

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/h/a/a/d;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/dexcom/cgm/h/a/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/h/a/a/d;

    return-object v0
.end method

.method public static values()[Lcom/dexcom/cgm/h/a/a/d;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/dexcom/cgm/h/a/a/d;->$VALUES:[Lcom/dexcom/cgm/h/a/a/d;

    invoke-virtual {v0}, [Lcom/dexcom/cgm/h/a/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dexcom/cgm/h/a/a/d;

    return-object v0
.end method


# virtual methods
.method public final getValue()D
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/dexcom/cgm/h/a/a/d;->m_value:D

    return-wide v0
.end method
