.class final Lcom/dexcom/cgm/tx/mediator/ax;
.super Landroid/bluetooth/le/ScanCallback;
.source "ScanCallbackApi21.java"


# instance fields
.field private final a:Lcom/dexcom/cgm/tx/mediator/ay;

.field private final b:Landroid/bluetooth/BluetoothAdapter;

.field private c:Lcom/dexcom/cgm/model/TransmitterId;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;Lcom/dexcom/cgm/tx/mediator/ay;Lcom/dexcom/cgm/model/TransmitterId;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/ax;->d:Z

    .line 40
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ax;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 41
    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/ax;->a:Lcom/dexcom/cgm/tx/mediator/ay;

    .line 42
    iput-object p3, p0, Lcom/dexcom/cgm/tx/mediator/ax;->c:Lcom/dexcom/cgm/model/TransmitterId;

    .line 43
    return-void
.end method

.method private static a(Lcom/dexcom/cgm/model/TransmitterId;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dexcom"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ax;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 50
    new-instance v1, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    new-instance v2, Landroid/os/ParcelUuid;

    sget-object v3, Lcom/dexcom/cgm/tx/mediator/cd;->DexcomAdvertisedUuid:Ljava/util/UUID;

    invoke-direct {v2, v3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 51
    invoke-virtual {v1, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/ax;->c:Lcom/dexcom/cgm/model/TransmitterId;

    .line 52
    invoke-static {v2}, Lcom/dexcom/cgm/tx/mediator/ax;->a(Lcom/dexcom/cgm/model/TransmitterId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v1

    .line 54
    new-instance v2, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const-wide/16 v4, 0x0

    .line 55
    invoke-virtual {v2, v4, v5}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 56
    invoke-virtual {v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v2

    .line 59
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1, v2, p0}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 63
    :cond_0
    return-void
.end method

.method public final onScanFailed(I)V
    .locals 3

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/ax;->d:Z

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 109
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 113
    :pswitch_0
    const-string v0, "TransmitterBLE"

    const-string v1, "Scan already started."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :pswitch_1
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ax;->a:Lcom/dexcom/cgm/tx/mediator/ay;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{ ScanErrorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/tx/mediator/ay;->scanFailed(Ljava/lang/String;)V

    .line 2067
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ax;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    .line 2068
    if-eqz v0, :cond_1

    .line 2070
    invoke-virtual {v0, p0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/dexcom/cgm/tx/mediator/ax;->a()V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 77
    iget-boolean v2, p0, Lcom/dexcom/cgm/tx/mediator/ax;->d:Z

    if-nez v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 83
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/ax;->c:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-static {v2}, Lcom/dexcom/cgm/tx/mediator/ax;->a(Lcom/dexcom/cgm/model/TransmitterId;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1129
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v2

    .line 1130
    if-nez v2, :cond_3

    move v2, v3

    .line 1148
    :goto_1
    const/4 v5, 0x3

    if-le v5, v2, :cond_2

    if-ne v3, v2, :cond_6

    .line 89
    :cond_2
    :goto_2
    if-nez v0, :cond_7

    .line 91
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ax;->a:Lcom/dexcom/cgm/tx/mediator/ay;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ax;->c:Lcom/dexcom/cgm/model/TransmitterId;

    .line 93
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 91
    invoke-interface {v0, v1, v3, v2}, Lcom/dexcom/cgm/tx/mediator/ay;->scanDetectedIncompatible(Lcom/dexcom/cgm/model/TransmitterId;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 1136
    :cond_3
    const/16 v5, 0xd0

    invoke-virtual {v2, v5}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData(I)[B

    move-result-object v2

    .line 1137
    if-eqz v2, :cond_4

    array-length v5, v2

    const/4 v6, 0x2

    if-ge v5, v6, :cond_5

    :cond_4
    move v2, v3

    .line 1140
    goto :goto_1

    .line 1142
    :cond_5
    aget-byte v2, v2, v0

    goto :goto_1

    :cond_6
    move v0, v1

    .line 1148
    goto :goto_2

    .line 97
    :cond_7
    const-string v0, "TransmitterBLE"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found matching Transmitter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput-boolean v1, p0, Lcom/dexcom/cgm/tx/mediator/ax;->d:Z

    .line 99
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ax;->a:Lcom/dexcom/cgm/tx/mediator/ay;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ax;->c:Lcom/dexcom/cgm/model/TransmitterId;

    invoke-interface {v0, v1, v4}, Lcom/dexcom/cgm/tx/mediator/ay;->scanResult(Lcom/dexcom/cgm/model/TransmitterId;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method
