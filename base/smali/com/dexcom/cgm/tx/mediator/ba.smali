.class final Lcom/dexcom/cgm/tx/mediator/ba;
.super Lcom/dexcom/cgm/tx/mediator/ae;
.source "ServiceDiscoveryStrategy.java"


# instance fields
.field private final a:Lcom/dexcom/cgm/tx/mediator/ac;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/tx/mediator/ac;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ae;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ba;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 16
    return-void
.end method


# virtual methods
.method public final isComplete()Z
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->ServiceDiscoveryEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ba;->a:Lcom/dexcom/cgm/tx/mediator/ac;

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

.method public final onServicesDiscovered(Lcom/dexcom/cgm/tx/mediator/k;I)V
    .locals 3

    .prologue
    .line 34
    invoke-interface {p1, p2}, Lcom/dexcom/cgm/tx/mediator/k;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ba;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Service discovery failed: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ba;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->ServiceDiscoveryFailed:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 38
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 51
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ba;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v1, "Service discovery missing handles"

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ba;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->ServiceDiscoveryFailed:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 46
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ba;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->ServiceDiscoveryEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    goto :goto_0
.end method

.method public final start(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ba;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->ServiceDiscoveryStart:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 28
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->c()V

    .line 29
    return-void
.end method
