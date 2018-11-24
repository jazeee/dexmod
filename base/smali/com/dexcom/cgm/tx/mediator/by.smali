.class final Lcom/dexcom/cgm/tx/mediator/by;
.super Ljava/lang/Object;
.source "TransmitterMediatorComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/dexcom/cgm/tx/mediator/bl;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/tx/mediator/bl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/by;->b:Lcom/dexcom/cgm/tx/mediator/bl;

    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/by;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 371
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/by;->b:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v0, v0, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->ScanError:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    new-instance v2, Lcom/dexcom/cgm/model/BluetoothEventScanError;

    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/by;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/dexcom/cgm/model/BluetoothEventScanError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/tx/mediator/bi;->access$1100(Lcom/dexcom/cgm/tx/mediator/bi;Lcom/dexcom/cgm/model/enums/BluetoothEventType;Ljava/lang/Object;)V

    .line 375
    return-void
.end method
