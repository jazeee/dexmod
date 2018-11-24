.class public final Lcom/dexcom/cgm/k/m;
.super Ljava/lang/Object;
.source "TransmitterSyncTime.java"


# instance fields
.field private m_systemTime:Lcom/dexcom/cgm/k/j;

.field private m_transmitterTime:Lcom/dexcom/cgm/k/n;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    invoke-virtual {p1, v0}, Lcom/dexcom/cgm/k/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have an unknown SystemTime."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iput-object p2, p0, Lcom/dexcom/cgm/k/m;->m_transmitterTime:Lcom/dexcom/cgm/k/n;

    .line 65
    iput-object p1, p0, Lcom/dexcom/cgm/k/m;->m_systemTime:Lcom/dexcom/cgm/k/j;

    .line 66
    return-void
.end method

.method private static calculateOffset(Lcom/dexcom/cgm/k/m;)J
    .locals 4

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/dexcom/cgm/k/m;->getSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    .line 48
    invoke-virtual {p0}, Lcom/dexcom/cgm/k/m;->getTransmitterTime()Lcom/dexcom/cgm/k/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static convertSystemTime(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/k/j;
    .locals 6

    .prologue
    .line 16
    invoke-static {p0}, Lcom/dexcom/cgm/k/m;->calculateOffset(Lcom/dexcom/cgm/k/m;)J

    move-result-wide v0

    .line 17
    new-instance v2, Lcom/dexcom/cgm/k/j;

    invoke-virtual {p1}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-direct {v2, v0, v1}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    return-object v2
.end method

.method public static convertTransmitterTime(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/n;
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 24
    invoke-static {p0}, Lcom/dexcom/cgm/k/m;->calculateOffset(Lcom/dexcom/cgm/k/m;)J

    move-result-wide v2

    .line 25
    invoke-virtual {p1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 26
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 30
    :goto_0
    new-instance v2, Lcom/dexcom/cgm/k/n;

    invoke-direct {v2, v0, v1}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    return-object v2

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public static create(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/m;
    .locals 2

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/dexcom/cgm/k/m;->convertTransmitterTime(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/n;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/dexcom/cgm/k/m;

    invoke-direct {v1, p1, v0}, Lcom/dexcom/cgm/k/m;-><init>(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;)V

    return-object v1
.end method

.method public static create(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/k/m;
    .locals 2

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/dexcom/cgm/k/m;->convertSystemTime(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/dexcom/cgm/k/m;

    invoke-direct {v1, v0, p1}, Lcom/dexcom/cgm/k/m;-><init>(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;)V

    return-object v1
.end method


# virtual methods
.method public final getSystemTime()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dexcom/cgm/k/m;->m_systemTime:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public final getTransmitterTime()Lcom/dexcom/cgm/k/n;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dexcom/cgm/k/m;->m_transmitterTime:Lcom/dexcom/cgm/k/n;

    return-object v0
.end method

.method public final isSystemTimeValid()Z
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dexcom/cgm/k/m;->m_systemTime:Lcom/dexcom/cgm/k/j;

    sget-object v1, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/k/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isTransmitterTimeValid()Z
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dexcom/cgm/k/m;->m_transmitterTime:Lcom/dexcom/cgm/k/n;

    sget-object v1, Lcom/dexcom/cgm/k/n;->Unknown:Lcom/dexcom/cgm/k/n;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/k/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    const-string v0, ""

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/k/m;->m_systemTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/k/m;->m_transmitterTime:Lcom/dexcom/cgm/k/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    return-object v0
.end method
