.class public final Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;
.super Ljava/lang/Object;
.source "RealtimeEventWebserviceComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/share/RealtimeEvents/webservice/RealtimeEventWebservice;


# static fields
.field private static final THRESHOLD_FOR_GZIP_IN_BYTES:I = 0x1f4


# instance fields
.field private m_api:Lcom/dexcom/cgm/share/RealtimeEvents/webservice/RealtimeEventWebserviceAPI;

.field private m_applicationID:Ljava/util/UUID;

.field private m_currentDeviceKey:Ljava/util/UUID;

.field private m_dal:Lcom/dexcom/cgm/d/a;

.field private m_patientID:Ljava/util/UUID;

.field private final m_publicKeyIndex:I


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/model/ServerConfiguration;Lcom/dexcom/cgm/d/a;I)V
    .locals 3

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_patientID:Ljava/util/UUID;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting endpoint to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/ServerConfiguration;->getUrl()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/ServerConfiguration;->getApplicationId()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_applicationID:Ljava/util/UUID;

    .line 71
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/ServerConfiguration;->getUrl()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->createAPI(Ljava/net/URL;)Lcom/dexcom/cgm/share/RealtimeEvents/webservice/RealtimeEventWebserviceAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_api:Lcom/dexcom/cgm/share/RealtimeEvents/webservice/RealtimeEventWebserviceAPI;

    .line 72
    iput-object p2, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    .line 73
    iput p3, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_publicKeyIndex:I

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;)Lcom/dexcom/cgm/share/RealtimeEvents/webservice/RealtimeEventWebserviceAPI;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_api:Lcom/dexcom/cgm/share/RealtimeEvents/webservice/RealtimeEventWebserviceAPI;

    return-object v0
.end method

