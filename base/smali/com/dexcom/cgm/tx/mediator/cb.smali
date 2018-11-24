.class public final Lcom/dexcom/cgm/tx/mediator/cb;
.super Ljava/lang/Object;
.source "TransmitterScanner.java"


# instance fields
.field private final m_ble:Landroid/bluetooth/BluetoothAdapter;

.field private final m_listener:Lcom/dexcom/cgm/tx/mediator/ay;

.field private m_scanCallbackApi21:Lcom/dexcom/cgm/tx/mediator/ax;

.field private final m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/tx/mediator/ay;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/cb;->m_ble:Landroid/bluetooth/BluetoothAdapter;

    .line 29
    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/cb;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    .line 30
    iput-object p3, p0, Lcom/dexcom/cgm/tx/mediator/cb;->m_listener:Lcom/dexcom/cgm/tx/mediator/ay;

    .line 31
    return-void
.end method


# virtual methods
.method public final start()V
    .locals 4

    .prologue
    .line 35
    const-string v0, "TransmitterBLE"

    const-string v1, "[out] Start Active Scan (API 21)"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/ax;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/cb;->m_ble:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/cb;->m_listener:Lcom/dexcom/cgm/tx/mediator/ay;

    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/cb;->m_transmitterId:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/ax;-><init>(Landroid/bluetooth/BluetoothAdapter;Lcom/dexcom/cgm/tx/mediator/ay;Lcom/dexcom/cgm/model/TransmitterId;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/cb;->m_scanCallbackApi21:Lcom/dexcom/cgm/tx/mediator/ax;

    .line 38
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/cb;->m_scanCallbackApi21:Lcom/dexcom/cgm/tx/mediator/ax;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ax;->a()V

    .line 39
    return-void
.end method

.method public final stop()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/cb;->m_scanCallbackApi21:Lcom/dexcom/cgm/tx/mediator/ax;

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "TransmitterBLE"

    const-string v1, "[in] Stop Active Scan (API 21)"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/cb;->m_ble:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/cb;->m_scanCallbackApi21:Lcom/dexcom/cgm/tx/mediator/ax;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/cb;->m_scanCallbackApi21:Lcom/dexcom/cgm/tx/mediator/ax;

    .line 53
    :cond_0
    return-void
.end method
