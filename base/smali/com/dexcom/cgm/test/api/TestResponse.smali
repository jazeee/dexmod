.class public Lcom/dexcom/cgm/test/api/TestResponse;
.super Ljava/lang/Object;
.source "TestResponse.java"


# static fields
.field static s_gson:Lcom/google/gson/Gson;


# instance fields
.field public payload:Ljava/lang/String;

.field public request:Lcom/dexcom/cgm/test/api/TestRequestType;

.field public result:Lcom/dexcom/cgm/test/api/TestResponse$TestResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/test/api/TestResponse;->s_gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private constructor <init>(Lcom/dexcom/cgm/test/api/TestResponse$TestResult;Lcom/dexcom/cgm/test/api/TestRequestType;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/TestResponse;->result:Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

    .line 51
    iput-object p2, p0, Lcom/dexcom/cgm/test/api/TestResponse;->request:Lcom/dexcom/cgm/test/api/TestRequestType;

    .line 52
    iput-object p3, p0, Lcom/dexcom/cgm/test/api/TestResponse;->payload:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static duplicate(Lcom/dexcom/cgm/test/api/TestRequestType;)Lcom/dexcom/cgm/test/api/TestResponse;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/dexcom/cgm/test/api/TestResponse;

    sget-object v1, Lcom/dexcom/cgm/test/api/TestResponse$TestResult;->Duplicate:Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

    const-string v2, ""

    invoke-direct {v0, v1, p0, v2}, Lcom/dexcom/cgm/test/api/TestResponse;-><init>(Lcom/dexcom/cgm/test/api/TestResponse$TestResult;Lcom/dexcom/cgm/test/api/TestRequestType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static failure(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/dexcom/cgm/test/api/TestResponse;
    .locals 5

    .prologue
    .line 37
    new-instance v0, Lcom/dexcom/cgm/test/api/TestResponse;

    sget-object v1, Lcom/dexcom/cgm/test/api/TestResponse$TestResult;->Failure:Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

    const/4 v2, 0x0

    sget-object v3, Lcom/dexcom/cgm/test/api/TestResponse;->s_gson:Lcom/google/gson/Gson;

    new-instance v4, Lcom/dexcom/cgm/test/api/TestResponse$ExceptionResponse;

    invoke-direct {v4, p0, p1}, Lcom/dexcom/cgm/test/api/TestResponse$ExceptionResponse;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/test/api/TestResponse;-><init>(Lcom/dexcom/cgm/test/api/TestResponse$TestResult;Lcom/dexcom/cgm/test/api/TestRequestType;Ljava/lang/String;)V

    return-object v0
.end method

.method public static success(Lcom/dexcom/cgm/test/api/TestRequestType;)Lcom/dexcom/cgm/test/api/TestResponse;
    .locals 1

    .prologue
    .line 24
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/dexcom/cgm/test/api/TestResponse;->success(Lcom/dexcom/cgm/test/api/TestRequestType;Ljava/lang/String;)Lcom/dexcom/cgm/test/api/TestResponse;

    move-result-object v0

    return-object v0
.end method

.method public static success(Lcom/dexcom/cgm/test/api/TestRequestType;Ljava/lang/String;)Lcom/dexcom/cgm/test/api/TestResponse;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/dexcom/cgm/test/api/TestResponse;

    sget-object v1, Lcom/dexcom/cgm/test/api/TestResponse$TestResult;->Success:Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

    invoke-direct {v0, v1, p0, p1}, Lcom/dexcom/cgm/test/api/TestResponse;-><init>(Lcom/dexcom/cgm/test/api/TestResponse$TestResult;Lcom/dexcom/cgm/test/api/TestRequestType;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/TestResponse;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lcom/dexcom/cgm/test/api/TestRequestType;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/TestResponse;->request:Lcom/dexcom/cgm/test/api/TestRequestType;

    return-object v0
.end method

.method public getResult()Lcom/dexcom/cgm/test/api/TestResponse$TestResult;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/TestResponse;->result:Lcom/dexcom/cgm/test/api/TestResponse$TestResult;

    return-object v0
.end method
