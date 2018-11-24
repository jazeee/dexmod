.class public final Lcom/dexcom/cgm/h/a/d;
.super Ljava/lang/Object;
.source "DexMeter.java"


# instance fields
.field private m_meter:Lcom/dexcom/cgm/model/Meter;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static fromInternal(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/h/a/d;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/dexcom/cgm/h/a/d;

    invoke-direct {v0}, Lcom/dexcom/cgm/h/a/d;-><init>()V

    .line 85
    iput-object p0, v0, Lcom/dexcom/cgm/h/a/d;->m_meter:Lcom/dexcom/cgm/model/Meter;

    .line 86
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    if-ne p0, p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 52
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

    .line 54
    :cond_3
    check-cast p1, Lcom/dexcom/cgm/h/a/d;

    .line 56
    iget-object v2, p0, Lcom/dexcom/cgm/h/a/d;->m_meter:Lcom/dexcom/cgm/model/Meter;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dexcom/cgm/h/a/d;->m_meter:Lcom/dexcom/cgm/model/Meter;

    iget-object v3, p1, Lcom/dexcom/cgm/h/a/d;->m_meter:Lcom/dexcom/cgm/model/Meter;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/model/Meter;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/dexcom/cgm/h/a/d;->m_meter:Lcom/dexcom/cgm/model/Meter;

    if-nez v2, :cond_4

    goto :goto_0
.end method

.method public final getMeterTimeStamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/d;->m_meter:Lcom/dexcom/cgm/model/Meter;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Meter;->getMeterTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    return-object v0
.end method

.method public final getMeterValue()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/d;->m_meter:Lcom/dexcom/cgm/model/Meter;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Meter;->getMeterValue()I

    move-result v0

    return v0
.end method

.method public final getTransmitterID()Lcom/dexcom/cgm/h/a/e;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/d;->m_meter:Lcom/dexcom/cgm/model/Meter;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Meter;->getTransmitterID()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/h/a/e;->fromInternal(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/h/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/d;->m_meter:Lcom/dexcom/cgm/model/Meter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/h/a/d;->m_meter:Lcom/dexcom/cgm/model/Meter;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Meter;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Meter{bg = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/dexcom/cgm/h/a/d;->getMeterValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bgTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/dexcom/cgm/h/a/d;->getMeterTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "transmitterId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/dexcom/cgm/h/a/d;->getTransmitterID()Lcom/dexcom/cgm/h/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
