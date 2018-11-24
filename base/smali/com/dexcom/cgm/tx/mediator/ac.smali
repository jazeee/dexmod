.class public final Lcom/dexcom/cgm/tx/mediator/ac;
.super Ljava/lang/Object;
.source "ConnectData.java"


# static fields
.field static final INVALID_REQUEST_LENGTH:I = -0x1

.field static final INVALID_REQUEST_START_TIME:J = -0x1L


# instance fields
.field private m_advertisingSync:Lcom/dexcom/cgm/tx/a/b;

.field private m_appAuthenticationPrimaryKey:Ljava/lang/String;

.field private m_appAuthenticationSecondaryKey:Ljava/lang/String;

.field private m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

.field private final m_backfillCriteria:Lcom/dexcom/cgm/tx/mediator/h;

.field private m_backfillMinStartTime:Lcom/dexcom/cgm/k/n;

.field m_backfillRequestLength:J

.field m_backfillRequestStartTime:J

.field private m_backfillStream:Lcom/dexcom/cgm/tx/mediator/al;

.field private m_calBoundsResponse:Lcom/dexcom/cgm/tx/a/h;

.field private final m_commandResponses:Lcom/dexcom/cgm/tx/mediator/q;

.field private m_connectStep:Lcom/dexcom/cgm/tx/mediator/ad;

.field private final m_connectTimestamp:Lcom/dexcom/cgm/k/g;

.field private m_connectionLog:Ljava/lang/StringBuilder;

.field private final m_deviceAddress:Ljava/lang/String;

.field private m_disconnectStatus:I

.field private m_disconnectTimestamp:Lcom/dexcom/cgm/k/g;

.field private m_egvResponse:Lcom/dexcom/cgm/tx/a/l;

.field private m_failure:Ljava/lang/String;

.field private m_failureException:Ljava/lang/Throwable;

.field private m_firmwareVersionResponse:Lcom/dexcom/cgm/tx/a/m;

.field private m_rssi:I

.field private m_sessionSignature:Lcom/dexcom/cgm/k/n;

.field private final m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

.field private m_transmitterStatusCode:B

.field private m_transmitterSyncTime:Lcom/dexcom/cgm/k/m;

.field private m_transmitterVersionExtendedResponse:Lcom/dexcom/cgm/tx/a/p;

.field private m_transmitterVersionResponse:Lcom/dexcom/cgm/tx/a/q;

.field private m_txBatteryStatusResponse:Lcom/dexcom/cgm/tx/a/r;

.field private m_warnings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/k/g;Ljava/lang/String;Lcom/dexcom/cgm/model/TransmitterInfo;Ljava/util/List;Lcom/dexcom/cgm/tx/mediator/h;Ljava/lang/String;Ljava/lang/String;Lcom/dexcom/cgm/k/j;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/g;",
            "Ljava/lang/String;",
            "Lcom/dexcom/cgm/model/TransmitterInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;",
            "Lcom/dexcom/cgm/tx/mediator/h;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dexcom/cgm/k/j;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_disconnectTimestamp:Lcom/dexcom/cgm/k/g;

    .line 45
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->ConnectStart:Lcom/dexcom/cgm/tx/mediator/ad;

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_connectStep:Lcom/dexcom/cgm/tx/mediator/ad;

    .line 46
    const/16 v0, 0xff

    iput v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_disconnectStatus:I

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_failure:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_failureException:Ljava/lang/Throwable;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_warnings:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_connectionLog:Ljava/lang/StringBuilder;

    .line 52
    iput-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    .line 57
    iput-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_egvResponse:Lcom/dexcom/cgm/tx/a/l;

    .line 65
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_rssi:I

    .line 66
    iput-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_backfillStream:Lcom/dexcom/cgm/tx/mediator/al;

    .line 83
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_connectTimestamp:Lcom/dexcom/cgm/k/g;

    .line 84
    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_deviceAddress:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    .line 86
    new-instance v0, Lcom/dexcom/cgm/tx/mediator/q;

    invoke-direct {v0, p4}, Lcom/dexcom/cgm/tx/mediator/q;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_commandResponses:Lcom/dexcom/cgm/tx/mediator/q;

    .line 87
    iput-object p5, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_backfillCriteria:Lcom/dexcom/cgm/tx/mediator/h;

    .line 88
    iput-object p6, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    .line 89
    iput-object p7, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    .line 90
    iput-object p8, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    .line 92
    invoke-virtual {p5}, Lcom/dexcom/cgm/tx/mediator/h;->getMinStartTime()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_backfillMinStartTime:Lcom/dexcom/cgm/k/n;

    .line 93
    iput-wide v2, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_backfillRequestStartTime:J

    .line 94
    iput-wide v2, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_backfillRequestLength:J

    .line 95
    return-void
.end method

