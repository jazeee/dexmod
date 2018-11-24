.class public final Lcom/dexcom/cgm/tx/mediator/aq;
.super Ljava/lang/Object;
.source "EvConnectionSuccess.java"


# instance fields
.field private final m_backfillGlucose:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation
.end field

.field private final m_backfillMinStartTime:Lcom/dexcom/cgm/k/n;

.field private final m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

.field private final m_commandResponses:Lcom/dexcom/cgm/tx/mediator/p;

.field private final m_deviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

.field private final m_glucose:Lcom/dexcom/cgm/model/Glucose;

.field private final m_isTransmitterLowBattery:Z

.field private final m_sessionSignature:Lcom/dexcom/cgm/k/n;

.field private final m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

.field private final m_transmitterSyncTime:Lcom/dexcom/cgm/k/m;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/model/TransmitterInfo;Lcom/dexcom/cgm/model/BluetoothDeviceRecord;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/Glucose;Lcom/dexcom/cgm/model/CalBounds;Lcom/dexcom/cgm/tx/mediator/p;Ljava/util/List;Lcom/dexcom/cgm/k/n;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/model/TransmitterInfo;",
            "Lcom/dexcom/cgm/model/BluetoothDeviceRecord;",
            "Lcom/dexcom/cgm/k/m;",
            "Lcom/dexcom/cgm/k/n;",
            "Lcom/dexcom/cgm/model/Glucose;",
            "Lcom/dexcom/cgm/model/CalBounds;",
            "Lcom/dexcom/cgm/tx/mediator/p;",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;",
            "Lcom/dexcom/cgm/k/n;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    .line 46
    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_deviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    .line 47
    iput-object p3, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_transmitterSyncTime:Lcom/dexcom/cgm/k/m;

    .line 48
    iput-object p4, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_sessionSignature:Lcom/dexcom/cgm/k/n;

    .line 49
    iput-object p5, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_glucose:Lcom/dexcom/cgm/model/Glucose;

    .line 50
    iput-object p6, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

    .line 51
    iput-object p7, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_commandResponses:Lcom/dexcom/cgm/tx/mediator/p;

    .line 52
    iput-object p8, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_backfillGlucose:Ljava/util/List;

    .line 53
    iput-object p9, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_backfillMinStartTime:Lcom/dexcom/cgm/k/n;

    .line 54
    iput-boolean p10, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_isTransmitterLowBattery:Z

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/model/TransmitterInfo;Lcom/dexcom/cgm/model/BluetoothDeviceRecord;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/Glucose;Lcom/dexcom/cgm/model/CalBounds;Lcom/dexcom/cgm/tx/mediator/p;Ljava/util/List;Lcom/dexcom/cgm/k/n;ZLcom/dexcom/cgm/tx/mediator/b;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p10}, Lcom/dexcom/cgm/tx/mediator/aq;-><init>(Lcom/dexcom/cgm/model/TransmitterInfo;Lcom/dexcom/cgm/model/BluetoothDeviceRecord;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/Glucose;Lcom/dexcom/cgm/model/CalBounds;Lcom/dexcom/cgm/tx/mediator/p;Ljava/util/List;Lcom/dexcom/cgm/k/n;Z)V

    return-void
.end method


# virtual methods
.method public final getBackfillGlucose()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_backfillGlucose:Ljava/util/List;

    return-object v0
.end method

.method public final getBackfillMinStartTime()Lcom/dexcom/cgm/k/n;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_backfillMinStartTime:Lcom/dexcom/cgm/k/n;

    return-object v0
.end method

.method public final getCalBounds()Lcom/dexcom/cgm/model/CalBounds;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

    return-object v0
.end method

.method public final getCommandResponses()Lcom/dexcom/cgm/tx/mediator/p;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_commandResponses:Lcom/dexcom/cgm/tx/mediator/p;

    return-object v0
.end method

.method public final getDeviceRecord()Lcom/dexcom/cgm/model/BluetoothDeviceRecord;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_deviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    return-object v0
.end method

.method public final getGlucose()Lcom/dexcom/cgm/model/Glucose;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_glucose:Lcom/dexcom/cgm/model/Glucose;

    return-object v0
.end method

.method public final getSessionSignature()Lcom/dexcom/cgm/k/n;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_sessionSignature:Lcom/dexcom/cgm/k/n;

    return-object v0
.end method

.method public final getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    return-object v0
.end method

.method public final getTransmitterSyncTime()Lcom/dexcom/cgm/k/m;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_transmitterSyncTime:Lcom/dexcom/cgm/k/m;

    return-object v0
.end method

.method public final isTransmitterLowBattery()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_isTransmitterLowBattery:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{connectionSyncTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_transmitterSyncTime:Lcom/dexcom/cgm/k/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionSignature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_sessionSignature:Lcom/dexcom/cgm/k/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transmitterInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_deviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", glucose="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_glucose:Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", calBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", commandResponses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_commandResponses:Lcom/dexcom/cgm/tx/mediator/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTransmitterLowBattery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dexcom/cgm/tx/mediator/aq;->m_isTransmitterLowBattery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
