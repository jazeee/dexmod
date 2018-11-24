.class final Lcom/dexcom/cgm/tx/mediator/bv;
.super Ljava/lang/Object;
.source "TransmitterMediatorComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/tx/mediator/bl;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/tx/mediator/bl;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/bv;->a:Lcom/dexcom/cgm/tx/mediator/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bv;->a:Lcom/dexcom/cgm/tx/mediator/bl;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/bl;->access$800(Lcom/dexcom/cgm/tx/mediator/bl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 329
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bv;->a:Lcom/dexcom/cgm/tx/mediator/bl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/bl;->access$902(Lcom/dexcom/cgm/tx/mediator/bl;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;

    .line 330
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bv;->a:Lcom/dexcom/cgm/tx/mediator/bl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/bl;->access$1002(Lcom/dexcom/cgm/tx/mediator/bl;Z)Z

    .line 331
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bv;->a:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v0, v0, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->CommunicationStart:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/bi;->access$700(Lcom/dexcom/cgm/tx/mediator/bi;Lcom/dexcom/cgm/model/enums/BluetoothEventType;)V

    .line 332
    return-void
.end method
