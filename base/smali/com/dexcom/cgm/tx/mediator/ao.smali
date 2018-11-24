.class public final Lcom/dexcom/cgm/tx/mediator/ao;
.super Ljava/lang/Object;
.source "EvConnectionError.java"


# instance fields
.field private final m_isTransmitterUnrecoverableError:Z

.field private final m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

.field private final m_transmitterStatusCode:B


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/model/TransmitterId;ZB)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ao;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 26
    iput-boolean p2, p0, Lcom/dexcom/cgm/tx/mediator/ao;->m_isTransmitterUnrecoverableError:Z

    .line 27
    iput-byte p3, p0, Lcom/dexcom/cgm/tx/mediator/ao;->m_transmitterStatusCode:B

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/model/TransmitterId;ZBLcom/dexcom/cgm/tx/mediator/b;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/dexcom/cgm/tx/mediator/ao;-><init>(Lcom/dexcom/cgm/model/TransmitterId;ZB)V

    return-void
.end method


# virtual methods
.method public final getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ao;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    return-object v0
.end method

.method public final getTransmitterStatusCode()B
    .locals 1

    .prologue
    .line 42
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/mediator/ao;->m_transmitterStatusCode:B

    return v0
.end method

.method public final isTransmitterUnrecoverableError()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/ao;->m_isTransmitterUnrecoverableError:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{transmitterId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ao;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTransmitterUnrecoverableError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dexcom/cgm/tx/mediator/ao;->m_isTransmitterUnrecoverableError:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transmitterStatusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/dexcom/cgm/tx/mediator/ao;->m_transmitterStatusCode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
