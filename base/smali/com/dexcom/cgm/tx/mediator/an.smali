.class public final Lcom/dexcom/cgm/tx/mediator/an;
.super Lcom/dexcom/cgm/tx/mediator/ae;
.source "DisconnectStrategy.java"


# instance fields
.field private final m_data:Lcom/dexcom/cgm/tx/mediator/ac;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/tx/mediator/ac;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ae;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/an;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 18
    return-void
.end method


# virtual methods
.method public final isComplete()Z
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->DisconnectEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/an;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

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
    .line 11
    invoke-super {p0, p1}, Lcom/dexcom/cgm/tx/mediator/ae;->onBonded(Lcom/dexcom/cgm/tx/mediator/k;)V

    return-void
.end method

.method public final bridge synthetic onCharacteristicChanged(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[B)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1, p2, p3}, Lcom/dexcom/cgm/tx/mediator/ae;->onCharacteristicChanged(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[B)V

    return-void
.end method

.method public final bridge synthetic onCharacteristicChangedDisabled(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1, p2, p3}, Lcom/dexcom/cgm/tx/mediator/ae;->onCharacteristicChangedDisabled(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V

    return-void
.end method

.method public final bridge synthetic onCharacteristicChangedEnabled(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1, p2, p3}, Lcom/dexcom/cgm/tx/mediator/ae;->onCharacteristicChangedEnabled(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V

    return-void
.end method

.method public final bridge synthetic onCharacteristicRead(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1, p2, p3, p4}, Lcom/dexcom/cgm/tx/mediator/ae;->onCharacteristicRead(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V

    return-void
.end method

.method public final onCharacteristicWrite(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/an;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->DisconnectEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 38
    return-void
.end method

.method public final bridge synthetic onServicesDiscovered(Lcom/dexcom/cgm/tx/mediator/k;I)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/ae;->onServicesDiscovered(Lcom/dexcom/cgm/tx/mediator/k;I)V

    return-void
.end method

.method public final start(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/an;->m_data:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->DisconnectStart:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 30
    invoke-static {}, Lcom/dexcom/cgm/tx/a/j;->createDisconnectRequest()[B

    move-result-object v0

    .line 31
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 32
    return-void
.end method