.method private declared-synchronized call(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;
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
    .line 103
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/dexcom/cgm/share/RetrofitCallable;->cleanCall()Ljava/lang/Object;
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 107
    :try_start_1
    sget-object v1, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$8;->$SwitchMap$com$dexcom$cgm$share$webservice$DexcomWebserviceExceptionType:[I

    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->getType(Lretrofit/RetrofitError;)Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 120
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 111
    :pswitch_0
    :try_start_2
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/ServerUnreachableWSException;-><init>()V

    throw v0

    .line 115
    :pswitch_1
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/ServiceUnavailableWSException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createAPI(Ljava/net/URL;)Lcom/dexcom/cgm/share/RealtimeEvents/webservice/RealtimeEventWebserviceAPI;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lretrofit/RestAdapter$Builder;

    invoke-direct {v0}, Lretrofit/RestAdapter$Builder;-><init>()V

    .line 80
    new-instance v1, Lcom/dexcom/cgm/share/webservice/DexcomEndpoint;

    invoke-direct {v1, p1}, Lcom/dexcom/cgm/share/webservice/DexcomEndpoint;-><init>(Ljava/net/URL;)V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setEndpoint(Lretrofit/Endpoint;)Lretrofit/RestAdapter$Builder;

    .line 81
    new-instance v1, Lcom/dexcom/cgm/share/webservice/DexcomRetrofitLogger;

    invoke-direct {v1}, Lcom/dexcom/cgm/share/webservice/DexcomRetrofitLogger;-><init>()V

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLog(Lretrofit/RestAdapter$Log;)Lretrofit/RestAdapter$Builder;

    .line 83
    sget-object v1, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    .line 85
    new-instance v1, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$1;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$1;-><init>(Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;)V

    .line 93
    invoke-virtual {v0, v1}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    .line 95
    invoke-virtual {v0}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v0

    const-class v1, Lcom/dexcom/cgm/share/RealtimeEvents/webservice/RealtimeEventWebserviceAPI;

    invoke-virtual {v0, v1}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/RealtimeEvents/webservice/RealtimeEventWebserviceAPI;

    return-object v0
.end method

.method private randomlyGenerate16Bytes()Ljava/lang/String;
    .locals 3

    .prologue
    .line 359
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private signRequest(Ljava/lang/Object;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->randomlyGenerate16Bytes()Ljava/lang/String;

    move-result-object v7

    .line 327
    invoke-direct {p0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->randomlyGenerate16Bytes()Ljava/lang/String;

    move-result-object v8

    .line 329
    iget v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_publicKeyIndex:I

    invoke-static {v7, v0}, Lcom/dexcom/cgm/share/RealtimeEvents/utils/EncryptionHelper;->encryptKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 331
    iget v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_publicKeyIndex:I

    invoke-static {v8, v0}, Lcom/dexcom/cgm/share/RealtimeEvents/utils/EncryptionHelper;->encryptKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 333
    invoke-static {p1}, Lcom/dexcom/cgm/share/RealtimeEvents/utils/RealtimeEventGSON;->toJSON(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 335
    const/4 v3, 0x0

    .line 336
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    .line 337
    const/4 v3, 0x1

    .line 339
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/SignedRequestHeader;

    iget-object v1, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_patientID:Ljava/util/UUID;

    iget-object v2, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_applicationID:Ljava/util/UUID;

    iget v4, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_publicKeyIndex:I

    invoke-direct/range {v0 .. v6}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/SignedRequestHeader;-><init>(Ljava/util/UUID;Ljava/util/UUID;ZILjava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-static {v9, v3}, Lcom/dexcom/cgm/share/RealtimeEvents/utils/RealtimeEventUtilities;->correctBase64URLEncode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-static {v1, v7, v8}, Lcom/dexcom/cgm/share/RealtimeEvents/utils/EncryptionHelper;->encryptPayload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 352
    iget-object v2, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_currentDeviceKey:Ljava/util/UUID;

    invoke-static {v0, v1, v2}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/SignedRequestGenerator;->generateSignedRequest(Lcom/dexcom/cgm/share/RealtimeEvents/objects/SignedRequestHeader;Ljava/lang/String;Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private validatePatientID()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_patientID:Ljava/util/UUID;

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getPublisherID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_patientID:Ljava/util/UUID;

    .line 135
    iget-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_patientID:Ljava/util/UUID;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice_exceptions/UnknownWSException;-><init>()V

    throw v0

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public final postEvents(Ljava/util/List;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/BaseEventRecord;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->validatePatientID()V

    .line 178
    new-instance v0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/PostEventsContainer;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/PostEventsContainer;-><init>(Ljava/util/List;)V

    .line 179
    new-instance v1, Lcom/dexcom/cgm/share/RealtimeEvents/objects/PostEventsBody;

    invoke-direct {v1, v0, p2, p3}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/PostEventsBody;-><init>(Lcom/dexcom/cgm/share/RealtimeEvents/objects/PostEventsContainer;J)V

    .line 180
    invoke-direct {p0, v1}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->signRequest(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$3;

    invoke-direct {v1, p0, v0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$3;-><init>(Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->call(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    .line 191
    return-void
.end method

.method public final readEvents()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;",
            "Ljava/util/List",
            "<+",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/BaseEventRecord;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->validatePatientID()V

    .line 200
    new-instance v0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadEventsBody;

    invoke-static {}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;->values()[Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadEventsBody;-><init>([Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;)V

    .line 202
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->signRequest(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 204
    new-instance v1, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$4;

    invoke-direct {v1, p0, v0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$4;-><init>(Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->call(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/RealtimeEventResponseContainer;

    .line 213
    iget-object v1, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_patientID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/RealtimeEventResponseContainer;->getContent(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadEventsResponse;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadEventsResponse;

    .line 218
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 219
    invoke-static {}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;->values()[Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 221
    invoke-virtual {v0, v5}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadEventsResponse;->getRecords(Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :cond_0
    return-object v2
.end method

.method public final varargs readLastEvents([Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/BaseEventRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->validatePatientID()V

    .line 233
    new-instance v0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadLastBody;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadLastBody;-><init>([Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;)V

    .line 235
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->signRequest(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 237
    new-instance v1, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$5;

    invoke-direct {v1, p0, v0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$5;-><init>(Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->call(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/RealtimeEventResponseContainer;

    .line 246
    iget-object v1, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_patientID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/RealtimeEventResponseContainer;->getContent(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadLastEventsResponse;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadLastEventsResponse;

    .line 251
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 252
    array-length v3, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p1, v1

    .line 254
    invoke-virtual {v0, v4}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadLastEventsResponse;->getRecord(Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;)Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/BaseEventRecord;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_0
    return-object v2
.end method

.method public final varargs readLastTimestamps([Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->validatePatientID()V

    .line 266
    new-instance v0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadLastBody;

    invoke-direct {v0, p1}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/ReadLastBody;-><init>([Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;)V

    .line 268
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->signRequest(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 271
    new-instance v1, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$6;

    invoke-direct {v1, p0, v0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$6;-><init>(Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->call(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 281
    new-instance v1, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$7;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$7;-><init>(Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;)V

    .line 283
    invoke-virtual {v1}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 284
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 287
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 288
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dexcom/cgm/share/RealtimeEvents/objects/events/EventType;

    .line 290
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 291
    invoke-static {v2}, Lcom/dexcom/cgm/model/ISO8601DateConverter;->getUnixTimeFromISO8601Date(Ljava/lang/String;)J

    move-result-wide v6

    .line 292
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 295
    :cond_0
    return-object v3
.end method

.method public final registerPublisherDeviceKey()V
    .locals 5

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->validatePatientID()V

    .line 150
    iget-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_dal:Lcom/dexcom/cgm/d/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/d/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/d/e;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_currentDeviceKey:Ljava/util/UUID;

    .line 154
    new-instance v1, Lcom/dexcom/cgm/share/RealtimeEvents/objects/DeviceKeyRequest;

    iget-object v2, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_applicationID:Ljava/util/UUID;

    iget-object v3, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_patientID:Ljava/util/UUID;

    iget-object v4, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_currentDeviceKey:Ljava/util/UUID;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/DeviceKeyRequest;-><init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;Ljava/util/UUID;)V

    .line 158
    new-instance v0, Lcom/dexcom/cgm/share/RealtimeEvents/objects/DeviceKeyRequestBody;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/share/RealtimeEvents/objects/DeviceKeyRequestBody;-><init>(Lcom/dexcom/cgm/share/RealtimeEvents/objects/DeviceKeyRequest;)V

    .line 159
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->signRequest(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$2;

    invoke-direct {v1, p0, v0}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent$2;-><init>(Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->call(Lcom/dexcom/cgm/share/RetrofitCallable;)Ljava/lang/Object;

    .line 170
    return-void
.end method

.method public final testAESEncryption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_api:Lcom/dexcom/cgm/share/RealtimeEvents/webservice/RealtimeEventWebserviceAPI;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/dexcom/cgm/share/RealtimeEvents/webservice/RealtimeEventWebserviceAPI;->CheckAesEncryption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final testWrappedAESEncryption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/dexcom/cgm/share/RealtimeEvents/RealtimeEventWebserviceComponent;->m_api:Lcom/dexcom/cgm/share/RealtimeEvents/webservice/RealtimeEventWebserviceAPI;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/dexcom/cgm/share/RealtimeEvents/webservice/RealtimeEventWebserviceAPI;->CheckWrappedAesEncryption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
