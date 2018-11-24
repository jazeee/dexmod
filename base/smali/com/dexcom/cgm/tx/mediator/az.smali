.class final Lcom/dexcom/cgm/tx/mediator/az;
.super Lcom/dexcom/cgm/tx/mediator/ae;
.source "SecureLinkSubscriptionStrategy.java"


# instance fields
.field private final a:Lcom/dexcom/cgm/tx/mediator/ac;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/tx/mediator/ac;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ae;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/az;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 16
    return-void
.end method


# virtual methods
.method public final isComplete()Z
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->SecureLinkSubscribeEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/az;->a:Lcom/dexcom/cgm/tx/mediator/ac;

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

.method public final onBonded(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/az;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v1, "Bond appears to have been lost and restored when creating secure link."

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->addWarning(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public final onCharacteristicChangedEnabled(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V
    .locals 3

    .prologue
    .line 44
    invoke-interface {p1, p3}, Lcom/dexcom/cgm/tx/mediator/k;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/az;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to enable indications: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;)V

    .line 47
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/az;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->SecureLinkSubscribeIndicationsEnabled:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 51
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/az;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->SecureLinkSubscribeEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    goto :goto_0
.end method

.method public final start(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/az;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->SecureLinkSubscribeStart:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 28
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/az;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->SecureLinkSubscribeEnableIndications:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 29
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->b(Lcom/dexcom/cgm/tx/mediator/at;)V

    .line 30
    return-void
.end method
