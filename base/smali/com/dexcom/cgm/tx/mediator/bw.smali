.class final Lcom/dexcom/cgm/tx/mediator/bw;
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
    .line 340
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/bw;->a:Lcom/dexcom/cgm/tx/mediator/bl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bw;->a:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v0, v0, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->CommunicationStop:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/bi;->access$700(Lcom/dexcom/cgm/tx/mediator/bi;Lcom/dexcom/cgm/model/enums/BluetoothEventType;)V

    .line 345
    return-void
.end method