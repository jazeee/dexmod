.class public final Lcom/dexcom/cgm/h/a/c;
.super Ljava/lang/Object;
.source "DexGlucose.java"


# static fields
.field public static final VALUE_MASK:I = 0x3ff


# instance fields
.field private m_glucose:Lcom/dexcom/cgm/model/Glucose;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromInternal(Lcom/dexcom/cgm/model/Glucose;)Lcom/dexcom/cgm/h/a/c;
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/dexcom/cgm/h/a/c;

    invoke-direct {v0}, Lcom/dexcom/cgm/h/a/c;-><init>()V

    .line 33
    iput-object p0, v0, Lcom/dexcom/cgm/h/a/c;->m_glucose:Lcom/dexcom/cgm/model/Glucose;

    .line 34
    return-object v0
.end method


# virtual methods
.method public final getGlucoseValue()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/c;->m_glucose:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getGlucoseValue()I

    move-result v0

    return v0
.end method

.method public final getSessionStartTime()J
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/c;->m_glucose:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getSessionStartTime()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSystemTimeStamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/c;->m_glucose:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    return-object v0
.end method

.method public final getTransmitterID()Lcom/dexcom/cgm/h/a/e;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/c;->m_glucose:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getTransmitterID()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/h/a/e;->fromInternal(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/h/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/c;->m_glucose:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getTransmitterTimeStamp()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    return-object v0
.end method

.method public final getTrendArrow()Lcom/dexcom/cgm/h/a/a/e;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/c;->m_glucose:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getTrendArrow()Lcom/dexcom/cgm/model/enums/TrendArrow;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/h/a/a/e;->fromInternal(Lcom/dexcom/cgm/model/enums/TrendArrow;)Lcom/dexcom/cgm/h/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final getTrendRate()D
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/c;->m_glucose:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getTrendRate()D

    move-result-wide v0

    return-wide v0
.end method

.method public final isBgGeneratedOnTx()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/c;->m_glucose:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->isBgGeneratedOnTx()Z

    move-result v0

    return v0
.end method

.method public final isDisplayOnly()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/c;->m_glucose:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->isDisplayOnly()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    const-string v0, ""

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "systemTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/h/a/c;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "transmitterID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/h/a/c;->getTransmitterID()Lcom/dexcom/cgm/h/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "sessionSignature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/h/a/c;->getSessionStartTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "glucoseValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/h/a/c;->getGlucoseValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "trendRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/h/a/c;->getTrendRate()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isDisplayOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/h/a/c;->isDisplayOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isBgGeneratedOnTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/h/a/c;->isBgGeneratedOnTx()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "wasBackfilled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/h/a/c;->wasBackfilled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    return-object v0
.end method

.method public final wasBackfilled()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/c;->m_glucose:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->wasBackfilled()Z

    move-result v0

    return v0
.end method
