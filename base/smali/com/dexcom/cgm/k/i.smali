.class public final Lcom/dexcom/cgm/k/i;
.super Ljava/lang/Object;
.source "ServerTime.java"


# static fields
.field private static final UNKNOWN_LONG:J = 0xffffffffL

.field public static final Unknown:Lcom/dexcom/cgm/k/i;


# instance fields
.field private final m_seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 12
    new-instance v0, Lcom/dexcom/cgm/k/i;

    const-wide v2, 0xffffffffL

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/i;-><init>(J)V

    sput-object v0, Lcom/dexcom/cgm/k/i;->Unknown:Lcom/dexcom/cgm/k/i;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/dexcom/cgm/k/i;->m_seconds:J

    .line 19
    return-void
.end method


# virtual methods
.method public final getTimeInSeconds()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/dexcom/cgm/k/i;->m_seconds:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/dexcom/cgm/k/i;->m_seconds:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 31
    const-string v0, "Unknown"

    .line 33
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/dexcom/cgm/k/i;->m_seconds:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
