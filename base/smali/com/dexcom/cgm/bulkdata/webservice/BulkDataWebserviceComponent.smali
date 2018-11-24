.class public Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;
.super Ljava/lang/Object;
.source "BulkDataWebserviceComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebservice;


# instance fields
.field private communicationsEnabled:Z

.field private m_api:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceAPI;

.field private m_applicationID:Ljava/util/UUID;

.field private m_dal:Lcom/dexcom/cgm/d/c;

.field private m_password:Ljava/lang/String;

.field private m_sessionID:Ljava/util/UUID;

.field private m_username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/ServerConfiguration;Lcom/dexcom/cgm/d/c;)V
    .locals 4

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->communicationsEnabled:Z

    .line 45
    iput-object p2, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    .line 47
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/DexcomEndpoint;

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/ServerConfiguration;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/bulkdata/webservice/DexcomEndpoint;-><init>(Ljava/net/URL;)V

    .line 48
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/ServerConfiguration;->getApplicationId()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->m_applicationID:Ljava/util/UUID;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting Bulk Data endpoint to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/ServerConfiguration;->getUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and application ID to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->m_applicationID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v1, Lretrofit/RestAdapter$Builder;

    invoke-direct {v1}, Lretrofit/RestAdapter$Builder;-><init>()V

    .line 53
    new-instance v2, Lcom/dexcom/cgm/bulkdata/webservice/DexcomRetrofitLogger;

    invoke-direct {v2}, Lcom/dexcom/cgm/bulkdata/webservice/DexcomRetrofitLogger;-><init>()V

    invoke-virtual {v1, v2}, Lretrofit/RestAdapter$Builder;->setLog(Lretrofit/RestAdapter$Log;)Lretrofit/RestAdapter$Builder;

    .line 54
    sget-object v2, Lretrofit/RestAdapter$LogLevel;->BASIC:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v1, v2}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    .line 55
    invoke-virtual {v1, v0}, Lretrofit/RestAdapter$Builder;->setEndpoint(Lretrofit/Endpoint;)Lretrofit/RestAdapter$Builder;

    .line 56
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$1;-><init>(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;)V

    .line 64
    invoke-virtual {v1, v0}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    .line 66
    invoke-virtual {v1}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    const-class v1, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceAPI;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceAPI;

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->m_api:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceAPI;

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;)Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceAPI;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->m_api:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceAPI;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;)Ljava/util/UUID;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->m_sessionID:Ljava/util/UUID;

    return-object v0
.end method

.method private declared-synchronized call(ZLcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->communicationsEnabled:Z

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;

    sget-object v1, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->UnknownException:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;-><init>(Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 116
    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->isSessionActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->reLogin()V

    .line 121
    :cond_1
    invoke-virtual {p2}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable;->cleanCall()Ljava/lang/Object;
    :try_end_1
    .catch Lretrofit/RetrofitError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 131
    :goto_0
    monitor-exit p0

    return-object v0

    .line 123
    :catch_0
    move-exception v0

    .line 125
    :try_start_2
    invoke-static {v0}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;->fromRetrofitError(Lretrofit/RetrofitError;)Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;

    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->isSessionExpired(Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    invoke-direct {p0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->reLogin()V

    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->call(ZLcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private declared-synchronized callWithValidSession(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/c;->hasUsersPasswordChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tried to post to bulk data, but the user\'s password was changed."

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;

    sget-object v1, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->UnknownException:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;-><init>(Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 93
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->call(ZLcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method private declared-synchronized callWithoutSession(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 102
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->call(ZLcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable;)Ljava/lang/Object;
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

.method private declared-synchronized isSessionActive()Z
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->m_sessionID:Ljava/util/UUID;
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

.method private declared-synchronized isSessionExpired(Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;)Z
    .locals 2

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;->getType()Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->SessionIdNotFound:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    if-eq v0, v1, :cond_0

    .line 144
    invoke-virtual {p1}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;->getType()Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->SessionNotValid:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized reLogin()V
    .locals 3

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->m_username:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->m_username:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->m_password:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->m_password:Ljava/lang/String;

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tried to post, but username or password was null or empty!"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;

    sget-object v1, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->UnknownException:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;-><init>(Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 169
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Login session expired; attempting to reauthenticate. "

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/LoginBody;

    invoke-direct {v0}, Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/LoginBody;-><init>()V

    .line 172
    iget-object v1, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->m_username:Ljava/lang/String;

    iput-object v1, v0, Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/LoginBody;->accountName:Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->m_password:Ljava/lang/String;

    iput-object v1, v0, Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/LoginBody;->password:Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->m_applicationID:Ljava/util/UUID;

    iput-object v1, v0, Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/LoginBody;->applicationId:Ljava/util/UUID;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    :try_start_2
    new-instance v1, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$2;

    invoke-direct {v1, p0, v0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$2;-><init>(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/LoginBody;)V

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->callWithoutSession(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->m_sessionID:Ljava/util/UUID;
    :try_end_2
    .catch Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 188
    :try_start_3
    sget-object v1, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$5;->$SwitchMap$com$dexcom$cgm$bulkdata$webservice$exceptions$DexcomWebserviceExceptionType:[I

    invoke-virtual {v0}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;->getType()Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 199
    :goto_0
    throw v0

    .line 194
    :pswitch_0
    iget-object v1, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->m_dal:Lcom/dexcom/cgm/d/c;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/dexcom/cgm/d/c;->setHasUsersPasswordChanged(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public postPatientData(Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;)Ljava/util/UUID;
    .locals 3

    .prologue
    .line 235
    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$4;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$4;-><init>(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;
    :try_end_0
    .catch Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-object v0

    .line 248
    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {v0}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;->getType()Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    move-result-object v1

    sget-object v2, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->DuplicatePostSequence:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    if-ne v1, v2, :cond_0

    .line 254
    const-string v0, "00000000-0000-0000-0000-000000000000"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {v0}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;->getType()Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    move-result-object v0

    sget-object v1, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->IntegrityCheckFailed:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    if-ne v0, v1, :cond_1

    .line 258
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/IntegrityCheckFailedWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/IntegrityCheckFailedWSException;-><init>()V

    throw v0

    .line 260
    :cond_1
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/UnknownWSException;-><init>()V

    throw v0
.end method

.method public readLastDataPost()Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;
    .locals 1

    .prologue
    .line 214
    :try_start_0
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$3;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$3;-><init>(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;)V

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->callWithValidSession(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/bulkdata/data_post_objects/containers/DataPost;
    :try_end_0
    .catch Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 225
    :catch_0
    move-exception v0

    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/UnknownWSException;-><init>()V

    throw v0
.end method

.method public setCommunicationsEnabled(Z)V
    .locals 0

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->communicationsEnabled:Z

    .line 207
    return-void
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->m_username:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;->m_password:Ljava/lang/String;

    .line 74
    return-void
.end method
