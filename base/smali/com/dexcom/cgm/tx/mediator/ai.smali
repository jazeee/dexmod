.class public Lcom/dexcom/cgm/tx/mediator/ai;
.super Ljava/lang/Object;
.source "ConnectionListener.java"

# interfaces
.implements Lcom/dexcom/cgm/tx/mediator/ay;


# instance fields
.field private final m_ble:Landroid/bluetooth/BluetoothAdapter;

.field private final m_context:Landroid/content/Context;

.field private m_gatt:Landroid/bluetooth/BluetoothGatt;

.field private m_gattCallback:Lcom/dexcom/cgm/tx/mediator/n;

.field private m_isControllerActive:Z

.field private final m_listener:Lcom/dexcom/cgm/tx/mediator/as;

.field private final m_lock:Ljava/lang/Object;

.field private final m_provider:Lcom/dexcom/cgm/tx/mediator/ah;

.field private m_scanner:Lcom/dexcom/cgm/tx/mediator/cb;

.field private m_wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dexcom/cgm/tx/mediator/ah;Lcom/dexcom/cgm/tx/mediator/as;)V
    .locals 3

    .prologue
    .line 2044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2027
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_lock:Ljava/lang/Object;

    .line 2034
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_isControllerActive:Z

    .line 2045
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_context:Landroid/content/Context;

    .line 2046
    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_provider:Lcom/dexcom/cgm/tx/mediator/ah;

    .line 2047
    iput-object p3, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_listener:Lcom/dexcom/cgm/tx/mediator/as;

    .line 2048
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 2050
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_ble:Landroid/bluetooth/BluetoothAdapter;

    .line 2052
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_context:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2053
    const/4 v1, 0x1

    const-string v2, "BLE.ScanDelay"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2054
    return-void
.end method

.method private closeGatt()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2254
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 2256
    const-string v0, "TransmitterBLE"

    const-string v1, "Closing GATT"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 2258
    iput-object v2, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_gatt:Landroid/bluetooth/BluetoothGatt;

    .line 2259
    iput-object v2, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_gattCallback:Lcom/dexcom/cgm/tx/mediator/n;

    .line 2261
    :cond_0
    return-void
.end method

