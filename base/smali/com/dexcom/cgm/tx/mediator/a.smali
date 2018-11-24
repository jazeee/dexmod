.class final Lcom/dexcom/cgm/tx/mediator/a;
.super Lcom/dexcom/cgm/tx/mediator/ae;
.source "AdvertisingSyncStrategy.java"


# instance fields
.field private final a:Lcom/dexcom/cgm/tx/mediator/ac;

.field private final b:Lcom/dexcom/cgm/tx/mediator/aj;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/tx/mediator/ac;)V
    .locals 5

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ae;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/a;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 24
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/a;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v3, Lcom/dexcom/cgm/tx/mediator/b;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/dexcom/cgm/tx/mediator/b;-><init>(Lcom/dexcom/cgm/tx/mediator/a;B)V

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;-><init>(Lcom/dexcom/cgm/tx/mediator/at;Lcom/dexcom/cgm/tx/mediator/ac;Lcom/dexcom/cgm/tx/mediator/ak;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/a;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/dexcom/cgm/tx/mediator/a;[B)V
    .locals 3

    .prologue
    .line 14
    .line 1124
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/a;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AdvertisingSyncConfigResponse:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 1125
    new-instance v0, Lcom/dexcom/cgm/tx/a/a;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/tx/a/a;-><init>([B)V

    .line 1127
    const/16 v1, 0x1c

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/a;->getResponseCode()B

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x7

    .line 1129
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/a;->getAdvertisingResponse()B

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1131
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/a;->isCommandStatusSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/a;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v1, "Advertising config failed."

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->addWarning(Ljava/lang/String;)V

    .line 1137
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/a;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AdvertisingSyncEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 14
    return-void
.end method


# virtual methods
.method public final isComplete()Z
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->AdvertisingSyncEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/a;->a:Lcom/dexcom/cgm/tx/mediator/ac;

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
    .line 94
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/a;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p2, p3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 95
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/a;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 96
    return-void
.end method

.method public final onCharacteristicRead(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    .locals 4

    .prologue
    const/16 v2, 0x14

    .line 47
    invoke-interface {p1, p4}, Lcom/dexcom/cgm/tx/mediator/k;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/a;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to read characteristic: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;)V

    .line 50
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 76
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/a;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AdvertisingSyncReadResponse:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 55
    invoke-static {p3}, Lcom/dexcom/cgm/tx/a/a;->parse([B)Lcom/dexcom/cgm/tx/a/b;

    move-result-object v1

    .line 56
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/a;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setAdvertisingSync(Lcom/dexcom/cgm/tx/a/b;)V

    .line 58
    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/a/b;->getAdvertisingTimeoutSec()I

    move-result v0

    .line 1100
    if-ne v2, v0, :cond_1

    const/4 v0, 0x1

    .line 58
    :goto_1
    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/a;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AdvertisingSyncEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    goto :goto_0

    .line 1100
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/a/b;->getAdvertisingIntervalMs()I

    move-result v0

    .line 65
    invoke-static {v0, v2}, Lcom/dexcom/cgm/tx/a/j;->createAdvertisingConfigRequest(II)[B

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/a;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->AdvertisingSyncConfigRequest:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 70
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/a;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/ad;->AdvertisingSyncConfigRequestWriteAck:Lcom/dexcom/cgm/tx/mediator/ad;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/ad;->AdvertisingSyncConfigRequestIndicate:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 73
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->a(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    goto :goto_0
.end method

.method public final onCharacteristicWrite(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    .locals 3

    .prologue
    .line 81
    invoke-interface {p1, p4}, Lcom/dexcom/cgm/tx/mediator/k;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/a;->a:Lcom/dexcom/cgm/tx/mediator/ac;

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

    .line 84
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/a;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p2, p3, p4}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/at;[BI)V

    .line 88
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/a;->b:Lcom/dexcom/cgm/tx/mediator/aj;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aj;->a(Lcom/dexcom/cgm/tx/mediator/k;)V

    goto :goto_0
.end method

.method public final start(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/a;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AdvertisingSyncStart:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 40
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/a;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->AdvertisingSyncRead:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    .line 41
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/at;->Synchronization:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-interface {p1, v0}, Lcom/dexcom/cgm/tx/mediator/k;->a(Lcom/dexcom/cgm/tx/mediator/at;)V

    .line 42
    return-void
.end method
