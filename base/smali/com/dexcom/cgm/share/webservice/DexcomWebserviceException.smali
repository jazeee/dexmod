.class public Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;
.super Ljava/lang/Throwable;
.source "DexcomWebserviceException.java"


# instance fields
.field private m_type:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->m_type:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    .line 26
    return-void
.end method

.method private static getType(Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerErrorResponse;)Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;
    .locals 1

    .prologue
    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerErrorResponse;->Code:Ljava/lang/String;

    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->UnknownException:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    goto :goto_0
.end method

.method public static getType(Lretrofit/RetrofitError;)Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException$1;->$SwitchMap$retrofit$RetrofitError$Kind:[I

    invoke-virtual {p0}, Lretrofit/RetrofitError;->getKind()Lretrofit/RetrofitError$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lretrofit/RetrofitError$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 42
    sget-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->UnknownException:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    :goto_0
    return-object v0

    .line 33
    :pswitch_0
    sget-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ServerUnreachable:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    goto :goto_0

    .line 36
    :pswitch_1
    invoke-static {p0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->parseHTTPError(Lretrofit/RetrofitError;)Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isJSON(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 88
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const/4 v0, 0x1

    .line 93
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
    .line 115
    :try_start_0
    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    invoke-interface {v0}, Lretrofit/mime/TypedInput;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 116
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v2

    invoke-virtual {v2}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v2

    invoke-interface {v2}, Lretrofit/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 117
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 118
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 120
    :catch_0
    move-exception v0

    .line 122
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static parseHTTPError(Lretrofit/RetrofitError;)Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;
    .locals 4

    .prologue
    .line 49
    invoke-static {p0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->jsonStringFromRetrofitError(Lretrofit/RetrofitError;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->isJSON(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->parseJSONError(Ljava/lang/String;)Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    .line 58
    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_1

    .line 60
    sget-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->ServiceUnavailable:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    goto :goto_0

    .line 65
    :cond_1
    const-class v1, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognized HTTP status code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lretrofit/client/Response;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v1, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;->UnknownException:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    goto :goto_0
.end method

.method private static parseJSONError(Ljava/lang/String;)Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;
    .locals 4

    .prologue
    .line 73
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerErrorResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerErrorResponse;

    .line 76
    const-class v1, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerErrorResponse;->Code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerErrorResponse;->Message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dexcom/cgm/f/b;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {v0}, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->getType(Lcom/dexcom/cgm/share/webservice/jsonobjects/ServerErrorResponse;)Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    move-result-object v0

    .line 81
    return-object v0
.end method


# virtual methods
.method public getType()Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dexcom/cgm/share/webservice/DexcomWebserviceException;->m_type:Lcom/dexcom/cgm/share/webservice/DexcomWebserviceExceptionType;

    return-object v0
.end method
