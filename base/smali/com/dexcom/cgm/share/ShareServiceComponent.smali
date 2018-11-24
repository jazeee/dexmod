.class public Lcom/dexcom/cgm/share/ShareServiceComponent;
.super Ljava/lang/Object;
.source "ShareServiceComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/share/ShareService;


# instance fields
.field private lastEGVsTime:J

.field private m_cgmProvider:Lcom/dexcom/cgm/b/f;

.field private m_dal:Lcom/dexcom/cgm/d/a;

.field private m_namedValueHelper:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

.field private m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/b/f;Lcom/dexcom/cgm/model/ServerConfiguration;)V
    .locals 3

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;

    invoke-interface {p1}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-direct {v0, p3, v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;-><init>(Lcom/dexcom/cgm/model/ServerConfiguration;Lcom/dexcom/cgm/d/e;)V

    iput-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    .line 79
    iput-object p1, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    .line 80
    new-instance v0, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    iget-object v1, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-direct {v0, v1, p1, p2}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebservice;Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/b/f;)V

    iput-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_namedValueHelper:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    .line 81
    iput-object p2, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    .line 84
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v1}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->getPassword()Ljava/lang/String;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v2, v0, v1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->setUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/share/ShareServiceComponent;)Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_namedValueHelper:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/share/ShareServiceComponent;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->initializeTimeBaseIfNeeded()V

    return-void
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/share/ShareServiceComponent;)Lcom/dexcom/cgm/d/a;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/share/ShareServiceComponent;Lcom/dexcom/cgm/model/TransmitterId;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/share/ShareServiceComponent;->registerTransmitterIfNeeded(Lcom/dexcom/cgm/model/TransmitterId;)V

    return-void
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/share/ShareServiceComponent;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->uploadEGVsIfNeeded()V

    return-void
.end method

.method private initializeTimeBaseIfNeeded()V
    .locals 2

    .prologue
    .line 502
    invoke-static {}, Lcom/dexcom/cgm/k/a;->needToRefreshTimeBase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    :try_start_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->getServerUTCTime()Lcom/dexcom/cgm/k/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/h;->getServerTime()Lcom/dexcom/cgm/k/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/i;->getTimeInSeconds()J

    move-result-wide v0

    .line 507
    invoke-static {v0, v1}, Lcom/dexcom/cgm/k/a;->initializeTimeBase(J)V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/BaseWSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private registerTransmitterIfNeeded(Lcom/dexcom/cgm/model/TransmitterId;)V
    .locals 3

    .prologue
    .line 414
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v1}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->getLastRegisteredTransmitterId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->isDetailsAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/share/ShareServiceComponent;->registerTransmitterID(Lcom/dexcom/cgm/model/TransmitterId;)V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/SerialNumberAssignedToSomeoneElseWSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TECH SUPPORT: The user is getting data from transmitter ID \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', but the server said that transmitter ID belongs to somebody else. Release the ID, and the user\'s problem will be"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fixed automatically. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
.end method

