.class public final Lcom/dexcom/cgm/tx/mediator/ap;
.super Ljava/lang/Object;
.source "EvConnectionError.java"


# instance fields
.field private m_isTransmitterUnrecoverableError:Z

.field private m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

.field private m_transmitterStatusCode:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createEvConnectionError()Lcom/dexcom/cgm/tx/mediator/ao;
    .locals 5

    .prologue
    .line 81
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/ao;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ap;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    iget-boolean v2, p0, Lcom/dexcom/cgm/tx/mediator/ap;->m_isTransmitterUnrecoverableError:Z

    iget-byte v3, p0, Lcom/dexcom/cgm/tx/mediator/ap;->m_transmitterStatusCode:B

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dexcom/cgm/tx/mediator/ao;-><init>(Lcom/dexcom/cgm/model/TransmitterId;ZBLcom/dexcom/cgm/tx/mediator/b;)V

    return-object v0
.end method

.method public final setIsTransmitterUnrecoverableError(Z)Lcom/dexcom/cgm/tx/mediator/ap;
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/dexcom/cgm/tx/mediator/ap;->m_isTransmitterUnrecoverableError:Z

    .line 70
    return-object p0
.end method

.method public final setTransmitterId(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/tx/mediator/ap;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ap;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 64
    return-object p0
.end method

.method public final setTransmitterStatusCode(B)Lcom/dexcom/cgm/tx/mediator/ap;
    .locals 0

    .prologue
    .line 75
    iput-byte p1, p0, Lcom/dexcom/cgm/tx/mediator/ap;->m_transmitterStatusCode:B

    .line 76
    return-object p0
.end method
