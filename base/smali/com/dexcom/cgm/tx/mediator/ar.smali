.class public final Lcom/dexcom/cgm/tx/mediator/ar;
.super Ljava/lang/Object;
.source "EvConnectionSuccess.java"


# instance fields
.field private m_backfillGlucose:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;"
        }
    .end annotation
.end field

.field private m_backfillMinStartTime:Lcom/dexcom/cgm/k/n;

.field private m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

.field private m_commandResponses:Lcom/dexcom/cgm/tx/mediator/p;

.field private m_deviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

.field private m_glucose:Lcom/dexcom/cgm/model/Glucose;

.field private m_isTransmitterLowBattery:Z

.field private m_sessionSignature:Lcom/dexcom/cgm/k/n;

.field private m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

.field private m_transmitterSyncTime:Lcom/dexcom/cgm/k/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/dexcom/cgm/tx/mediator/aq;
    .locals 12

    .prologue
    .line 201
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_backfillGlucose:Ljava/util/List;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_backfillGlucose:Ljava/util/List;

    .line 205
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/aq;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_deviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_transmitterSyncTime:Lcom/dexcom/cgm/k/m;

    iget-object v4, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_sessionSignature:Lcom/dexcom/cgm/k/n;

    iget-object v5, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_glucose:Lcom/dexcom/cgm/model/Glucose;

    iget-object v6, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

    iget-object v7, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_commandResponses:Lcom/dexcom/cgm/tx/mediator/p;

    iget-object v8, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_backfillGlucose:Ljava/util/List;

    iget-object v9, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_backfillMinStartTime:Lcom/dexcom/cgm/k/n;

    iget-boolean v10, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_isTransmitterLowBattery:Z

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/dexcom/cgm/tx/mediator/aq;-><init>(Lcom/dexcom/cgm/model/TransmitterInfo;Lcom/dexcom/cgm/model/BluetoothDeviceRecord;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/Glucose;Lcom/dexcom/cgm/model/CalBounds;Lcom/dexcom/cgm/tx/mediator/p;Ljava/util/List;Lcom/dexcom/cgm/k/n;ZLcom/dexcom/cgm/tx/mediator/b;)V

    return-object v0
.end method

.method public final setBackfillGlucose(Ljava/util/List;)Lcom/dexcom/cgm/tx/mediator/ar;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;)",
            "Lcom/dexcom/cgm/tx/mediator/ar;"
        }
    .end annotation

    .prologue
    .line 183
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_backfillGlucose:Ljava/util/List;

    .line 184
    return-object p0
.end method

.method public final setBackfillMinStartTime(Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/tx/mediator/ar;
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_backfillMinStartTime:Lcom/dexcom/cgm/k/n;

    .line 190
    return-object p0
.end method

.method public final setCalBounds(Lcom/dexcom/cgm/model/CalBounds;)Lcom/dexcom/cgm/tx/mediator/ar;
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_calBounds:Lcom/dexcom/cgm/model/CalBounds;

    .line 172
    return-object p0
.end method

.method public final setCommandResponses(Lcom/dexcom/cgm/tx/mediator/p;)Lcom/dexcom/cgm/tx/mediator/ar;
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_commandResponses:Lcom/dexcom/cgm/tx/mediator/p;

    .line 178
    return-object p0
.end method

.method public final setDeviceRecord(Lcom/dexcom/cgm/model/BluetoothDeviceRecord;)Lcom/dexcom/cgm/tx/mediator/ar;
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_deviceRecord:Lcom/dexcom/cgm/model/BluetoothDeviceRecord;

    .line 148
    return-object p0
.end method

.method public final setGlucose(Lcom/dexcom/cgm/model/Glucose;)Lcom/dexcom/cgm/tx/mediator/ar;
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_glucose:Lcom/dexcom/cgm/model/Glucose;

    .line 166
    return-object p0
.end method

.method public final setIsTransmitterLowBattery(Z)Lcom/dexcom/cgm/tx/mediator/ar;
    .locals 0

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_isTransmitterLowBattery:Z

    .line 196
    return-object p0
.end method

.method public final setSessionSignature(Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/tx/mediator/ar;
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_sessionSignature:Lcom/dexcom/cgm/k/n;

    .line 160
    return-object p0
.end method

.method public final setTransmitterInfo(Lcom/dexcom/cgm/model/TransmitterInfo;)Lcom/dexcom/cgm/tx/mediator/ar;
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    .line 142
    return-object p0
.end method

.method public final setTransmitterSyncTime(Lcom/dexcom/cgm/k/m;)Lcom/dexcom/cgm/tx/mediator/ar;
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ar;->m_transmitterSyncTime:Lcom/dexcom/cgm/k/m;

    .line 154
    return-object p0
.end method