.method private startRemoteMonitoringSession(Lcom/dexcom/cgm/model/TransmitterId;)V
    .locals 4

    .prologue
    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->StartRemoteMonitoringSession(Lcom/dexcom/cgm/model/TransmitterId;)V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/MonitoringSessionAlreadyActiveWSException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/MonitoredReceiverNotAssignedWSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/MonitoredReceiverSerialNumberDoesNotMatchWSException; {:try_start_0 .. :try_end_0} :catch_4

    .line 607
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 588
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v1}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/d/e;->setLastRegisteredTransmitterId(Ljava/lang/String;)V

    .line 589
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/share/ShareServiceComponent;->registerTransmitterIfNeeded(Lcom/dexcom/cgm/model/TransmitterId;)V

    .line 590
    iget-object v1, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v1, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->StartRemoteMonitoringSession(Lcom/dexcom/cgm/model/TransmitterId;)V
    :try_end_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/MonitoringSessionAlreadyActiveWSException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/MonitoredReceiverNotAssignedWSException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/MonitoredReceiverSerialNumberDoesNotMatchWSException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 606
    :catch_1
    move-exception v0

    goto :goto_0

    .line 599
    :catch_2
    move-exception v1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TECH SUPPORT: The user is getting data from transmitter ID \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', Attempt to re-register transmitter after clearing local value failed to correct the issue - registration failed for some unknown reason or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "the transmitter is now attached to another account. Following exception occurred: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 604
    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/BaseWSException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 599
    invoke-static {v1, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0

    .line 599
    :catch_3
    move-exception v1

    goto :goto_2

    .line 579
    :catch_4
    move-exception v0

    goto :goto_1

    .line 607
    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method private uploadEGVs(Lcom/dexcom/cgm/model/TransmitterId;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/model/TransmitterId;",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Glucose;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 524
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    :goto_0
    return-void

    .line 527
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to upload "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " EGVs..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Glucose;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    .line 534
    :try_start_0
    iget-object v2, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v2, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->PostReceiverEgvRecords(Lcom/dexcom/cgm/model/TransmitterId;Ljava/util/List;)V

    .line 535
    iget-object v2, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v2}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/dexcom/cgm/d/e;->setLastShareEGVTimeStamp(J)V

    .line 536
    iget-object v2, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v2}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/d/e;->setFlurryShareBackfill(I)V

    .line 537
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Successfully uploaded "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " EGVs."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 537
    invoke-static {v2, v3}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/MonitoringSessionNotActiveWSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/FutureEgvPostedWSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/DuplicateEgvPostedWSException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/dexcom/cgm/share/ShareServiceComponent;->startRemoteMonitoringSession(Lcom/dexcom/cgm/model/TransmitterId;)V

    .line 543
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/share/ShareServiceComponent;->uploadEGVs(Lcom/dexcom/cgm/model/TransmitterId;Ljava/util/List;)V

    goto :goto_0

    .line 550
    :catch_1
    move-exception v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Future EGV detected. This means that the EGV is lost forever, and it will never be uploaded to the Share server. But all of the non-future EGVs were successfully uploaded. "

    invoke-static {v2, v3}, Lcom/dexcom/cgm/f/b;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v2, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v2}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/dexcom/cgm/d/e;->setLastShareEGVTimeStamp(J)V

    goto/16 :goto_0

    .line 561
    :catch_2
    move-exception v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Duplicate EGV detected. This is not an error; every non-duplicate EGV was uploaded successfully."

    invoke-static {v2, v3}, Lcom/dexcom/cgm/f/b;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v2, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v2}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/dexcom/cgm/d/e;->setLastShareEGVTimeStamp(J)V

    goto/16 :goto_0
.end method

