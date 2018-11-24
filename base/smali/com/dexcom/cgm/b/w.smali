.class public final Lcom/dexcom/cgm/b/w;
.super Ljava/lang/Object;
.source "SensorSessionTracker.java"


# static fields
.field private static TimeSinceInsertionForChangeSensorNow:J

.field private static TimeSinceInsertionForChangeSensorNowUpperBound:J

.field private static TimeSinceInsertionForFirstChangeSensorSoon:J

.field private static TimeSinceInsertionForSecondChangeSensorSoon:J

.field private static TimeSinceInsertionForSessionExpiration:J


# instance fields
.field private m_alerts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;"
        }
    .end annotation
.end field

.field private m_cgmp:Lcom/dexcom/cgm/b/j;

.field private m_expirySignaled:Z

.field private m_firstWarningSignaled:Z

.field private m_secondWarningSignaled:Z

.field private m_sessionSignature:Lcom/dexcom/cgm/k/m;

.field private m_sessionState:Lcom/dexcom/cgm/b/y;

.field private m_startSensorTimeFromUser:Lcom/dexcom/cgm/k/j;

.field private m_thirdWarningSignaled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 392
    const-wide/32 v0, 0x93a80

    sput-wide v0, Lcom/dexcom/cgm/b/w;->TimeSinceInsertionForSessionExpiration:J

    .line 393
    const-wide/32 v0, 0x93a62

    sput-wide v0, Lcom/dexcom/cgm/b/w;->TimeSinceInsertionForChangeSensorNowUpperBound:J

    .line 394
    const-wide/32 v0, 0x93378

    sput-wide v0, Lcom/dexcom/cgm/b/w;->TimeSinceInsertionForChangeSensorNow:J

    .line 395
    const-wide/32 v0, 0x91e60

    sput-wide v0, Lcom/dexcom/cgm/b/w;->TimeSinceInsertionForSecondChangeSensorSoon:J

    .line 396
    const-wide/32 v0, 0x8e620

    sput-wide v0, Lcom/dexcom/cgm/b/w;->TimeSinceInsertionForFirstChangeSensorSoon:J

    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/b/j;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/dexcom/cgm/k/j;

    const-wide v2, 0xffffffffL

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_startSensorTimeFromUser:Lcom/dexcom/cgm/k/j;

    .line 42
    sget-object v0, Lcom/dexcom/cgm/b/y;->NotTrackingASession:Lcom/dexcom/cgm/b/y;

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    .line 43
    iput-boolean v1, p0, Lcom/dexcom/cgm/b/w;->m_firstWarningSignaled:Z

    .line 44
    iput-boolean v1, p0, Lcom/dexcom/cgm/b/w;->m_secondWarningSignaled:Z

    .line 45
    iput-boolean v1, p0, Lcom/dexcom/cgm/b/w;->m_thirdWarningSignaled:Z

    .line 46
    iput-boolean v1, p0, Lcom/dexcom/cgm/b/w;->m_expirySignaled:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_alerts:Ljava/util/ArrayList;

    .line 55
    invoke-direct {p0}, Lcom/dexcom/cgm/b/w;->initializeToDefaultValues()V

    .line 56
    iput-object p1, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    .line 57
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getLatestSessionRecord()Lcom/dexcom/cgm/model/SensorSession;

    move-result-object v0

    .line 58
    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/SensorSession;->isSessionStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/SensorSession;->getLogType()Lcom/dexcom/cgm/model/enums/SessionLogType;

    move-result-object v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStartedOnDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

    if-ne v1, v2, :cond_1

    .line 66
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/SensorSession;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_startSensorTimeFromUser:Lcom/dexcom/cgm/k/j;

    .line 67
    sget-object v0, Lcom/dexcom/cgm/b/y;->SessionStartedOnDisplay:Lcom/dexcom/cgm/b/y;

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    .line 68
    iput-object v4, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    goto :goto_0

    .line 72
    :cond_1
    sget-object v1, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    iput-object v1, p0, Lcom/dexcom/cgm/b/w;->m_startSensorTimeFromUser:Lcom/dexcom/cgm/k/j;

    .line 73
    sget-object v1, Lcom/dexcom/cgm/b/y;->TrackingSessionOnTransmitter:Lcom/dexcom/cgm/b/y;

    iput-object v1, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    .line 74
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/SensorSession;->getSessionSignatureAsSyncTime()Lcom/dexcom/cgm/k/m;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    goto :goto_0

    .line 79
    :cond_2
    sget-object v1, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    iput-object v1, p0, Lcom/dexcom/cgm/b/w;->m_startSensorTimeFromUser:Lcom/dexcom/cgm/k/j;

    .line 80
    iput-object v4, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    .line 81
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/SensorSession;->getLogType()Lcom/dexcom/cgm/model/enums/SessionLogType;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStoppedOnDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/dexcom/cgm/b/y;->SessionStoppedOnDisplay:Lcom/dexcom/cgm/b/y;

    :goto_1
    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/dexcom/cgm/b/y;->NotTrackingASession:Lcom/dexcom/cgm/b/y;

    goto :goto_1
