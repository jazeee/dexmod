.class public Lcom/dexcom/cgm/appcompatability/webservice/b;
.super Ljava/lang/Object;
.source "AppCompatabilityWebserviceComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/appcompatability/webservice/a;


# instance fields
.field private communicationsEnabled:Z

.field private lastKnownInternetState:Z

.field private lastKnownServerState:Z

.field private m_api:Lcom/dexcom/cgm/appcompatability/webservice/AppCompatabilityWebserviceAPI;

.field private m_applicationID:Ljava/util/UUID;

.field private m_endpoint:Lretrofit/Endpoint;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/ServerConfiguration;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-boolean v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/b;->lastKnownInternetState:Z

    .line 212
    iput-boolean v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/b;->lastKnownServerState:Z

    .line 220
    iput-boolean v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/b;->communicationsEnabled:Z

    .line 40
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/appcompatability/webservice/b;->createNewClient(Lcom/dexcom/cgm/model/ServerConfiguration;)V

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/appcompatability/webservice/b;)Ljava/util/UUID;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/b;->m_applicationID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/appcompatability/webservice/b;)Lcom/dexcom/cgm/appcompatability/webservice/AppCompatabilityWebserviceAPI;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/b;->m_api:Lcom/dexcom/cgm/appcompatability/webservice/AppCompatabilityWebserviceAPI;

    return-object v0
.end method

