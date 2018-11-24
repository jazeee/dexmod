.class public Lcom/dexcom/cgm/test/api/TestResponse$ExceptionResponse;
.super Ljava/lang/Object;
.source "TestResponse.java"


# instance fields
.field private final message:Ljava/lang/String;

.field private final throwable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/dexcom/cgm/test/api/TestResponse$ExceptionResponse;->message:Ljava/lang/String;

    .line 81
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/test/api/TestResponse$ExceptionResponse;->getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/test/api/TestResponse$ExceptionResponse;->throwable:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private getStackTraceAsString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 87
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/TestResponse$ExceptionResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dexcom/cgm/test/api/TestResponse$ExceptionResponse;->throwable:Ljava/lang/String;

    return-object v0
.end method
