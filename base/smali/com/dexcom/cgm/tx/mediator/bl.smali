.class public final Lcom/dexcom/cgm/tx/mediator/bl;
.super Ljava/lang/Object;
.source "TransmitterMediatorComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/tx/mediator/as;


# instance fields
.field private m_firstIncompatibleEventTimestamp:Lcom/dexcom/cgm/k/j;

.field private m_handler:Landroid/os/Handler;

.field private m_handlerThread:Landroid/os/HandlerThread;

.field private m_isIncompatibleEventGenerated:Z

.field private final m_recordedIncompatibleAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/dexcom/cgm/tx/mediator/bi;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/tx/mediator/bi;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/bl;->this$0:Lcom/dexcom/cgm/tx/mediator/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bl;->m_recordedIncompatibleAddresses:Ljava/util/ArrayList;

    .line 269
    iput-object v2, p0, Lcom/dexcom/cgm/tx/mediator/bl;->m_firstIncompatibleEventTimestamp:Lcom/dexcom/cgm/k/j;

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/bl;->m_isIncompatibleEventGenerated:Z

    .line 272
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TransmitterMediatorPublisher"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bl;->m_handlerThread:Landroid/os/HandlerThread;

    .line 273
    iput-object v2, p0, Lcom/dexcom/cgm/tx/mediator/bl;->m_handler:Landroid/os/Handler;

    .line 277
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bl;->m_handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 278
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/bl;->m_handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bl;->m_handler:Landroid/os/Handler;

    .line 279
    return-void
.end method

