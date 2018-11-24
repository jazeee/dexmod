.class final Lcom/dexcom/cgm/tx/mediator/w;
.super Lcom/dexcom/cgm/tx/mediator/ae;
.source "CgmQueryStrategy.java"


# instance fields
.field private final a:Lcom/dexcom/cgm/tx/mediator/ac;

.field private final b:Lcom/dexcom/cgm/tx/mediator/aj;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/tx/mediator/ac;)V
    .locals 5

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ae;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/w;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 21
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/w;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v3, Lcom/dexcom/cgm/tx/mediator/x;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/dexcom/cgm/tx/mediator/x;-><init>(Lcom/dexcom/cgm/tx/mediator/w;B)V

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;-><init>(Lcom/dexcom/cgm/tx/mediator/at;Lcom/dexcom/cgm/tx/mediator/ac;Lcom/dexcom/cgm/tx/mediator/ak;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/w;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/dexcom/cgm/tx/mediator/w;Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 4

    .prologue
    .line 13
    .line 1092
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/w;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->CgmQueryResponseEgv:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1093
    new-instance v0, Lcom/dexcom/cgm/tx/a/l;

    invoke-direct {v0, p2}, Lcom/dexcom/cgm/tx/a/l;-><init>([B)V

    .line 1094
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/w;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setEgvResponse(Lcom/dexcom/cgm/tx/a/l;)V

    .line 1096
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/w;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/l;->getTransmitterStatusCode()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setTransmitterStatusCode(B)V

    .line 1097
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/w;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterStatusCode()B

    move-result v0

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->isUnrecoverableError(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 1100
    :goto_0
    return-void

    .line 1103
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/tx/a/j;->createCalBoundsRequest()[B

    move-result-object v0

    .line 1105
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/w;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->CgmQueryRequestCalBounds:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1106
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/w;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->CgmQueryRequestCalBoundsWriteAck:Lcom/dexcom/cgm/tx/mediator/ad;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/ad;->CgmQueryRequestCalBoundsIndicate:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1109
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dexcom/cgm/tx/mediator/w;Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 2

    .prologue
    .line 13
    .line 1114
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/w;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->CgmQueryResponseCalBounds:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1115
    new-instance v0, Lcom/dexcom/cgm/tx/a/h;

    invoke-direct {v0, p2}, Lcom/dexcom/cgm/tx/a/h;-><init>([B)V

    .line 1116
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/w;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setCalBoundsResponse(Lcom/dexcom/cgm/tx/a/h;)V

    .line 1118
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/w;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/h;->getTransmitterStatusCode()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setTransmitterStatusCode(B)V

    .line 1119
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/w;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterStatusCode()B

    move-result v0

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->isUnrecoverableError(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 1122
    :goto_0
    return-void

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/w;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->CgmQueryEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    goto :goto_0
.end method


# virtual methods
.method public final isComplete()Z
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->CgmQueryEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/w;->a:Lcom/dexcom/cgm/tx/mediator/ac;

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
    .line 62
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/w;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p2, p3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 63
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/w;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 64
    return-void
.end method

.method public final onCharacteristicWrite(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    .locals 3

    .prologue
    .line 49
    invoke-interface {p1, p4}, Lcom/dexcom/cgm/tx/mediator/k;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/w;->a:Lcom/dexcom/cgm/tx/mediator/ac;

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

    .line 52
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/w;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p2, p3, p4}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/at;[BI)V

    .line 56
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/w;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    goto :goto_0
.end method

.method public final start(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/w;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->CgmQueryStart:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 38
    invoke-static {}, Lcom/dexcom/cgm/tx/a/j;->createEgvRequest()[B

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/w;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->CgmQueryRequestEgv:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 40
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/w;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->CgmQueryRequestEgvWriteAck:Lcom/dexcom/cgm/tx/mediator/ad;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/ad;->CgmQueryRequestEgvIndicate:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 43
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 44
    return-void
.end method
