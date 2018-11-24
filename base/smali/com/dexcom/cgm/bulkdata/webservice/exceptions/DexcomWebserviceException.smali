.class public Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;
.super Ljava/lang/Throwable;
.source "DexcomWebserviceException.java"


# instance fields
.field private m_type:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;->m_type:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    .line 26
    return-void
.end method

.method public static fromRetrofitError(Lretrofit/RetrofitError;)Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lretrofit/RetrofitError;->getKind()Lretrofit/RetrofitError$Kind;

    move-result-object v0

    .line 39
    sget-object v1, Lretrofit/RetrofitError$Kind;->NETWORK:Lretrofit/RetrofitError$Kind;

    if-eq v0, v1, :cond_0

    sget-object v1, Lretrofit/RetrofitError$Kind;->CONVERSION:Lretrofit/RetrofitError$Kind;

    if-eq v0, v1, :cond_0

    sget-object v1, Lretrofit/RetrofitError$Kind;->UNEXPECTED:Lretrofit/RetrofitError$Kind;

    if-ne v0, v1, :cond_1

    .line 45
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;

    sget-object v1, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->UnknownException:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;-><init>(Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;)V

    .line 49
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;->parseHTTPError(Lretrofit/RetrofitError;)Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;

    move-result-object v0

    goto :goto_0
.end method

.method private static getType(Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/ServerErrorResponse;)Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;
    .locals 1

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/ServerErrorResponse;->Code:Ljava/lang/String;

    invoke-static {v0}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->UnknownException:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    goto :goto_0
.end method

.method private static isJSON(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 80
    :try_start_0
    invoke-static {}, Lcom/dexcom/cgm/bulkdata/BulkDataGSONHolder;->getGSON()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static jsonStringFromRetrofitError(Lretrofit/RetrofitError;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    :try_start_0
    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    invoke-interface {v0}, Lretrofit/mime/TypedInput;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 108
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v2

    invoke-virtual {v2}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v2

    invoke-interface {v2}, Lretrofit/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 109
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 110
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 112
    :catch_0
    move-exception v0

    .line 114
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static parseHTTPError(Lretrofit/RetrofitError;)Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;
    .locals 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;->jsonStringFromRetrofitError(Lretrofit/RetrofitError;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;->isJSON(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-static {v0}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;->parseJSONError(Ljava/lang/String;)Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;

    sget-object v1, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;->UnknownException:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;-><init>(Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;)V

    goto :goto_0
.end method

.method private static parseJSONError(Ljava/lang/String;)Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;
    .locals 4

    .prologue
    .line 65
    invoke-static {}, Lcom/dexcom/cgm/bulkdata/BulkDataGSONHolder;->getGSON()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/ServerErrorResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/ServerErrorResponse;

    .line 68
    const-class v1, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/ServerErrorResponse;->Code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/ServerErrorResponse;->Message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dexcom/cgm/f/b;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {v0}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;->getType(Lcom/dexcom/cgm/bulkdata/webservice/jsonobjects/ServerErrorResponse;)Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;

    invoke-direct {v1, v0}, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;-><init>(Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;)V

    return-object v1
.end method


# virtual methods
.method public getType()Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceException;->m_type:Lcom/dexcom/cgm/bulkdata/webservice/exceptions/DexcomWebserviceExceptionType;

    return-object v0
.end method
