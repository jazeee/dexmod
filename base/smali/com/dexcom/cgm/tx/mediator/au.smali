.class final Lcom/dexcom/cgm/tx/mediator/au;
.super Lcom/dexcom/cgm/tx/mediator/ae;
.source "PairingStrategy.java"


# instance fields
.field private final a:Lcom/dexcom/cgm/tx/mediator/ac;

.field private final b:Lcom/dexcom/cgm/tx/mediator/aj;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/tx/mediator/ac;)V
    .locals 5

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ae;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/au;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->AuthenticationControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/au;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v3, Lcom/dexcom/cgm/tx/mediator/av;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/dexcom/cgm/tx/mediator/av;-><init>(Lcom/dexcom/cgm/tx/mediator/au;B)V

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;-><init>(Lcom/dexcom/cgm/tx/mediator/at;Lcom/dexcom/cgm/tx/mediator/ac;Lcom/dexcom/cgm/tx/mediator/ak;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/au;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/dexcom/cgm/tx/mediator/au;)Lcom/dexcom/cgm/tx/mediator/ac;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/au;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    return-object v0
.end method


# virtual methods
.method public final isComplete()Z
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->PairEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/au;->a:Lcom/dexcom/cgm/tx/mediator/ac;

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
    .line 79
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->f()V

    .line 80
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/au;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->PairBondCreated:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 81
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/au;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->PairEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 82
    return-void
.end method

.method public final onCharacteristicChanged(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[B)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/au;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p2, p3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 65
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/au;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 66
    return-void
.end method

.method public final onCharacteristicChangedDisabled(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/au;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->PairAuthenticationControlPointIndicationsDisabled:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 72
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->e()V

    .line 73
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/au;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->PairCreateBond:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 74
    return-void
.end method

.method public final onCharacteristicWrite(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    .locals 3

    .prologue
    .line 51
    invoke-interface {p1, p4}, Lcom/dexcom/cgm/tx/mediator/k;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/au;->a:Lcom/dexcom/cgm/tx/mediator/ac;

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

    .line 54
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/au;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p2, p3, p4}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/at;[BI)V

    .line 58
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/au;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    goto :goto_0
.end method

.method public final start(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/au;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->PairStart:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 39
    const/16 v0, 0x3c

    invoke-static {v0}, Lcom/dexcom/cgm/d/b;->createKeepConnectionAliveRequest(I)[B

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/au;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->PairRequestKeepConnectionAlive:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 42
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/au;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->PairRequestKeepConnectionAliveWriteAck:Lcom/dexcom/cgm/tx/mediator/ad;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/ad;->PairRequestKeepConnectionAliveIndicate:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 45
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->AuthenticationControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 46
    return-void
.end method
