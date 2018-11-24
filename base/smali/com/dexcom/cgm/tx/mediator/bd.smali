.class public final Lcom/dexcom/cgm/tx/mediator/bd;
.super Lcom/dexcom/cgm/tx/mediator/ae;
.source "TransmitterBatteryStrategy.java"


# static fields
.field private static s_lastBatteryCheck:Lcom/dexcom/cgm/k/j;

.field private static s_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;


# instance fields
.field private final m_controlPointGuard:Lcom/dexcom/cgm/tx/mediator/aj;

.field private final m_data:Lcom/dexcom/cgm/tx/mediator/ac;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/tx/mediator/ac;)V
    .locals 5

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ae;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 18
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v3, Lcom/dexcom/cgm/tx/mediator/be;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/dexcom/cgm/tx/mediator/be;-><init>(Lcom/dexcom/cgm/tx/mediator/bd;B)V

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;-><init>(Lcom/dexcom/cgm/tx/mediator/at;Lcom/dexcom/cgm/tx/mediator/ac;Lcom/dexcom/cgm/tx/mediator/ak;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_controlPointGuard:Lcom/dexcom/cgm/tx/mediator/aj;

    .line 23
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/bd;->s_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/tx/mediator/bd;->s_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 28
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/tx/mediator/bd;Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/bd;->processTxBatteryStatusResponse(Lcom/dexcom/cgm/tx/mediator/k;[B)V

    return-void
.end method

.method private makeRequest(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 4

    .prologue
    .line 65
    invoke-static {}, Lcom/dexcom/cgm/tx/a/j;->createTxBatteryStatusRequest()[B

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->TxBatteryStatusRequest:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 68
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_controlPointGuard:Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->TxBatteryStatusRequestWriteAck:Lcom/dexcom/cgm/tx/mediator/ad;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/ad;->TxBatteryStatusRequestIndicate:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 71
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 72
    return-void
.end method

.method private processTxBatteryStatusResponse(Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->TxBatteryStatusResponse:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 116
    new-instance v0, Lcom/dexcom/cgm/tx/a/r;

    invoke-direct {v0, p2}, Lcom/dexcom/cgm/tx/a/r;-><init>([B)V

    .line 117
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setTxBatteryStatusResponse(Lcom/dexcom/cgm/tx/a/r;)V

    .line 119
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/r;->getTransmitterStatusCode()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setTransmitterStatusCode(B)V

    .line 120
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterStatusCode()B

    move-result v0

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->isUnrecoverableError(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->TxBatteryEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    goto :goto_0
.end method


# virtual methods
.method public final isComplete()Z
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->TxBatteryEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/mediator/ac;->getConnectStep()Lcom/dexcom/cgm/tx/mediator/ad;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic onBonded(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/dexcom/cgm/tx/mediator/ae;->onBonded(Lcom/dexcom/cgm/tx/mediator/k;)V

    return-void
.end method

.method public final onCharacteristicChanged(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[B)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_controlPointGuard:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p2, p3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 91
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_controlPointGuard:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 92
    return-void
.end method

.method public final bridge synthetic onCharacteristicChangedDisabled(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1, p2, p3}, Lcom/dexcom/cgm/tx/mediator/ae;->onCharacteristicChangedDisabled(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V

    return-void
.end method

.method public final bridge synthetic onCharacteristicChangedEnabled(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1, p2, p3}, Lcom/dexcom/cgm/tx/mediator/ae;->onCharacteristicChangedEnabled(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V

    return-void
.end method

.method public final bridge synthetic onCharacteristicRead(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dexcom/cgm/tx/mediator/ae;->onCharacteristicRead(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V

    return-void
.end method

.method public final onCharacteristicWrite(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    .locals 3

    .prologue
    .line 77
    invoke-interface {p1, p4}, Lcom/dexcom/cgm/tx/mediator/k;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Characteristic write failure: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;)V

    .line 80
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_controlPointGuard:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p2, p3, p4}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/at;[BI)V

    .line 84
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_controlPointGuard:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    goto :goto_0
.end method

.method public final bridge synthetic onServicesDiscovered(Lcom/dexcom/cgm/tx/mediator/k;I)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/ae;->onServicesDiscovered(Lcom/dexcom/cgm/tx/mediator/k;I)V

    return-void
.end method

.method public final start(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->TxBatteryStart:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 41
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 42
    const-wide/16 v2, 0x3840

    invoke-virtual {v0, v2, v3}, Lcom/dexcom/cgm/k/j;->subtractSeconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/bd;->s_lastBatteryCheck:Lcom/dexcom/cgm/k/j;

    if-eqz v1, :cond_0

    .line 46
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/bd;->s_lastBatteryCheck:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 48
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/bd;->s_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/bd;->s_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->TxBatteryEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bd;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/tx/mediator/bd;->s_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 59
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/tx/mediator/bd;->s_lastBatteryCheck:Lcom/dexcom/cgm/k/j;

    .line 60
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/bd;->makeRequest(Lcom/dexcom/cgm/tx/mediator/k;)V

    goto :goto_0
.end method
