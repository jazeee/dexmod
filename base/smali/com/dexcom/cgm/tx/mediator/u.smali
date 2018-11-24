.class final Lcom/dexcom/cgm/tx/mediator/u;
.super Ljava/lang/Object;
.source "CgmConnectionStatechart.java"


# instance fields
.field private final a:Lcom/dexcom/cgm/tx/mediator/ac;

.field private b:Lcom/dexcom/cgm/tx/mediator/ae;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/tx/mediator/ac;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->b:Lcom/dexcom/cgm/tx/mediator/ae;

    .line 20
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 21
    return-void
.end method

.method private c(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->b:Lcom/dexcom/cgm/tx/mediator/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->b:Lcom/dexcom/cgm/tx/mediator/ae;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ae;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->b:Lcom/dexcom/cgm/tx/mediator/ae;

    if-eqz v0, :cond_1

    .line 83
    const-string v0, "TransmitterBLE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[end]:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/u;->b:Lcom/dexcom/cgm/tx/mediator/ae;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/u;->d(Lcom/dexcom/cgm/tx/mediator/k;)Lcom/dexcom/cgm/tx/mediator/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->b:Lcom/dexcom/cgm/tx/mediator/ae;

    .line 87
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->b:Lcom/dexcom/cgm/tx/mediator/ae;

    if-eqz v0, :cond_2

    .line 89
    const-string v0, "TransmitterBLE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[start]:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/u;->b:Lcom/dexcom/cgm/tx/mediator/ae;

    .line 90
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->b:Lcom/dexcom/cgm/tx/mediator/ae;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/ae;->start(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 94
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->b:Lcom/dexcom/cgm/tx/mediator/ae;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ae;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const-string v0, "TransmitterBLE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[end]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/u;->b:Lcom/dexcom/cgm/tx/mediator/ae;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->b:Lcom/dexcom/cgm/tx/mediator/ae;

    if-nez v0, :cond_3

    .line 107
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->b()V

    .line 110
    :cond_3
    return-void
.end method

.method private d(Lcom/dexcom/cgm/tx/mediator/k;)Lcom/dexcom/cgm/tx/mediator/ae;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getConnectStep()Lcom/dexcom/cgm/tx/mediator/ad;

    move-result-object v0

    .line 115
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/v;->a:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ad;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 119
    :pswitch_0
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->ServiceDiscoveryStart:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/af;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ac;)Lcom/dexcom/cgm/tx/mediator/ae;

    move-result-object v0

    goto :goto_1

    .line 123
    :pswitch_1
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationStart:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/af;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ac;)Lcom/dexcom/cgm/tx/mediator/ae;

    move-result-object v0

    goto :goto_1

    .line 127
    :pswitch_2
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->PairStart:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 128
    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/af;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ac;)Lcom/dexcom/cgm/tx/mediator/ae;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->SecureLinkSubscribeStart:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 129
    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/af;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ac;)Lcom/dexcom/cgm/tx/mediator/ae;

    move-result-object v0

    goto :goto_1

    .line 133
    :pswitch_3
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->SecureLinkSubscribeStart:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/af;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ac;)Lcom/dexcom/cgm/tx/mediator/ae;

    move-result-object v0

    goto :goto_1

    .line 137
    :pswitch_4
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->AdvertisingSyncStart:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/af;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ac;)Lcom/dexcom/cgm/tx/mediator/ae;

    move-result-object v0

    goto :goto_1

    .line 141
    :pswitch_5
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationExchangeStart:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/af;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ac;)Lcom/dexcom/cgm/tx/mediator/ae;

    move-result-object v0

    goto :goto_1

    .line 146
    :pswitch_6
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->CgmTimeStart:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/af;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ac;)Lcom/dexcom/cgm/tx/mediator/ae;

    move-result-object v0

    goto :goto_1

    .line 150
    :pswitch_7
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->TxInfoStart:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/af;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ac;)Lcom/dexcom/cgm/tx/mediator/ae;

    move-result-object v0

    goto :goto_1

    .line 154
    :pswitch_8
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getCgmCommands()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->CgmCommandStart:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 155
    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/af;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ac;)Lcom/dexcom/cgm/tx/mediator/ae;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->CgmQueryStart:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 156
    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/af;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ac;)Lcom/dexcom/cgm/tx/mediator/ae;

    move-result-object v0

    goto :goto_1

    .line 160
    :pswitch_9
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->CgmQueryStart:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/af;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ac;)Lcom/dexcom/cgm/tx/mediator/ae;

    move-result-object v0

    goto :goto_1

    .line 164
    :pswitch_a
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->BackfillStart:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/af;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ac;)Lcom/dexcom/cgm/tx/mediator/ae;

    move-result-object v0

    goto/16 :goto_1

    .line 168
    :pswitch_b
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->TxBatteryStart:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/af;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ac;)Lcom/dexcom/cgm/tx/mediator/ae;

    move-result-object v0

    goto/16 :goto_1

    .line 172
    :pswitch_c
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->DisconnectStart:Lcom/dexcom/cgm/tx/mediator/ad;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/af;->a(Lcom/dexcom/cgm/tx/mediator/ad;Lcom/dexcom/cgm/tx/mediator/ac;)Lcom/dexcom/cgm/tx/mediator/ae;

    move-result-object v0

    goto/16 :goto_1

    .line 176
    :pswitch_d
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/ad;->ConnectEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V

    goto/16 :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/ac;->setRemoteRssi(I)V

    .line 75
    return-void
.end method

.method public final a(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 0

    .prologue
    .line 25
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/k;->g()V

    .line 26
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/u;->c(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 27
    return-void
.end method

.method public final a(Lcom/dexcom/cgm/tx/mediator/k;I)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->b:Lcom/dexcom/cgm/tx/mediator/ae;

    invoke-virtual {v0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/ae;->onServicesDiscovered(Lcom/dexcom/cgm/tx/mediator/k;I)V

    .line 38
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/u;->c(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 39
    return-void
.end method

.method public final a(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->b:Lcom/dexcom/cgm/tx/mediator/ae;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dexcom/cgm/tx/mediator/ae;->onCharacteristicChangedEnabled(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V

    .line 62
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/u;->c(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 63
    return-void
.end method

.method public final a(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[B)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->b:Lcom/dexcom/cgm/tx/mediator/ae;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dexcom/cgm/tx/mediator/ae;->onCharacteristicChanged(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 56
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/u;->c(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 57
    return-void
.end method

.method public final a(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->b:Lcom/dexcom/cgm/tx/mediator/ae;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/dexcom/cgm/tx/mediator/ae;->onCharacteristicRead(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V

    .line 44
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/u;->c(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 45
    return-void
.end method

.method public final b(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->b:Lcom/dexcom/cgm/tx/mediator/ae;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/ae;->onBonded(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/u;->c(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 33
    return-void
.end method

.method public final b(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->b:Lcom/dexcom/cgm/tx/mediator/ae;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dexcom/cgm/tx/mediator/ae;->onCharacteristicChangedDisabled(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V

    .line 68
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/u;->c(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 69
    return-void
.end method

.method public final b(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/u;->b:Lcom/dexcom/cgm/tx/mediator/ae;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/dexcom/cgm/tx/mediator/ae;->onCharacteristicWrite(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V

    .line 50
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/u;->c(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 51
    return-void
.end method
