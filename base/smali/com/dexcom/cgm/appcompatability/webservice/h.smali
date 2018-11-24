.class public Lcom/dexcom/cgm/appcompatability/webservice/h;
.super Ljava/lang/Throwable;
.source "DexcomWebserviceException.java"


# instance fields
.field private m_type:Lcom/dexcom/cgm/appcompatability/webservice/i;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/appcompatability/webservice/i;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dexcom/cgm/appcompatability/webservice/h;->m_type:Lcom/dexcom/cgm/appcompatability/webservice/i;

    .line 26
    return-void
.end method

.method public static fromRetrofitError(Lretrofit/RetrofitError;)Lcom/dexcom/cgm/appcompatability/webservice/h;
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lretrofit/RetrofitError;->getKind()Lretrofit/RetrofitError$Kind;

    move-result-object v0

    .line 43
    sget-object v1, Lretrofit/RetrofitError$Kind;->NETWORK:Lretrofit/RetrofitError$Kind;

    if-ne v0, v1, :cond_0

    .line 45
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/h;

    sget-object v1, Lcom/dexcom/cgm/appcompatability/webservice/i;->ServerUnreachable:Lcom/dexcom/cgm/appcompatability/webservice/i;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/appcompatability/webservice/h;-><init>(Lcom/dexcom/cgm/appcompatability/webservice/i;)V

    .line 56
    :goto_0
    return-object v0

    .line 47
    :cond_0
    sget-object v1, Lretrofit/RetrofitError$Kind;->CONVERSION:Lretrofit/RetrofitError$Kind;

    if-eq v0, v1, :cond_1

    sget-object v1, Lretrofit/RetrofitError$Kind;->UNEXPECTED:Lretrofit/RetrofitError$Kind;

    if-ne v0, v1, :cond_2

    .line 52
    :cond_1
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/h;

    sget-object v1, Lcom/dexcom/cgm/appcompatability/webservice/i;->UnknownException:Lcom/dexcom/cgm/appcompatability/webservice/i;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/appcompatability/webservice/h;-><init>(Lcom/dexcom/cgm/appcompatability/webservice/i;)V

    goto :goto_0

    .line 56
    :cond_2
    invoke-static {p0}, Lcom/dexcom/cgm/appcompatability/webservice/h;->parseHTTPError(Lretrofit/RetrofitError;)Lcom/dexcom/cgm/appcompatability/webservice/h;

    move-result-object v0

    goto :goto_0
.end method

.method private static getType(Lcom/dexcom/cgm/appcompatability/webservice/a/c;)Lcom/dexcom/cgm/appcompatability/webservice/i;
    .locals 1

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/a/c;->Code:Ljava/lang/String;

    invoke-static {v0}, Lcom/dexcom/cgm/appcompatability/webservice/i;->valueOf(Ljava/lang/String;)Lcom/dexcom/cgm/appcompatability/webservice/i;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/dexcom/cgm/appcompatability/webservice/i;->UnknownException:Lcom/dexcom/cgm/appcompatability/webservice/i;

    goto :goto_0
.end method

.method private static isJSON(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 103
    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    const/4 v0, 0x1

    .line 108
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
    .line 130
    :try_start_0
    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    invoke-interface {v0}, Lretrofit/mime/TypedInput;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 131
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v2

    invoke-virtual {v2}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v2

    invoke-interface {v2}, Lretrofit/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 132
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 133
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 137
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static parseHTTPError(Lretrofit/RetrofitError;)Lcom/dexcom/cgm/appcompatability/webservice/h;
    .locals 4

    .prologue
    .line 62
    invoke-static {p0}, Lcom/dexcom/cgm/appcompatability/webservice/h;->jsonStringFromRetrofitError(Lretrofit/RetrofitError;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/dexcom/cgm/appcompatability/webservice/h;->isJSON(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-static {v0}, Lcom/dexcom/cgm/appcompatability/webservice/h;->parseJSONError(Ljava/lang/String;)Lcom/dexcom/cgm/appcompatability/webservice/h;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    .line 71
    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_1

    .line 73
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/h;

    sget-object v1, Lcom/dexcom/cgm/appcompatability/webservice/i;->ServiceUnavailable:Lcom/dexcom/cgm/appcompatability/webservice/i;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/appcompatability/webservice/h;-><init>(Lcom/dexcom/cgm/appcompatability/webservice/i;)V

    goto :goto_0

    .line 79
    :cond_1
    const-class v1, Lcom/dexcom/cgm/appcompatability/webservice/h;

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

    .line 80
    invoke-virtual {p0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lretrofit/client/Response;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v1, v0}, Lcom/dexcom/cgm/f/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Lcom/dexcom/cgm/appcompatability/webservice/h;

    sget-object v1, Lcom/dexcom/cgm/appcompatability/webservice/i;->UnknownException:Lcom/dexcom/cgm/appcompatability/webservice/i;

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/appcompatability/webservice/h;-><init>(Lcom/dexcom/cgm/appcompatability/webservice/i;)V

    goto :goto_0
.end method

.method private static parseJSONError(Ljava/lang/String;)Lcom/dexcom/cgm/appcompatability/webservice/h;
    .locals 4

    .prologue
    .line 88
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/dexcom/cgm/appcompatability/webservice/a/c;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/appcompatability/webservice/a/c;

    .line 91
    const-class v1, Lcom/dexcom/cgm/appcompatability/webservice/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/dexcom/cgm/appcompatability/webservice/a/c;->Code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/dexcom/cgm/appcompatability/webservice/a/c;->Message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/dexcom/cgm/f/b;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {v0}, Lcom/dexcom/cgm/appcompatability/webservice/h;->getType(Lcom/dexcom/cgm/appcompatability/webservice/a/c;)Lcom/dexcom/cgm/appcompatability/webservice/i;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/dexcom/cgm/appcompatability/webservice/h;

    invoke-direct {v1, v0}, Lcom/dexcom/cgm/appcompatability/webservice/h;-><init>(Lcom/dexcom/cgm/appcompatability/webservice/i;)V

    return-object v1
.end method


# virtual methods
.method public getType()Lcom/dexcom/cgm/appcompatability/webservice/i;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dexcom/cgm/appcompatability/webservice/h;->m_type:Lcom/dexcom/cgm/appcompatability/webservice/i;

    return-object v0
.end method