.method private declared-synchronized uploadEGVsIfNeeded()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 451
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->hasCompletedShareTutorial()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 498
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 454
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->isShareEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    iget-object v1, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v1}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->getLastShareEGVTimeStamp()J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_2

    .line 461
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    long-to-int v1, v4

    .line 463
    iget-object v4, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v4}, Lcom/dexcom/cgm/b/f;->getSensorInsertionTime()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v4}, Lcom/dexcom/cgm/b/f;->getSensorInsertionTime()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    new-instance v5, Lcom/dexcom/cgm/k/j;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    invoke-virtual {v4, v5}, Lcom/dexcom/cgm/k/j;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 464
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    const/4 v4, 0x1

    invoke-interface {v0, v1, v4}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ReadPublisherLatestGlucoseValues(II)Ljava/util/List;

    move-result-object v0

    .line 468
    :cond_2
    iget-object v1, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v1}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->getLastShareEGVTimeStamp()J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 470
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;->getST()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\D+"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->lastEGVsTime:J

    .line 478
    :goto_1
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    new-instance v1, Lcom/dexcom/cgm/k/j;

    iget-wide v4, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->lastEGVsTime:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-direct {v1, v4, v5}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    .line 479
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v4

    .line 478
    invoke-interface {v0, v1, v4}, Lcom/dexcom/cgm/d/a;->getCgmDataInInterval(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/CgmData;

    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/CgmData;->getGlucoseValues()Ljava/util/List;

    move-result-object v0

    .line 481
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 483
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Glucose;

    .line 485
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getGlucoseValue()I

    move-result v1

    const/16 v4, 0x27

    if-lt v1, v4, :cond_5

    move v4, v2

    .line 487
    :goto_3
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->getGlucoseValue()I

    move-result v1

    const/16 v7, 0x191

    if-gt v1, v7, :cond_6

    move v1, v2

    .line 489
    :goto_4
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Glucose;->isDisplayOnly()Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 491
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 451
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 475
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getLastShareEGVTimeStamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->lastEGVsTime:J

    goto :goto_1

    :cond_5
    move v4, v3

    .line 485
    goto :goto_3

    :cond_6
    move v1, v3

    .line 487
    goto :goto_4

    .line 495
    :cond_7
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    .line 497
    invoke-direct {p0, v0, v5}, Lcom/dexcom/cgm/share/ShareServiceComponent;->uploadEGVs(Lcom/dexcom/cgm/model/TransmitterId;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method


# virtual methods
.method public addFollower(Lcom/dexcom/cgm/model/Follower;)V
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Follower;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Follower;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->CreateContact(Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getUserDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 294
    iget-object v2, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    .line 295
    invoke-static {p1, v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;->fromFollower(Lcom/dexcom/cgm/model/Follower;Ljava/lang/String;)Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;

    move-result-object v0

    .line 294
    invoke-interface {v2, v1, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->CreateSubscriptionInvitation(Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;)Ljava/util/UUID;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/BaseWSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 308
    :try_start_1
    iget-object v2, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v2, v1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->DeleteContact(Ljava/util/UUID;)V
    :try_end_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ContactAlreadyDeletedWSException; {:try_start_1 .. :try_end_1} :catch_1

    .line 315
    :goto_0
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public doesFollowerExistByName(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->DoesContactExistByName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getInternetStatus()Z
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->lastKnownInternetState()Z

    move-result v0

    return v0
.end method

.method public getPhoneStatus()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 679
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->isShareEnabled()Z

    move-result v4

    .line 681
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->listFollowers()Ljava/util/List;

    move-result-object v0

    .line 682
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Follower;

    .line 684
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Follower;->getState()Lcom/dexcom/cgm/model/enums/FollowerState;

    move-result-object v0

    sget-object v6, Lcom/dexcom/cgm/model/enums/FollowerState;->Active:Lcom/dexcom/cgm/model/enums/FollowerState;

    if-ne v0, v6, :cond_2

    move v0, v3

    :goto_1
    move v1, v0

    .line 686
    goto :goto_0

    .line 687
    :cond_0
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    :goto_2
    return v3

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public getPublisherID()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    const/4 v0, 0x0

    .line 662
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getPublisherID()Ljava/util/UUID;

    move-result-object v0

    goto :goto_0
.end method

.method public getServerStatus()Z
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->lastKnownServerState()Z

    move-result v0

    return v0
.end method

.method public getServerUTCTime()Lcom/dexcom/cgm/k/h;
    .locals 6

    .prologue
    .line 670
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->SystemUtcTime()Lcom/dexcom/cgm/share/webservice/jsonobjects/DateTimeType;

    move-result-object v0

    .line 671
    new-instance v1, Lcom/dexcom/cgm/k/i;

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/DateTimeType;->getSecondsSince1970()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/dexcom/cgm/k/i;-><init>(J)V

    .line 672
    new-instance v2, Lcom/dexcom/cgm/k/j;

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/DateTimeType;->getSecondsSince1970()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    .line 673
    new-instance v0, Lcom/dexcom/cgm/k/h;

    invoke-direct {v0, v2, v1}, Lcom/dexcom/cgm/k/h;-><init>(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/i;)V

    return-object v0
.end method

.method public getWebservice()Lcom/dexcom/cgm/share/webservice/ShareWebservice;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    return-object v0
.end method

.method public isShareEnabled()Z
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getShareEnabled()Z

    move-result v0

    return v0
.end method

.method public isUserLoggedIn()Z
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 652
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listFollowers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Follower;",
            ">;"
        }
    .end annotation

    .prologue
    .line 752
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getFollowers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listFollowersFromServer()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/model/Follower;",
            ">;"
        }
    .end annotation

    .prologue
    .line 706
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 708
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    .line 709
    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ListPublisherAccountSubscriptions()Ljava/util/List;

    move-result-object v0

    .line 711
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ListFollowersFollower;

    .line 713
    iget-object v1, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    iget-object v4, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ListFollowersFollower;->ContactId:Ljava/util/UUID;

    invoke-interface {v1, v4}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ReadContact(Ljava/util/UUID;)Lcom/dexcom/cgm/share/webservice/jsonobjects/ContactInfo;

    move-result-object v1

    iget-object v4, v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/ContactInfo;->Email:Ljava/lang/String;

    .line 714
    iget v1, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ListFollowersFollower;->Permissions:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 716
    :goto_1
    iget-object v5, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    iget-object v6, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ListFollowersFollower;->SubscriptionId:Ljava/util/UUID;

    invoke-interface {v5, v6}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ReadSubscriptionAlerts(Ljava/util/UUID;)Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;

    move-result-object v5

    .line 719
    new-instance v6, Lcom/dexcom/cgm/model/Follower$Builder;

    invoke-direct {v6}, Lcom/dexcom/cgm/model/Follower$Builder;-><init>()V

    .line 721
    iget-object v7, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ListFollowersFollower;->ContactId:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Lcom/dexcom/cgm/model/Follower$Builder;->setContactID(Ljava/util/UUID;)V

    .line 722
    iget-object v7, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ListFollowersFollower;->SubscriptionId:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Lcom/dexcom/cgm/model/Follower$Builder;->setSubscriptionID(Ljava/util/UUID;)V

    .line 723
    iget-object v7, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ListFollowersFollower;->ContactName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/dexcom/cgm/model/Follower$Builder;->setName(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v6, v4}, Lcom/dexcom/cgm/model/Follower$Builder;->setEmail(Ljava/lang/String;)V

    .line 725
    iget v0, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ListFollowersFollower;->State:I

    invoke-static {v0}, Lcom/dexcom/cgm/model/enums/FollowerState;->fromStateNumber(I)Lcom/dexcom/cgm/model/enums/FollowerState;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/dexcom/cgm/model/Follower$Builder;->setState(Lcom/dexcom/cgm/model/enums/FollowerState;)V

    .line 726
    invoke-virtual {v6, v1}, Lcom/dexcom/cgm/model/Follower$Builder;->setHasTrendPermission(Z)V

    .line 728
    iget-object v0, v5, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;->FixedLowAlert:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->isEnabled()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/dexcom/cgm/model/Follower$Builder;->setUrgentLowEnabled(Z)V

    .line 729
    iget-object v0, v5, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;->LowAlert:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->isEnabled()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/dexcom/cgm/model/Follower$Builder;->setLowEnabled(Z)V

    .line 730
    iget-object v0, v5, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;->HighAlert:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->isEnabled()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/dexcom/cgm/model/Follower$Builder;->setHighEnabled(Z)V

    .line 731
    iget-object v0, v5, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;->NoDataAlert:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->isEnabled()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/dexcom/cgm/model/Follower$Builder;->setNoDataEnabled(Z)V

    .line 733
    iget-object v0, v5, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;->FixedLowAlert:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->getThreshold()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/dexcom/cgm/model/Follower$Builder;->setUrgentLowThreshold(I)V

    .line 734
    iget-object v0, v5, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;->LowAlert:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->getThreshold()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/dexcom/cgm/model/Follower$Builder;->setLowThreshold(I)V

    .line 735
    iget-object v0, v5, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;->HighAlert:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->getThreshold()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/dexcom/cgm/model/Follower$Builder;->setHighThreshold(I)V

    .line 737
    iget-object v0, v5, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;->LowAlert:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->getDelayInMinutes()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/dexcom/cgm/model/Follower$Builder;->setLowDelay(I)V

    .line 738
    iget-object v0, v5, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;->HighAlert:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->getDelayInMinutes()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/dexcom/cgm/model/Follower$Builder;->setHighDelay(I)V

    .line 739
    iget-object v0, v5, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;->NoDataAlert:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->getDelayInMinutes()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/dexcom/cgm/model/Follower$Builder;->setNoDataDelay(I)V

    .line 741
    invoke-virtual {v6}, Lcom/dexcom/cgm/model/Follower$Builder;->build()Lcom/dexcom/cgm/model/Follower;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 714
    :cond_0
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 744
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0, v2}, Lcom/dexcom/cgm/d/a;->writeFollowers(Ljava/util/List;)V

    .line 746
    return-object v2
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->LoginPublisherAccountByName(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/d/e;->setUsername(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/d/e;->setPassword(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->AuthenticatePublisherAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v1}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/d/e;->setPublisherID(Ljava/util/UUID;)V

    .line 126
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ReadPublisherAccountEmail()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v1}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/d/e;->setUserEmail(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setShareEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_namedValueHelper:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->loadAllNamedValues()V

    .line 136
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ReadPublisherAccountDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v1}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/d/e;->setUserDisplayName(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ReadPublisherAccountImage()[B

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v1}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/d/e;->setUserAvatar([B)V

    .line 143
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->listFollowersFromServer()Ljava/util/List;

    .line 144
    return-void
.end method

.method public onApplicationCameToForeground()V
    .locals 0

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->onTransmitterCommunicationEvent()V

    .line 372
    return-void
.end method

.method public onTestReset()V
    .locals 3

    .prologue
    .line 615
    :try_start_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->DeleteAllNamedValues()V

    .line 620
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->StopMonitoringReceiver()V

    .line 623
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->listFollowersFromServer()Ljava/util/List;

    move-result-object v0

    .line 624
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Follower;

    .line 625
    iget-object v2, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Follower;->getContactID()Ljava/util/UUID;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->DeleteContact(Ljava/util/UUID;)V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/BaseWSException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 634
    :catch_0
    move-exception v0

    .line 636
    throw v0

    .line 631
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->LogoutPublisherAccount()V
    :try_end_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/BaseWSException; {:try_start_1 .. :try_end_1} :catch_1

    .line 643
    :cond_1
    return-void

    .line 642
    :catch_1
    move-exception v0

    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
.end method

.method public onTransmitterCommunicationEvent()V
    .locals 2

    .prologue
    .line 377
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/share/ShareServiceComponent$4;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/share/ShareServiceComponent$4;-><init>(Lcom/dexcom/cgm/share/ShareServiceComponent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 408
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 409
    return-void
.end method

.method public pauseFollower(Ljava/util/UUID;)V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->PauseSubscription(Ljava/util/UUID;)V

    .line 325
    return-void
.end method

.method public readFAQItems(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/ShareService$FaqItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 791
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebsite;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/share/webservice/DexcomWebsite;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebsite;->readFaqList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public registerTransmitterID(Lcom/dexcom/cgm/model/TransmitterId;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ReplacePublisherAccountMonitoredReceiver(Lcom/dexcom/cgm/model/TransmitterId;)V

    .line 155
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/b/f;->setTransmitterId(Lcom/dexcom/cgm/model/TransmitterId;)V

    .line 156
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/TransmitterId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setLastRegisteredTransmitterId(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public removeFollower(Ljava/util/UUID;)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->DeleteContact(Ljava/util/UUID;)V

    .line 341
    return-void
.end method

.method public resumeFollower(Ljava/util/UUID;)V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ResumeSubscription(Ljava/util/UUID;)V

    .line 333
    return-void
.end method

.method public saveAlertSchedule()V
    .locals 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/share/ShareServiceComponent$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/share/ShareServiceComponent$2;-><init>(Lcom/dexcom/cgm/share/ShareServiceComponent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 196
    return-void
.end method

.method public saveAlertSettings(Z)V
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/share/ShareServiceComponent$1;

    invoke-direct {v1, p0, p1}, Lcom/dexcom/cgm/share/ShareServiceComponent$1;-><init>(Lcom/dexcom/cgm/share/ShareServiceComponent;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 183
    return-void
.end method

.method public saveGraphHeightSetting()V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/share/ShareServiceComponent$3;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/share/ShareServiceComponent$3;-><init>(Lcom/dexcom/cgm/share/ShareServiceComponent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 208
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 209
    return-void
.end method

.method public saveUserAvatar([B)V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->UpdatePublisherAccountImage([B)V

    .line 217
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/d/e;->setUserAvatar([B)V

    .line 218
    return-void
.end method

.method public saveUserDisplayName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->UpdatePublisherAccountDisplayName(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/d/e;->setUserDisplayName(Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public saveUserEmailAddress(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->UpdatePublisherAccountEmail(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/d/e;->setUserEmail(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public setShareWebservice(Lcom/dexcom/cgm/share/webservice/ShareWebservice;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    .line 102
    return-void
.end method

.method public setSharingEnabled(Z)V
    .locals 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getShareEnabled()Z

    move-result v0

    .line 244
    if-ne v0, p1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getTransmitterInfo()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo;->getTransmitterId()Lcom/dexcom/cgm/model/TransmitterId;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->CheckMonitoredReceiverAssignmentStatus(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

    move-result-object v1

    .line 250
    if-eqz p1, :cond_3

    .line 253
    sget-object v2, Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;->AssignedToYou:Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

    if-ne v1, v2, :cond_1

    .line 254
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->startRemoteMonitoringSession(Lcom/dexcom/cgm/model/TransmitterId;)V

    .line 260
    :cond_1
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    .line 261
    iget-object v2, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v2}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/dexcom/cgm/d/e;->setLastShareEGVTimeStamp(J)V

    .line 281
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/d/e;->setShareEnabled(Z)V

    .line 282
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_namedValueHelper:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;

    sget-object v1, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;->ShareEnabled:Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValueHelper;->uploadNamedValue(Lcom/dexcom/cgm/share/NamedValueHelpers/NamedValues;)V

    goto :goto_0

    .line 266
    :cond_3
    invoke-direct {p0}, Lcom/dexcom/cgm/share/ShareServiceComponent;->uploadEGVsIfNeeded()V

    .line 271
    :try_start_0
    sget-object v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;->AssignedToYou:Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

    if-ne v1, v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->StopRemoteMonitoringSession()V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/MonitoringSessionNotActiveWSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateFollowerName(Ljava/util/UUID;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->UpdateContactName(Ljava/util/UUID;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public updateFollowerTrendGraphPermission(Ljava/util/UUID;Z)V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->UpdateSubscriptionPermissions(Ljava/util/UUID;Z)V

    .line 357
    return-void
.end method

.method public updateRuntimeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 773
    :try_start_0
    iget-object v8, p0, Lcom/dexcom/cgm/share/ShareServiceComponent;->m_webservice:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->updateRuntimeInfo(Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;)V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method
