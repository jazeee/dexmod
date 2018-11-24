.class public Lcom/dexcom/cgm/component_provider/n;
.super Ljava/lang/Object;
.source "ShareWebserviceInterceptor.java"

# interfaces
.implements Lcom/dexcom/cgm/share/webservice/ShareWebservice;


# instance fields
.field private m_internetAvailable:Z

.field private m_mockServerLockout:Z

.field private m_serverAvailable:Z

.field private m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2049
    iput-boolean v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_internetAvailable:Z

    .line 2050
    iput-boolean v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_serverAvailable:Z

    .line 2051
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_mockServerLockout:Z

    return-void
.end method

.method private throwTestExceptionIfNeeded()V
    .locals 1

    .prologue
    .line 2077
    iget-boolean v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_internetAvailable:Z

    if-nez v0, :cond_0

    .line 2078
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException;-><init>()V

    throw v0

    .line 2080
    :cond_0
    iget-boolean v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_serverAvailable:Z

    if-nez v0, :cond_1

    .line 2081
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException;-><init>()V

    throw v0

    .line 2082
    :cond_1
    return-void
.end method


# virtual methods
.method public AuthenticatePublisherAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;
    .locals 1

    .prologue
    .line 2151
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2152
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->AuthenticatePublisherAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public ChangePublisherAccountPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2162
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2163
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ChangePublisherAccountPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    return-void
.end method

