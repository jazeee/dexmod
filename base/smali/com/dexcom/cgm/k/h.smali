.class public final Lcom/dexcom/cgm/k/h;
.super Ljava/lang/Object;
.source "ServerSyncTime.java"


# instance fields
.field private m_serverTime:Lcom/dexcom/cgm/k/i;

.field private m_systemTime:Lcom/dexcom/cgm/k/j;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/i;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    invoke-virtual {p1, v0}, Lcom/dexcom/cgm/k/j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have an unknown SystemTime."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/k/n;->Unknown:Lcom/dexcom/cgm/k/n;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have an unknown TransmitterTime."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    iput-object p2, p0, Lcom/dexcom/cgm/k/h;->m_serverTime:Lcom/dexcom/cgm/k/i;

    .line 34
    iput-object p1, p0, Lcom/dexcom/cgm/k/h;->m_systemTime:Lcom/dexcom/cgm/k/j;

    .line 35
    return-void
.end method

.method private calculateOffset()J
    .locals 4

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/dexcom/cgm/k/h;->getSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    .line 20
    invoke-virtual {p0}, Lcom/dexcom/cgm/k/h;->getServerTime()Lcom/dexcom/cgm/k/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/i;->getTimeInSeconds()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final getServerTime()Lcom/dexcom/cgm/k/i;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dexcom/cgm/k/h;->m_serverTime:Lcom/dexcom/cgm/k/i;

    return-object v0
.end method

.method public final getSystemTime()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dexcom/cgm/k/h;->m_systemTime:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    const-string v0, ""

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "system="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/k/h;->m_systemTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "server="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/k/h;->m_serverTime:Lcom/dexcom/cgm/k/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    return-object v0
.end method
