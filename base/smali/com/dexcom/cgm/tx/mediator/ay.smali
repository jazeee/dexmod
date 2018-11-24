.class interface abstract Lcom/dexcom/cgm/tx/mediator/ay;
.super Ljava/lang/Object;
.source "ScanListener.java"


# virtual methods
.method public abstract scanDetectedIncompatible(Lcom/dexcom/cgm/model/TransmitterId;Landroid/bluetooth/BluetoothDevice;I)V
.end method

.method public abstract scanFailed(Ljava/lang/String;)V
.end method

.method public abstract scanResult(Lcom/dexcom/cgm/model/TransmitterId;Landroid/bluetooth/BluetoothDevice;)V
.end method
