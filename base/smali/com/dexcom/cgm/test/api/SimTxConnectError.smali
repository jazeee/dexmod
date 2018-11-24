.class public Lcom/dexcom/cgm/test/api/SimTxConnectError;
.super Ljava/lang/Object;
.source "SimTxConnectError.java"


# instance fields
.field private m_connectStep:Ljava/lang/String;

.field private m_disconnectStatus:I

.field private m_failure:Ljava/lang/String;

.field private m_isTransmitterUnrecoverableError:Z

.field private m_rssi:I

.field private m_systemTime:J

.field private m_transmitterStatusCode:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_disconnectStatus:I

    .line 13
    iput-boolean v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_isTransmitterUnrecoverableError:Z

    .line 14
    iput-byte v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_transmitterStatusCode:B

    .line 15
    const-string v0, "SimulatedFailureStep"

    iput-object v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_connectStep:Ljava/lang/String;

    .line 16
    const/16 v0, -0x4b

    iput v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_rssi:I

    .line 17
    const-string v0, "Simulated Connection Failure"

    iput-object v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_failure:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConnectStep()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_connectStep:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectStatus()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_disconnectStatus:I

    return v0
.end method

.method public getFailure()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_failure:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_rssi:I

    return v0
.end method

.method public getSystemTime()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_systemTime:J

    return-wide v0
.end method

.method public getTransmitterStatusCode()B
    .locals 1

    .prologue
    .line 59
    iget-byte v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_transmitterStatusCode:B

    return v0
.end method

.method public isTransmitterUnrecoverableError()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_isTransmitterUnrecoverableError:Z

    return v0
.end method

.method public setConnectStep(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_connectStep:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setDisconnectStatus(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_disconnectStatus:I

    .line 37
    return-void
.end method

.method public setFailure(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_failure:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_rssi:I

    .line 85
    return-void
.end method

.method public setSystemTime(J)V
    .locals 1

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_systemTime:J

    .line 27
    return-void
.end method

.method public setTransmitterStatusCode(B)V
    .locals 0

    .prologue
    .line 64
    iput-byte p1, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_transmitterStatusCode:B

    .line 65
    return-void
.end method

.method public setTransmitterUnrecoverableError(Z)V
    .locals 1

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_isTransmitterUnrecoverableError:Z

    .line 47
    iget-boolean v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_isTransmitterUnrecoverableError:Z

    if-eqz v0, :cond_0

    .line 49
    const/16 v0, -0x7d

    iput-byte v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_transmitterStatusCode:B

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/dexcom/cgm/test/api/SimTxConnectError;->m_transmitterStatusCode:B

    goto :goto_0
.end method
