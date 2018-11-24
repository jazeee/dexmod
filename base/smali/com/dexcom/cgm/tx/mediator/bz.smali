.class final Lcom/dexcom/cgm/tx/mediator/bz;
.super Ljava/lang/Object;
.source "TransmitterMediatorComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/dexcom/cgm/model/TransmitterId;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:I

.field private synthetic e:Lcom/dexcom/cgm/tx/mediator/bl;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/tx/mediator/bl;Ljava/lang/String;Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/bz;->e:Lcom/dexcom/cgm/tx/mediator/bl;

    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/bz;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dexcom/cgm/tx/mediator/bz;->b:Lcom/dexcom/cgm/model/TransmitterId;

    iput-object p4, p0, Lcom/dexcom/cgm/tx/mediator/bz;->c:Ljava/lang/String;

    iput p5, p0, Lcom/dexcom/cgm/tx/mediator/bz;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 391
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bz;->e:Lcom/dexcom/cgm/tx/mediator/bl;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/bl;->access$800(Lcom/dexcom/cgm/tx/mediator/bl;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/bz;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bz;->e:Lcom/dexcom/cgm/tx/mediator/bl;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/bl;->access$800(Lcom/dexcom/cgm/tx/mediator/bl;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/bz;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    new-instance v0, Lcom/dexcom/cgm/model/BluetoothEventIncompatibleTransmitter;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/bz;->b:Lcom/dexcom/cgm/model/TransmitterId;

    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/bz;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/dexcom/cgm/tx/mediator/bz;->a:Ljava/lang/String;

    iget v5, p0, Lcom/dexcom/cgm/tx/mediator/bz;->d:I

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/dexcom/cgm/model/BluetoothEventIncompatibleTransmitter;-><init>(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;Ljava/lang/String;I)V

    .line 400
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/bz;->e:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v2, v2, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    sget-object v3, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->IncompatibleTransmitter:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    invoke-static {v2, v3, v0}, Lcom/dexcom/cgm/tx/mediator/bi;->access$1100(Lcom/dexcom/cgm/tx/mediator/bi;Lcom/dexcom/cgm/model/enums/BluetoothEventType;Ljava/lang/Object;)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bz;->e:Lcom/dexcom/cgm/tx/mediator/bl;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/bl;->access$1000(Lcom/dexcom/cgm/tx/mediator/bl;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1420
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 1421
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/bz;->e:Lcom/dexcom/cgm/tx/mediator/bl;

    invoke-static {v2}, Lcom/dexcom/cgm/tx/mediator/bl;->access$900(Lcom/dexcom/cgm/tx/mediator/bl;)Lcom/dexcom/cgm/k/j;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1423
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/bz;->e:Lcom/dexcom/cgm/tx/mediator/bl;

    invoke-static {v2, v0}, Lcom/dexcom/cgm/tx/mediator/bl;->access$902(Lcom/dexcom/cgm/tx/mediator/bl;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;

    .line 1426
    :cond_1
    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bz;->e:Lcom/dexcom/cgm/tx/mediator/bl;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/bl;->access$900(Lcom/dexcom/cgm/tx/mediator/bl;)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 1427
    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 1431
    const-wide/16 v4, 0x258

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    move v0, v1

    .line 403
    :goto_0
    if-eqz v0, :cond_4

    .line 405
    const-string v0, "TransmitterBLE"

    const-string v2, "Incompatible Transmitter detected for sustained period of time"

    invoke-static {v0, v2}, Lcom/dexcom/cgm/f/b;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bz;->e:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v0, v0, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/bi;->access$1200(Lcom/dexcom/cgm/tx/mediator/bi;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/tx/mediator/aa;

    .line 409
    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/bz;->b:Lcom/dexcom/cgm/model/TransmitterId;

    iget-object v4, p0, Lcom/dexcom/cgm/tx/mediator/bz;->c:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Lcom/dexcom/cgm/tx/mediator/aa;->evIncompatibleTransmitter(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;)V

    goto :goto_1

    .line 1431
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 411
    :cond_3
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bz;->e:Lcom/dexcom/cgm/tx/mediator/bl;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/bl;->access$1002(Lcom/dexcom/cgm/tx/mediator/bl;Z)Z

    .line 413
    :cond_4
    return-void
.end method
