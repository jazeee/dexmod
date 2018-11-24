.class public final Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;
.super Ljava/lang/Object;
.source "ShareWebserviceComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/share/webservice/ShareWebservice;


# static fields
.field private static final EMPTY_GUID:Ljava/util/UUID;


# instance fields
.field private communicationsEnabled:Z

.field private lastKnownInternetState:Z

.field private lastKnownServerState:Z

.field private m_api:Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

.field private m_applicationID:Ljava/util/UUID;

.field private m_kvac:Lcom/dexcom/cgm/d/e;

.field private m_password:Ljava/lang/String;

.field private m_sessionID:Ljava/util/UUID;

.field private m_username:Ljava/lang/String;

.field private final namedValuePartitionID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "00000000-0000-0000-0000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->EMPTY_GUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Lcom/dexcom/cgm/model/ServerConfiguration;Lcom/dexcom/cgm/d/e;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string v0, "8d61be97-5cc9-4428-9823-1e3b97c36262"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->namedValuePartitionID:Ljava/util/UUID;

    .line 87
    iput-boolean v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->lastKnownInternetState:Z

    .line 88
    iput-boolean v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->lastKnownServerState:Z

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->communicationsEnabled:Z

    .line 93
    iput-object p2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_kvac:Lcom/dexcom/cgm/d/e;

    .line 95
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomEndpoint;

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/ServerConfiguration;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/share/webservice/DexcomEndpoint;-><init>(Ljava/net/URL;)V

    .line 96
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/ServerConfiguration;->getApplicationId()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_applicationID:Ljava/util/UUID;

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting Share endpoint to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/ServerConfiguration;->getUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and application ID to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_applicationID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v1, Lretrofit/RestAdapter$Builder;

    invoke-direct {v1}, Lretrofit/RestAdapter$Builder;-><init>()V

    .line 101
    new-instance v2, Lcom/dexcom/cgm/share/webservice/DexcomRetrofitLogger;

    invoke-direct {v2}, Lcom/dexcom/cgm/share/webservice/DexcomRetrofitLogger;-><init>()V

    invoke-virtual {v1, v2}, Lretrofit/RestAdapter$Builder;->setLog(Lretrofit/RestAdapter$Log;)Lretrofit/RestAdapter$Builder;

    .line 102
    sget-object v2, Lretrofit/RestAdapter$LogLevel;->BASIC:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v1, v2}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    .line 103
    invoke-virtual {v1, v0}, Lretrofit/RestAdapter$Builder;->setEndpoint(Lretrofit/Endpoint;)Lretrofit/RestAdapter$Builder;

    .line 104
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$1;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)V

    .line 112
    invoke-virtual {v1, v0}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    .line 114
    invoke-virtual {v1}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    const-class v1, Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    iput-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_api:Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    .line 118
    invoke-direct {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->initializeStatus()V

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_api:Lcom/dexcom/cgm/share/webservice/ShareWebserviceAPI;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Ljava/util/UUID;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_sessionID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$102(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/util/UUID;)Ljava/util/UUID;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_sessionID:Ljava/util/UUID;

    return-object p1
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)Ljava/util/UUID;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->namedValuePartitionID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->EMPTY_GUID:Ljava/util/UUID;

    return-object v0
.end method

