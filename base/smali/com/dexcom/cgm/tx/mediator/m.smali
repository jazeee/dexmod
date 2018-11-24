.class public final Lcom/dexcom/cgm/tx/mediator/m;
.super Landroid/os/Binder;
.source "BleCommunicationService.java"


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/m;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final startCommunication(Lcom/dexcom/cgm/tx/mediator/ah;Lcom/dexcom/cgm/tx/mediator/as;ILandroid/app/Notification;)V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/m;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$000$2fe64781(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)Lcom/dexcom/cgm/tx/mediator/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "TransmitterBLE"

    const-string v1, "Controller already started"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/m;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$102(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;Lcom/dexcom/cgm/tx/mediator/ah;)Lcom/dexcom/cgm/tx/mediator/ah;

    .line 90
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/m;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v0, p2}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$202(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;Lcom/dexcom/cgm/tx/mediator/as;)Lcom/dexcom/cgm/tx/mediator/as;

    .line 92
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/m;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$300(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/m;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$200(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)Lcom/dexcom/cgm/tx/mediator/as;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/as;->evServiceError()V

    .line 95
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/m;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$302(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;Z)Z

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/m;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$400(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)V

    .line 100
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/m;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    new-instance v1, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/m;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;-><init>(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)V

    invoke-static {v0, v1}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$502(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;)Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/m;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/m;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-static {v2}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->access$500(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    if-nez p4, :cond_2

    .line 108
    new-instance p4, Landroid/app/Notification;

    invoke-direct {p4}, Landroid/app/Notification;-><init>()V

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/m;->this$0:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;

    invoke-virtual {v0, p3, p4}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0
.end method
