.class public interface abstract Lcom/dexcom/cgm/tx/mediator/bh;
.super Ljava/lang/Object;
.source "TransmitterMediator.java"


# virtual methods
.method public abstract disableCommunicationLoop()V
.end method

.method public abstract enableCommunicationLoop()V
.end method

.method public abstract isBluetoothOn()Z
.end method

.method public abstract isCommunicationLoopEnabled()Z
.end method

.method public abstract registerCommunicationCallback(Lcom/dexcom/cgm/tx/mediator/aa;)V
.end method

.method public abstract setConnectionCriteriaProvider(Lcom/dexcom/cgm/tx/mediator/ah;)V
.end method

.method public abstract teardown()V
.end method

.method public abstract unregisterCommunicationCallback(Lcom/dexcom/cgm/tx/mediator/aa;)V
.end method

.method public abstract unsetConnectionCriteriaProvider()V
.end method
