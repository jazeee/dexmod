.class final Lcom/dexcom/cgm/tx/mediator/bn;
.super Ljava/lang/Object;
.source "TransmitterMediatorComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/dexcom/cgm/tx/mediator/bl;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/tx/mediator/bl;Z)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/bn;->b:Lcom/dexcom/cgm/tx/mediator/bl;

    iput-boolean p2, p0, Lcom/dexcom/cgm/tx/mediator/bn;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/bn;->a:Z

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bn;->b:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v0, v0, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BluetoothLocationPermissionGranted:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/bi;->access$700(Lcom/dexcom/cgm/tx/mediator/bi;Lcom/dexcom/cgm/model/enums/BluetoothEventType;)V

    .line 469
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bn;->b:Lcom/dexcom/cgm/tx/mediator/bl;

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

    .line 471
    iget-boolean v2, p0, Lcom/dexcom/cgm/tx/mediator/bn;->a:Z

    invoke-interface {v0, v2}, Lcom/dexcom/cgm/tx/mediator/aa;->evCoarseLocationPermission(Z)V

    goto :goto_1

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bn;->b:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v0, v0, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BluetoothLocationPermissionNeeded:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/bi;->access$700(Lcom/dexcom/cgm/tx/mediator/bi;Lcom/dexcom/cgm/model/enums/BluetoothEventType;)V

    goto :goto_0

    .line 473
    :cond_1
    return-void
.end method
