.class public Lcom/dexcom/cgm/test/g;
.super Ljava/lang/Object;
.source "TransmitterMediatorSimInterceptor.java"

# interfaces
.implements Lcom/dexcom/cgm/tx/mediator/aa;


# static fields
.field public static final always:I = 0x7f110076

.field public static final btn_cancel:I = 0x7f1101e3

.field public static final btn_done:I = 0x7f1101e4

.field public static final changing:I = 0x7f110077

.field public static final crop_image:I = 0x7f1101e2

.field public static final done_cancel_bar:I = 0x7f1101e1

.field public static final never:I = 0x7f110078


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/test/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/test/e;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/dexcom/cgm/test/g;->this$0:Lcom/dexcom/cgm/test/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final evBluetoothRadioChange(Lcom/dexcom/cgm/model/enums/BluetoothRadioState;)V
    .locals 2

    .prologue
    .line 441
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/test/g;->this$0:Lcom/dexcom/cgm/test/e;

    invoke-static {v0}, Lcom/dexcom/cgm/test/e;->access$200(Lcom/dexcom/cgm/test/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/dexcom/cgm/test/g;->this$0:Lcom/dexcom/cgm/test/e;

    invoke-static {v0}, Lcom/dexcom/cgm/test/e;->access$200(Lcom/dexcom/cgm/test/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/tx/mediator/aa;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aa;->evBluetoothRadioChange(Lcom/dexcom/cgm/model/enums/BluetoothRadioState;)V

    .line 441
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 445
    :cond_0
    return-void
.end method

.method public final evCoarseLocationPermission(Z)V
    .locals 2

    .prologue
    .line 450
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/test/g;->this$0:Lcom/dexcom/cgm/test/e;

    invoke-static {v0}, Lcom/dexcom/cgm/test/e;->access$200(Lcom/dexcom/cgm/test/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/dexcom/cgm/test/g;->this$0:Lcom/dexcom/cgm/test/e;

    invoke-static {v0}, Lcom/dexcom/cgm/test/e;->access$200(Lcom/dexcom/cgm/test/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/tx/mediator/aa;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aa;->evCoarseLocationPermission(Z)V

    .line 450
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 454
    :cond_0
    return-void
.end method

.method public final evConnectionError(Lcom/dexcom/cgm/tx/mediator/ao;)V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/dexcom/cgm/test/g;->this$0:Lcom/dexcom/cgm/test/e;

    invoke-static {v0}, Lcom/dexcom/cgm/test/e;->access$108(Lcom/dexcom/cgm/test/e;)I

    .line 423
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/test/g;->this$0:Lcom/dexcom/cgm/test/e;

    invoke-static {v0}, Lcom/dexcom/cgm/test/e;->access$200(Lcom/dexcom/cgm/test/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/dexcom/cgm/test/g;->this$0:Lcom/dexcom/cgm/test/e;

    invoke-static {v0}, Lcom/dexcom/cgm/test/e;->access$200(Lcom/dexcom/cgm/test/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/tx/mediator/aa;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aa;->evConnectionError(Lcom/dexcom/cgm/tx/mediator/ao;)V

    .line 423
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 427
    :cond_0
    return-void
.end method

.method public final evConnectionSuccess(Lcom/dexcom/cgm/tx/mediator/aq;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 411
    iget-object v1, p0, Lcom/dexcom/cgm/test/g;->this$0:Lcom/dexcom/cgm/test/e;

    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/dexcom/cgm/test/e;->access$002(Lcom/dexcom/cgm/test/e;J)J

    .line 412
    iget-object v1, p0, Lcom/dexcom/cgm/test/g;->this$0:Lcom/dexcom/cgm/test/e;

    invoke-static {v1, v0}, Lcom/dexcom/cgm/test/e;->access$102(Lcom/dexcom/cgm/test/e;I)I

    move v1, v0

    .line 413
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/test/g;->this$0:Lcom/dexcom/cgm/test/e;

    invoke-static {v0}, Lcom/dexcom/cgm/test/e;->access$200(Lcom/dexcom/cgm/test/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/dexcom/cgm/test/g;->this$0:Lcom/dexcom/cgm/test/e;

    invoke-static {v0}, Lcom/dexcom/cgm/test/e;->access$200(Lcom/dexcom/cgm/test/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/tx/mediator/aa;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/tx/mediator/aa;->evConnectionSuccess(Lcom/dexcom/cgm/tx/mediator/aq;)V

    .line 413
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 417
    :cond_0
    return-void
.end method

.method public final evIncompatibleTransmitter(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 459
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/test/g;->this$0:Lcom/dexcom/cgm/test/e;

    invoke-static {v0}, Lcom/dexcom/cgm/test/e;->access$200(Lcom/dexcom/cgm/test/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/dexcom/cgm/test/g;->this$0:Lcom/dexcom/cgm/test/e;

    invoke-static {v0}, Lcom/dexcom/cgm/test/e;->access$200(Lcom/dexcom/cgm/test/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/tx/mediator/aa;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/aa;->evIncompatibleTransmitter(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;)V

    .line 459
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 463
    :cond_0
    return-void
.end method

.method public final evInterval()V
    .locals 2

    .prologue
    .line 432
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/test/g;->this$0:Lcom/dexcom/cgm/test/e;

    invoke-static {v0}, Lcom/dexcom/cgm/test/e;->access$200(Lcom/dexcom/cgm/test/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/dexcom/cgm/test/g;->this$0:Lcom/dexcom/cgm/test/e;

    invoke-static {v0}, Lcom/dexcom/cgm/test/e;->access$200(Lcom/dexcom/cgm/test/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/tx/mediator/aa;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/aa;->evInterval()V

    .line 432
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 436
    :cond_0
    return-void
.end method
