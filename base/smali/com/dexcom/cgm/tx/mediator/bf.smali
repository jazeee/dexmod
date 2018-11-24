.class final Lcom/dexcom/cgm/tx/mediator/bf;
.super Lcom/dexcom/cgm/tx/mediator/ae;
.source "TransmitterInfoStrategy.java"


# instance fields
.field private final a:Lcom/dexcom/cgm/tx/mediator/ac;

.field private final b:Lcom/dexcom/cgm/tx/mediator/aj;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/tx/mediator/ac;)V
    .locals 5

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ae;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v3, Lcom/dexcom/cgm/tx/mediator/bg;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/dexcom/cgm/tx/mediator/bg;-><init>(Lcom/dexcom/cgm/tx/mediator/bf;B)V

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;-><init>(Lcom/dexcom/cgm/tx/mediator/at;Lcom/dexcom/cgm/tx/mediator/ac;Lcom/dexcom/cgm/tx/mediator/ak;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bf;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/dexcom/cgm/tx/mediator/bf;Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 4

    .prologue
    .line 14
    .line 1105
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->TxInfoTransmitterVersionResponse:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1106
    new-instance v0, Lcom/dexcom/cgm/tx/a/q;

    invoke-direct {v0, p2}, Lcom/dexcom/cgm/tx/a/q;-><init>([B)V

    .line 1107
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setTransmitterVersionResponse(Lcom/dexcom/cgm/tx/a/q;)V

    .line 1109
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/q;->getTransmitterStatusCode()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setTransmitterStatusCode(B)V

    .line 1110
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterStatusCode()B

    move-result v0

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->isUnrecoverableError(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 1113
    :goto_0
    return-void

    .line 1116
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/tx/a/j;->createFirmwareVersionRequest()[B

    move-result-object v0

    .line 1118
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->TxInfoFirmwareVersionRequest:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1119
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bf;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->TxInfoFirmwareVersionRequestWriteAck:Lcom/dexcom/cgm/tx/mediator/ad;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/ad;->TxInfoFirmwareVersionRequestIndicate:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1122
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dexcom/cgm/tx/mediator/bf;Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 4

    .prologue
    .line 14
    .line 1127
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->TxInfoFirmwareVersionResponse:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1128
    new-instance v0, Lcom/dexcom/cgm/tx/a/m;

    invoke-direct {v0, p2}, Lcom/dexcom/cgm/tx/a/m;-><init>([B)V

    .line 1129
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setFirmwareVersionResponse(Lcom/dexcom/cgm/tx/a/m;)V

    .line 1131
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/m;->getTransmitterStatusCode()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setTransmitterStatusCode(B)V

    .line 1132
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterStatusCode()B

    move-result v0

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->isUnrecoverableError(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 1135
    :goto_0
    return-void

    .line 1138
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/tx/a/j;->createTransmitterVersionExtendedRequest()[B

    move-result-object v0

    .line 1140
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->TxInfoTransmitterVersionExtendedRequest:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1141
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bf;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->TxInfoTransmitterVersionExtendedRequestWriteAck:Lcom/dexcom/cgm/tx/mediator/ad;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/ad;->TxInfoTransmitterVersionExtendedRequestIndicate:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1144
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/dexcom/cgm/tx/mediator/bf;Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 2

    .prologue
    .line 14
    .line 1149
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->TxInfoTransmitterVersionExtendedResponse:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1150
    new-instance v0, Lcom/dexcom/cgm/tx/a/p;

    invoke-direct {v0, p2}, Lcom/dexcom/cgm/tx/a/p;-><init>([B)V

    .line 1151
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setTransmitterVersionExtendedResponse(Lcom/dexcom/cgm/tx/a/p;)V

    .line 1153
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/p;->getTransmitterStatusCode()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setTransmitterStatusCode(B)V

    .line 1154
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterStatusCode()B

    move-result v0

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->isUnrecoverableError(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 1157
    :goto_0
    return-void

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->TxInfoEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    goto :goto_0
.end method


# virtual methods
.method public final isComplete()Z
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->TxInfoEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

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
    .line 70
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bf;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p2, p3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 71
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bf;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 72
    return-void
.end method

.method public final onCharacteristicWrite(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    .locals 3

    .prologue
    .line 57
    invoke-interface {p1, p4}, Lcom/dexcom/cgm/tx/mediator/k;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

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

    .line 60
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bf;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p2, p3, p4}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/at;[BI)V

    .line 64
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bf;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    goto :goto_0
.end method

.method public final start(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->TxInfoStart:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 39
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->isTransmitterInfoDetailsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->TxInfoEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 52
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/tx/a/j;->createTransmitterVersionRequest()[B

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bf;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->TxInfoTransmitterVersionRequest:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 48
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bf;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->TxInfoTransmitterVersionRequestWriteAck:Lcom/dexcom/cgm/tx/mediator/ad;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/ad;->TxInfoTransmitterVersionRequestIndicate:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 51
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    goto :goto_0
.end method
