.class public final Lcom/dexcom/cgm/k/d;
.super Ljava/lang/Object;
.source "RealTimeClock.java"


# static fields
.field private static s_provider:Lcom/dexcom/cgm/k/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/dexcom/cgm/k/e;

    invoke-direct {v0}, Lcom/dexcom/cgm/k/e;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/k/d;->s_provider:Lcom/dexcom/cgm/k/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static elapsedRealtime()J
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/dexcom/cgm/k/d;->s_provider:Lcom/dexcom/cgm/k/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/k/f;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static setProvider(Lcom/dexcom/cgm/k/f;)V
    .locals 0

    .prologue
    .line 31
    sput-object p0, Lcom/dexcom/cgm/k/d;->s_provider:Lcom/dexcom/cgm/k/f;

    .line 32
    return-void
.end method
