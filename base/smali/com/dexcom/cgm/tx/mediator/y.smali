.class final Lcom/dexcom/cgm/tx/mediator/y;
.super Lcom/dexcom/cgm/tx/mediator/ae;
.source "CgmTimeAndSignatureStrategy.java"


# instance fields
.field private final a:Lcom/dexcom/cgm/tx/mediator/ac;

.field private final b:Lcom/dexcom/cgm/tx/mediator/aj;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/tx/mediator/ac;)V
    .locals 5

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ae;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/y;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 23
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/y;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v3, Lcom/dexcom/cgm/tx/mediator/z;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/dexcom/cgm/tx/mediator/z;-><init>(Lcom/dexcom/cgm/tx/mediator/y;B)V

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;-><init>(Lcom/dexcom/cgm/tx/mediator/at;Lcom/dexcom/cgm/tx/mediator/ac;Lcom/dexcom/cgm/tx/mediator/ak;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/y;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/dexcom/cgm/tx/mediator/y;Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 8

    .prologue
    .line 15
    .line 1092
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 1093
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/y;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->CgmTimeResponseTxTimeAndSessionSignature:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1094
    new-instance v1, Lcom/dexcom/cgm/tx/a/s;

    invoke-direct {v1, p2}, Lcom/dexcom/cgm/tx/a/s;-><init>([B)V

    .line 1095
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/y;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/a/s;->getSessionSignature()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/dexcom/cgm/k/n;->create(J)Lcom/dexcom/cgm/k/n;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/tx/mediator/ac;->setSessionSignature(Lcom/dexcom/cgm/k/n;)V

    .line 1096
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/y;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v3, Lcom/dexcom/cgm/k/m;

    new-instance v4, Lcom/dexcom/cgm/k/n;

    .line 1099
    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/a/s;->getCurrentTransmitterTime()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    invoke-direct {v3, v0, v4}, Lcom/dexcom/cgm/k/m;-><init>(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;)V

    .line 1096
    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/tx/mediator/ac;->setTransmitterSyncTime(Lcom/dexcom/cgm/k/m;)V

    .line 1101
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/y;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/a/s;->getTransmitterStatusCode()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setTransmitterStatusCode(B)V

    .line 1102
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/y;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterStatusCode()B

    move-result v0

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->isUnrecoverableError(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 1105
    :goto_0
    return-void

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/y;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->CgmTimeEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    goto :goto_0
.end method


# virtual methods
.method public final isComplete()Z
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->CgmTimeEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/y;->a:Lcom/dexcom/cgm/tx/mediator/ac;

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

.method public final onCharacteristicChanged(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[B)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/y;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p2, p3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 66
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/y;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 67
    return-void
.end method

.method public final onCharacteristicWrite(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    .locals 3

    .prologue
    .line 52
    invoke-interface {p1, p4}, Lcom/dexcom/cgm/tx/mediator/k;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/y;->a:Lcom/dexcom/cgm/tx/mediator/ac;

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

    .line 55
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/y;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p2, p3, p4}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/at;[BI)V

    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/y;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    goto :goto_0
.end method

.method public final start(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/y;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->CgmTimeStart:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 41
    invoke-static {}, Lcom/dexcom/cgm/tx/a/j;->createTxTimeAndSessionSignatureRequest()[B

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/y;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->CgmTimeRequestTxTimeAndSessionSignature:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 43
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/y;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->CgmTimeRequestTxTimeAndSessionSignatureWriteAck:Lcom/dexcom/cgm/tx/mediator/ad;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/ad;->CgmTimeRequestTxTimeAndSessionSignatureIndicate:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 46
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 47
    return-void
.end method
