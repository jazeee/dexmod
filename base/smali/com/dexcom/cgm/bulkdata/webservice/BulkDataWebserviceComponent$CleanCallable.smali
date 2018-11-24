.class abstract Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable;
.super Ljava/lang/Object;
.source "BulkDataWebserviceComponent.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable;->this$0:Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$1;)V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable;-><init>(Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent;)V

    return-void
.end method


# virtual methods
.method public final cleanCall()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 273
    :try_start_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/bulkdata/webservice/BulkDataWebserviceComponent$CleanCallable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 275
    :catch_0
    move-exception v0

    .line 277
    throw v0

    .line 279
    :catch_1
    move-exception v0

    .line 283
    const-string v1, ""

    invoke-static {v1, v0}, Lretrofit/RetrofitError;->unexpectedError(Ljava/lang/String;Ljava/lang/Throwable;)Lretrofit/RetrofitError;

    move-result-object v0

    throw v0
.end method