.method private static calculateActivatedOn(Lcom/dexcom/cgm/k/m;)Lcom/dexcom/cgm/k/j;
    .locals 4

    .prologue
    .line 1055
    new-instance v0, Lcom/dexcom/cgm/k/n;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/dexcom/cgm/k/n;-><init>(J)V

    invoke-static {p0, v0}, Lcom/dexcom/cgm/k/m;->convertSystemTime(Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/k/n;)Lcom/dexcom/cgm/k/j;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized call(ZLcom/dexcom/cgm/appcompatability/webservice/f;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lcom/dexcom/cgm/appcompatability/webservice/f",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 114
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/b;->lastKnownInternetState:Z

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/b;->lastKnownServerState:Z

    .line 117
    iget-boolean v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/b;->communicationsEnabled:Z

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/b;->lastKnownInternetState:Z

    .line 120
    new-instance v0, Lcom/dexcom/cgm/appcompatability/a/b;

    invoke-direct {v0}, Lcom/dexcom/cgm/appcompatability/a/b;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 125
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/dexcom/cgm/appcompatability/webservice/f;->a()Ljava/lang/Object;
    :try_end_1
    .catch Lretrofit/RetrofitError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 129
    :try_start_2
    invoke-static {v0}, Lcom/dexcom/cgm/appcompatability/webservice/h;->fromRetrofitError(Lretrofit/RetrofitError;)Lcom/dexcom/cgm/appcompatability/webservice/h;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/dexcom/cgm/appcompatability/webservice/h;->getType()Lcom/dexcom/cgm/appcompatability/webservice/i;

    move-result-object v1

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->ServerUnreachable:Lcom/dexcom/cgm/appcompatability/webservice/i;

    if-ne v1, v2, :cond_1

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/b;->lastKnownInternetState:Z

    .line 134
    new-instance v0, Lcom/dexcom/cgm/appcompatability/a/b;

    invoke-direct {v0}, Lcom/dexcom/cgm/appcompatability/a/b;-><init>()V

    throw v0

    .line 136
    :cond_1
    invoke-virtual {v0}, Lcom/dexcom/cgm/appcompatability/webservice/h;->getType()Lcom/dexcom/cgm/appcompatability/webservice/i;

    move-result-object v1

    sget-object v2, Lcom/dexcom/cgm/appcompatability/webservice/i;->ServiceUnavailable:Lcom/dexcom/cgm/appcompatability/webservice/i;

    if-ne v1, v2, :cond_2

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/b;->lastKnownServerState:Z

    .line 140
    new-instance v0, Lcom/dexcom/cgm/appcompatability/a/c;

    invoke-direct {v0}, Lcom/dexcom/cgm/appcompatability/a/c;-><init>()V

    throw v0

    .line 143
    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private declared-synchronized callWithoutSession(Lcom/dexcom/cgm/appcompatability/webservice/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dexcom/cgm/appcompatability/webservice/f",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 105
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/dexcom/cgm/appcompatability/webservice/b;->call(ZLcom/dexcom/cgm/appcompatability/webservice/f;)Ljava/lang/Object;
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

.method public static create(Lcom/dexcom/cgm/model/TransmitterId;Lcom/dexcom/cgm/k/m;Lcom/dexcom/cgm/tx/a/q;Lcom/dexcom/cgm/tx/a/p;Lcom/dexcom/cgm/tx/a/m;)Lcom/dexcom/cgm/model/TransmitterInfo;
    .locals 2

    .prologue
    .line 1031
    new-instance v0, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;-><init>()V

    .line 1032
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setSystemTime(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v0

    .line 1033
    invoke-virtual {v0, p0}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setTransmitterId(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1034
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setDetailsAvailable(Z)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v0

    .line 1035
    invoke-static {p1}, Lcom/dexcom/cgm/appcompatability/webservice/b;->calculateActivatedOn(Lcom/dexcom/cgm/k/m;)Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setActivatedOn(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v0

    .line 1036
    invoke-virtual {p2}, Lcom/dexcom/cgm/tx/a/q;->getTransmitterVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setTransmitterVersion(Ljava/lang/String;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v0

    .line 1037
    invoke-virtual {p2}, Lcom/dexcom/cgm/tx/a/q;->getSoftwareNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setSoftwareNumber(Ljava/lang/String;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v0

    .line 1038
    invoke-virtual {p2}, Lcom/dexcom/cgm/tx/a/q;->getStorageTimeDays()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setStorageTimeDays(I)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v0

    .line 1039
    invoke-virtual {p2}, Lcom/dexcom/cgm/tx/a/q;->getApiVersion()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setApiVersion(I)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v0

    .line 1040
    invoke-virtual {p2}, Lcom/dexcom/cgm/tx/a/q;->getMaxRuntimeDays()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setMaxRuntimeDays(I)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v0

    .line 1041
    invoke-virtual {p2}, Lcom/dexcom/cgm/tx/a/q;->getMaxStorageTimeDays()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setMaxStorageTimeDays(I)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v0

    .line 1042
    invoke-virtual {p3}, Lcom/dexcom/cgm/tx/a/p;->getSessionTimeDays()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setSessionTimeDays(I)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v0

    .line 1043
    invoke-virtual {p3}, Lcom/dexcom/cgm/tx/a/p;->getFeatureFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setFeatureFlags(I)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v0

    .line 1045
    invoke-virtual {p4}, Lcom/dexcom/cgm/tx/a/m;->getCgmProcessorFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    .line 1044
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setCgmProcessorFirmwareVersion(Ljava/lang/String;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v0

    .line 1046
    invoke-virtual {p4}, Lcom/dexcom/cgm/tx/a/m;->getBleRadioFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setBleRadioFirmwareVersion(Ljava/lang/String;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v0

    .line 1047
    invoke-virtual {p4}, Lcom/dexcom/cgm/tx/a/m;->getHardwareVersion()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setHardwareVersion(I)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v0

    .line 1048
    invoke-virtual {p4}, Lcom/dexcom/cgm/tx/a/m;->getBleSoftDeviceVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setBleSoftDeviceVersion(Ljava/lang/String;)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v0

    .line 1049
    invoke-virtual {p4}, Lcom/dexcom/cgm/tx/a/m;->getNordicAsicHwId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->setNordicAsicHwId(I)Lcom/dexcom/cgm/model/TransmitterInfo$Builder;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/TransmitterInfo$Builder;->build()Lcom/dexcom/cgm/model/TransmitterInfo;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized createNewClient(Lcom/dexcom/cgm/model/ServerConfiguration;)V
    .locals 3

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/a/a;

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/ServerConfiguration;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/appcompatability/webservice/a/a;-><init>(Ljava/net/URL;)V

    iput-object v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/b;->m_endpoint:Lretrofit/Endpoint;

    .line 52
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/ServerConfiguration;->getApplicationId()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/b;->m_applicationID:Ljava/util/UUID;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting App Compat endpoint to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/ServerConfiguration;->getUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and application ID to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/appcompatability/webservice/b;->m_applicationID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    .line 59
    new-instance v1, Lcom/dexcom/cgm/appcompatability/webservice/g;

    invoke-direct {v1}, Lcom/dexcom/cgm/appcompatability/webservice/g;-><init>()V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLog(Lretrofit/RestAdapter$Log;)Lretrofit/RestAdapter$Builder;

    .line 60
    sget-object v1, Lretrofit/RestAdapter$LogLevel;->BASIC:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    .line 61
    iget-object v1, p0, Lcom/dexcom/cgm/appcompatability/webservice/b;->m_endpoint:Lretrofit/Endpoint;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Lretrofit/Endpoint;)Lretrofit/RestAdapter$Builder;

    .line 62
    new-instance v1, Lcom/dexcom/cgm/appcompatability/webservice/c;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/appcompatability/webservice/c;-><init>(Lcom/dexcom/cgm/appcompatability/webservice/b;)V

    .line 70
    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    .line 72
    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    const-class v1, Lcom/dexcom/cgm/appcompatability/webservice/AppCompatabilityWebserviceAPI;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/appcompatability/webservice/AppCompatabilityWebserviceAPI;

    iput-object v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/b;->m_api:Lcom/dexcom/cgm/appcompatability/webservice/AppCompatabilityWebserviceAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized checkValidity(Lcom/dexcom/cgm/model/AppRuntimeInfo;)Lcom/dexcom/cgm/model/ValidityResult;
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    .line 188
    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/e;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/appcompatability/webservice/e;-><init>(Lcom/dexcom/cgm/appcompatability/webservice/b;Lcom/dexcom/cgm/model/AppRuntimeInfo;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/appcompatability/webservice/b;->callWithoutSession(Lcom/dexcom/cgm/appcompatability/webservice/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/ValidityResult;
    :try_end_0
    .catch Lcom/dexcom/cgm/appcompatability/webservice/h; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 200
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/appcompatability/a/d;

    invoke-direct {v0}, Lcom/dexcom/cgm/appcompatability/a/d;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getMessage(Ljava/util/UUID;Ljava/lang/String;)Lcom/dexcom/cgm/model/GetMessageResult;
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    .line 160
    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/cgm/appcompatability/webservice/d;-><init>(Lcom/dexcom/cgm/appcompatability/webservice/b;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/appcompatability/webservice/b;->callWithoutSession(Lcom/dexcom/cgm/appcompatability/webservice/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/GetMessageResult;
    :try_end_0
    .catch Lcom/dexcom/cgm/appcompatability/webservice/h; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 175
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/appcompatability/a/d;

    invoke-direct {v0}, Lcom/dexcom/cgm/appcompatability/a/d;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final lastKnownInternetState()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/b;->lastKnownInternetState:Z

    return v0
.end method

.method public final lastKnownServerState()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/b;->lastKnownServerState:Z

    return v0
.end method

.method public final setCommunicationsEnabled(Z)V
    .locals 0

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/dexcom/cgm/appcompatability/webservice/b;->communicationsEnabled:Z

    .line 226
    return-void
.end method

.method public final declared-synchronized updateConfiguration(Lcom/dexcom/cgm/model/ServerConfiguration;)V
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/appcompatability/webservice/b;->createNewClient(Lcom/dexcom/cgm/model/ServerConfiguration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
