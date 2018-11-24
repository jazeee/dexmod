.class public interface abstract Lcom/dexcom/cgm/tx/mediator/as;
.super Ljava/lang/Object;
.source "EventListener.java"


# virtual methods
.method public abstract evBluetoothRadioChange(Lcom/dexcom/cgm/model/enums/BluetoothRadioState;)V
.end method

.method public abstract evBondChange(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract evCommunicationEnd()V
.end method

.method public abstract evCommunicationStart()V
.end method

.method public abstract evConnectionError(Lcom/dexcom/cgm/tx/mediator/ac;)V
.end method

.method public abstract evConnectionSuccess(Lcom/dexcom/cgm/tx/mediator/ac;)V
.end method

.method public abstract evInterval()V
.end method

.method public abstract evScanError(Ljava/lang/String;)V
.end method

.method public abstract evScanIncompatibleTransmitter(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract evScanStart(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;)V
.end method

.method public abstract evServiceError()V
.end method
