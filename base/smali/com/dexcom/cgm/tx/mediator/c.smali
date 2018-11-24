.class final Lcom/dexcom/cgm/tx/mediator/c;
.super Lcom/dexcom/cgm/tx/mediator/ae;
.source "AuthenticationKeyExchangeStrategy.java"


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
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/c;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 22
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/c;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v3, Lcom/dexcom/cgm/tx/mediator/d;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/dexcom/cgm/tx/mediator/d;-><init>(Lcom/dexcom/cgm/tx/mediator/c;B)V

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;-><init>(Lcom/dexcom/cgm/tx/mediator/at;Lcom/dexcom/cgm/tx/mediator/ac;Lcom/dexcom/cgm/tx/mediator/ak;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/c;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/dexcom/cgm/tx/mediator/c;Lcom/dexcom/cgm/tx/mediator/k;[B)V
    .locals 2

    .prologue
    .line 14
    .line 1099
    array-length v0, p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1101
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 1102
    :goto_0
    return-void

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/c;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationExchangeResponse:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1106
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/c;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/c;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/mediator/ac;->getAppAuthenticationPrimaryKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setAppAuthenticationSecondaryKey(Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/c;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setAppAuthenticationTimestamp(Lcom/dexcom/cgm/k/j;)V

    .line 1109
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/c;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationExchangeEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    goto :goto_0
.end method


# virtual methods
.method public final isComplete()Z
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationExchangeEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/c;->a:Lcom/dexcom/cgm/tx/mediator/ac;

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
    .line 73
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/c;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p2, p3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 74
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/c;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 75
    return-void
.end method

.method public final onCharacteristicWrite(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    .locals 3

    .prologue
    .line 60
    invoke-interface {p1, p4}, Lcom/dexcom/cgm/tx/mediator/k;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/c;->a:Lcom/dexcom/cgm/tx/mediator/ac;

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

    .line 63
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/c;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p2, p3, p4}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/at;[BI)V

    .line 67
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/c;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    goto :goto_0
.end method

.method public final start(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/c;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationExchangeStart:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 38
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/c;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->isAppAuthenticationKeyExchangeRequired(Lcom/dexcom/cgm/k/j;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/c;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationExchangeEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 55
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/c;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v1, "Application Key is expired"

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/c;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationExchangeRequest:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 45
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/c;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/c;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/ac;->getAppAuthenticationPrimaryKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setAppAuthenticationSecondaryKey(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/c;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setAppAuthenticationPrimaryKey(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/c;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setAppAuthenticationTimestamp(Lcom/dexcom/cgm/k/j;)V

    .line 50
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->createChangeToNewAppLevelKeyRequest(Ljava/lang/String;)[B

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/c;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationExchangeRequestWriteAck:Lcom/dexcom/cgm/tx/mediator/ad;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationExchangeRequestIndicate:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 54
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    goto :goto_0
.end method