.method private connectNewGatt(Lcom/dexcom/cgm/model/TransmitterId;Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 3

    .prologue
    .line 2241
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ai;->closeGatt()V

    .line 2243
    const-string v0, "TransmitterBLE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[out] connect: auto="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/n;

    .line 2246
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/dexcom/cgm/tx/mediator/n;-><init>(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;Lcom/dexcom/cgm/tx/mediator/ai;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_gattCallback:Lcom/dexcom/cgm/tx/mediator/n;

    .line 2248
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_gattCallback:Lcom/dexcom/cgm/tx/mediator/n;

    invoke-virtual {p2, v0, p3, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_gatt:Landroid/bluetooth/BluetoothGatt;

    .line 2249
    return-void
.end method

.method private scanOrReconnect()V
    .locals 4

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_provider:Lcom/dexcom/cgm/tx/mediator/ah;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/ah;->getConnection()Lcom/dexcom/cgm/tx/mediator/ab;

    move-result-object v0

    .line 2222
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ab;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    .line 2223
    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2225
    new-instance v1, Lcom/dexcom/cgm/tx/mediator/cb;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_ble:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ab;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lcom/dexcom/cgm/tx/mediator/cb;-><init>(Landroid/bluetooth/BluetoothAdapter;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/tx/mediator/ay;)V

    iput-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_scanner:Lcom/dexcom/cgm/tx/mediator/cb;

    .line 2226
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_scanner:Lcom/dexcom/cgm/tx/mediator/cb;

    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/mediator/cb;->start()V

    .line 2233
    :goto_0
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_listener:Lcom/dexcom/cgm/tx/mediator/as;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ab;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ab;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/dexcom/cgm/tx/mediator/as;->evScanStart(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;)V

    .line 2234
    return-void

    .line 2230
    :cond_0
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_ble:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 2231
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ab;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v1, v3}, Lcom/dexcom/cgm/tx/mediator/ai;->connectNewGatt(Lcom/dexcom/cgm/model/TransmitterId;Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0
.end method

.method private waitForReceiverSlot()V
    .locals 7

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2268
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2271
    const-wide/16 v2, 0xbb8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2277
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2279
    const-string v4, "TransmitterBLE"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Time spent in sleep(ms): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2283
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2284
    return-void

    .line 2275
    :catch_0
    move-exception v2

    :try_start_3
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ai;->closeGatt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2283
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method


# virtual methods
.method public bondNone(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .prologue
    .line 2204
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 2206
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 2208
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2210
    const-string v0, "TransmitterBLE"

    const-string v2, "Bond for device was removed.  Restart BLE scan/connect"

    invoke-static {v0, v2}, Lcom/dexcom/cgm/f/b;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 2212
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ai;->closeGatt()V

    .line 2213
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ai;->scanOrReconnect()V

    .line 2216
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bonded(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .prologue
    .line 2190
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 2192
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 2194
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2196
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_gattCallback:Lcom/dexcom/cgm/tx/mediator/n;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/n;->a(Landroid/bluetooth/BluetoothDevice;)V

    .line 2199
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connected(Ljava/lang/String;)Lcom/dexcom/cgm/tx/mediator/ac;
    .locals 10

    .prologue
    .line 1133
    iget-object v9, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_lock:Ljava/lang/Object;

    monitor-enter v9

    .line 1135
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_provider:Lcom/dexcom/cgm/tx/mediator/ah;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/ah;->getConnection()Lcom/dexcom/cgm/tx/mediator/ab;

    move-result-object v2

    .line 1136
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Lcom/dexcom/cgm/k/g;

    .line 1138
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v3

    .line 1139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-direct {v1, v3, v4, v5}, Lcom/dexcom/cgm/k/g;-><init>(Lcom/dexcom/cgm/k/j;J)V

    .line 1141
    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/ab;->getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v3

    .line 1142
    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/ab;->getCommandQueue()Ljava/util/List;

    move-result-object v4

    .line 1143
    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/ab;->getBackfillCriteria()Lcom/dexcom/cgm/tx/mediator/h;

    move-result-object v5

    .line 1144
    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/ab;->getAppAuthenticationPrimaryKey()Ljava/lang/String;

    move-result-object v6

    .line 1145
    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/ab;->getAppAuthenticationSecondaryKey()Ljava/lang/String;

    move-result-object v7

    .line 1146
    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/ab;->getAppAuthenticationTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v8

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/dexcom/cgm/tx/mediator/ac;-><init>(Lcom/dexcom/cgm/k/g;Ljava/lang/String;Lcom/dexcom/cgm/model/TransmitterInfo;Ljava/util/List;Lcom/dexcom/cgm/tx/mediator/h;Ljava/lang/String;Ljava/lang/String;Lcom/dexcom/cgm/k/j;)V

    .line 1147
    monitor-exit v9

    return-object v0

    .line 1148
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disconnected(Lcom/dexcom/cgm/tx/mediator/ac;)V
    .locals 4

    .prologue
    .line 1154
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1156
    :try_start_0
    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/ac;->isConnectSuccess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1158
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_listener:Lcom/dexcom/cgm/tx/mediator/as;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/tx/mediator/as;->evConnectionSuccess(Lcom/dexcom/cgm/tx/mediator/ac;)V

    .line 1159
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_listener:Lcom/dexcom/cgm/tx/mediator/as;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/as;->evInterval()V

    .line 1167
    :goto_0
    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/ac;->isImmediateScanValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1169
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ai;->waitForReceiverSlot()V

    .line 1172
    :cond_0
    iget-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_isControllerActive:Z

    if-eqz v0, :cond_1

    .line 1174
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_3

    .line 1176
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_gattCallback:Lcom/dexcom/cgm/tx/mediator/n;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/n;->a()V

    .line 1177
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    .line 1178
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_listener:Lcom/dexcom/cgm/tx/mediator/as;

    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v2

    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/ac;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/dexcom/cgm/tx/mediator/as;->evScanStart(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;)V

    .line 1185
    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    .line 1163
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_listener:Lcom/dexcom/cgm/tx/mediator/as;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/tx/mediator/as;->evConnectionError(Lcom/dexcom/cgm/tx/mediator/ac;)V

    .line 1164
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ai;->closeGatt()V

    goto :goto_0

    .line 1185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1182
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ai;->scanOrReconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public scanDetectedIncompatible(Lcom/dexcom/cgm/model/TransmitterId;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 4

    .prologue
    .line 2120
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 2122
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_listener:Lcom/dexcom/cgm/tx/mediator/as;

    .line 2124
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2125
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 2122
    invoke-interface {v0, p1, v2, v3, p3}, Lcom/dexcom/cgm/tx/mediator/as;->evScanIncompatibleTransmitter(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2127
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scanFailed(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2108
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 2110
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_listener:Lcom/dexcom/cgm/tx/mediator/as;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/tx/mediator/as;->evScanError(Ljava/lang/String;)V

    .line 2111
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scanResult(Lcom/dexcom/cgm/model/TransmitterId;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .prologue
    .line 2090
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 2092
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_scanner:Lcom/dexcom/cgm/tx/mediator/cb;

    if-eqz v0, :cond_0

    .line 2094
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_scanner:Lcom/dexcom/cgm/tx/mediator/cb;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/cb;->stop()V

    .line 2095
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_scanner:Lcom/dexcom/cgm/tx/mediator/cb;

    .line 2098
    :cond_0
    iget-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_isControllerActive:Z

    if-eqz v0, :cond_1

    .line 2100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dexcom/cgm/tx/mediator/ai;->connectNewGatt(Lcom/dexcom/cgm/model/TransmitterId;Landroid/bluetooth/BluetoothDevice;Z)V

    .line 2102
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 2058
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 2060
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_ble:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2062
    const-string v0, "TransmitterBLE"

    const-string v2, "Scan not started. Bluetooth is currently disabled"

    invoke-static {v0, v2}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2063
    monitor-exit v1

    .line 2068
    :goto_0
    return-void

    .line 2065
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_listener:Lcom/dexcom/cgm/tx/mediator/as;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/as;->evCommunicationStart()V

    .line 2066
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ai;->scanOrReconnect()V

    .line 2067
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_isControllerActive:Z

    .line 2068
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 2073
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 2075
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_scanner:Lcom/dexcom/cgm/tx/mediator/cb;

    if-eqz v0, :cond_0

    .line 2077
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_scanner:Lcom/dexcom/cgm/tx/mediator/cb;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/cb;->stop()V

    .line 2078
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_scanner:Lcom/dexcom/cgm/tx/mediator/cb;

    .line 2081
    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ai;->closeGatt()V

    .line 2082
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_listener:Lcom/dexcom/cgm/tx/mediator/as;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/as;->evCommunicationEnd()V

    .line 2083
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/ai;->m_isControllerActive:Z

    .line 2084
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
