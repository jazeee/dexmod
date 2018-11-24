.class final Lcom/dexcom/cgm/tx/mediator/br;
.super Ljava/lang/Object;
.source "TransmitterMediatorComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

.field private synthetic b:Lcom/dexcom/cgm/tx/mediator/bl;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/tx/mediator/bl;Lcom/dexcom/cgm/model/enums/BluetoothRadioState;)V
    .locals 0

    .prologue
    .line 667
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/br;->b:Lcom/dexcom/cgm/tx/mediator/bl;

    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/br;->a:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 672
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/bj;->a:[I

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/br;->a:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 695
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/br;->a:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :pswitch_0
    sget-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BluetoothOn:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    .line 697
    :goto_0
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/br;->b:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v1, v1, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-static {v1, v0}, Lcom/dexcom/cgm/tx/mediator/bi;->access$700(Lcom/dexcom/cgm/tx/mediator/bi;Lcom/dexcom/cgm/model/enums/BluetoothEventType;)V

    .line 698
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/br;->b:Lcom/dexcom/cgm/tx/mediator/bl;

    iget-object v0, v0, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/bi;->access$1200(Lcom/dexcom/cgm/tx/mediator/bi;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/tx/mediator/aa;

    .line 700
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/br;->a:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    invoke-interface {v0, v2}, Lcom/dexcom/cgm/tx/mediator/aa;->evBluetoothRadioChange(Lcom/dexcom/cgm/model/enums/BluetoothRadioState;)V

    goto :goto_1

    .line 681
    :pswitch_1
    sget-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BluetoothOff:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    goto :goto_0

    .line 686
    :pswitch_2
    sget-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BluetoothTurningOn:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    goto :goto_0

    .line 691
    :pswitch_3
    sget-object v0, Lcom/dexcom/cgm/model/enums/BluetoothEventType;->BluetoothTurningOff:Lcom/dexcom/cgm/model/enums/BluetoothEventType;

    goto :goto_0

    .line 702
    :cond_0
    return-void

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
