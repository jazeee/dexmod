.class final Lcom/dexcom/cgm/b/l;
.super Ljava/lang/Object;
.source "CgmProviderComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/tx/mediator/aa;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/b/j;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/b/j;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lcom/dexcom/cgm/b/l;->a:Lcom/dexcom/cgm/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evBluetoothRadioChange(Lcom/dexcom/cgm/model/enums/BluetoothRadioState;)V
    .locals 1

    .prologue
    .line 826
    iget-object v0, p0, Lcom/dexcom/cgm/b/l;->a:Lcom/dexcom/cgm/b/j;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/b/j;->access$400(Lcom/dexcom/cgm/b/j;Lcom/dexcom/cgm/model/enums/BluetoothRadioState;)V

    .line 827
    return-void
.end method

.method public final evCoarseLocationPermission(Z)V
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/dexcom/cgm/b/l;->a:Lcom/dexcom/cgm/b/j;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/b/j;->access$500(Lcom/dexcom/cgm/b/j;Z)V

    .line 833
    return-void
.end method

.method public final evConnectionError(Lcom/dexcom/cgm/tx/mediator/ao;)V
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/dexcom/cgm/b/l;->a:Lcom/dexcom/cgm/b/j;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/b/j;->access$200(Lcom/dexcom/cgm/b/j;Lcom/dexcom/cgm/tx/mediator/ao;)V

    .line 809
    return-void
.end method

.method public final evConnectionSuccess(Lcom/dexcom/cgm/tx/mediator/aq;)V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/dexcom/cgm/b/l;->a:Lcom/dexcom/cgm/b/j;

    invoke-static {v0, p1}, Lcom/dexcom/cgm/b/j;->access$100(Lcom/dexcom/cgm/b/j;Lcom/dexcom/cgm/tx/mediator/aq;)V

    .line 803
    return-void
.end method

.method public final evIncompatibleTransmitter(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/dexcom/cgm/b/l;->a:Lcom/dexcom/cgm/b/j;

    invoke-static {v0}, Lcom/dexcom/cgm/b/j;->access$600(Lcom/dexcom/cgm/b/j;)V

    .line 839
    return-void
.end method

.method public final evInterval()V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/dexcom/cgm/b/l;->a:Lcom/dexcom/cgm/b/j;

    invoke-static {v0}, Lcom/dexcom/cgm/b/j;->access$300(Lcom/dexcom/cgm/b/j;)V

    .line 821
    return-void
.end method
