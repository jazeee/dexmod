.class public Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;
.super Landroid/app/Service;
.source "BleCommunicationService.java"


# instance fields
.field private m_binder:Lcom/dexcom/cgm/tx/mediator/m;

.field private m_controller$48f83121:Lcom/dexcom/cgm/tx/mediator/ai;

.field private m_eventListener:Lcom/dexcom/cgm/tx/mediator/as;

.field private m_isServiceError:Z

.field private m_provider:Lcom/dexcom/cgm/tx/mediator/ah;

.field private m_receiver:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/m;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/tx/mediator/m;-><init>(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_binder:Lcom/dexcom/cgm/tx/mediator/m;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_isServiceError:Z

    return-void
.end method

.method static synthetic access$000$2fe64781(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)Lcom/dexcom/cgm/tx/mediator/ai;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_controller$48f83121:Lcom/dexcom/cgm/tx/mediator/ai;

    return-object v0
.end method

.method static synthetic access$102(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;Lcom/dexcom/cgm/tx/mediator/ah;)Lcom/dexcom/cgm/tx/mediator/ah;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_provider:Lcom/dexcom/cgm/tx/mediator/ah;

    return-object p1
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)Lcom/dexcom/cgm/tx/mediator/as;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_eventListener:Lcom/dexcom/cgm/tx/mediator/as;

    return-object v0
.end method

.method static synthetic access$202(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;Lcom/dexcom/cgm/tx/mediator/as;)Lcom/dexcom/cgm/tx/mediator/as;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_eventListener:Lcom/dexcom/cgm/tx/mediator/as;

    return-object p1
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_isServiceError:Z

    return v0
.end method

.method static synthetic access$302(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_isServiceError:Z

    return p1
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->startConnectionController()V

    return-void
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_receiver:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;

    return-object v0
.end method

.method static synthetic access$502(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;)Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_receiver:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;

    return-object p1
.end method

.method static synthetic access$600(Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->stopConnectionController()V

    return-void
.end method

.method private startConnectionController()V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_controller$48f83121:Lcom/dexcom/cgm/tx/mediator/ai;

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "TransmitterBLE"

    const-string v1, "Controller already started"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/ai;

    .line 122
    invoke-virtual {p0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_provider:Lcom/dexcom/cgm/tx/mediator/ah;

    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_eventListener:Lcom/dexcom/cgm/tx/mediator/as;

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/ai;-><init>(Landroid/content/Context;Lcom/dexcom/cgm/tx/mediator/ah;Lcom/dexcom/cgm/tx/mediator/as;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_controller$48f83121:Lcom/dexcom/cgm/tx/mediator/ai;

    .line 125
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_controller$48f83121:Lcom/dexcom/cgm/tx/mediator/ai;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ai;->start()V

    goto :goto_0
.end method

.method private stopConnectionController()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_controller$48f83121:Lcom/dexcom/cgm/tx/mediator/ai;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_controller$48f83121:Lcom/dexcom/cgm/tx/mediator/ai;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ai;->stop()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_controller$48f83121:Lcom/dexcom/cgm/tx/mediator/ai;

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_binder:Lcom/dexcom/cgm/tx/mediator/m;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "TransmitterBLE"

    const-string v1, "=== BleCommunicationService Create ==="

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 44
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 50
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_receiver:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_receiver:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 53
    iput-object v1, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_receiver:Lcom/dexcom/cgm/tx/mediator/BleCommunicationService$BluetoothChangeReceiver;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_controller$48f83121:Lcom/dexcom/cgm/tx/mediator/ai;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_controller$48f83121:Lcom/dexcom/cgm/tx/mediator/ai;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ai;->stop()V

    .line 58
    iput-object v1, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_controller$48f83121:Lcom/dexcom/cgm/tx/mediator/ai;

    .line 60
    :cond_1
    iput-object v1, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_eventListener:Lcom/dexcom/cgm/tx/mediator/as;

    .line 61
    const-string v0, "TransmitterBLE"

    const-string v1, "=== BleCommunicationService Destroy ==="

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 67
    if-nez p1, :cond_0

    .line 69
    iput-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/BleCommunicationService;->m_isServiceError:Z

    .line 71
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 72
    return v0
.end method
