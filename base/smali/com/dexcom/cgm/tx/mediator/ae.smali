.class abstract Lcom/dexcom/cgm/tx/mediator/ae;
.super Ljava/lang/Object;
.source "ConnectStrategy.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isComplete()Z
.end method

.method public onBonded(Lcom/dexcom/cgm/tx/mediator/k;)V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public onCharacteristicChanged(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[B)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public onCharacteristicChangedDisabled(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onCharacteristicChangedEnabled(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;I)V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onCharacteristicRead(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public onCharacteristicWrite(Lcom/dexcom/cgm/tx/mediator/k;Lcom/dexcom/cgm/tx/mediator/at;[BI)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public onServicesDiscovered(Lcom/dexcom/cgm/tx/mediator/k;I)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public abstract start(Lcom/dexcom/cgm/tx/mediator/k;)V
.end method
