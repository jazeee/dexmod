.class final Lcom/dexcom/cgm/tx/mediator/bx;
.super Ljava/lang/Object;
.source "TransmitterMediatorComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/model/TransmitterId;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/dexcom/cgm/tx/mediator/bl;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/tx/mediator/bl;Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/bx;->c:Lcom/dexcom/cgm/tx/mediator/bl;

    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/bx;->a:Lcom/dexcom/cgm/model/TransmitterId;

    iput-object p3, p0, Lcom/dexcom/cgm/tx/mediator/bx;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 357
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bx;->c:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v0, v0, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->ScanStart:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    new-instance v2, Lcom/dexcom/cgm/model/BluetoothEventScan;

    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/bx;->a:Lcom/dexcom/cgm/model/TransmitterId;

    iget-object v4, p0, Lcom/dexcom/cgm/tx/mediator/bx;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/dexcom/cgm/model/BluetoothEventScan;-><init>(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/tx/mediator/bi;->access$1100(Lcom/dexcom/cgm/tx/mediator/bi;Lcom/dexcom/cgm/model/enums/BluetoothEventType;Ljava/lang/Object;)V

    .line 359
    return-void
.end method