.method private declared-synchronized call(ZLcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lcom/dexcom/cgm/share/RetrofitCallable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 175
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->lastKnownInternetState:Z

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->lastKnownServerState:Z

    .line 178
    iget-boolean v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->communicationsEnabled:Z

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->lastKnownInternetState:Z

    .line 181
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 186
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->isSessionActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    invoke-direct {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->reLogin()V

    .line 191
    :cond_1
    invoke-virtual {p2}, Lcom/dexcom/cgm/share/RetrofitCallable;->cleanCall()Ljava/lang/Object;
    :try_end_1
    .catch Lretrofit/RetrofitError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 204
    :goto_0
    monitor-exit p0

    return-object v0

    .line 193
    :catch_0
    move-exception v0

    .line 195
    :try_start_2
    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->getType(Lretrofit/RetrofitError;)Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    .line 197
    sget-object v1, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$40;->$SwitchMap$com$dexcom$cgm$share$webservice$DexcomWebserviceExceptionType:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 232
    :goto_1
    new-instance v1, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;

    invoke-direct {v1, v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;-><init>(Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;)V

    throw v1

    .line 203
    :pswitch_0
    invoke-direct {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->reLogin()V

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->call(ZLcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 208
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->lastKnownInternetState:Z

    .line 210
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException;-><init>()V

    throw v0

    .line 214
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->lastKnownServerState:Z

    .line 216
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException;-><init>()V

    throw v0

    .line 227
    :pswitch_3
    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_kvac:Lcom/dexcom/cgm/d/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/d/e;->setHasUsersPasswordChanged(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dexcom/cgm/share/RetrofitCallable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_kvac:Lcom/dexcom/cgm/d/e;

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->hasUsersPasswordChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not communicate to the Share server, because the user\'s password was changed. "

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;

    sget-object v1, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->UnknownException:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;-><init>(Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 158
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->call(ZLcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method private declared-synchronized callWithoutSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dexcom/cgm/share/RetrofitCallable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 168
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->call(ZLcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
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

.method private initializeStatus()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$2;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$2;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 138
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 139
    return-void
.end method

.method private declared-synchronized reLogin()V
    .locals 2

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Login session expired; attempting to reauthenticate. "

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_username:Ljava/lang/String;

    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_password:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->LoginPublisherAccountByName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/BaseWSException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 293
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 297
    :catch_1
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;

    sget-object v1, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->UnknownException:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;-><init>(Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method


# virtual methods
.method public final declared-synchronized AuthenticatePublisherAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;
    .locals 2

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;-><init>()V

    .line 385
    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_applicationID:Ljava/util/UUID;

    iput-object v1, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;->applicationId:Ljava/util/UUID;

    .line 386
    iput-object p1, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;->accountName:Ljava/lang/String;

    .line 387
    iput-object p2, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;->password:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :try_start_1
    new-instance v1, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$6;

    invoke-direct {v1, p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$6;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;)V

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithoutSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;
    :try_end_1
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 403
    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ChangePublisherAccountPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 416
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$7;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    monitor-exit p0

    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 433
    :try_start_1
    sget-object v1, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$40;->$SwitchMap$com$dexcom$cgm$share$webservice$DexcomWebserviceExceptionType:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->getType()Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 441
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 439
    :pswitch_0
    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/SSO_AuthenticatePasswordInvalidWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/SSO_AuthenticatePasswordInvalidWSException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 433
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized CheckMonitoredReceiverAssignmentStatus(Lcom/dexcom/cgm/model/TransmitterId;)Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;
    .locals 1

    .prologue
    .line 1160
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$34;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$34;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Lcom/dexcom/cgm/model/TransmitterId;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1170
    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;->valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/share/webservice/jsonobjects/ReceiverAssignmentStatus;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1175
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized CreateContact(Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;
    .locals 1

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$14;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 633
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized CreateNamedValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 922
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$26;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$26;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    monitor-exit p0

    return-void

    .line 938
    :catch_0
    move-exception v0

    .line 940
    :try_start_1
    sget-object v1, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$40;->$SwitchMap$com$dexcom$cgm$share$webservice$DexcomWebserviceExceptionType:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->getType()Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 945
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 922
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 943
    :pswitch_0
    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/NamedValueCreateFailedWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/NamedValueCreateFailedWSException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 940
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized CreateSubscriptionInvitation(Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;)Ljava/util/UUID;
    .locals 1

    .prologue
    .line 741
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$19;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/util/UUID;Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 755
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 741
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized DeleteAllNamedValues()V
    .locals 2

    .prologue
    .line 1020
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$29;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$29;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    monitor-exit p0

    return-void

    .line 1031
    :catch_0
    move-exception v0

    .line 1033
    :try_start_1
    sget-object v1, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$40;->$SwitchMap$com$dexcom$cgm$share$webservice$DexcomWebserviceExceptionType:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->getType()Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1038
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1020
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1036
    :pswitch_0
    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/NamedValueDeleteFailedWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/NamedValueDeleteFailedWSException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1033
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized DeleteContact(Ljava/util/UUID;)V
    .locals 2

    .prologue
    .line 689
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$17;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$17;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/util/UUID;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    monitor-exit p0

    return-void

    .line 699
    :catch_0
    move-exception v0

    .line 701
    :try_start_1
    sget-object v1, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$40;->$SwitchMap$com$dexcom$cgm$share$webservice$DexcomWebserviceExceptionType:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->getType()Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 706
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 704
    :pswitch_0
    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/ContactAlreadyDeletedWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/ContactAlreadyDeletedWSException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 701
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized DoesContactExistByName(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 717
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$18;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$18;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 729
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized IsRemoteMonitoringSessionActive()Z
    .locals 1

    .prologue
    .line 1071
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$31;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$31;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 1083
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1071
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ListPublisherAccountSubscriptions()Ljava/util/List;
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
    .line 847
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$23;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$23;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 859
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ListValueNames()Ljava/util/List;
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
    .line 1049
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$30;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$30;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1061
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1049
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized LoginPublisherAccountByName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 310
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Logging in as user: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;-><init>()V

    .line 313
    iget-object v1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_applicationID:Ljava/util/UUID;

    iput-object v1, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;->applicationId:Ljava/util/UUID;

    .line 314
    iput-object p1, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;->accountName:Ljava/lang/String;

    .line 315
    iput-object p2, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;->password:Ljava/lang/String;

    .line 317
    new-instance v1, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$4;

    invoke-direct {v1, p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$4;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Lcom/dexcom/cgm/share/webservice/jsonobjects/LoginBody;)V

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithoutSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    .line 328
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_username:Ljava/lang/String;

    .line 329
    iput-object p2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_password:Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_kvac:Lcom/dexcom/cgm/d/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/d/e;->setHasUsersPasswordChanged(Z)V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 334
    :try_start_1
    sget-object v1, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$40;->$SwitchMap$com$dexcom$cgm$share$webservice$DexcomWebserviceExceptionType:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->getType()Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 344
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 337
    :pswitch_0
    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/SSO_AuthenticateAccountNotFoundWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/SSO_AuthenticateAccountNotFoundWSException;-><init>()V

    throw v0

    .line 340
    :pswitch_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/SSO_AuthenticatePasswordInvalidWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/SSO_AuthenticatePasswordInvalidWSException;-><init>()V

    throw v0

    .line 342
    :pswitch_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/SSO_AuthenticateMaxAttemptsExceededWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/SSO_AuthenticateMaxAttemptsExceededWSException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized LogoutPublisherAccount()V
    .locals 1

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->isSessionActive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 378
    :goto_0
    monitor-exit p0

    return-void

    .line 359
    :cond_0
    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$5;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$5;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithoutSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_username:Ljava/lang/String;

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_password:Ljava/lang/String;

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_sessionID:Ljava/util/UUID;
    :try_end_1
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized PauseSubscription(Ljava/util/UUID;)V
    .locals 2

    .prologue
    .line 790
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$21;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$21;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/util/UUID;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    monitor-exit p0

    return-void

    .line 800
    :catch_0
    move-exception v0

    .line 802
    :try_start_1
    sget-object v1, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$40;->$SwitchMap$com$dexcom$cgm$share$webservice$DexcomWebserviceExceptionType:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->getType()Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 807
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 790
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 805
    :pswitch_0
    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/SubscriptionNotPausableStateWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/SubscriptionNotPausableStateWSException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 802
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized PostReceiverEgvRecords(Lcom/dexcom/cgm/model/TransmitterId;Ljava/util/List;)V
    .locals 2
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
    .line 1270
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$37;

    invoke-direct {v0, p0, p2, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$37;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/util/List;Lcom/dexcom/cgm/model/TransmitterId;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1301
    monitor-exit p0

    return-void

    .line 1288
    :catch_0
    move-exception v0

    .line 1290
    :try_start_1
    sget-object v1, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$40;->$SwitchMap$com$dexcom$cgm$share$webservice$DexcomWebserviceExceptionType:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->getType()Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1299
    :pswitch_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1293
    :pswitch_1
    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/MonitoringSessionNotActiveWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/MonitoringSessionNotActiveWSException;-><init>()V

    throw v0

    .line 1295
    :pswitch_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/FutureEgvPostedWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/FutureEgvPostedWSException;-><init>()V

    throw v0

    .line 1297
    :pswitch_3
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/DuplicateEgvPostedWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/DuplicateEgvPostedWSException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1290
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final declared-synchronized ReadContact(Ljava/util/UUID;)Lcom/dexcom/cgm/share/webservice/jsonobjects/ContactInfo;
    .locals 1

    .prologue
    .line 643
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$15;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$15;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/util/UUID;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ContactInfo;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 655
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ReadNamedValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 957
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$27;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$27;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 966
    :catch_0
    move-exception v0

    .line 968
    :try_start_1
    sget-object v1, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$40;->$SwitchMap$com$dexcom$cgm$share$webservice$DexcomWebserviceExceptionType:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->getType()Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 973
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 957
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 971
    :pswitch_0
    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/NamedValueReadFailedWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/NamedValueReadFailedWSException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 968
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized ReadPublisherAccountDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$8;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$8;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 465
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ReadPublisherAccountEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$10;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$10;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 513
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ReadPublisherAccountImage()[B
    .locals 1

    .prologue
    .line 554
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$12;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$12;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 580
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ReadPublisherLatestGlucoseValues(II)Ljava/util/List;
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
    .line 1312
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$38;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$38;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;II)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1327
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ReadSubscriptionAlerts(Ljava/util/UUID;)Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;
    .locals 1

    .prologue
    .line 869
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$24;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$24;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/util/UUID;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 883
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 869
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ReadSubscriptionInviteId(Ljava/util/UUID;)Ljava/util/UUID;
    .locals 1

    .prologue
    .line 765
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$20;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$20;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/util/UUID;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 779
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 765
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ReplacePublisherAccountMonitoredReceiver(Lcom/dexcom/cgm/model/TransmitterId;)V
    .locals 2

    .prologue
    .line 1187
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$35;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$35;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Lcom/dexcom/cgm/model/TransmitterId;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    :pswitch_0
    monitor-exit p0

    return-void

    .line 1199
    :catch_0
    move-exception v0

    .line 1201
    :try_start_1
    sget-object v1, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$40;->$SwitchMap$com$dexcom$cgm$share$webservice$DexcomWebserviceExceptionType:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->getType()Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1210
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1208
    :pswitch_1
    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/SerialNumberAssignedToSomeoneElseWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/SerialNumberAssignedToSomeoneElseWSException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1201
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized ResumeSubscription(Ljava/util/UUID;)V
    .locals 2

    .prologue
    .line 819
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$22;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$22;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/util/UUID;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    monitor-exit p0

    return-void

    .line 829
    :catch_0
    move-exception v0

    .line 831
    :try_start_1
    sget-object v1, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$40;->$SwitchMap$com$dexcom$cgm$share$webservice$DexcomWebserviceExceptionType:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->getType()Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 836
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 819
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 834
    :pswitch_0
    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/SubscriptionNotPausedWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/SubscriptionNotPausedWSException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 831
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized StartRemoteMonitoringSession(Lcom/dexcom/cgm/model/TransmitterId;)V
    .locals 2

    .prologue
    .line 1096
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$32;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$32;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Lcom/dexcom/cgm/model/TransmitterId;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1121
    monitor-exit p0

    return-void

    .line 1108
    :catch_0
    move-exception v0

    .line 1110
    :try_start_1
    sget-object v1, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$40;->$SwitchMap$com$dexcom$cgm$share$webservice$DexcomWebserviceExceptionType:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->getType()Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1119
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1096
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1113
    :pswitch_0
    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/MonitoringSessionAlreadyActiveWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/MonitoringSessionAlreadyActiveWSException;-><init>()V

    throw v0

    .line 1115
    :pswitch_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/MonitoredReceiverNotAssignedWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/MonitoredReceiverNotAssignedWSException;-><init>()V

    throw v0

    .line 1117
    :pswitch_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/MonitoredReceiverSerialNumberDoesNotMatchWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/MonitoredReceiverSerialNumberDoesNotMatchWSException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1110
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final StopMonitoringReceiver()V
    .locals 1

    .prologue
    .line 1222
    :try_start_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->StopRemoteMonitoringSession()V
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice_exceptions/MonitoringSessionNotActiveWSException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1231
    :goto_0
    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$36;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$36;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1257
    return-void

    .line 1256
    :catch_0
    move-exception v0

    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final declared-synchronized StopRemoteMonitoringSession()V
    .locals 2

    .prologue
    .line 1131
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$33;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$33;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    monitor-exit p0

    return-void

    .line 1141
    :catch_0
    move-exception v0

    .line 1143
    :try_start_1
    sget-object v1, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$40;->$SwitchMap$com$dexcom$cgm$share$webservice$DexcomWebserviceExceptionType:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->getType()Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1148
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1146
    :pswitch_0
    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/MonitoringSessionNotActiveWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/MonitoringSessionNotActiveWSException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1143
    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized SystemUtcTime()Lcom/dexcom/cgm/share/webservice/jsonobjects/DateTimeType;
    .locals 1

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$3;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$3;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithoutSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/DateTimeType;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 274
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized UpdateContactName(Ljava/util/UUID;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 665
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$16;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$16;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/util/UUID;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    monitor-exit p0

    return-void

    .line 678
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 665
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized UpdateNamedValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 985
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$28;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$28;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1010
    monitor-exit p0

    return-void

    .line 1001
    :catch_0
    move-exception v0

    .line 1003
    :try_start_1
    sget-object v1, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$40;->$SwitchMap$com$dexcom$cgm$share$webservice$DexcomWebserviceExceptionType:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->getType()Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1008
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 985
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1006
    :pswitch_0
    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/NamedValueUpdateFailedWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/NamedValueUpdateFailedWSException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1003
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized UpdatePublisherAccountDisplayName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$9;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$9;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    monitor-exit p0

    return-void

    .line 490
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized UpdatePublisherAccountEmail(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$11;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$11;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    monitor-exit p0

    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 536
    :try_start_1
    sget-object v1, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$40;->$SwitchMap$com$dexcom$cgm$share$webservice$DexcomWebserviceExceptionType:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->getType()Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 543
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 541
    :pswitch_0
    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/InvalidEmailAddressWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/InvalidEmailAddressWSException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 536
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized UpdatePublisherAccountImage([B)V
    .locals 1

    .prologue
    .line 590
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$13;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$13;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;[B)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    monitor-exit p0

    return-void

    .line 606
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized UpdateSubscriptionPermissions(Ljava/util/UUID;Z)V
    .locals 1

    .prologue
    .line 895
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$25;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Ljava/util/UUID;Z)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    monitor-exit p0

    return-void

    .line 911
    :catch_0
    move-exception v0

    :try_start_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 895
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isSessionActive()Z
    .locals 1

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_sessionID:Ljava/util/UUID;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final lastKnownInternetState()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->lastKnownInternetState:Z

    return v0
.end method

.method public final lastKnownServerState()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->lastKnownServerState:Z

    return v0
.end method

.method public final setUsernameAndPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_username:Ljava/lang/String;

    .line 1359
    iput-object p2, p0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->m_password:Ljava/lang/String;

    .line 1360
    return-void
.end method

.method public final updateRuntimeInfo(Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;)V
    .locals 1

    .prologue
    .line 1337
    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$39;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent$39;-><init>(Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;Lcom/dexcom/cgm/share/webservice/jsonobjects/RuntimeInfo;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/webservice/ShareWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1352
    return-void

    .line 1351
    :catch_0
    move-exception v0

    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
.end method
