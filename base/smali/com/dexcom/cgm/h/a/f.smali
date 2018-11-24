.class public final Lcom/dexcom/cgm/h/a/f;
.super Ljava/lang/Object;
.source "DexTransmitterInfo.java"


# instance fields
.field private m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static calculateAb(Lcom/dexcom/cgm/h/a/f;)Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-static {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->calculateAb(Lcom/dexcom/cgm/model/TransmitterInfo;)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    return-object v0
.end method

.method public static fromInternal(Lcom/dexcom/cgm/model/TransmitterInfo;)Lcom/dexcom/cgm/h/a/f;
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/dexcom/cgm/h/a/f;

    invoke-direct {v0}, Lcom/dexcom/cgm/h/a/f;-><init>()V

    .line 155
    iput-object p0, v0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    .line 156
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 107
    if-ne p0, p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 108
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

    .line 110
    :cond_3
    check-cast p1, Lcom/dexcom/cgm/h/a/f;

    .line 112
    iget-object v2, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    iget-object v3, p1, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/model/TransmitterInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    if-nez v2, :cond_4

    goto :goto_0
.end method

.method public final getActivatedOn()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getActivatedOn()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    return-object v0
.end method

.method public final getApiVersion()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getApiVersion()I

    move-result v0

    return v0
.end method

.method public final getBleRadioFirmwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getBleRadioFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBleSoftDeviceVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getBleSoftDeviceVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCgmProcessorFirmwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getCgmProcessorFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHardwareVersion()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getHardwareVersion()I

    move-result v0

    return v0
.end method

.method public final getMaxRuntimeDays()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getMaxRuntimeDays()I

    move-result v0

    return v0
.end method

.method public final getMaxStorageTimeDays()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getMaxStorageTimeDays()I

    move-result v0

    return v0
.end method

.method public final getNordicAsicHwId()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getNordicAsicHwId()I

    move-result v0

    return v0
.end method

.method public final getSoftwareNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getSoftwareNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStorageTimeDays()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getStorageTimeDays()I

    move-result v0

    return v0
.end method

.method public final getSystemTime()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    return-object v0
.end method

.method public final getTransmitterId()Lcom/dexcom/cgm/h/a/e;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/h/a/e;->fromInternal(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/h/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final getTransmitterRemainingTime()Lcom/dexcom/cgm/k/k;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterRemainingTime()Lcom/dexcom/cgm/k/k;

    move-result-object v0

    return-object v0
.end method

.method public final getTransmitterVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDetailsAvailable()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->isDetailsAvailable()Z

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TransmitterInfo{m_transmitterInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/h/a/f;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
