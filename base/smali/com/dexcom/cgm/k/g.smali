.class public final Lcom/dexcom/cgm/k/g;
.super Ljava/lang/Object;
.source "RtcSyncTime.java"


# instance fields
.field private final m_rtcMillis:J

.field private final m_system:Lcom/dexcom/cgm/k/j;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/k/j;J)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/dexcom/cgm/k/g;->m_system:Lcom/dexcom/cgm/k/j;

    .line 20
    iput-wide p2, p0, Lcom/dexcom/cgm/k/g;->m_rtcMillis:J

    .line 21
    return-void
.end method

.method public static at(J)Lcom/dexcom/cgm/k/g;
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/dexcom/cgm/k/g;->now()Lcom/dexcom/cgm/k/g;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/dexcom/cgm/k/g;->offset(Lcom/dexcom/cgm/k/g;J)Lcom/dexcom/cgm/k/g;

    move-result-object v0

    return-object v0
.end method

.method public static deltaMilliseconds(Lcom/dexcom/cgm/k/g;Lcom/dexcom/cgm/k/g;)J
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/dexcom/cgm/k/g;->getRealtime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/dexcom/cgm/k/g;->getRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static now()Lcom/dexcom/cgm/k/g;
    .locals 4

    .prologue
    .line 88
    new-instance v0, Lcom/dexcom/cgm/k/g;

    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-static {}, Lcom/dexcom/cgm/k/d;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/k/g;-><init>(Lcom/dexcom/cgm/k/j;J)V

    return-object v0
.end method

.method public static offset(Lcom/dexcom/cgm/k/g;J)Lcom/dexcom/cgm/k/g;
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/dexcom/cgm/k/g;->getRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/k/g;->subtractMilliseconds(J)Lcom/dexcom/cgm/k/g;

    move-result-object v0

    return-object v0
.end method

.method public static offset(Lcom/dexcom/cgm/k/g;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/g;
    .locals 4

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/dexcom/cgm/k/g;->getSystem()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 83
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/k/g;->subtractMilliseconds(J)Lcom/dexcom/cgm/k/g;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final addMilliseconds(J)Lcom/dexcom/cgm/k/g;
    .locals 5

    .prologue
    .line 35
    new-instance v0, Lcom/dexcom/cgm/k/g;

    iget-object v1, p0, Lcom/dexcom/cgm/k/g;->m_system:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v1, p1, p2}, Lcom/dexcom/cgm/k/j;->addMilliseconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v1

    iget-wide v2, p0, Lcom/dexcom/cgm/k/g;->m_rtcMillis:J

    add-long/2addr v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/k/g;-><init>(Lcom/dexcom/cgm/k/j;J)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 47
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 48
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 50
    check-cast p1, Lcom/dexcom/cgm/k/g;

    .line 52
    iget-wide v2, p0, Lcom/dexcom/cgm/k/g;->m_rtcMillis:J

    iget-wide v4, p1, Lcom/dexcom/cgm/k/g;->m_rtcMillis:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/dexcom/cgm/k/g;->m_system:Lcom/dexcom/cgm/k/j;

    iget-object v1, p1, Lcom/dexcom/cgm/k/g;->m_system:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/k/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getRealtime()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/dexcom/cgm/k/g;->m_rtcMillis:J

    return-wide v0
.end method

.method public final getSystem()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/dexcom/cgm/k/g;->m_system:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dexcom/cgm/k/g;->m_system:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->hashCode()I

    move-result v0

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/dexcom/cgm/k/g;->m_rtcMillis:J

    iget-wide v4, p0, Lcom/dexcom/cgm/k/g;->m_rtcMillis:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 62
    return v0
.end method

.method public final subtractMilliseconds(J)Lcom/dexcom/cgm/k/g;
    .locals 5

    .prologue
    .line 40
    new-instance v0, Lcom/dexcom/cgm/k/g;

    iget-object v1, p0, Lcom/dexcom/cgm/k/g;->m_system:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v1, p1, p2}, Lcom/dexcom/cgm/k/j;->subtractMilliseconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v1

    iget-wide v2, p0, Lcom/dexcom/cgm/k/g;->m_rtcMillis:J

    sub-long/2addr v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/k/g;-><init>(Lcom/dexcom/cgm/k/j;J)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{system="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/k/g;->m_system:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rtc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/dexcom/cgm/k/g;->m_rtcMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
