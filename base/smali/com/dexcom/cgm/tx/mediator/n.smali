.class final Lcom/dexcom/cgm/tx/mediator/n;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BluetoothGattCallbackImpl.java"


# instance fields
.field private final a:Lcom/dexcom/cgm/model/TransmitterId;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/dexcom/cgm/tx/mediator/ai;

.field private d:Lcom/dexcom/cgm/tx/mediator/u;

.field private e:Lcom/dexcom/cgm/tx/mediator/ac;

.field private f:Lcom/dexcom/cgm/tx/mediator/l;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;Lcom/dexcom/cgm/tx/mediator/ai;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/n;->a:Lcom/dexcom/cgm/model/TransmitterId;

    .line 39
    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/n;->b:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/dexcom/cgm/tx/mediator/n;->c:Lcom/dexcom/cgm/tx/mediator/ai;

    .line 41
    return-void
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 54
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 60
    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->d:Lcom/dexcom/cgm/tx/mediator/u;

    .line 61
    return-void
.end method

.method public final a(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->d:Lcom/dexcom/cgm/tx/mediator/u;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bond created: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->d:Lcom/dexcom/cgm/tx/mediator/u;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/u;->b(Lcom/dexcom/cgm/tx/mediator/k;)V

    .line 50
    :cond_0
    return-void
.end method

.method public final onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 4

    .prologue
    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[in] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Lcom/dexcom/cgm/tx/mediator/cd;->getName(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#indicate|notify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 193
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lcom/dexcom/cgm/f/a;->toHexWithLength([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->d:Lcom/dexcom/cgm/tx/mediator/u;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    .line 195
    invoke-virtual {v2, p2}, Lcom/dexcom/cgm/tx/mediator/l;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/dexcom/cgm/tx/mediator/at;

    move-result-object v2

    .line 196
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    .line 194
    invoke-virtual {v0, v1, v2, v3}, Lcom/dexcom/cgm/tx/mediator/u;->a(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 200
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v2, "Error: onCharacteristicChanged"

    invoke-virtual {v1, v2, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_0
.end method

.method public final onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4

    .prologue
    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[in] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Lcom/dexcom/cgm/tx/mediator/cd;->getName(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#read (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lcom/dexcom/cgm/f/a;->toHexWithLength([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->d:Lcom/dexcom/cgm/tx/mediator/u;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    .line 153
    invoke-virtual {v2, p2}, Lcom/dexcom/cgm/tx/mediator/l;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/dexcom/cgm/tx/mediator/at;

    move-result-object v2

    .line 154
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    .line 152
    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/dexcom/cgm/tx/mediator/u;->a(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 159
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v2, "Error: onCharacteristicRead"

    invoke-virtual {v1, v2, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_0
.end method

.method public final onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4

    .prologue
    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[in] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Lcom/dexcom/cgm/tx/mediator/cd;->getName(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#write_resp (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 172
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lcom/dexcom/cgm/f/a;->toHexWithLength([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->d:Lcom/dexcom/cgm/tx/mediator/u;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    .line 174
    invoke-virtual {v2, p2}, Lcom/dexcom/cgm/tx/mediator/l;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/dexcom/cgm/tx/mediator/at;

    move-result-object v2

    .line 175
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v3

    .line 173
    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/dexcom/cgm/tx/mediator/u;->b(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 180
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v2, "Error: onCharacteristicWrite"

    invoke-virtual {v1, v2, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_0
.end method

.method public final onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 67
    if-ne v3, p3, :cond_0

    .line 69
    const-string v0, "TransmitterBLE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Connected (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->c:Lcom/dexcom/cgm/tx/mediator/ai;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ai;->connected(Ljava/lang/String;)Lcom/dexcom/cgm/tx/mediator/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 77
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/u;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/tx/mediator/u;-><init>(Lcom/dexcom/cgm/tx/mediator/ac;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->d:Lcom/dexcom/cgm/tx/mediator/u;

    .line 80
    :cond_1
    if-ne v3, p3, :cond_8

    invoke-static {p2}, Lcom/dexcom/cgm/tx/mediator/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 82
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[in] connect @"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/mediator/ac;->getConnectTimestamp()Lcom/dexcom/cgm/k/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->a:Lcom/dexcom/cgm/model/TransmitterId;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/mediator/ac;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 85
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v1, "Connected to Transmitter after SN has changed."

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->addWarning(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    if-ne v3, p3, :cond_2

    invoke-static {p2}, Lcom/dexcom/cgm/tx/mediator/n;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 113
    :cond_2
    iput-object v4, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    .line 114
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->c:Lcom/dexcom/cgm/tx/mediator/ai;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ai;->disconnected(Lcom/dexcom/cgm/tx/mediator/ac;)V

    .line 117
    :cond_3
    :goto_0
    return-void

    .line 90
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    if-eqz v0, :cond_6

    .line 92
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v1, "Already in an active connection."

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->addWarning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    if-ne v3, p3, :cond_5

    invoke-static {p2}, Lcom/dexcom/cgm/tx/mediator/n;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 113
    :cond_5
    iput-object v4, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    .line 114
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->c:Lcom/dexcom/cgm/tx/mediator/ai;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ai;->disconnected(Lcom/dexcom/cgm/tx/mediator/ac;)V

    goto :goto_0

    .line 95
    :cond_6
    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/l;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-direct {v0, p1, v1}, Lcom/dexcom/cgm/tx/mediator/l;-><init>(Landroid/bluetooth/BluetoothGatt;Lcom/dexcom/cgm/tx/mediator/ac;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    .line 96
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->d:Lcom/dexcom/cgm/tx/mediator/u;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/u;->a(Lcom/dexcom/cgm/tx/mediator/k;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    :goto_1
    if-ne v3, p3, :cond_7

    invoke-static {p2}, Lcom/dexcom/cgm/tx/mediator/n;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 113
    :cond_7
    iput-object v4, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    .line 114
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->c:Lcom/dexcom/cgm/tx/mediator/ai;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ai;->disconnected(Lcom/dexcom/cgm/tx/mediator/ac;)V

    goto :goto_0

    .line 100
    :cond_8
    :try_start_3
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[in] disconnect (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 101
    if-ne v3, p3, :cond_9

    .line 103
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 105
    :cond_9
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/tx/mediator/ac;->setDisconnectStatus(I)V

    .line 106
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-static {}, Lcom/dexcom/cgm/k/g;->now()Lcom/dexcom/cgm/k/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->setDisconnectTimestamp(Lcom/dexcom/cgm/k/g;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 111
    :catchall_0
    move-exception v0

    if-ne v3, p3, :cond_a

    invoke-static {p2}, Lcom/dexcom/cgm/tx/mediator/n;->a(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 113
    :cond_a
    iput-object v4, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    .line 114
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->c:Lcom/dexcom/cgm/tx/mediator/ai;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ai;->disconnected(Lcom/dexcom/cgm/tx/mediator/ac;)V

    :cond_b
    throw v0
.end method

.method public final onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3

    .prologue
    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[in] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Lcom/dexcom/cgm/tx/mediator/cd;->getName(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "# desc_read(0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 213
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lcom/dexcom/cgm/f/a;->toHexWithLength([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 217
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v2, "Error: onDescriptorRead"

    invoke-virtual {v1, v2, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_0
.end method

.method public final onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 4

    .prologue
    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[in] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Lcom/dexcom/cgm/tx/mediator/cd;->getName(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#desc_write (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 230
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v2

    invoke-static {v2}, Lcom/dexcom/cgm/f/a;->toHexWithLength([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 231
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    .line 233
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v1

    .line 231
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->d:Lcom/dexcom/cgm/tx/mediator/u;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    .line 236
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/tx/mediator/l;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/dexcom/cgm/tx/mediator/at;

    move-result-object v2

    .line 235
    invoke-virtual {v0, v1, v2, p3}, Lcom/dexcom/cgm/tx/mediator/u;->a(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V

    .line 251
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->d:Lcom/dexcom/cgm/tx/mediator/u;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    .line 242
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/tx/mediator/l;->a(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/dexcom/cgm/tx/mediator/at;

    move-result-object v2

    .line 241
    invoke-virtual {v0, v1, v2, p3}, Lcom/dexcom/cgm/tx/mediator/u;->b(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 248
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v2, "Error: onDescriptorWrite"

    invoke-virtual {v1, v2, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_0
.end method

.method public final onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    .prologue
    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[in] mtu_changed (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 294
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v2, "Error: onMtuChanged"

    invoke-virtual {v1, v2, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_0
.end method

.method public final onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    .prologue
    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[in] read_remote_rssi (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->d:Lcom/dexcom/cgm/tx/mediator/u;

    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/tx/mediator/u;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 280
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v2, "Error: onReadRemoteRssi"

    invoke-virtual {v1, v2, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_0
.end method

.method public final onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    .prologue
    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[in] reliable_write(0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 262
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v2, "Error: onReliableWriteCompleted"

    invoke-virtual {v1, v2, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_0
.end method

.method public final onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[in] discover_services (0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 125
    if-nez p2, :cond_0

    .line 127
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/l;->a(Landroid/bluetooth/BluetoothGatt;)V

    .line 128
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/n;->d:Lcom/dexcom/cgm/tx/mediator/u;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->f:Lcom/dexcom/cgm/tx/mediator/l;

    invoke-virtual {v0, v1, p2}, Lcom/dexcom/cgm/tx/mediator/u;->a(Lcom/dexcom/cgm/tx/mediator/k;I)V

    .line 141
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 137
    const-string v1, "TransmitterBLE"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/n;->e:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v2, "Error: onServicesDiscovered"

    invoke-virtual {v1, v2, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_0
.end method
