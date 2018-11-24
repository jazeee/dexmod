.class public interface abstract Lcom/dexcom/cgm/tx/mediator/aa;
.super Ljava/lang/Object;
.source "CommunicationCallback.java"

# interfaces
.implements Lcom/dexcom/cgm/k/b;


# virtual methods
.method public abstract evBluetoothRadioChange(Lcom/dexcom/cgm/model/enums/BluetoothRadioState;)V
.end method

.method public abstract evCoarseLocationPermission(Z)V
.end method

.method public abstract evConnectionError(Lcom/dexcom/cgm/tx/mediator/ao;)V
.end method

.method public abstract evConnectionSuccess(Lcom/dexcom/cgm/tx/mediator/aq;)V
.end method

.method public abstract evIncompatibleTransmitter(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;)V
.end method
