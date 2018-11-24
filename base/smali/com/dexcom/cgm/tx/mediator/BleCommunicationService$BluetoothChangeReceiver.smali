.class public Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BleCommunicationService.java"


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private bondChange(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 160
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$000$2fe64781(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)Lcom/dexcom/cgm/tx/mediator/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 163
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 165
    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v3}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$200(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)Lcom/dexcom/cgm/tx/mediator/as;

    move-result-object v3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    invoke-interface {v3, v4, v1, v2}, Lcom/dexcom/cgm/tx/mediator/as;->evBondChange(ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    const/16 v1, 0xc

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 168
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v1}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$000$2fe64781(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)Lcom/dexcom/cgm/tx/mediator/ai;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ai;->bonded(Landroid/bluetooth/BluetoothDevice;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    const/16 v1, 0xa

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 172
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v1}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$000$2fe64781(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)Lcom/dexcom/cgm/tx/mediator/ai;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/tx/mediator/ai;->bondNone(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method private radioChange(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 179
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 180
    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 184
    :pswitch_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$600(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)V

    .line 185
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$200(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)Lcom/dexcom/cgm/tx/mediator/as;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;->TurningOn:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/tx/mediator/as;->evBluetoothRadioChange(Lcom/dexcom/cgm/model/enums/BluetoothRadioState;)V

    goto :goto_0

    .line 190
    :pswitch_1
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$600(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)V

    .line 191
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$400(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)V

    .line 192
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$200(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)Lcom/dexcom/cgm/tx/mediator/as;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;->On:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/tx/mediator/as;->evBluetoothRadioChange(Lcom/dexcom/cgm/model/enums/BluetoothRadioState;)V

    goto :goto_0

    .line 197
    :pswitch_2
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$600(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)V

    .line 198
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$200(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)Lcom/dexcom/cgm/tx/mediator/as;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;->TurningOff:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/tx/mediator/as;->evBluetoothRadioChange(Lcom/dexcom/cgm/model/enums/BluetoothRadioState;)V

    goto :goto_0

    .line 203
    :pswitch_3
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$600(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)V

    .line 204
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$200(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)Lcom/dexcom/cgm/tx/mediator/as;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;->Off:Lcom/dexcom/cgm/model/enums/BluetoothRadioState;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/tx/mediator/as;->evBluetoothRadioChange(Lcom/dexcom/cgm/model/enums/BluetoothRadioState;)V

    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$200(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)Lcom/dexcom/cgm/tx/mediator/as;

    move-result-object v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;->bondChange(Landroid/content/Intent;)V

    goto :goto_0

    .line 152
    :cond_2
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;->radioChange(Landroid/content/Intent;)V

    goto :goto_0
.end method
