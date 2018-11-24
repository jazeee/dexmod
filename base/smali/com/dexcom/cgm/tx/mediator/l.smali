.class final Lcom/dexcom/cgm/tx/mediator/l;
.super Ljava/lang/Object;
.source "BleAdapterImpl.java"

# interfaces
.implements Lcom/dexcom/cgm/tx/mediator/k;


# static fields
.field private static final a:Ljava/util/UUID;


# instance fields
.field private final b:Landroid/bluetooth/BluetoothGatt;

.field private final c:Lcom/dexcom/cgm/tx/mediator/ac;

.field private d:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/dexcom/cgm/tx/mediator/at;",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            "Lcom/dexcom/cgm/tx/mediator/at;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/tx/mediator/l;->a:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothGatt;Lcom/dexcom/cgm/tx/mediator/ac;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->d:Landroid/util/ArrayMap;

    .line 28
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->e:Landroid/util/ArrayMap;

    .line 32
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/l;->b:Landroid/bluetooth/BluetoothGatt;

    .line 33
    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/l;->c:Lcom/dexcom/cgm/tx/mediator/ac;

    .line 34
    return-void
.end method

.method private b(Lcom/dexcom/cgm/tx/mediator/at;[B)V
    .locals 5

    .prologue
    .line 145
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->d:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 146
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/l;->b:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 147
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/l;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 148
    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 150
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/l;->c:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[out] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/cd;->getName(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#enable_notif_indicate: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    invoke-static {p2}, Lcom/dexcom/cgm/f/a;->toHexWithLength([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {v2, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 153
    return-void
.end method


# virtual methods
.method public final a(Landroid/bluetooth/BluetoothGattCharacteristic;)Lcom/dexcom/cgm/tx/mediator/at;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->e:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/tx/mediator/at;

    return-object v0
.end method

.method public final a(Landroid/bluetooth/BluetoothGatt;)V
    .locals 6

    .prologue
    .line 172
    .line 1181
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/cd;->DexcomCgmServiceUuid:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 1182
    if-eqz v0, :cond_0

    .line 1184
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/l;->d:Landroid/util/ArrayMap;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/at;->AuthenticationControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/cd;->AuthenticationControlPointCharUuid:Ljava/util/UUID;

    .line 1185
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 1184
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/l;->d:Landroid/util/ArrayMap;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/cd;->CgmControlPointCharUuid:Ljava/util/UUID;

    .line 1187
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 1186
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/l;->d:Landroid/util/ArrayMap;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/at;->Synchronization:Lcom/dexcom/cgm/tx/mediator/at;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/cd;->SynchronizationCharUuid:Ljava/util/UUID;

    .line 1189
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 1188
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/l;->d:Landroid/util/ArrayMap;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/at;->Exchange:Lcom/dexcom/cgm/tx/mediator/at;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/cd;->ExchangeCharUuid:Ljava/util/UUID;

    .line 1191
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 1190
    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/tx/mediator/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1197
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/cd;->DexcomCgmServiceUuid:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 1198
    if-nez v0, :cond_2

    .line 1200
    :cond_1
    :goto_0
    return-void

    .line 1203
    :cond_2
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/cd;->AuthenticationControlPointCharUuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 1205
    sget-object v2, Lcom/dexcom/cgm/tx/mediator/cd;->CgmControlPointCharUuid:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    .line 1207
    sget-object v3, Lcom/dexcom/cgm/tx/mediator/cd;->SynchronizationCharUuid:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 1209
    sget-object v4, Lcom/dexcom/cgm/tx/mediator/cd;->ExchangeCharUuid:Ljava/util/UUID;

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 1212
    if-eqz v1, :cond_3

    .line 1214
    iget-object v4, p0, Lcom/dexcom/cgm/tx/mediator/l;->e:Landroid/util/ArrayMap;

    sget-object v5, Lcom/dexcom/cgm/tx/mediator/at;->AuthenticationControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-virtual {v4, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    :cond_3
    if-eqz v2, :cond_4

    .line 1218
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/l;->e:Landroid/util/ArrayMap;

    sget-object v4, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    :cond_4
    if-eqz v3, :cond_5

    .line 1222
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/l;->e:Landroid/util/ArrayMap;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/at;->Synchronization:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    :cond_5
    if-eqz v0, :cond_1

    .line 1226
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/l;->e:Landroid/util/ArrayMap;

    sget-object v2, Lcom/dexcom/cgm/tx/mediator/at;->Exchange:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/dexcom/cgm/tx/mediator/at;)V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->d:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 96
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/l;->c:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[out] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-static {v3}, Lcom/dexcom/cgm/tx/mediator/cd;->getName(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/l;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    .line 98
    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to read GATT characteristic: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    return-void
.end method

.method public final a(Lcom/dexcom/cgm/tx/mediator/at;[B)V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->d:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 108
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 109
    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 111
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/l;->c:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[out] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-static {v3}, Lcom/dexcom/cgm/tx/mediator/cd;->getName(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#write: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 112
    invoke-static {p2}, Lcom/dexcom/cgm/f/a;->toHexWithLength([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/l;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    .line 114
    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to write GATT characteristic: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->d:Landroid/util/ArrayMap;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->AuthenticationControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->d:Landroid/util/ArrayMap;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->CgmControlPoint:Lcom/dexcom/cgm/tx/mediator/at;

    .line 46
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->d:Landroid/util/ArrayMap;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->Synchronization:Lcom/dexcom/cgm/tx/mediator/at;

    .line 47
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->d:Landroid/util/ArrayMap;

    sget-object v1, Lcom/dexcom/cgm/tx/mediator/at;->Exchange:Lcom/dexcom/cgm/tx/mediator/at;

    .line 48
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 1

    .prologue
    .line 39
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->c:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v1, "[out] disconnect"

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 56
    return-void
.end method

.method public final b(Lcom/dexcom/cgm/tx/mediator/at;)V
    .locals 1

    .prologue
    .line 123
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_INDICATION_VALUE:[B

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/tx/mediator/l;->b(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 124
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->c:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v1, "[out] discover_services"

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 63
    return-void
.end method

.method public final c(Lcom/dexcom/cgm/tx/mediator/at;)V
    .locals 1

    .prologue
    .line 135
    sget-object v0, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/tx/mediator/l;->b(Lcom/dexcom/cgm/tx/mediator/at;[B)V

    .line 136
    return-void
.end method

.method public final d(Lcom/dexcom/cgm/tx/mediator/at;)V
    .locals 6

    .prologue
    .line 129
    .line 1158
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->d:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1159
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/l;->b:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 1161
    sget-object v1, Lcom/dexcom/cgm/tx/mediator/l;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    .line 1162
    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    .line 1163
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 1165
    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/l;->c:Lcom/dexcom/cgm/tx/mediator/ac;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[out] "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/tx/mediator/cd;->getName(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "#disable_notif_indicate: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1166
    invoke-static {v2}, Lcom/dexcom/cgm/f/a;->toHexWithLength([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1165
    invoke-virtual {v3, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 130
    return-void
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 82
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/l;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->c:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v1, "[out] create_bond"

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    .line 90
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->c:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v1, "[out] request_conn_priority"

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->b:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    .line 70
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->c:Lcom/dexcom/cgm/tx/mediator/ac;

    const-string v1, "[out] read_remote_rssi"

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ac;->log(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/l;->b:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z

    .line 77
    return-void
.end method