.method private isTransmitterInfoDetailsResponseAvailable()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_transmitterSyncTime:Lcom/dexcom/cgm/k/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_transmitterVersionResponse:Lcom/dexcom/cgm/tx/a/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_firmwareVersionResponse:Lcom/dexcom/cgm/tx/a/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_transmitterVersionExtendedResponse:Lcom/dexcom/cgm/tx/a/p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final addWarning(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 330
    const-string v0, "TransmitterBLE"

    invoke-static {v0, p1}, Lcom/dexcom/cgm/f/b;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_warnings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    return-void
.end method

.method public final getAdvertisingSync()Lcom/dexcom/cgm/tx/a/b;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_advertisingSync:Lcom/dexcom/cgm/tx/a/b;

    return-object v0
.end method

.method public final getAppAuthenticationPrimaryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppAuthenticationSecondaryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppAuthenticationTimestamp()Lcom/dexcom/cgm/k/j;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    return-object v0
.end method

.method public final getBackfillCriteria()Lcom/dexcom/cgm/tx/mediator/h;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_backfillCriteria:Lcom/dexcom/cgm/tx/mediator/h;

    return-object v0
.end method

.method public final getBackfillMinStartTime()Lcom/dexcom/cgm/k/n;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_backfillMinStartTime:Lcom/dexcom/cgm/k/n;

    return-object v0
.end method

.method public final getBackfillRequestLength()J
    .locals 2

    .prologue
    .line 458
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_backfillRequestLength:J

    return-wide v0
.end method

.method public final getBackfillRequestStartTime()J
    .locals 2

    .prologue
    .line 455
    iget-wide v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_backfillRequestStartTime:J

    return-wide v0
.end method

.method public final getBackfillStream()Lcom/dexcom/cgm/tx/mediator/al;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_backfillStream:Lcom/dexcom/cgm/tx/mediator/al;

    return-object v0
.end method

.method public final getCalBoundsResponse()Lcom/dexcom/cgm/tx/a/h;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_calBoundsResponse:Lcom/dexcom/cgm/tx/a/h;

    return-object v0
.end method

.method public final getCgmCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/CgmCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_commandResponses:Lcom/dexcom/cgm/tx/mediator/q;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/q;->getCommandRequests()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getCommandResponses()Lcom/dexcom/cgm/tx/mediator/p;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_commandResponses:Lcom/dexcom/cgm/tx/mediator/q;

    return-object v0
.end method

.method public final getConnectStep()Lcom/dexcom/cgm/tx/mediator/ad;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_connectStep:Lcom/dexcom/cgm/tx/mediator/ad;

    return-object v0
.end method

.method public final getConnectTimestamp()Lcom/dexcom/cgm/k/g;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_connectTimestamp:Lcom/dexcom/cgm/k/g;

    return-object v0
.end method

.method public final getConnectionLog()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_connectionLog:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDeviceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_deviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisconnectStatus()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_disconnectStatus:I

    return v0
.end method

.method public final getDisconnectTimestamp()Lcom/dexcom/cgm/k/g;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_disconnectTimestamp:Lcom/dexcom/cgm/k/g;

    return-object v0
.end method

.method public final getEgvResponse()Lcom/dexcom/cgm/tx/a/l;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_egvResponse:Lcom/dexcom/cgm/tx/a/l;

    return-object v0
.end method

.method public final getFailure()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_failure:Ljava/lang/String;

    return-object v0
.end method

.method public final getFailureException()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_failureException:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getRssi()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_rssi:I

    return v0
.end method

.method public final getSessionSignature()Lcom/dexcom/cgm/k/n;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_sessionSignature:Lcom/dexcom/cgm/k/n;

    return-object v0
.end method

.method public final getTransmitterBattery()Lcom/dexcom/cgm/model/TransmitterBattery;
    .locals 6

    .prologue
    .line 432
    const/4 v0, 0x0

    .line 433
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_txBatteryStatusResponse:Lcom/dexcom/cgm/tx/a/r;

    if-eqz v1, :cond_0

    .line 435
    new-instance v0, Lcom/dexcom/cgm/model/TransmitterBattery;

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_txBatteryStatusResponse:Lcom/dexcom/cgm/tx/a/r;

    .line 436
    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/a/r;->getStaticVoltage()I

    move-result v1

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_txBatteryStatusResponse:Lcom/dexcom/cgm/tx/a/r;

    .line 437
    invoke-virtual {v2}, Lcom/dexcom/cgm/tx/a/r;->getDynamicVoltage()I

    move-result v2

    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_txBatteryStatusResponse:Lcom/dexcom/cgm/tx/a/r;

    .line 438
    invoke-virtual {v3}, Lcom/dexcom/cgm/tx/a/r;->getTemperature()I

    move-result v3

    iget-object v4, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_txBatteryStatusResponse:Lcom/dexcom/cgm/tx/a/r;

    .line 439
    invoke-virtual {v4}, Lcom/dexcom/cgm/tx/a/r;->getBatteryResistance()I

    move-result v4

    iget-object v5, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_txBatteryStatusResponse:Lcom/dexcom/cgm/tx/a/r;

    .line 440
    invoke-virtual {v5}, Lcom/dexcom/cgm/tx/a/r;->getRunTime()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/model/TransmitterBattery;-><init>(IIIII)V

    .line 442
    :cond_0
    return-object v0
.end method

.method public final getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    return-object v0
.end method

.method public final getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;
    .locals 5

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ac;->isTransmitterInfoDetailsResponseAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_transmitterVersionResponse:Lcom/dexcom/cgm/tx/a/q;

    .line 369
    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_firmwareVersionResponse:Lcom/dexcom/cgm/tx/a/m;

    .line 370
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_transmitterVersionExtendedResponse:Lcom/dexcom/cgm/tx/a/p;

    .line 371
    iget-object v3, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    .line 374
    invoke-virtual {v3}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v3

    iget-object v4, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_transmitterSyncTime:Lcom/dexcom/cgm/k/m;

    .line 373
    invoke-static {v3, v4, v0, v2, v1}, Lcom/dexcom/cgm/appcompatability/webservice/b;->create(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/tx/a/q;Lcom/dexcom/cgm/tx/a/p;Lcom/dexcom/cgm/tx/a/m;)Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v0

    .line 384
    :goto_0
    return-object v0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    goto :goto_0
.end method

.method public final getTransmitterStatusCode()B
    .locals 1

    .prologue
    .line 422
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_transmitterStatusCode:B

    return v0
.end method

.method public final getTransmitterSyncTime()Lcom/dexcom/cgm/k/m;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_transmitterSyncTime:Lcom/dexcom/cgm/k/m;

    return-object v0
.end method

.method public final getWarnings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_warnings:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final isAppAuthenticationKeyExchangeRequired(Lcom/dexcom/cgm/k/j;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 139
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 151
    :cond_1
    :goto_0
    return v0

    .line 147
    :cond_2
    invoke-virtual {p1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    .line 148
    iget-object v2, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v6

    .line 149
    const-wide/32 v2, 0x15180

    add-long/2addr v2, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    move v3, v1

    .line 150
    :goto_1
    cmp-long v2, v6, v4

    if-lez v2, :cond_5

    move v2, v1

    .line 151
    :goto_2
    if-nez v3, :cond_3

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v3, v0

    .line 149
    goto :goto_1

    :cond_5
    move v2, v0

    .line 150
    goto :goto_2
.end method

.method public final isConnectSuccess()Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_egvResponse:Lcom/dexcom/cgm/tx/a/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isImmediateScanValid()Z
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/dexcom/cgm/tx/mediator/ad;->AuthenticationEnd:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/ad;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_connectStep:Lcom/dexcom/cgm/tx/mediator/ad;

    invoke-virtual {v1}, Lcom/dexcom/cgm/tx/mediator/ad;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isTransmitterInfoDetailsAvailable()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_transmitterInfo:Lcom/dexcom/cgm/model/TransmitterInfo;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->isDetailsAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/dexcom/cgm/tx/mediator/ac;->isTransmitterInfoDetailsResponseAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final log(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 336
    const-string v0, "TransmitterBLE"

    invoke-static {v0, p1}, Lcom/dexcom/cgm/f/b;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_connectionLog:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_connectionLog:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_connectionLog:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    return-void
.end method

.method public final setAdvertisingSync(Lcom/dexcom/cgm/tx/a/b;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_advertisingSync:Lcom/dexcom/cgm/tx/a/b;

    .line 278
    return-void
.end method

.method public final setAppAuthenticationPrimaryKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_appAuthenticationPrimaryKey:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public final setAppAuthenticationSecondaryKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_appAuthenticationSecondaryKey:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public final setAppAuthenticationTimestamp(Lcom/dexcom/cgm/k/j;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_appAuthenticationTimestamp:Lcom/dexcom/cgm/k/j;

    .line 167
    return-void
.end method

.method public final setBackfillMinStartTime(Lcom/dexcom/cgm/k/n;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_backfillMinStartTime:Lcom/dexcom/cgm/k/n;

    .line 453
    return-void
.end method

.method public final setBackfillRequestLength(J)V
    .locals 1

    .prologue
    .line 459
    iput-wide p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_backfillRequestLength:J

    return-void
.end method

.method public final setBackfillRequestStartTime(J)V
    .locals 1

    .prologue
    .line 456
    iput-wide p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_backfillRequestStartTime:J

    return-void
.end method

.method public final setBackfillStream(Lcom/dexcom/cgm/tx/mediator/al;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_backfillStream:Lcom/dexcom/cgm/tx/mediator/al;

    .line 448
    return-void
.end method

.method public final setCalBoundsResponse(Lcom/dexcom/cgm/tx/a/h;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_calBoundsResponse:Lcom/dexcom/cgm/tx/a/h;

    .line 298
    return-void
.end method

.method public final setCommandResponse(Lcom/dexcom/cgm/tx/mediator/bb;)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_commandResponses:Lcom/dexcom/cgm/tx/mediator/q;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/q;->setResponse(Lcom/dexcom/cgm/tx/mediator/bb;)V

    .line 303
    return-void
.end method

.method public final setCommandResponse(Lcom/dexcom/cgm/tx/mediator/bc;)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_commandResponses:Lcom/dexcom/cgm/tx/mediator/q;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/q;->setResponse(Lcom/dexcom/cgm/tx/mediator/bc;)V

    .line 308
    return-void
.end method

.method public final setCommandResponse(Lcom/dexcom/cgm/tx/mediator/o;)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_commandResponses:Lcom/dexcom/cgm/tx/mediator/q;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/tx/mediator/q;->setResponse(Lcom/dexcom/cgm/tx/mediator/o;)V

    .line 313
    return-void
.end method

.method public final setConnectStep(Lcom/dexcom/cgm/tx/mediator/ad;)V
    .locals 3

    .prologue
    .line 261
    const-string v0, "TransmitterBLE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "- step: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dexcom/cgm/tx/mediator/ad;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_connectStep:Lcom/dexcom/cgm/tx/mediator/ad;

    .line 263
    return-void
.end method

.method public final setDisconnectStatus(I)V
    .locals 0

    .prologue
    .line 256
    iput p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_disconnectStatus:I

    .line 257
    return-void
.end method

.method public final setDisconnectTimestamp(Lcom/dexcom/cgm/k/g;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_disconnectTimestamp:Lcom/dexcom/cgm/k/g;

    .line 252
    return-void
.end method

.method public final setEgvResponse(Lcom/dexcom/cgm/tx/a/l;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_egvResponse:Lcom/dexcom/cgm/tx/a/l;

    .line 293
    return-void
.end method

.method public final setFailure(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 317
    const-string v0, "TransmitterBLE"

    invoke-static {v0, p1}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_failure:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public final setFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 323
    const-string v0, "TransmitterBLE"

    invoke-static {v0, p1, p2}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_failure:Ljava/lang/String;

    .line 325
    iput-object p2, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_failureException:Ljava/lang/Throwable;

    .line 326
    return-void
.end method

.method public final setFirmwareVersionResponse(Lcom/dexcom/cgm/tx/a/m;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_firmwareVersionResponse:Lcom/dexcom/cgm/tx/a/m;

    .line 396
    return-void
.end method

.method public final setRemoteRssi(I)V
    .locals 0

    .prologue
    .line 272
    iput p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_rssi:I

    .line 273
    return-void
.end method

.method public final setSessionSignature(Lcom/dexcom/cgm/k/n;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_sessionSignature:Lcom/dexcom/cgm/k/n;

    .line 288
    return-void
.end method

.method public final setTransmitterStatusCode(B)V
    .locals 2

    .prologue
    .line 406
    invoke-static {p1}, Lcom/dexcom/cgm/tx/a/j;->isUnrecoverableError(B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    iput-byte p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_transmitterStatusCode:B

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecoverable error: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/dexcom/cgm/f/a;->toHex(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/tx/mediator/ac;->setFailure(Ljava/lang/String;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    invoke-static {p1}, Lcom/dexcom/cgm/tx/a/j;->isTransmitterLowBattery(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-byte v0, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_transmitterStatusCode:B

    invoke-static {v0}, Lcom/dexcom/cgm/tx/a/j;->isUnrecoverableError(B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    iput-byte p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_transmitterStatusCode:B

    goto :goto_0
.end method

.method public final setTransmitterSyncTime(Lcom/dexcom/cgm/k/m;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_transmitterSyncTime:Lcom/dexcom/cgm/k/m;

    .line 283
    return-void
.end method

.method public final setTransmitterVersionExtendedResponse(Lcom/dexcom/cgm/tx/a/p;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_transmitterVersionExtendedResponse:Lcom/dexcom/cgm/tx/a/p;

    .line 402
    return-void
.end method

.method public final setTransmitterVersionResponse(Lcom/dexcom/cgm/tx/a/q;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_transmitterVersionResponse:Lcom/dexcom/cgm/tx/a/q;

    .line 391
    return-void
.end method

.method public final setTxBatteryStatusResponse(Lcom/dexcom/cgm/tx/a/r;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/dexcom/cgm/tx/mediator/ac;->m_txBatteryStatusResponse:Lcom/dexcom/cgm/tx/a/r;

    .line 428
    return-void
.end method