.end method

.method private checkForSessionChangesWhileInSessionStartedOnDisplay(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/AlgorithmState;Lcom/dexcom/cgm/tx/mediator/p;)V
    .locals 4

    .prologue
    .line 322
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_startSensorTimeFromUser:Lcom/dexcom/cgm/k/j;

    invoke-static {p1, v0}, Lcom/dexcom/cgm/k/m;->convertTransmitterTime(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/n;

    move-result-object v0

    .line 324
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/b/w;->sessionSignatureIndicatesStopped(Lcom/dexcom/cgm/k/n;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    sget-object v0, Lcom/dexcom/cgm/b/y;->NotTrackingASession:Lcom/dexcom/cgm/b/y;

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    .line 329
    invoke-direct {p0, p4}, Lcom/dexcom/cgm/b/w;->getStartCommandResponse(Lcom/dexcom/cgm/tx/mediator/p;)Lcom/dexcom/cgm/model/enums/SessionLogType;

    move-result-object v0

    .line 330
    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/b/w;->logStartSessionFailed(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/enums/SessionLogType;)V

    .line 331
    invoke-direct {p0, p3}, Lcom/dexcom/cgm/b/w;->handleSessionExpiredOrFailedEvent(Lcom/dexcom/cgm/model/enums/AlgorithmState;)V

    .line 350
    :goto_0
    return-void

    .line 334
    :cond_0
    invoke-virtual {p2}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 337
    sget-object v0, Lcom/dexcom/cgm/b/y;->TrackingSessionOnTransmitter:Lcom/dexcom/cgm/b/y;

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    .line 338
    invoke-static {p1, p2}, Lcom/dexcom/cgm/k/m;->create(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/k/m;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/b/w;->logSessionStartedFromThis(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)V

    .line 340
    invoke-direct {p0}, Lcom/dexcom/cgm/b/w;->resetAllExpiryAlerts()V

    goto :goto_0

    .line 345
    :cond_1
    sget-object v0, Lcom/dexcom/cgm/b/y;->TrackingSessionOnTransmitter:Lcom/dexcom/cgm/b/y;

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    .line 346
    invoke-static {p1, p2}, Lcom/dexcom/cgm/k/m;->create(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/k/m;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    .line 347
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/m;->getTransmitterTime()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/b/w;->logJoinedNewSession(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)V

    .line 348
    invoke-direct {p0}, Lcom/dexcom/cgm/b/w;->resetAllExpiryAlerts()V

    goto :goto_0
.end method

.method private checkForSessionChangesWhileNotTrackingASession(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)V
    .locals 2

    .prologue
    .line 243
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/b/w;->sessionSignatureIndicatesStopped(Lcom/dexcom/cgm/k/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 248
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/b/y;->TrackingSessionOnTransmitter:Lcom/dexcom/cgm/b/y;

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    .line 249
    new-instance v0, Lcom/dexcom/cgm/k/m;

    .line 250
    invoke-static {p1, p2}, Lcom/dexcom/cgm/k/m;->convertSystemTime(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/dexcom/cgm/k/m;-><init>(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/n;)V

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    .line 252
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/m;->getTransmitterTime()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/b/w;->logJoinedNewSession(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)V

    .line 253
    invoke-direct {p0}, Lcom/dexcom/cgm/b/w;->resetAllExpiryAlerts()V

    goto :goto_0
.end method

.method private checkForSessionChangesWhileSessionStoppedOnDisplay(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/tx/mediator/p;)V
    .locals 1

    .prologue
    .line 261
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/b/w;->sessionSignatureIndicatesStopped(Lcom/dexcom/cgm/k/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/dexcom/cgm/b/y;->NotTrackingASession:Lcom/dexcom/cgm/b/y;

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    .line 266
    invoke-direct {p0, p1, p3}, Lcom/dexcom/cgm/b/w;->logStopSessionCommandResponse(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/tx/mediator/p;)V

    .line 276
    :goto_0
    return-void

    .line 271
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/b/y;->TrackingSessionOnTransmitter:Lcom/dexcom/cgm/b/y;

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    .line 272
    invoke-static {p1, p2}, Lcom/dexcom/cgm/k/m;->create(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/k/m;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    .line 273
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/m;->getTransmitterTime()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/b/w;->logJoinedNewSession(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)V

    .line 274
    invoke-direct {p0}, Lcom/dexcom/cgm/b/w;->resetAllExpiryAlerts()V

    goto :goto_0
.end method

.method private checkForSessionChangesWhileTrackingSessionOnTransmitter(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/AlgorithmState;)V
    .locals 4

    .prologue
    .line 283
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/b/w;->sessionSignatureIndicatesStopped(Lcom/dexcom/cgm/k/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    sget-object v0, Lcom/dexcom/cgm/b/y;->NotTrackingASession:Lcom/dexcom/cgm/b/y;

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    .line 288
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/w;->logSessionStoppedOnTransmitter(Lcom/dexcom/cgm/k/m;)V

    .line 289
    invoke-direct {p0, p3}, Lcom/dexcom/cgm/b/w;->handleSessionExpiredOrFailedEvent(Lcom/dexcom/cgm/model/enums/AlgorithmState;)V

    .line 309
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-virtual {p2}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v0

    iget-object v2, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    .line 295
    invoke-virtual {v2}, Lcom/dexcom/cgm/k/m;->getTransmitterTime()Lcom/dexcom/cgm/k/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/n;->getTimeInSeconds()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 297
    invoke-direct {p0}, Lcom/dexcom/cgm/b/w;->checkForSessionExpiryAlerts()V

    goto :goto_0

    .line 302
    :cond_1
    sget-object v0, Lcom/dexcom/cgm/b/y;->TrackingSessionOnTransmitter:Lcom/dexcom/cgm/b/y;

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    .line 303
    invoke-static {p1, p2}, Lcom/dexcom/cgm/k/m;->create(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/k/m;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    .line 304
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/w;->logSessionStoppedOnTransmitter(Lcom/dexcom/cgm/k/m;)V

    .line 305
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/m;->getTransmitterTime()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/b/w;->logJoinedNewSession(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)V

    .line 306
    invoke-direct {p0}, Lcom/dexcom/cgm/b/w;->resetAllExpiryAlerts()V

    goto :goto_0
.end method

.method private checkForSessionExpiryAlerts()V
    .locals 4

    .prologue
    .line 401
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    sget-object v1, Lcom/dexcom/cgm/b/y;->TrackingSessionOnTransmitter:Lcom/dexcom/cgm/b/y;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 402
    :goto_0
    if-nez v0, :cond_2

    .line 426
    :cond_0
    :goto_1
    return-void

    .line 401
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 406
    :cond_2
    invoke-direct {p0}, Lcom/dexcom/cgm/b/w;->secondsSinceInsertion()J

    move-result-wide v0

    .line 407
    sget-wide v2, Lcom/dexcom/cgm/b/w;->TimeSinceInsertionForChangeSensorNowUpperBound:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 412
    sget-wide v2, Lcom/dexcom/cgm/b/w;->TimeSinceInsertionForChangeSensorNow:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 414
    invoke-direct {p0}, Lcom/dexcom/cgm/b/w;->handleThirtyMinuteToExpiryEvent()V

    goto :goto_1

    .line 417
    :cond_3
    sget-wide v2, Lcom/dexcom/cgm/b/w;->TimeSinceInsertionForSecondChangeSensorSoon:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    .line 419
    invoke-direct {p0}, Lcom/dexcom/cgm/b/w;->handleTwoHoursToExpiryEvent()V

    goto :goto_1

    .line 422
    :cond_4
    sget-wide v2, Lcom/dexcom/cgm/b/w;->TimeSinceInsertionForFirstChangeSensorSoon:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/dexcom/cgm/b/w;->handleSixHoursToExpiryEvent()V

    goto :goto_1
.end method

.method private getStartCommandResponse(Lcom/dexcom/cgm/tx/mediator/p;)Lcom/dexcom/cgm/model/enums/SessionLogType;
    .locals 4

    .prologue
    .line 354
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/p;->getCommandRequests()Ljava/lang/Iterable;

    move-result-object v0

    .line 355
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    .line 359
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v2

    sget-object v3, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StartSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    if-ne v2, v3, :cond_0

    .line 361
    invoke-interface {p1, v0}, Lcom/dexcom/cgm/tx/mediator/p;->getStartSession(Lcom/dexcom/cgm/model/CgmCommand;)Lcom/dexcom/cgm/tx/mediator/bb;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/bb;->getStartSessionResponseCode()Lcom/dexcom/cgm/model/enums/SessionLogType;

    move-result-object v0

    .line 365
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionTableNone:Lcom/dexcom/cgm/model/enums/SessionLogType;

    goto :goto_0
.end method

.method private handleSessionExpiredOrFailedEvent(Lcom/dexcom/cgm/model/enums/AlgorithmState;)V
    .locals 2

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/dexcom/cgm/b/w;->m_expirySignaled:Z

    if-nez v0, :cond_1

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/b/w;->m_expirySignaled:Z

    .line 475
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SensorFailedDueToCountsAberration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SensorFailedDueToResidualAberration:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlgorithmState;->SessionFailedDueToTransmitterError:Lcom/dexcom/cgm/model/enums/AlgorithmState;

    if-ne p1, v0, :cond_2

    .line 479
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorFailed:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 480
    iget-object v1, p0, Lcom/dexcom/cgm/b/w;->m_alerts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_1
    :goto_0
    return-void

    .line 484
    :cond_2
    new-instance v0, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->SensorShutoff:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 485
    iget-object v1, p0, Lcom/dexcom/cgm/b/w;->m_alerts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private handleSixHoursToExpiryEvent()V
    .locals 4

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/dexcom/cgm/b/w;->m_firstWarningSignaled:Z

    if-nez v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/dexcom/cgm/b/w;->getSessionStartTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    sget-wide v2, Lcom/dexcom/cgm/b/w;->TimeSinceInsertionForSessionExpiration:J

    .line 433
    invoke-virtual {v0, v2, v3}, Lcom/dexcom/cgm/k/j;->addSeconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 434
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationFirst:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v1, v0}, Lcom/dexcom/cgm/model/AlertInstanceInformation;->createSensorExpirationAlert(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/AlertInstanceInformation;

    move-result-object v0

    .line 437
    iget-object v1, p0, Lcom/dexcom/cgm/b/w;->m_alerts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/b/w;->m_firstWarningSignaled:Z

    .line 440
    :cond_0
    return-void
.end method

.method private handleThirtyMinuteToExpiryEvent()V
    .locals 4

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/dexcom/cgm/b/w;->m_thirdWarningSignaled:Z

    if-nez v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/dexcom/cgm/b/w;->getSessionStartTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    sget-wide v2, Lcom/dexcom/cgm/b/w;->TimeSinceInsertionForSessionExpiration:J

    .line 461
    invoke-virtual {v0, v2, v3}, Lcom/dexcom/cgm/k/j;->addSeconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 462
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationFinal:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v1, v0}, Lcom/dexcom/cgm/model/AlertInstanceInformation;->createSensorExpirationAlert(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/AlertInstanceInformation;

    move-result-object v0

    .line 465
    iget-object v1, p0, Lcom/dexcom/cgm/b/w;->m_alerts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/b/w;->m_thirdWarningSignaled:Z

    .line 468
    :cond_0
    return-void
.end method

.method private handleTwoHoursToExpiryEvent()V
    .locals 4

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/dexcom/cgm/b/w;->m_secondWarningSignaled:Z

    if-nez v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/dexcom/cgm/b/w;->getSessionStartTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    sget-wide v2, Lcom/dexcom/cgm/b/w;->TimeSinceInsertionForSessionExpiration:J

    .line 447
    invoke-virtual {v0, v2, v3}, Lcom/dexcom/cgm/k/j;->addSeconds(J)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 448
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationSecond:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v1, v0}, Lcom/dexcom/cgm/model/AlertInstanceInformation;->createSensorExpirationAlert(Lcom/dexcom/cgm/model/enums/AlertKind;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/AlertInstanceInformation;

    move-result-object v0

    .line 451
    iget-object v1, p0, Lcom/dexcom/cgm/b/w;->m_alerts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/b/w;->m_secondWarningSignaled:Z

    .line 454
    :cond_0
    return-void
.end method

.method private initializeToDefaultValues()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    sget-object v0, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_startSensorTimeFromUser:Lcom/dexcom/cgm/k/j;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    .line 95
    sget-object v0, Lcom/dexcom/cgm/b/y;->NotTrackingASession:Lcom/dexcom/cgm/b/y;

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    .line 96
    iput-boolean v1, p0, Lcom/dexcom/cgm/b/w;->m_firstWarningSignaled:Z

    .line 97
    iput-boolean v1, p0, Lcom/dexcom/cgm/b/w;->m_secondWarningSignaled:Z

    .line 98
    iput-boolean v1, p0, Lcom/dexcom/cgm/b/w;->m_thirdWarningSignaled:Z

    .line 99
    iput-boolean v1, p0, Lcom/dexcom/cgm/b/w;->m_expirySignaled:Z

    .line 100
    return-void
.end method

.method private logJoinedNewSession(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)V
    .locals 3

    .prologue
    .line 502
    new-instance v0, Lcom/dexcom/cgm/model/SensorSession;

    iget-object v1, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionJoinedOnTx:Lcom/dexcom/cgm/model/enums/SessionLogType;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/dexcom/cgm/model/SensorSession;-><init>(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/SessionLogType;)V

    .line 506
    iget-object v1, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/d/a;->writeSessionRecord(Lcom/dexcom/cgm/model/SensorSession;)V

    .line 507
    return-void
.end method

.method private logResponsesToOlderCommands(Lcom/dexcom/cgm/tx/mediator/p;)V
    .locals 10

    .prologue
    const-wide v8, 0xffffffffL

    .line 565
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 566
    invoke-interface {p1}, Lcom/dexcom/cgm/tx/mediator/p;->getCommandRequests()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    .line 568
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v3

    sget-object v4, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StartSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    if-eq v3, v4, :cond_1

    .line 569
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v3

    sget-object v4, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StopSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    if-ne v3, v4, :cond_0

    .line 571
    :cond_1
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 574
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_5

    .line 576
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    .line 577
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v3

    sget-object v4, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StopSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    if-ne v3, v4, :cond_3

    .line 579
    invoke-interface {p1, v0}, Lcom/dexcom/cgm/tx/mediator/p;->getStopSession(Lcom/dexcom/cgm/model/CgmCommand;)Lcom/dexcom/cgm/tx/mediator/bc;

    move-result-object v3

    .line 580
    new-instance v4, Lcom/dexcom/cgm/model/SensorSession;

    iget-object v5, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    .line 581
    invoke-virtual {v5}, Lcom/dexcom/cgm/b/j;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v5

    .line 582
    invoke-virtual {v3}, Lcom/dexcom/cgm/tx/mediator/bc;->getRequestTime()Lcom/dexcom/cgm/k/m;

    move-result-object v6

    new-instance v7, Lcom/dexcom/cgm/k/n;

    invoke-direct {v7, v8, v9}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    .line 584
    invoke-virtual {v3}, Lcom/dexcom/cgm/tx/mediator/bc;->getStopSessionResponseCode()Lcom/dexcom/cgm/model/enums/SessionLogType;

    move-result-object v3

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/dexcom/cgm/model/SensorSession;-><init>(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/SessionLogType;)V

    .line 585
    iget-object v3, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v3}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/dexcom/cgm/d/a;->writeSessionRecord(Lcom/dexcom/cgm/model/SensorSession;)V

    .line 588
    :cond_3
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v3

    sget-object v4, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StartSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    if-ne v3, v4, :cond_4

    .line 590
    invoke-interface {p1, v0}, Lcom/dexcom/cgm/tx/mediator/p;->getStartSession(Lcom/dexcom/cgm/model/CgmCommand;)Lcom/dexcom/cgm/tx/mediator/bb;

    move-result-object v0

    .line 591
    new-instance v3, Lcom/dexcom/cgm/model/SensorSession;

    iget-object v4, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    .line 592
    invoke-virtual {v4}, Lcom/dexcom/cgm/b/j;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v4

    .line 593
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/bb;->getRequestTime()Lcom/dexcom/cgm/k/m;

    move-result-object v5

    new-instance v6, Lcom/dexcom/cgm/k/n;

    invoke-direct {v6, v8, v9}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    .line 595
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/bb;->getStartSessionResponseCode()Lcom/dexcom/cgm/model/enums/SessionLogType;

    move-result-object v0

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/dexcom/cgm/model/SensorSession;-><init>(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/SessionLogType;)V

    .line 596
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/dexcom/cgm/d/a;->writeSessionRecord(Lcom/dexcom/cgm/model/SensorSession;)V

    .line 574
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 599
    :cond_5
    return-void
.end method

.method private logSessionStartedFromThis(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)V
    .locals 3

    .prologue
    .line 384
    new-instance v0, Lcom/dexcom/cgm/model/SensorSession;

    iget-object v1, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    .line 385
    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStartedOnTxFromThisDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/dexcom/cgm/model/SensorSession;-><init>(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/SessionLogType;)V

    .line 389
    iget-object v1, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/d/a;->writeSessionRecord(Lcom/dexcom/cgm/model/SensorSession;)V

    .line 390
    return-void
.end method

.method private logSessionStoppedOnTransmitter(Lcom/dexcom/cgm/k/m;)V
    .locals 6

    .prologue
    .line 492
    new-instance v0, Lcom/dexcom/cgm/model/SensorSession;

    iget-object v1, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    .line 493
    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/k/n;

    const-wide v4, 0xffffffffL

    invoke-direct {v2, v4, v5}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    sget-object v3, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionAlreadyStoppedOnTx:Lcom/dexcom/cgm/model/enums/SessionLogType;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/dexcom/cgm/model/SensorSession;-><init>(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/SessionLogType;)V

    .line 497
    iget-object v1, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/d/a;->writeSessionRecord(Lcom/dexcom/cgm/model/SensorSession;)V

    .line 498
    return-void
.end method

.method private logStartSessionFailed(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/enums/SessionLogType;)V
    .locals 6

    .prologue
    .line 372
    new-instance v0, Lcom/dexcom/cgm/model/SensorSession;

    iget-object v1, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    .line 373
    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    new-instance v2, Lcom/dexcom/cgm/k/n;

    const-wide v4, 0xffffffffL

    invoke-direct {v2, v4, v5}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/dexcom/cgm/model/SensorSession;-><init>(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/SessionLogType;)V

    .line 377
    iget-object v1, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/d/a;->writeSessionRecord(Lcom/dexcom/cgm/model/SensorSession;)V

    .line 378
    return-void
.end method

.method private logStartSessionOnDisplay(Lcom/dexcom/cgm/k/j;)V
    .locals 3

    .prologue
    .line 538
    new-instance v0, Lcom/dexcom/cgm/model/SensorSession;

    iget-object v1, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    .line 539
    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStartedOnDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

    invoke-direct {v0, v1, p1, v2}, Lcom/dexcom/cgm/model/SensorSession;-><init>(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/enums/SessionLogType;)V

    .line 542
    iget-object v1, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/d/a;->writeSessionRecord(Lcom/dexcom/cgm/model/SensorSession;)V

    .line 543
    return-void
.end method

.method private logStopSessionCommandResponse(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/tx/mediator/p;)V
    .locals 6

    .prologue
    .line 513
    invoke-interface {p2}, Lcom/dexcom/cgm/tx/mediator/p;->getCommandRequests()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 514
    const/4 v0, 0x0

    .line 515
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/CgmCommand;

    goto :goto_0

    .line 519
    :cond_0
    sget-object v2, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStoppedOnTxFromThisDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

    .line 520
    new-instance v1, Lcom/dexcom/cgm/k/n;

    const-wide v4, 0xffffffffL

    invoke-direct {v1, v4, v5}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    .line 521
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmCommand;->getCommandType()Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    move-result-object v3

    sget-object v4, Lcom/dexcom/cgm/model/CgmCommand$CommandType;->StopSensor:Lcom/dexcom/cgm/model/CgmCommand$CommandType;

    if-ne v3, v4, :cond_1

    .line 523
    invoke-interface {p2, v0}, Lcom/dexcom/cgm/tx/mediator/p;->getStopSession(Lcom/dexcom/cgm/model/CgmCommand;)Lcom/dexcom/cgm/tx/mediator/bc;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/bc;->getStopSessionResponseCode()Lcom/dexcom/cgm/model/enums/SessionLogType;

    move-result-object v1

    .line 525
    invoke-virtual {v0}, Lcom/dexcom/cgm/tx/mediator/bc;->getSensorStopTime()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    .line 527
    :goto_1
    new-instance v2, Lcom/dexcom/cgm/model/SensorSession;

    iget-object v3, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    .line 528
    invoke-virtual {v3}, Lcom/dexcom/cgm/b/j;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v3

    invoke-direct {v2, v3, p1, v0, v1}, Lcom/dexcom/cgm/model/SensorSession;-><init>(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/SessionLogType;)V

    .line 532
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/dexcom/cgm/d/a;->writeSessionRecord(Lcom/dexcom/cgm/model/SensorSession;)V

    .line 533
    return-void

    :cond_1
    move-object v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method private logStopSessionOnDisplay(Lcom/dexcom/cgm/k/j;)V
    .locals 3

    .prologue
    .line 547
    new-instance v0, Lcom/dexcom/cgm/model/SensorSession;

    iget-object v1, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    .line 548
    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v1

    sget-object v2, Lcom/dexcom/cgm/model/enums/SessionLogType;->CGMSessionStoppedOnDisplay:Lcom/dexcom/cgm/model/enums/SessionLogType;

    invoke-direct {v0, v1, p1, v2}, Lcom/dexcom/cgm/model/SensorSession;-><init>(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/model/enums/SessionLogType;)V

    .line 551
    iget-object v1, p0, Lcom/dexcom/cgm/b/w;->m_cgmp:Lcom/dexcom/cgm/b/j;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/j;->getDal()Lcom/dexcom/cgm/d/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/d/a;->writeSessionRecord(Lcom/dexcom/cgm/model/SensorSession;)V

    .line 552
    return-void
.end method

.method private resetAllExpiryAlerts()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/dexcom/cgm/b/w;->m_firstWarningSignaled:Z

    .line 189
    iput-boolean v0, p0, Lcom/dexcom/cgm/b/w;->m_secondWarningSignaled:Z

    .line 190
    iput-boolean v0, p0, Lcom/dexcom/cgm/b/w;->m_thirdWarningSignaled:Z

    .line 191
    iput-boolean v0, p0, Lcom/dexcom/cgm/b/w;->m_expirySignaled:Z

    .line 192
    return-void
.end method

.method private secondsSinceInsertion()J
    .locals 4

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/dexcom/cgm/b/w;->getSessionStartTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    .line 149
    sget-object v2, Lcom/dexcom/cgm/k/j;->Unknown:Lcom/dexcom/cgm/k/j;

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "secondsSinceInsertion called while not tracking a session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v2

    .line 154
    sub-long v0, v2, v0

    .line 155
    return-wide v0
.end method

.method private sessionSignatureIndicatesStopped(Lcom/dexcom/cgm/k/n;)Z
    .locals 1

    .prologue
    .line 313
    if-eqz p1, :cond_0

    sget-object v0, Lcom/dexcom/cgm/k/n;->Unknown:Lcom/dexcom/cgm/k/n;

    invoke-virtual {p1, v0}, Lcom/dexcom/cgm/k/n;->equals(Ljava/lang/Object;)Z

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


# virtual methods
.method public final checkForSessionChanges(Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/model/enums/AlgorithmState;Lcom/dexcom/cgm/tx/mediator/p;)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/n;",
            "Lcom/dexcom/cgm/k/m;",
            "Lcom/dexcom/cgm/model/enums/AlgorithmState;",
            "Lcom/dexcom/cgm/tx/mediator/p;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_alerts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 215
    invoke-direct {p0, p4}, Lcom/dexcom/cgm/b/w;->logResponsesToOlderCommands(Lcom/dexcom/cgm/tx/mediator/p;)V

    .line 216
    sget-object v0, Lcom/dexcom/cgm/b/x;->a:[I

    iget-object v1, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    invoke-virtual {v1}, Lcom/dexcom/cgm/b/y;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected session state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sessionSignature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :pswitch_0
    invoke-direct {p0, p2, p1, p3, p4}, Lcom/dexcom/cgm/b/w;->checkForSessionChangesWhileInSessionStartedOnDisplay(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/AlgorithmState;Lcom/dexcom/cgm/tx/mediator/p;)V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_alerts:Ljava/util/ArrayList;

    return-object v0

    .line 223
    :pswitch_1
    invoke-direct {p0, p2, p1, p3}, Lcom/dexcom/cgm/b/w;->checkForSessionChangesWhileTrackingSessionOnTransmitter(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/model/enums/AlgorithmState;)V

    goto :goto_0

    .line 227
    :pswitch_2
    invoke-direct {p0, p2, p1, p4}, Lcom/dexcom/cgm/b/w;->checkForSessionChangesWhileSessionStoppedOnDisplay(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;Lcom/dexcom/cgm/tx/mediator/p;)V

    goto :goto_0

    .line 230
    :pswitch_3
    invoke-direct {p0, p2, p1}, Lcom/dexcom/cgm/b/w;->checkForSessionChangesWhileNotTrackingASession(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)V

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final checkForSessionExpiryAlertsOnBleTimeOut()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_alerts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 204
    invoke-direct {p0}, Lcom/dexcom/cgm/b/w;->checkForSessionExpiryAlerts()V

    .line 205
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_alerts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getSessionSignature()Lcom/dexcom/cgm/k/m;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    return-object v0
.end method

.method public final getSessionStartTime()Lcom/dexcom/cgm/k/j;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    .line 117
    invoke-virtual {v0}, Lcom/dexcom/cgm/k/m;->getTransmitterTime()Lcom/dexcom/cgm/k/n;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/k/n;->Unknown:Lcom/dexcom/cgm/k/n;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/k/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_startSensorTimeFromUser:Lcom/dexcom/cgm/k/j;

    .line 121
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/m;->getSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    goto :goto_0
.end method

.method final getSessionState()Lcom/dexcom/cgm/b/y;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    return-object v0
.end method

.method public final handleTransmitterFailed()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    .line 161
    sget-object v0, Lcom/dexcom/cgm/b/y;->NotTrackingASession:Lcom/dexcom/cgm/b/y;

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    .line 162
    invoke-direct {p0}, Lcom/dexcom/cgm/b/w;->resetAllExpiryAlerts()V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public final isSessionStarted()Z
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    sget-object v1, Lcom/dexcom/cgm/b/y;->SessionStartedOnDisplay:Lcom/dexcom/cgm/b/y;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    sget-object v1, Lcom/dexcom/cgm/b/y;->TrackingSessionOnTransmitter:Lcom/dexcom/cgm/b/y;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSessionStartedOnlyOnTheReceiver()Z
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    sget-object v1, Lcom/dexcom/cgm/b/y;->SessionStartedOnDisplay:Lcom/dexcom/cgm/b/y;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onTransmitterIdChanged()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/dexcom/cgm/b/w;->initializeToDefaultValues()V

    .line 89
    return-void
.end method

.method public final startSensor(Lcom/dexcom/cgm/k/j;)V
    .locals 4

    .prologue
    .line 177
    sget-object v0, Lcom/dexcom/cgm/b/y;->SessionStartedOnDisplay:Lcom/dexcom/cgm/b/y;

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionSignature:Lcom/dexcom/cgm/k/m;

    .line 179
    iput-object p1, p0, Lcom/dexcom/cgm/b/w;->m_startSensorTimeFromUser:Lcom/dexcom/cgm/k/j;

    .line 180
    new-instance v0, Lcom/dexcom/cgm/k/j;

    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    .line 181
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/b/w;->logStartSessionOnDisplay(Lcom/dexcom/cgm/k/j;)V

    .line 183
    invoke-direct {p0}, Lcom/dexcom/cgm/b/w;->resetAllExpiryAlerts()V

    .line 184
    return-void
.end method

.method public final stopSensor(Lcom/dexcom/cgm/k/j;)V
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/dexcom/cgm/b/y;->SessionStoppedOnDisplay:Lcom/dexcom/cgm/b/y;

    iput-object v0, p0, Lcom/dexcom/cgm/b/w;->m_sessionState:Lcom/dexcom/cgm/b/y;

    .line 197
    invoke-direct {p0}, Lcom/dexcom/cgm/b/w;->resetAllExpiryAlerts()V

    .line 198
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/b/w;->logStopSessionOnDisplay(Lcom/dexcom/cgm/k/j;)V

    .line 199
    return-void
.end method