.method public CheckMonitoredReceiverAssignmentStatus(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;
    .locals 1

    .prologue
    .line 2400
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2401
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->CheckMonitoredReceiverAssignmentStatus(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;

    move-result-object v0

    return-object v0
.end method

.method public CreateContact(Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;
    .locals 1

    .prologue
    .line 2221
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2222
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->CreateContact(Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public CreateNamedValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2329
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2330
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->CreateNamedValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    return-void
.end method

.method public CreateSubscriptionInvitation(Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;)Ljava/util/UUID;
    .locals 1

    .prologue
    .line 2266
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2267
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->CreateSubscriptionInvitation(Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public DeleteAllNamedValues()V
    .locals 1

    .prologue
    .line 2355
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2356
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->DeleteAllNamedValues()V

    .line 2357
    return-void
.end method

.method public DeleteContact(Ljava/util/UUID;)V
    .locals 1

    .prologue
    .line 2248
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2249
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->DeleteContact(Ljava/util/UUID;)V

    .line 2250
    return-void
.end method

.method public DoesContactExistByName(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2256
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2257
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->DoesContactExistByName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public IsRemoteMonitoringSessionActive()Z
    .locals 1

    .prologue
    .line 2371
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2372
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->IsRemoteMonitoringSessionActive()Z

    move-result v0

    return v0
.end method

.method public ListPublisherAccountSubscriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/webservice/jsonobjects/ListFollowersFollower;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2300
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2301
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ListPublisherAccountSubscriptions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ListValueNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2363
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2364
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ListValueNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public LoginPublisherAccountByName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2126
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2128
    iget-boolean v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_mockServerLockout:Z

    if-eqz v0, :cond_0

    .line 2130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_mockServerLockout:Z

    .line 2131
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/SSO_AuthenticateMaxAttemptsExceededWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/SSO_AuthenticateMaxAttemptsExceededWSException;-><init>()V

    throw v0

    .line 2134
    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->LoginPublisherAccountByName(Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    return-void
.end method

.method public LogoutPublisherAccount()V
    .locals 1

    .prologue
    .line 2141
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2142
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->LogoutPublisherAccount()V

    .line 2143
    return-void
.end method

.method public PauseSubscription(Ljava/util/UUID;)V
    .locals 1

    .prologue
    .line 2283
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2284
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->PauseSubscription(Ljava/util/UUID;)V

    .line 2285
    return-void
.end method

.method public PostReceiverEgvRecords(Lcom/dexcom/cgm/model/TransmitterId;Ljava/util/List;)V
    .locals 1
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
    .line 2428
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2429
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->PostReceiverEgvRecords(Lcom/dexcom/cgm/model/TransmitterId;Ljava/util/List;)V

    .line 2430
    return-void
.end method

.method public ReadContact(Ljava/util/UUID;)Lcom/dexcom/cgm/share/webservice/jsonobjects/ContactInfo;
    .locals 1

    .prologue
    .line 2229
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2230
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ReadContact(Ljava/util/UUID;)Lcom/dexcom/cgm/share/webservice/jsonobjects/ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method public ReadNamedValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2337
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2338
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ReadNamedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ReadPublisherAccountDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2170
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2171
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ReadPublisherAccountDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ReadPublisherAccountEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2186
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2187
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ReadPublisherAccountEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ReadPublisherAccountImage()[B
    .locals 1

    .prologue
    .line 2203
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2204
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ReadPublisherAccountImage()[B

    move-result-object v0

    return-object v0
.end method

.method public ReadPublisherLatestGlucoseValues(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerEGV;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2438
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2439
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ReadPublisherLatestGlucoseValues(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public ReadSubscriptionAlerts(Ljava/util/UUID;)Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;
    .locals 1

    .prologue
    .line 2309
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2310
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ReadSubscriptionAlerts(Ljava/util/UUID;)Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;

    move-result-object v0

    return-object v0
.end method

.method public ReadSubscriptionInviteId(Ljava/util/UUID;)Ljava/util/UUID;
    .locals 1

    .prologue
    .line 2274
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2275
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ReadSubscriptionInviteId(Ljava/util/UUID;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public ReplacePublisherAccountMonitoredReceiver(Lcom/dexcom/cgm/model/TransmitterId;)V
    .locals 1

    .prologue
    .line 2409
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2410
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ReplacePublisherAccountMonitoredReceiver(Lcom/dexcom/cgm/model/TransmitterId;)V

    .line 2411
    return-void
.end method

.method public ResumeSubscription(Ljava/util/UUID;)V
    .locals 1

    .prologue
    .line 2292
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2293
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->ResumeSubscription(Ljava/util/UUID;)V

    .line 2294
    return-void
.end method

.method public StartRemoteMonitoringSession(Lcom/dexcom/cgm/model/TransmitterId;)V
    .locals 1

    .prologue
    .line 2382
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2383
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->StartRemoteMonitoringSession(Lcom/dexcom/cgm/model/TransmitterId;)V

    .line 2384
    return-void
.end method

.method public StopMonitoringReceiver()V
    .locals 1

    .prologue
    .line 2417
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2418
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->StopMonitoringReceiver()V

    .line 2419
    return-void
.end method

.method public StopRemoteMonitoringSession()V
    .locals 1

    .prologue
    .line 2391
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2392
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->StopRemoteMonitoringSession()V

    .line 2393
    return-void
.end method

.method public SystemUtcTime()Lcom/dexcom/cgm/share/webservice/jsonobjects/DateTimeType;
    .locals 1

    .prologue
    .line 2114
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2115
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->SystemUtcTime()Lcom/dexcom/cgm/share/webservice/jsonobjects/DateTimeType;

    move-result-object v0

    return-object v0
.end method

.method public UpdateContactName(Ljava/util/UUID;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2239
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2240
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->UpdateContactName(Ljava/util/UUID;Ljava/lang/String;)V

    .line 2241
    return-void
.end method

.method public UpdateNamedValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2347
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2348
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->UpdateNamedValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    return-void
.end method

.method public UpdatePublisherAccountDisplayName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2178
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2179
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->UpdatePublisherAccountDisplayName(Ljava/lang/String;)V

    .line 2180
    return-void
.end method

.method public UpdatePublisherAccountEmail(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2195
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2196
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->UpdatePublisherAccountEmail(Ljava/lang/String;)V

    .line 2197
    return-void
.end method

.method public UpdatePublisherAccountImage([B)V
    .locals 1

    .prologue
    .line 2211
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2212
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->UpdatePublisherAccountImage([B)V

    .line 2213
    return-void
.end method

.method public UpdateSubscriptionPermissions(Ljava/util/UUID;Z)V
    .locals 1

    .prologue
    .line 2319
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/n;->throwTestExceptionIfNeeded()V

    .line 2320
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->UpdateSubscriptionPermissions(Ljava/util/UUID;Z)V

    .line 2321
    return-void
.end method

.method public isSessionActive()Z
    .locals 1

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->isSessionActive()Z

    move-result v0

    return v0
.end method

.method public lastKnownInternetState()Z
    .locals 1

    .prologue
    .line 2094
    iget-boolean v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_internetAvailable:Z

    if-nez v0, :cond_0

    .line 2095
    const/4 v0, 0x0

    .line 2097
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->lastKnownInternetState()Z

    move-result v0

    goto :goto_0
.end method

.method public lastKnownServerState()Z
    .locals 1

    .prologue
    .line 2104
    iget-boolean v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_serverAvailable:Z

    if-nez v0, :cond_0

    .line 2105
    const/4 v0, 0x0

    .line 2107
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->lastKnownServerState()Z

    move-result v0

    goto :goto_0
.end method

.method public mockServerLockout()V
    .locals 1

    .prologue
    .line 2071
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_mockServerLockout:Z

    .line 2072
    return-void
.end method

.method public setInternetAvailable(Z)V
    .locals 0

    .prologue
    .line 2061
    iput-boolean p1, p0, Lcom/dexcom/cgm/component_provider/n;->m_internetAvailable:Z

    .line 2062
    return-void
.end method

.method public setServerAvailable(Z)V
    .locals 0

    .prologue
    .line 2066
    iput-boolean p1, p0, Lcom/dexcom/cgm/component_provider/n;->m_serverAvailable:Z

    .line 2067
    return-void
.end method

.method public setTarget(Lcom/dexcom/cgm/share/webservice/ShareWebservice;)V
    .locals 0

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    .line 1057
    return-void
.end method

.method public setUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->setUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    return-void
.end method

.method public updateRuntimeInfo(Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;)V
    .locals 1

    .prologue
    .line 2446
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/n;->m_target:Lcom/dexcom/cgm/share/webservice/ShareWebservice;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebservice;->updateRuntimeInfo(Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;)V

    .line 2447
    return-void
.end method
