.class public Lcom/dexcom/cgm/k/n;
.super Ljava/lang/Object;
.source "TransmitterTime.java"


# static fields
.field private static final UNKNOWN_LONG:J = 0xffffffffL

.field public static final Unknown:Lcom/dexcom/cgm/k/n;

.field public static final Zero:Lcom/dexcom/cgm/k/n;


# instance fields
.field private final m_seconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 12
    new-instance v0, Lcom/dexcom/cgm/k/n;

    const-wide v2, 0xffffffffL

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    sput-object v0, Lcom/dexcom/cgm/k/n;->Unknown:Lcom/dexcom/cgm/k/n;

    .line 13
    new-instance v0, Lcom/dexcom/cgm/k/n;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    sput-object v0, Lcom/dexcom/cgm/k/n;->Zero:Lcom/dexcom/cgm/k/n;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/dexcom/cgm/k/n;->m_seconds:J

    .line 25
    return-void
.end method

.method public static create(J)Lcom/dexcom/cgm/k/n;
    .locals 2

    .prologue
    .line 19
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/dexcom/cgm/k/n;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    if-ne p0, p1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 48
    :cond_3
    check-cast p1, Lcom/dexcom/cgm/k/n;

    .line 50
    iget-wide v2, p0, Lcom/dexcom/cgm/k/n;->m_seconds:J

    iget-wide v4, p1, Lcom/dexcom/cgm/k/n;->m_seconds:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getTimeInSeconds()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/dexcom/cgm/k/n;->m_seconds:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/dexcom/cgm/k/n;->m_seconds:J

    iget-wide v2, p0, Lcom/dexcom/cgm/k/n;->m_seconds:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/dexcom/cgm/k/n;->m_seconds:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 37
    const-string v0, "Unknown"

    .line 39
    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/dexcom/cgm/k/n;->m_seconds:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
