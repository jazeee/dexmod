.class public final Lcom/dexcom/cgm/b/j;
.super Ljava/lang/Object;
.source "CgmProviderComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/b/f;


# static fields
.field static StartTimespanForTransmitterFinalEolAlert:Lcom/dexcom/cgm/k/k;

.field static StartTimespanForTransmitterFirstEolAlert:Lcom/dexcom/cgm/k/k;

.field static StartTimespanForTransmitterSecondEolAlert:Lcom/dexcom/cgm/k/k;

.field static final TimespanForDataGap:J


# instance fields
.field private m_alertCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private m_alertGenerator:Lcom/dexcom/cgm/b/a;

.field private m_alertSchedules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/DexAlertSchedule;",
            ">;"
        }
    .end annotation
.end field

.field private m_alertSettings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/AlertSettings;",
            ">;"
        }
    .end annotation
.end field

.field private m_alertSettingsUpdateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private final m_cgmDataUpdateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private m_commandHandler:Lcom/dexcom/cgm/b/o;

.field private m_communicationCallback:Lcom/dexcom/cgm/tx/mediator/aa;

.field private m_criteriaProvider:Lcom/dexcom/cgm/b/m;

.field private m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

.field private m_currentDeviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

.field private m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

.field private final m_dal:Lcom/dexcom/cgm/d/a;

.field private m_hasTransmitterFailed:Z

.field private m_initialAttempt:Z

.field private final m_intervalSource:Lcom/dexcom/cgm/k/c;

.field private m_latestSuccessfulConnectionTime:Lcom/dexcom/cgm/k/j;

.field private m_metersFromUser:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/Meter;",
            ">;"
        }
    .end annotation
.end field

.field private m_minBackfillTime:Lcom/dexcom/cgm/k/n;

.field private m_newMeter:Lcom/dexcom/cgm/model/Meter;

.field private m_previousAlgorithmState:Lcom/dexcom/cgm/b/v;

.field private m_previousMeter:Lcom/dexcom/cgm/model/Meter;

.field private m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

.field private m_timer:Ljava/util/Timer;

.field private m_timerTask:Ljava/util/TimerTask;

.field private final m_txMediator:Lcom/dexcom/cgm/tx/mediator/bh;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/dexcom/cgm/k/k;

    const/16 v1, 0xa8

    invoke-direct {v0, v1, v2, v2}, Lcom/dexcom/cgm/k/k;-><init>(III)V

    sput-object v0, Lcom/dexcom/cgm/b/j;->StartTimespanForTransmitterFinalEolAlert:Lcom/dexcom/cgm/k/k;

    .line 58
    new-instance v0, Lcom/dexcom/cgm/k/k;

    const/16 v1, 0x150

    invoke-direct {v0, v1, v2, v2}, Lcom/dexcom/cgm/k/k;-><init>(III)V

    sput-object v0, Lcom/dexcom/cgm/b/j;->StartTimespanForTransmitterSecondEolAlert:Lcom/dexcom/cgm/k/k;

    .line 59
    new-instance v0, Lcom/dexcom/cgm/k/k;

    const/16 v1, 0x210

    invoke-direct {v0, v1, v2, v2}, Lcom/dexcom/cgm/k/k;-><init>(III)V

    sput-object v0, Lcom/dexcom/cgm/b/j;->StartTimespanForTransmitterFirstEolAlert:Lcom/dexcom/cgm/k/k;

    .line 65
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    add-long/2addr v0, v2

    sput-wide v0, Lcom/dexcom/cgm/b/j;->TimespanForDataGap:J

    return-void
.end method

