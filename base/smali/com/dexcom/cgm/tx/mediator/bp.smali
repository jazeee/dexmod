.class final Lcom/dexcom/cgm/tx/mediator/bp;
.super Ljava/lang/Object;
.source "TransmitterMediatorComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/tx/mediator/ac;

.field private synthetic b:Lcom/dexcom/cgm/tx/mediator/bl;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/tx/mediator/bl;Lcom/dexcom/cgm/tx/mediator/ac;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/bp;->b:Lcom/dexcom/cgm/tx/mediator/bl;

    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/bp;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    .line 590
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bp;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterStatusCode()B

    move-result v0

    .line 592
    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->isUnrecoverableError(B)Z

    move-result v1

    .line 593
    new-instance v2, Lcom/dexcom/cgm/tx/mediator/ap;

    invoke-direct {v2}, Lcom/dexcom/cgm/tx/mediator/ap;-><init>()V

    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/bp;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 594
    invoke-virtual {v3}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/tx/mediator/ap;->setTransmitterId(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/tx/mediator/ap;

    move-result-object v2

    .line 595
    invoke-virtual {v2, v1}, Lcom/dexcom/cgm/tx/mediator/ap;->setIsTransmitterUnrecoverableError(Z)Lcom/dexcom/cgm/tx/mediator/ap;

    move-result-object v1

    .line 596
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ap;->setTransmitterStatusCode(B)Lcom/dexcom/cgm/tx/mediator/ap;

    move-result-object v0

    .line 597
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ap;->createEvConnectionError()Lcom/dexcom/cgm/tx/mediator/ao;

    move-result-object v14

    .line 599
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bp;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getAdvertisingSync()Lcom/dexcom/cgm/tx/a/b;

    move-result-object v0

    .line 600
    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/a/b;->getAbsoluteTimeMilliseconds()I

    move-result v0

    int-to-long v4, v0

    .line 602
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bp;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ac;->getDisconnectTimestamp()Lcom/dexcom/cgm/k/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/g;->getRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/bp;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 603
    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/ac;->getConnectTimestamp()Lcom/dexcom/cgm/k/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/g;->getRealtime()J

    move-result-wide v2

    sub-long v6, v0, v2

    .line 604
    new-instance v0, Lcom/dexcom/cgm/model/BluetoothEventError;

    .line 605
    invoke-virtual {v14}, Lcom/dexcom/cgm/tx/mediator/ao;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/bp;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 606
    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/ac;->getConnectStep()Lcom/dexcom/cgm/tx/mediator/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/ad;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/bp;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 607
    invoke-virtual {v3}, Lcom/dexcom/cgm/tx/mediator/ac;->getDisconnectStatus()I

    move-result v3

    iget-object v8, p0, Lcom/dexcom/cgm/tx/mediator/bp;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 610
    invoke-virtual {v8}, Lcom/dexcom/cgm/tx/mediator/ac;->getRssi()I

    move-result v8

    .line 611
    invoke-virtual {v14}, Lcom/dexcom/cgm/tx/mediator/ao;->getTransmitterStatusCode()B

    move-result v9

    iget-object v10, p0, Lcom/dexcom/cgm/tx/mediator/bp;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 612
    invoke-virtual {v10}, Lcom/dexcom/cgm/tx/mediator/ac;->getFailure()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/dexcom/cgm/tx/mediator/bp;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 613
    invoke-virtual {v11}, Lcom/dexcom/cgm/tx/mediator/ac;->getFailureException()Ljava/lang/Throwable;

    move-result-object v11

    iget-object v12, p0, Lcom/dexcom/cgm/tx/mediator/bp;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 614
    invoke-virtual {v12}, Lcom/dexcom/cgm/tx/mediator/ac;->getWarnings()Ljava/util/ArrayList;

    move-result-object v12

    iget-object v13, p0, Lcom/dexcom/cgm/tx/mediator/bp;->a:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 615
    invoke-virtual {v13}, Lcom/dexcom/cgm/tx/mediator/ac;->getConnectionLog()Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v0 .. v13}, Lcom/dexcom/cgm/model/BluetoothEventError;-><init>(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;IJJIBLjava/lang/String;Ljava/lang/Throwable;Ljava/util/List;Ljava/lang/String;)V

    .line 617
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bp;->b:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v1, v1, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    sget-object v2, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->ConnectionError:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/tx/mediator/bi;->access$1100(Lcom/dexcom/cgm/tx/mediator/bi;Lcom/dexcom/cgm/model/enums/BluetoothEventType;Ljava/lang/Object;)V

    .line 619
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bp;->b:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v0, v0, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/bi;->access$1200(Lcom/dexcom/cgm/tx/mediator/bi;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/tx/mediator/aa;

    .line 621
    invoke-interface {v0, v14}, Lcom/dexcom/cgm/tx/mediator/aa;->evConnectionError(Lcom/dexcom/cgm/tx/mediator/ao;)V

    goto :goto_1

    .line 601
    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0

    .line 623
    :cond_1
    return-void
.end method