.method static synthetic access$1000(Lcom/dexcom/cgm/tx/mediator/bl;)Z
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/bl;->m_isIncompatibleEventGenerated:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/dexcom/cgm/tx/mediator/bl;Z)Z
    .locals 0

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/dexcom/cgm/tx/mediator/bl;->m_isIncompatibleEventGenerated:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/dexcom/cgm/tx/mediator/bl;I)Lcom/dexcom/cgm/model/enums/BondState;
    .locals 1

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/tx/mediator/bl;->getBondState(I)Lcom/dexcom/cgm/model/enums/BondState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/dexcom/cgm/tx/mediator/bl;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bl;->m_recordedIncompatibleAddresses:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/dexcom/cgm/tx/mediator/bl;)Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bl;->m_firstIncompatibleEventTimestamp:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method static synthetic access$902(Lcom/dexcom/cgm/tx/mediator/bl;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/j;
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/bl;->m_firstIncompatibleEventTimestamp:Lcom/dexcom/cgm/k/j;

    return-object p1
.end method

.method private getBondState(I)Lcom/dexcom/cgm/model/enums/BondState;
    .locals 1

    .prologue
    .line 650
    packed-switch p1, :pswitch_data_0

    .line 659
    sget-object v0, Lcom/dexcom/cgm/model/enums/BondState;->Unknown:Lcom/dexcom/cgm/model/enums/BondState;

    :goto_0
    return-object v0

    .line 653
    :pswitch_0
    sget-object v0, Lcom/dexcom/cgm/model/enums/BondState;->Bonded:Lcom/dexcom/cgm/model/enums/BondState;

    goto :goto_0

    .line 655
    :pswitch_1
    sget-object v0, Lcom/dexcom/cgm/model/enums/BondState;->Bonding:Lcom/dexcom/cgm/model/enums/BondState;

    goto :goto_0

    .line 657
    :pswitch_2
    sget-object v0, Lcom/dexcom/cgm/model/enums/BondState;->BondNone:Lcom/dexcom/cgm/model/enums/BondState;

    goto :goto_0

    .line 650
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private postToHandler(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/bl;->m_handler:Landroid/os/Handler;

    new-instance v1, Lcom/dexcom/cgm/tx/mediator/bs;

    invoke-direct {v1, p0, p1}, Lcom/dexcom/cgm/tx/mediator/bs;-><init>(Lcom/dexcom/cgm/tx/mediator/bl;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 725
    return-void
.end method


# virtual methods
.method public final evBluetoothRadioChange(Lcom/dexcom/cgm/model/enums/BluetoothRadioState;)V
    .locals 1

    .prologue
    .line 666
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/br;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/tx/mediator/br;-><init>(Lcom/dexcom/cgm/tx/mediator/bl;Lcom/dexcom/cgm/model/enums/BluetoothRadioState;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/bl;->postToHandler(Ljava/lang/Runnable;)V

    .line 704
    return-void
.end method

.method public final evBondChange(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 634
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/bq;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dexcom/cgm/tx/mediator/bq;-><init>(Lcom/dexcom/cgm/tx/mediator/bl;ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/bl;->postToHandler(Ljava/lang/Runnable;)V

    .line 646
    return-void
.end method

.method public final evCoarseLocationPermission(Z)V
    .locals 1

    .prologue
    .line 455
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/bn;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/tx/mediator/bn;-><init>(Lcom/dexcom/cgm/tx/mediator/bl;Z)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/bl;->postToHandler(Ljava/lang/Runnable;)V

    .line 475
    return-void
.end method

.method public final evCommunicationEnd()V
    .locals 1

    .prologue
    .line 339
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/bw;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/tx/mediator/bw;-><init>(Lcom/dexcom/cgm/tx/mediator/bl;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/bl;->postToHandler(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method public final evCommunicationStart()V
    .locals 1

    .prologue
    .line 321
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/bv;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/tx/mediator/bv;-><init>(Lcom/dexcom/cgm/tx/mediator/bl;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/bl;->postToHandler(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method public final evConnectionError(Lcom/dexcom/cgm/tx/mediator/ac;)V
    .locals 1

    .prologue
    .line 585
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/bp;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/tx/mediator/bp;-><init>(Lcom/dexcom/cgm/tx/mediator/bl;Lcom/dexcom/cgm/tx/mediator/ac;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/bl;->postToHandler(Ljava/lang/Runnable;)V

    .line 626
    return-void
.end method

.method public final evConnectionSuccess(Lcom/dexcom/cgm/tx/mediator/ac;)V
    .locals 1

    .prologue
    .line 480
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/bo;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/tx/mediator/bo;-><init>(Lcom/dexcom/cgm/tx/mediator/bl;Lcom/dexcom/cgm/tx/mediator/ac;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/bl;->postToHandler(Ljava/lang/Runnable;)V

    .line 580
    return-void
.end method

.method public final evInterval()V
    .locals 1

    .prologue
    .line 439
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/ca;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/tx/mediator/ca;-><init>(Lcom/dexcom/cgm/tx/mediator/bl;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/bl;->postToHandler(Ljava/lang/Runnable;)V

    .line 451
    return-void
.end method

.method public final evScanError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 366
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/by;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/tx/mediator/by;-><init>(Lcom/dexcom/cgm/tx/mediator/bl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/bl;->postToHandler(Ljava/lang/Runnable;)V

    .line 377
    return-void
.end method

.method public final evScanIncompatibleTransmitter(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 386
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/bz;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/tx/mediator/bz;-><init>(Lcom/dexcom/cgm/tx/mediator/bl;Ljava/lang/String;Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/bl;->postToHandler(Ljava/lang/Runnable;)V

    .line 434
    return-void
.end method

.method public final evScanStart(Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 352
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/bx;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/cgm/tx/mediator/bx;-><init>(Lcom/dexcom/cgm/tx/mediator/bl;Lcom/dexcom/cgm/model/TransmitterId;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/bl;->postToHandler(Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method

.method public final evServiceCreated()V
    .locals 1

    .prologue
    .line 283
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/bm;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/tx/mediator/bm;-><init>(Lcom/dexcom/cgm/tx/mediator/bl;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/bl;->postToHandler(Ljava/lang/Runnable;)V

    .line 291
    return-void
.end method

.method public final evServiceDestroyed()V
    .locals 1

    .prologue
    .line 295
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/bt;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/tx/mediator/bt;-><init>(Lcom/dexcom/cgm/tx/mediator/bl;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/bl;->postToHandler(Ljava/lang/Runnable;)V

    .line 303
    return-void
.end method

.method public final evServiceError()V
    .locals 1

    .prologue
    .line 308
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/bu;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/tx/mediator/bu;-><init>(Lcom/dexcom/cgm/tx/mediator/bl;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/tx/mediator/bl;->postToHandler(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method