.method private constructor <init>(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/tx/mediator/bh;Lcom/dexcom/cgm/k/c;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/b/j;->m_initialAttempt:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_cgmDataUpdateCallbacks:Ljava/util/ArrayList;

    .line 66
    iput-object v1, p0, Lcom/dexcom/cgm/b/j;->m_newMeter:Lcom/dexcom/cgm/model/Meter;

    .line 67
    iput-object v1, p0, Lcom/dexcom/cgm/b/j;->m_previousMeter:Lcom/dexcom/cgm/model/Meter;

    .line 75
    iput-object v1, p0, Lcom/dexcom/cgm/b/j;->m_previousAlgorithmState:Lcom/dexcom/cgm/b/v;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_alertCallbacks:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_metersFromUser:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Lcom/dexcom/cgm/b/l;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/b/l;-><init>(Lcom/dexcom/cgm/b/j;)V

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_communicationCallback:Lcom/dexcom/cgm/tx/mediator/aa;

    .line 84
    iput-object v1, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    .line 85
    iput-object v1, p0, Lcom/dexcom/cgm/b/j;->m_currentDeviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_alertSettingsUpdateCallbacks:Ljava/util/ArrayList;

    .line 96
    sget-object v0, Lcom/dexcom/cgm/k/j;->Min:Lcom/dexcom/cgm/k/j;

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_latestSuccessfulConnectionTime:Lcom/dexcom/cgm/k/j;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/b/j;->m_hasTransmitterFailed:Z

    .line 100
    sget-object v0, Lcom/dexcom/cgm/k/n;->Zero:Lcom/dexcom/cgm/k/n;

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_minBackfillTime:Lcom/dexcom/cgm/k/n;

    .line 115
    iput-object p1, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    .line 116
    iput-object p2, p0, Lcom/dexcom/cgm/b/j;->m_txMediator:Lcom/dexcom/cgm/tx/mediator/bh;

    .line 117
    iput-object p3, p0, Lcom/dexcom/cgm/b/j;->m_intervalSource:Lcom/dexcom/cgm/k/c;

    .line 118
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->Initialize()V

    .line 119
    return-void
.end method

.method private Initialize()V
    .locals 4

    .prologue
    .line 123
    new-instance v0, Lcom/dexcom/cgm/b/a;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/b/a;-><init>(Lcom/dexcom/cgm/b/j;)V

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_alertGenerator:Lcom/dexcom/cgm/b/a;

    .line 124
    new-instance v0, Lcom/dexcom/cgm/b/w;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/b/w;-><init>(Lcom/dexcom/cgm/b/j;)V

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    .line 126
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->initializeCurrentStateInfoFromDal()V

    .line 127
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    .line 128
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getLatestBluetoothDeviceRecord()Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentDeviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    .line 130
    new-instance v0, Lcom/dexcom/cgm/b/o;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/b/o;-><init>(Lcom/dexcom/cgm/b/j;)V

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_commandHandler:Lcom/dexcom/cgm/b/o;

    .line 131
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->initializeMetersFromDatabase()V

    .line 132
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getAlertSettings()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_alertSettings:Ljava/util/List;

    .line 133
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getAlertSchedules()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_alertSchedules:Ljava/util/List;

    .line 134
    new-instance v0, Lcom/dexcom/cgm/b/m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dexcom/cgm/b/m;-><init>(Lcom/dexcom/cgm/b/j;B)V

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_criteriaProvider:Lcom/dexcom/cgm/b/m;

    .line 135
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_txMediator:Lcom/dexcom/cgm/tx/mediator/bh;

    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_communicationCallback:Lcom/dexcom/cgm/tx/mediator/aa;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/tx/mediator/bh;->registerCommunicationCallback(Lcom/dexcom/cgm/tx/mediator/aa;)V

    .line 136
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_txMediator:Lcom/dexcom/cgm/tx/mediator/bh;

    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_criteriaProvider:Lcom/dexcom/cgm/b/m;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/tx/mediator/bh;->setConnectionCriteriaProvider(Lcom/dexcom/cgm/tx/mediator/ah;)V

    .line 138
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    if-nez v0, :cond_0

    .line 140
    invoke-static {}, Lcom/dexcom/cgm/model/TransmitterId;->GetDefaultId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    .line 141
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    .line 142
    new-instance v2, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    invoke-direct {v2}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;-><init>()V

    .line 143
    invoke-virtual {v2, v1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setSystemTime(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v2

    .line 144
    invoke-virtual {v2, v0}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setTransmitterId(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v2

    .line 145
    invoke-virtual {v2}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->build()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    .line 146
    new-instance v2, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    invoke-direct {v2}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;-><init>()V

    .line 147
    invoke-virtual {v2, v1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->setRecordSystemTime(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    move-result-object v1

    .line 148
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->setTransmitterId(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->build()Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentDeviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    .line 150
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    iget-object v2, p0, Lcom/dexcom/cgm/b/j;->m_currentDeviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/d/a;->writeTransmitter(Lcom/dexcom/cgm/model/TransmitterInfo;Lcom/dexcom/cgm/model/BluetoothDeviceRecord;)V

    .line 152
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/k/n;->Zero:Lcom/dexcom/cgm/k/n;

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_minBackfillTime:Lcom/dexcom/cgm/k/n;

    .line 153
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_criteriaProvider:Lcom/dexcom/cgm/b/m;

    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-virtual {p0}, Lcom/dexcom/cgm/b/j;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/b/j;->m_minBackfillTime:Lcom/dexcom/cgm/k/n;

    invoke-virtual {v0, v1, v2, v3}, Lcom/dexcom/cgm/b/m;->a(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/n;)V

    .line 154
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_intervalSource:Lcom/dexcom/cgm/k/c;

    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_communicationCallback:Lcom/dexcom/cgm/tx/mediator/aa;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/k/c;->registerIntervalListener(Lcom/dexcom/cgm/k/b;)V

    .line 155
    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/b/j;Lcom/dexcom/cgm/tx/mediator/aq;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/j;->syncEvConnectionSuccess(Lcom/dexcom/cgm/tx/mediator/aq;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/dexcom/cgm/b/j;)Lcom/dexcom/cgm/model/TransmitterInfo;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/dexcom/cgm/b/j;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentDeviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/b/j;Lcom/dexcom/cgm/tx/mediator/ao;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/j;->syncEvConnectionError(Lcom/dexcom/cgm/tx/mediator/ao;)V

    return-void
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/b/j;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->syncEvInterval()V

    return-void
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/b/j;Lcom/dexcom/cgm/model/enums/BluetoothRadioState;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/j;->syncEvBluetoothRadioChange(Lcom/dexcom/cgm/model/enums/BluetoothRadioState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/b/j;Z)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/j;->syncEvCoarseLocationPermission(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/dexcom/cgm/b/j;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->syncEvIncompatibleTransmitter()V

    return-void
.end method

.method static synthetic access$800(Lcom/dexcom/cgm/b/j;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->syncBluetoothDelayedAlertCheck()V

    return-void
.end method

.method static synthetic access$900(Lcom/dexcom/cgm/b/j;)Lcom/dexcom/cgm/b/o;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_commandHandler:Lcom/dexcom/cgm/b/o;

    return-object v0
.end method

.method private checkForBleTimeOut()V
    .locals 6

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->checkForPairingFailedAlert()Ljava/util/ArrayList;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/j;->dispatchAlerts(Ljava/util/ArrayList;)V

    .line 593
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->updateListenersOnNewData()V

    .line 621
    :goto_0
    return-void

    .line 598
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 599
    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_txMediator:Lcom/dexcom/cgm/tx/mediator/bh;

    invoke-interface {v1}, Lcom/dexcom/cgm/tx/mediator/bh;->isBluetoothOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    new-instance v1, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->BluetoothRadioOn:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 602
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_1
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    .line 606
    iget-object v2, p0, Lcom/dexcom/cgm/b/j;->m_latestSuccessfulConnectionTime:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/k/j;->subtract(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/k;

    move-result-object v1

    .line 607
    invoke-virtual {v1}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v2

    const-wide/16 v4, 0x12c

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 609
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/j;->dispatchAlerts(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 613
    :cond_2
    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    .line 614
    invoke-virtual {v1}, Lcom/dexcom/cgm/b/w;->checkForSessionExpiryAlertsOnBleTimeOut()Ljava/lang/Iterable;

    move-result-object v1

    .line 616
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->checkForSignalLoss()Ljava/util/ArrayList;

    move-result-object v2

    .line 617
    invoke-direct {p0, v2, v1}, Lcom/dexcom/cgm/b/j;->combineAlerts(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 618
    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/b/j;->combineAlerts(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 619
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/j;->dispatchAlerts(Ljava/util/ArrayList;)V

    .line 620
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->updateListenersOnNewData()V

    goto :goto_0
.end method

.method private checkForLastSensorSession()V
    .locals 2

    .prologue
    .line 325
    new-instance v0, Lcom/dexcom/cgm/b/z;

    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/b/z;-><init>(Lcom/dexcom/cgm/model/TransmitterInfo;)V

    .line 327
    invoke-virtual {p0}, Lcom/dexcom/cgm/b/j;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/b/z;->b(Lcom/dexcom/cgm/d/e;)Ljava/util/ArrayList;

    move-result-object v0

    .line 328
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/j;->dispatchAlerts(Ljava/util/ArrayList;)V

    .line 329
    return-void
.end method

.method private checkForPairingFailedAlert()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 626
    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/TransmitterId;->isDefaultTransmitterId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-object v0

    .line 631
    :cond_1
    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/TransmitterInfo;->isDetailsAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    .line 636
    iget-object v2, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v2}, Lcom/dexcom/cgm/model/TransmitterInfo;->getSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/k/j;->subtract(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/k;

    move-result-object v1

    .line 638
    invoke-virtual {v1}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v2

    sget-object v1, Lcom/dexcom/cgm/b/j;->TimeSpanForPairingFailed:Lcom/dexcom/cgm/k/k;

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 642
    new-instance v1, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->PairingFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 644
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkForSignalLoss()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 672
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 673
    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/w;->isSessionStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-object v0

    .line 678
    :cond_1
    invoke-virtual {p0}, Lcom/dexcom/cgm/b/j;->getActiveAlertSettings()Lcom/dexcom/cgm/model/AlertSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AlertSettings;->getNoData()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/UserAlertProperties;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    .line 683
    iget-object v2, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    invoke-virtual {v2}, Lcom/dexcom/cgm/b/v;->getLastEgvTimestamp()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    .line 684
    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/k/j;->subtract(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/k;

    move-result-object v1

    .line 685
    invoke-virtual {v1}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/dexcom/cgm/b/j;->getActiveAlertSettings()Lcom/dexcom/cgm/model/AlertSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AlertSettings;->getNoData()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getRepeatTime()Lcom/dexcom/cgm/k/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 687
    new-instance v1, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 689
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private combineAlerts(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 698
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 699
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    .line 701
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 703
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    .line 705
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 707
    :cond_1
    return-object v1
.end method

.method public static create(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/tx/mediator/bh;Lcom/dexcom/cgm/k/c;)Lcom/dexcom/cgm/b/f;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/dexcom/cgm/b/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/cgm/b/j;-><init>(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/tx/mediator/bh;Lcom/dexcom/cgm/k/c;)V

    return-object v0
.end method

.method private dispatchAlerts(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 712
    invoke-static {p1}, Lcom/dexcom/cgm/b/t;->createAlertList(Ljava/lang/Iterable;)Lcom/dexcom/cgm/b/t;

    move-result-object v1

    .line 713
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->getAlertCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/b/h;

    .line 715
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/b/h;->evAlertData(Lcom/dexcom/cgm/b/t;)V

    goto :goto_0

    .line 717
    :cond_0
    return-void
.end method

.method private getAlertCallbacks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/b/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_alertCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method private handleTransmitterUnrecoverableError()V
    .locals 4

    .prologue
    .line 651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/b/j;->m_hasTransmitterFailed:Z

    .line 652
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_latestSuccessfulConnectionTime:Lcom/dexcom/cgm/k/j;

    .line 653
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    .line 654
    invoke-virtual {v0}, Lcom/dexcom/cgm/b/w;->handleTransmitterFailed()Ljava/lang/Iterable;

    move-result-object v0

    .line 655
    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_commandHandler:Lcom/dexcom/cgm/b/o;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/o;->c()V

    .line 656
    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    iput-object v1, p0, Lcom/dexcom/cgm/b/j;->m_previousAlgorithmState:Lcom/dexcom/cgm/b/v;

    .line 657
    invoke-static {}, Lcom/dexcom/cgm/b/v;->getLocalStateForTransmitterFailure()Lcom/dexcom/cgm/b/v;

    move-result-object v1

    iput-object v1, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    .line 659
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 660
    new-instance v2, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v3, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v2, v3}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 662
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-direct {p0, v1, v0}, Lcom/dexcom/cgm/b/j;->combineAlerts(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 665
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/j;->dispatchAlerts(Ljava/util/ArrayList;)V

    .line 667
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->updateListenersOnNewData()V

    .line 668
    return-void
.end method

.method private inactivateAlerts()V
    .locals 3

    .prologue
    .line 435
    invoke-static {}, Lcom/dexcom/cgm/b/t;->createInactivateAllAlerts()Lcom/dexcom/cgm/b/t;

    move-result-object v1

    .line 436
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->getAlertCallbacks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/b/h;

    .line 438
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/b/h;->evAlertData(Lcom/dexcom/cgm/b/t;)V

    goto :goto_0

    .line 440
    :cond_0
    return-void
.end method

.method private initializeCurrentStateInfoFromDal()V
    .locals 4

    .prologue
    .line 180
    sget-object v0, Lcom/dexcom/cgm/b/k;->a:[I

    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/w;->getSessionState()Lcom/dexcom/cgm/b/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/y;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown session state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    .line 215
    invoke-virtual {v2}, Lcom/dexcom/cgm/b/w;->getSessionState()Lcom/dexcom/cgm/b/y;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :pswitch_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    invoke-static {v0}, Lcom/dexcom/cgm/b/v;->createStartSessionState(Lcom/dexcom/cgm/b/w;)Lcom/dexcom/cgm/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    .line 212
    :goto_0
    :pswitch_1
    return-void

    .line 190
    :pswitch_2
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getLatestGlucoseRecord()Lcom/dexcom/cgm/model/Glucose;

    move-result-object v1

    .line 191
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getLatestCalBoundsRecord()Lcom/dexcom/cgm/model/CalBounds;

    move-result-object v0

    .line 192
    if-nez v0, :cond_0

    .line 194
    invoke-static {}, Lcom/dexcom/cgm/model/CalBounds;->getDefault()Lcom/dexcom/cgm/model/CalBounds;

    move-result-object v0

    .line 196
    :cond_0
    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Glucose;->getSessionStartTime()Lcom/dexcom/cgm/k/n;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    .line 197
    invoke-virtual {v3}, Lcom/dexcom/cgm/b/w;->getSessionSignature()Lcom/dexcom/cgm/k/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dexcom/cgm/k/m;->getTransmitterTime()Lcom/dexcom/cgm/k/n;

    move-result-object v3

    .line 196
    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/k/n;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    const-string v2, " Glucose record timestamp does not match that of session: "

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Glucose = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Glucose;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "session timestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    .line 202
    invoke-virtual {v3}, Lcom/dexcom/cgm/b/w;->getSessionSignature()Lcom/dexcom/cgm/k/m;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {v2}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logStateCheckInformation(Ljava/lang/String;)V

    .line 205
    :cond_1
    new-instance v2, Lcom/dexcom/cgm/b/v;

    iget-object v3, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    invoke-direct {v2, v1, v0, v3}, Lcom/dexcom/cgm/b/v;-><init>(Lcom/dexcom/cgm/model/Glucose;Lcom/dexcom/cgm/model/CalBounds;Lcom/dexcom/cgm/b/w;)V

    iput-object v2, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    goto :goto_0

    .line 210
    :pswitch_3
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    invoke-static {v0}, Lcom/dexcom/cgm/b/v;->createStopSessionState(Lcom/dexcom/cgm/b/w;)Lcom/dexcom/cgm/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private initializeMetersFromDatabase()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 159
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/w;->isSessionStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/w;->getSessionStartTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 164
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v3, v0, v1}, Lcom/dexcom/cgm/d/a;->getCalibrationRecords(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/dexcom/cgm/b/j;->m_metersFromUser:Ljava/util/ArrayList;

    .line 166
    iput-object v4, p0, Lcom/dexcom/cgm/b/j;->m_newMeter:Lcom/dexcom/cgm/model/Meter;

    .line 167
    iput-object v4, p0, Lcom/dexcom/cgm/b/j;->m_previousMeter:Lcom/dexcom/cgm/model/Meter;

    .line 168
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_metersFromUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_metersFromUser:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_metersFromUser:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Meter;

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_newMeter:Lcom/dexcom/cgm/model/Meter;

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_metersFromUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_metersFromUser:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_metersFromUser:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Meter;

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_previousMeter:Lcom/dexcom/cgm/model/Meter;

    goto :goto_0
.end method

.method private declared-synchronized syncBluetoothDelayedAlertCheck()V
    .locals 3

    .prologue
    .line 911
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 914
    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_txMediator:Lcom/dexcom/cgm/tx/mediator/bh;

    invoke-interface {v1}, Lcom/dexcom/cgm/tx/mediator/bh;->isBluetoothOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 916
    new-instance v1, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->BluetoothRadioOff:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 917
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/j;->dispatchAlerts(Ljava/util/ArrayList;)V

    .line 919
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->updateListenersOnNewData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    :cond_0
    monitor-exit p0

    return-void

    .line 911
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized syncEvBluetoothRadioChange(Lcom/dexcom/cgm/model/enums/BluetoothRadioState;)V
    .locals 3

    .prologue
    .line 863
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 865
    sget-object v1, Lcom/dexcom/cgm/b/k;->b:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/enums/BluetoothRadioState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 882
    :goto_0
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->updateListenersOnNewData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 883
    monitor-exit p0

    return-void

    .line 868
    :pswitch_0
    :try_start_1
    new-instance v1, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->BluetoothRadioOn:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 869
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/j;->dispatchAlerts(Ljava/util/ArrayList;)V

    .line 871
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logBluetoothToggle(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 863
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 874
    :pswitch_1
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logBluetoothToggle(Z)V

    .line 875
    invoke-virtual {p0}, Lcom/dexcom/cgm/b/j;->reScheduleTimer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 865
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized syncEvCoarseLocationPermission(Z)V
    .locals 3

    .prologue
    .line 853
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 854
    if-eqz p1, :cond_0

    new-instance v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->CoarseLocationPermissionOn:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v0, v2}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 857
    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    invoke-direct {p0, v1}, Lcom/dexcom/cgm/b/j;->dispatchAlerts(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 859
    monitor-exit p0

    return-void

    .line 854
    :cond_0
    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->CoarseLocationPermissionOff:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v0, v2}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 853
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized syncEvConnectionError(Lcom/dexcom/cgm/tx/mediator/ao;)V
    .locals 1

    .prologue
    .line 938
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/ao;->isTransmitterUnrecoverableError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->handleTransmitterUnrecoverableError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    :cond_0
    monitor-exit p0

    return-void

    .line 938
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized syncEvConnectionSuccess(Lcom/dexcom/cgm/tx/mediator/aq;)V
    .locals 8

    .prologue
    .line 946
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/aq;->getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v0

    .line 947
    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/aq;->getDeviceRecord()Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    move-result-object v1

    .line 948
    iget-object v2, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v2, v0, v1}, Lcom/dexcom/cgm/d/a;->writeTransmitter(Lcom/dexcom/cgm/model/TransmitterInfo;Lcom/dexcom/cgm/model/BluetoothDeviceRecord;)V

    .line 949
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    .line 950
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getLatestBluetoothDeviceRecord()Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentDeviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    .line 953
    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/aq;->getSessionSignature()Lcom/dexcom/cgm/k/n;

    move-result-object v1

    .line 954
    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/aq;->getTransmitterSyncTime()Lcom/dexcom/cgm/k/m;

    move-result-object v2

    .line 955
    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/aq;->getGlucose()Lcom/dexcom/cgm/model/Glucose;

    move-result-object v3

    .line 956
    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/aq;->getCalBounds()Lcom/dexcom/cgm/model/CalBounds;

    move-result-object v4

    .line 957
    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/aq;->getCommandResponses()Lcom/dexcom/cgm/tx/mediator/p;

    move-result-object v5

    .line 958
    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/aq;->getBackfillGlucose()Ljava/util/List;

    move-result-object v6

    .line 959
    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/aq;->isTransmitterLowBattery()Z

    move-result v7

    move-object v0, p0

    .line 952
    invoke-virtual/range {v0 .. v7}, Lcom/dexcom/cgm/b/j;->receiveConnectionCompleteData(Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/Glucose;Lcom/dexcom/cgm/model/CalBounds;Lcom/dexcom/cgm/tx/mediator/p;Ljava/util/List;Z)V

    .line 961
    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/aq;->getBackfillMinStartTime()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_minBackfillTime:Lcom/dexcom/cgm/k/n;

    .line 966
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_criteriaProvider:Lcom/dexcom/cgm/b/m;

    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-virtual {p0}, Lcom/dexcom/cgm/b/j;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/b/j;->m_minBackfillTime:Lcom/dexcom/cgm/k/n;

    invoke-virtual {v0, v1, v2, v3}, Lcom/dexcom/cgm/b/m;->a(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/n;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    monitor-exit p0

    return-void

    .line 946
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized syncEvIncompatibleTransmitter()V
    .locals 3

    .prologue
    .line 844
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 845
    new-instance v1, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterCompatibility:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 847
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/j;->dispatchAlerts(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    monitor-exit p0

    return-void

    .line 844
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized syncEvInterval()V
    .locals 2

    .prologue
    .line 926
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    invoke-static {}, Lcom/dexcom/cgm/model/TransmitterId;->GetDefaultId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_txMediator:Lcom/dexcom/cgm/tx/mediator/bh;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/bh;->isCommunicationLoopEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_txMediator:Lcom/dexcom/cgm/tx/mediator/bh;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/bh;->enableCommunicationLoop()V

    .line 933
    :cond_0
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->checkForBleTimeOut()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    monitor-exit p0

    return-void

    .line 926
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateListenersOnNewData()V
    .locals 3

    .prologue
    .line 721
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_cgmDataUpdateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/b/i;

    .line 723
    new-instance v2, Lcom/dexcom/cgm/b/u;

    invoke-direct {v2}, Lcom/dexcom/cgm/b/u;-><init>()V

    .line 724
    invoke-interface {v0, v2}, Lcom/dexcom/cgm/b/i;->evCgmData(Lcom/dexcom/cgm/b/u;)V

    goto :goto_0

    .line 726
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized calibrate(ILcom/dexcom/cgm/k/j;)V
    .locals 10

    .prologue
    .line 352
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_newMeter:Lcom/dexcom/cgm/model/Meter;

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_previousMeter:Lcom/dexcom/cgm/model/Meter;

    .line 353
    new-instance v0, Lcom/dexcom/cgm/model/Meter;

    sget-object v1, Lcom/dexcom/cgm/model/enums/MeterEntryType;->UserEntered:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    invoke-virtual {p0}, Lcom/dexcom/cgm/b/j;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v2

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/dexcom/cgm/model/Meter;-><init>(ILcom/dexcom/cgm/model/enums/MeterEntryType;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;)V

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_newMeter:Lcom/dexcom/cgm/model/Meter;

    .line 354
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_metersFromUser:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_newMeter:Lcom/dexcom/cgm/model/Meter;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_newMeter:Lcom/dexcom/cgm/model/Meter;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/d/a;->writeCalibrationRecord(Lcom/dexcom/cgm/model/Meter;)V

    .line 356
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_previousAlgorithmState:Lcom/dexcom/cgm/b/v;

    .line 357
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_previousMeter:Lcom/dexcom/cgm/model/Meter;

    iget-object v2, p0, Lcom/dexcom/cgm/b/j;->m_newMeter:Lcom/dexcom/cgm/model/Meter;

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/b/v;->computeNewLocalAlgorithmState(Lcom/dexcom/cgm/b/v;Lcom/dexcom/cgm/model/Meter;Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    .line 359
    new-instance v1, Lcom/dexcom/cgm/model/Glucose;

    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    .line 360
    invoke-virtual {v0}, Lcom/dexcom/cgm/b/v;->getLocalAlgorithmState()Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v2

    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    .line 361
    invoke-virtual {v0}, Lcom/dexcom/cgm/b/v;->getLocalEgv()I

    move-result v3

    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    .line 362
    invoke-virtual {v0}, Lcom/dexcom/cgm/b/v;->getEgvRecord()Lcom/dexcom/cgm/model/Glucose;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getTrendRate()D

    move-result-wide v4

    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    .line 364
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v7

    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    .line 365
    invoke-virtual {v0}, Lcom/dexcom/cgm/b/v;->getEgvRecord()Lcom/dexcom/cgm/model/Glucose;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getSessionStartTime()Lcom/dexcom/cgm/k/n;

    move-result-object v8

    const/4 v9, 0x1

    move-object v6, p2

    invoke-direct/range {v1 .. v9}, Lcom/dexcom/cgm/model/Glucose;-><init>(Lcom/dexcom/cgm/model/enums/AlgorithmState;IDLcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/n;Z)V

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 368
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/d/a;->writeGlucoseRecords(Ljava/util/List;)V

    .line 370
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_commandHandler:Lcom/dexcom/cgm/b/o;

    invoke-virtual {v0, p2, p1}, Lcom/dexcom/cgm/b/o;->a(Lcom/dexcom/cgm/k/j;I)V

    .line 371
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_alertGenerator:Lcom/dexcom/cgm/b/a;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/a;->a()Ljava/lang/Iterable;

    move-result-object v0

    .line 372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/b/j;->combineAlerts(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 374
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/j;->dispatchAlerts(Ljava/util/ArrayList;)V

    .line 375
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->updateListenersOnNewData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    monitor-exit p0

    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getActiveAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;
    .locals 4

    .prologue
    .line 766
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/b/j;->getAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    .line 767
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isScheduleActive(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/b/j;->getAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    goto :goto_0
.end method

.method public final getActiveAlertSettings()Lcom/dexcom/cgm/model/AlertSettings;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 752
    invoke-virtual {p0, v4}, Lcom/dexcom/cgm/b/j;->getAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    .line 753
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/dexcom/cgm/model/DexAlertSchedule;->isScheduleActive(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    invoke-virtual {p0, v4}, Lcom/dexcom/cgm/b/j;->getAlertSettings(I)Lcom/dexcom/cgm/model/AlertSettings;

    move-result-object v0

    .line 759
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/b/j;->getAlertSettings(I)Lcom/dexcom/cgm/model/AlertSettings;

    move-result-object v0

    goto :goto_0
.end method

.method public final getAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_alertSchedules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    .line 784
    const/4 v0, 0x0

    .line 788
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_alertSchedules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/DexAlertSchedule;

    goto :goto_0
.end method

.method public final declared-synchronized getAlertSettings(I)Lcom/dexcom/cgm/model/AlertSettings;
    .locals 1

    .prologue
    .line 746
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_alertSettings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/AlertSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCgmDataInInterval(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/CgmData;
    .locals 3

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/d/a;->getCgmDataInInterval(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/CgmData;

    move-result-object v0

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmData;->getGlucoseValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Glucose;

    .line 238
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 240
    :cond_0
    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/model/CgmData;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/model/CgmData;-><init>(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized getCurrentDisplayGlucoseRecord()Lcom/dexcom/cgm/model/DisplayGlucose;
    .locals 6

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/b/q;

    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/b/q;-><init>(Lcom/dexcom/cgm/b/w;)V

    .line 259
    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_txMediator:Lcom/dexcom/cgm/tx/mediator/bh;

    invoke-interface {v1}, Lcom/dexcom/cgm/tx/mediator/bh;->isBluetoothOn()Z

    move-result v1

    .line 260
    if-nez v1, :cond_0

    .line 1069
    invoke-static {}, Lcom/dexcom/cgm/model/DisplayGlucose;->createDisplayGlucoseForBluetoothOff()Lcom/dexcom/cgm/model/DisplayGlucose;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1078
    :goto_0
    monitor-exit p0

    return-object v0

    .line 264
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/TransmitterInfo;->isDetailsAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 266
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    .line 1074
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 1075
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/k/j;->subtract(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/k;

    move-result-object v0

    .line 1076
    invoke-virtual {v0}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v2

    sget-object v0, Lcom/dexcom/cgm/b/j;->TimeSpanForPairingFailed:Lcom/dexcom/cgm/k/k;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 1078
    new-instance v0, Lcom/dexcom/cgm/model/DisplayGlucose;

    sget-object v2, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->TransmitterNotFound:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    invoke-direct {v0, v2, v1}, Lcom/dexcom/cgm/model/DisplayGlucose;-><init>(Lcom/dexcom/cgm/model/enums/EGVDisplayState;Lcom/dexcom/cgm/k/j;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1080
    :cond_1
    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/model/DisplayGlucose;

    sget-object v2, Lcom/dexcom/cgm/model/enums/EGVDisplayState;->TransmitterPairing:Lcom/dexcom/cgm/model/enums/EGVDisplayState;

    invoke-direct {v0, v2, v1}, Lcom/dexcom/cgm/model/DisplayGlucose;-><init>(Lcom/dexcom/cgm/model/enums/EGVDisplayState;Lcom/dexcom/cgm/k/j;)V

    goto :goto_0

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    iget-boolean v2, p0, Lcom/dexcom/cgm/b/j;->m_hasTransmitterFailed:Z

    iget-object v3, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/dexcom/cgm/b/q;->a(Lcom/dexcom/cgm/b/v;ZLcom/dexcom/cgm/model/TransmitterInfo;)Lcom/dexcom/cgm/model/DisplayGlucose;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method final getCurrentStateInfo()Lcom/dexcom/cgm/b/v;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    return-object v0
.end method

.method final getDal()Lcom/dexcom/cgm/d/a;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    return-object v0
.end method

.method public final declared-synchronized getKeyValues()Lcom/dexcom/cgm/d/e;
    .locals 1

    .prologue
    .line 578
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getLastCalibration()Lcom/dexcom/cgm/model/Meter;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/v;->getCalBounds()Lcom/dexcom/cgm/model/CalBounds;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 287
    if-nez v1, :cond_1

    .line 301
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 292
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/dexcom/cgm/model/CalBounds;->getLastBg()I

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {v1}, Lcom/dexcom/cgm/model/CalBounds;->getLastCalibrationTime()Lcom/dexcom/cgm/k/m;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 298
    new-instance v0, Lcom/dexcom/cgm/model/Meter;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/CalBounds;->getLastBg()I

    move-result v2

    sget-object v3, Lcom/dexcom/cgm/model/enums/MeterEntryType;->SentToTransmitterResponseUnknown:Lcom/dexcom/cgm/model/enums/MeterEntryType;

    .line 300
    invoke-virtual {v1}, Lcom/dexcom/cgm/model/CalBounds;->getLastCalibrationTime()Lcom/dexcom/cgm/k/m;

    move-result-object v1

    iget-object v4, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    .line 301
    invoke-virtual {v4}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/dexcom/cgm/model/Meter;-><init>(ILcom/dexcom/cgm/model/enums/MeterEntryType;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/TransmitterId;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMetersFromCurrentSession()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Meter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_metersFromUser:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMetersFromUser()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/Meter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 794
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_metersFromUser:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final getPreviousStateInfo()Lcom/dexcom/cgm/b/v;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_previousAlgorithmState:Lcom/dexcom/cgm/b/v;

    return-object v0
.end method

.method public final declared-synchronized getSensorInsertionTime()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/w;->isSessionStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    sget-object v0, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/w;->getSessionStartTime()Lcom/dexcom/cgm/k/j;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    .line 381
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;
    .locals 1

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getUserEvents(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/UserEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/d/a;->getUserEvents(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized hasCompletedSensorWarmUpAtLeastOnce()Z
    .locals 1

    .prologue
    .line 584
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->hasCompletedSensorWarmUpAtLeastOnce()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final reScheduleTimer()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 887
    iget-boolean v0, p0, Lcom/dexcom/cgm/b/j;->m_initialAttempt:Z

    if-eqz v0, :cond_1

    .line 889
    iput-boolean v3, p0, Lcom/dexcom/cgm/b/j;->m_initialAttempt:Z

    .line 895
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Timer;

    const-string v1, "bluetoothAlertTimer"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_timer:Ljava/util/Timer;

    .line 896
    new-instance v0, Lcom/dexcom/cgm/b/n;

    invoke-direct {v0, p0, v3}, Lcom/dexcom/cgm/b/n;-><init>(Lcom/dexcom/cgm/b/j;B)V

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_timerTask:Ljava/util/TimerTask;

    .line 897
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_timerTask:Ljava/util/TimerTask;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 898
    return-void

    .line 891
    :cond_1
    iget-boolean v0, p0, Lcom/dexcom/cgm/b/j;->m_initialAttempt:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    goto :goto_0
.end method

.method public final declared-synchronized receiveConnectionCompleteData(Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/Glucose;Lcom/dexcom/cgm/model/CalBounds;Lcom/dexcom/cgm/tx/mediator/p;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/n;",
            "Lcom/dexcom/cgm/k/m;",
            "Lcom/dexcom/cgm/model/Glucose;",
            "Lcom/dexcom/cgm/model/CalBounds;",
            "Lcom/dexcom/cgm/tx/mediator/p;",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_latestSuccessfulConnectionTime:Lcom/dexcom/cgm/k/j;

    .line 535
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    .line 537
    invoke-virtual {p3}, Lcom/dexcom/cgm/model/Glucose;->getAlgorithmState()Lcom/dexcom/cgm/model/enums/AlgorithmState;

    move-result-object v1

    .line 536
    invoke-virtual {v0, p1, p2, v1, p5}, Lcom/dexcom/cgm/b/w;->checkForSessionChanges(Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/enums/AlgorithmState;Lcom/dexcom/cgm/tx/mediator/p;)Ljava/lang/Iterable;

    move-result-object v0

    .line 538
    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_commandHandler:Lcom/dexcom/cgm/b/o;

    invoke-virtual {v1, p5}, Lcom/dexcom/cgm/b/o;->a(Lcom/dexcom/cgm/tx/mediator/p;)V

    .line 539
    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/w;->isSessionStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dexcom/cgm/b/j;->m_previousMeter:Lcom/dexcom/cgm/model/Meter;

    .line 542
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dexcom/cgm/b/j;->m_newMeter:Lcom/dexcom/cgm/model/Meter;

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    iput-object v1, p0, Lcom/dexcom/cgm/b/j;->m_previousAlgorithmState:Lcom/dexcom/cgm/b/v;

    .line 545
    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    invoke-static {p3, p4, v1}, Lcom/dexcom/cgm/b/v;->getLocalStateFromTransmitterInfo(Lcom/dexcom/cgm/model/Glucose;Lcom/dexcom/cgm/model/CalBounds;Lcom/dexcom/cgm/b/w;)Lcom/dexcom/cgm/b/v;

    move-result-object v1

    iput-object v1, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    .line 547
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 548
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-interface {v1, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 550
    iget-object v2, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v2, v1}, Lcom/dexcom/cgm/d/a;->writeGlucoseRecords(Ljava/util/List;)V

    .line 551
    if-eqz p4, :cond_1

    .line 553
    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v1, p4}, Lcom/dexcom/cgm/d/a;->writeCalBoundsRecord(Lcom/dexcom/cgm/model/CalBounds;)V

    .line 555
    :cond_1
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->updateListenersOnNewData()V

    .line 556
    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_alertGenerator:Lcom/dexcom/cgm/b/a;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/a;->a()Ljava/lang/Iterable;

    move-result-object v1

    .line 558
    invoke-direct {p0, v1, v0}, Lcom/dexcom/cgm/b/j;->combineAlerts(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 559
    new-instance v1, Lcom/dexcom/cgm/b/z;

    iget-object v2, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/b/z;-><init>(Lcom/dexcom/cgm/model/TransmitterInfo;)V

    .line 561
    invoke-virtual {p0}, Lcom/dexcom/cgm/b/j;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v2

    .line 560
    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/b/z;->a(Lcom/dexcom/cgm/d/e;)Ljava/util/ArrayList;

    move-result-object v1

    .line 562
    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/b/j;->combineAlerts(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 563
    if-eqz p7, :cond_2

    .line 565
    new-instance v1, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->TransmitterLowBattery:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 567
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_2
    new-instance v1, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->PacketReceived:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 571
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/j;->dispatchAlerts(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    monitor-exit p0

    return-void

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized registerAlertSettingsUpdateCallback(Lcom/dexcom/cgm/b/g;)V
    .locals 1

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_alertSettingsUpdateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-void

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized registerCgmAlertUpdateCallback(Lcom/dexcom/cgm/b/h;)V
    .locals 1

    .prologue
    .line 482
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_alertCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    monitor-exit p0

    return-void

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized registerCgmDataUpdateCallback(Lcom/dexcom/cgm/b/i;)V
    .locals 1

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_cgmDataUpdateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final reloadCurrentDeviceRecord()V
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getLatestBluetoothDeviceRecord()Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentDeviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    .line 1001
    return-void
.end method

.method public final resetAlertSettings()V
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->resetAlertSettings()V

    .line 1007
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getAlertSchedules()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_alertSchedules:Ljava/util/List;

    .line 1008
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getAlertSettings()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_alertSettings:Ljava/util/List;

    .line 1009
    return-void
.end method

.method public final declared-synchronized setTransmitterId(Lcom/dexcom/cgm/model/TransmitterId;)V
    .locals 4

    .prologue
    .line 387
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/model/TransmitterId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->isDetailsAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    :goto_0
    monitor-exit p0

    return-void

    .line 398
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->inactivateAlerts()V

    .line 399
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_commandHandler:Lcom/dexcom/cgm/b/o;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/o;->b()V

    .line 402
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/w;->onTransmitterIdChanged()V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_previousMeter:Lcom/dexcom/cgm/model/Meter;

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_newMeter:Lcom/dexcom/cgm/model/Meter;

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/b/j;->m_hasTransmitterFailed:Z

    .line 406
    sget-object v0, Lcom/dexcom/cgm/k/j;->Min:Lcom/dexcom/cgm/k/j;

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_latestSuccessfulConnectionTime:Lcom/dexcom/cgm/k/j;

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_metersFromUser:Ljava/util/ArrayList;

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_previousAlgorithmState:Lcom/dexcom/cgm/b/v;

    .line 409
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    .line 410
    invoke-static {v0}, Lcom/dexcom/cgm/b/v;->createStopSessionState(Lcom/dexcom/cgm/b/w;)Lcom/dexcom/cgm/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    .line 412
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 413
    new-instance v1, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    invoke-direct {v1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;-><init>()V

    .line 414
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setSystemTime(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v1

    .line 415
    invoke-virtual {v1, p1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setTransmitterId(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->build()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v1

    .line 418
    new-instance v2, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    invoke-direct {v2}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;-><init>()V

    .line 419
    invoke-virtual {v2, v0}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->setRecordSystemTime(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    move-result-object v0

    .line 420
    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->setTransmitterId(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/BluetoothDeviceRecord$Builder;->build()Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    move-result-object v0

    .line 423
    iget-object v2, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v2, v1, v0}, Lcom/dexcom/cgm/d/a;->writeTransmitter(Lcom/dexcom/cgm/model/TransmitterInfo;Lcom/dexcom/cgm/model/BluetoothDeviceRecord;)V

    .line 424
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    .line 425
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getLatestBluetoothDeviceRecord()Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentDeviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    .line 426
    sget-object v0, Lcom/dexcom/cgm/k/n;->Zero:Lcom/dexcom/cgm/k/n;

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_minBackfillTime:Lcom/dexcom/cgm/k/n;

    .line 427
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_criteriaProvider:Lcom/dexcom/cgm/b/m;

    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-virtual {p0}, Lcom/dexcom/cgm/b/j;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/b/j;->m_minBackfillTime:Lcom/dexcom/cgm/k/n;

    invoke-virtual {v0, v1, v2, v3}, Lcom/dexcom/cgm/b/m;->a(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/n;)V

    .line 429
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_txMediator:Lcom/dexcom/cgm/tx/mediator/bh;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/bh;->disableCommunicationLoop()V

    .line 430
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_txMediator:Lcom/dexcom/cgm/tx/mediator/bh;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/bh;->enableCommunicationLoop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setUserEvent(Lcom/dexcom/cgm/model/UserEvent;)V
    .locals 1

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/d/a;->writeUserEventRecord(Lcom/dexcom/cgm/model/UserEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    monitor-exit p0

    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized startSensor(Lcom/dexcom/cgm/k/j;)V
    .locals 2

    .prologue
    .line 313
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/b/w;->startSensor(Lcom/dexcom/cgm/k/j;)V

    .line 314
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_commandHandler:Lcom/dexcom/cgm/b/o;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/b/o;->a(Lcom/dexcom/cgm/k/j;)V

    .line 315
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_metersFromUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 316
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    .line 317
    invoke-static {v0}, Lcom/dexcom/cgm/b/v;->createStartSessionState(Lcom/dexcom/cgm/b/w;)Lcom/dexcom/cgm/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    .line 318
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-static {}, Lcom/dexcom/cgm/model/CalBounds;->getDefault()Lcom/dexcom/cgm/model/CalBounds;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/d/a;->writeCalBoundsRecord(Lcom/dexcom/cgm/model/CalBounds;)V

    .line 319
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->checkForLastSensorSession()V

    .line 320
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->updateListenersOnNewData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized startServices()V
    .locals 2

    .prologue
    .line 510
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentDeviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentTransmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    invoke-static {}, Lcom/dexcom/cgm/model/TransmitterId;->GetDefaultId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterId;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 517
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_txMediator:Lcom/dexcom/cgm/tx/mediator/bh;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/bh;->isCommunicationLoopEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_txMediator:Lcom/dexcom/cgm/tx/mediator/bh;

    invoke-interface {v0}, Lcom/dexcom/cgm/tx/mediator/bh;->enableCommunicationLoop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stopSensor(Lcom/dexcom/cgm/k/j;)V
    .locals 2

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/b/w;->stopSensor(Lcom/dexcom/cgm/k/j;)V

    .line 335
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_commandHandler:Lcom/dexcom/cgm/b/o;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/b/o;->b(Lcom/dexcom/cgm/k/j;)V

    .line 336
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_sensorSessionTracker:Lcom/dexcom/cgm/b/w;

    .line 337
    invoke-static {v0}, Lcom/dexcom/cgm/b/v;->createStopSessionState(Lcom/dexcom/cgm/b/w;)Lcom/dexcom/cgm/b/v;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_currentAlgorithmState:Lcom/dexcom/cgm/b/v;

    .line 338
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-static {}, Lcom/dexcom/cgm/model/CalBounds;->getDefault()Lcom/dexcom/cgm/model/CalBounds;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/d/a;->writeCalBoundsRecord(Lcom/dexcom/cgm/model/CalBounds;)V

    .line 339
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_metersFromUser:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 340
    invoke-direct {p0}, Lcom/dexcom/cgm/b/j;->updateListenersOnNewData()V

    .line 342
    new-instance v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorRemoved:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 345
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-direct {p0, v1}, Lcom/dexcom/cgm/b/j;->dispatchAlerts(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized teardown()V
    .locals 2

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_txMediator:Lcom/dexcom/cgm/tx/mediator/bh;

    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_communicationCallback:Lcom/dexcom/cgm/tx/mediator/aa;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/tx/mediator/bh;->unregisterCommunicationCallback(Lcom/dexcom/cgm/tx/mediator/aa;)V

    .line 228
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_intervalSource:Lcom/dexcom/cgm/k/c;

    iget-object v1, p0, Lcom/dexcom/cgm/b/j;->m_communicationCallback:Lcom/dexcom/cgm/tx/mediator/aa;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/k/c;->unregisterIntervalListener(Lcom/dexcom/cgm/k/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized unregisterAlertSettingsUpdateCallback(Lcom/dexcom/cgm/b/g;)V
    .locals 1

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_alertSettingsUpdateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    monitor-exit p0

    return-void

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized unregisterCgmAlertUpdateCallback(Lcom/dexcom/cgm/b/h;)V
    .locals 1

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_alertCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    monitor-exit p0

    return-void

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized unregisterCgmDataUpdateCallback(Lcom/dexcom/cgm/b/i;)V
    .locals 1

    .prologue
    .line 476
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_cgmDataUpdateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    monitor-exit p0

    return-void

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized updateAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V
    .locals 1

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/d/a;->writeAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 464
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getAlertSchedules()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_alertSchedules:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    monitor-exit p0

    return-void

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized updateAlertSettings(Lcom/dexcom/cgm/model/UserAlertProperties;)V
    .locals 3

    .prologue
    .line 451
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/d/a;->writeOrUpdateAlertSettingsRecord(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 452
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_alertSettingsUpdateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/b/g;

    .line 454
    new-instance v2, Lcom/dexcom/cgm/b/s;

    invoke-direct {v2, p1}, Lcom/dexcom/cgm/b/s;-><init>(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 455
    invoke-interface {v0, v2}, Lcom/dexcom/cgm/b/g;->evAlertSettingsData(Lcom/dexcom/cgm/b/s;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 457
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/dexcom/cgm/b/j;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getAlertSettings()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/j;->m_alertSettings:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    monitor-exit p0

    return-void
.end method
