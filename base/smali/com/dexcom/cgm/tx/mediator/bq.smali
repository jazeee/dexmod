.class final Lcom/dexcom/cgm/tx/mediator/bq;
.super Ljava/lang/Object;
.source "TransmitterMediatorComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lcom/dexcom/cgm/tx/mediator/bl;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/tx/mediator/bl;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/bq;->d:Lcom/dexcom/cgm/tx/mediator/bl;

    iput p2, p0, Lcom/dexcom/cgm/tx/mediator/bq;->a:I

    iput-object p3, p0, Lcom/dexcom/cgm/tx/mediator/bq;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dexcom/cgm/tx/mediator/bq;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 639
    new-instance v0, Lcom/dexcom/cgm/model/BluetoothBondChange;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bq;->d:Lcom/dexcom/cgm/tx/mediator/bl;

    iget v2, p0, Lcom/dexcom/cgm/tx/mediator/bq;->a:I

    .line 640
    invoke-static {v1, v2}, Lcom/dexcom/cgm/tx/mediator/bl;->access$1400(Lcom/dexcom/cgm/tx/mediator/bl;I)Lcom/dexcom/cgm/model/enums/BondState;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/bq;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/bq;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/model/BluetoothBondChange;-><init>(Lcom/dexcom/cgm/model/enums/BondState;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bq;->d:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v1, v1, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    sget-object v2, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BondChange:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/tx/mediator/bi;->access$1100(Lcom/dexcom/cgm/tx/mediator/bi;Lcom/dexcom/cgm/model/enums/BluetoothEventType;Ljava/lang/Object;)V

    .line 644
    return-void
.end method
