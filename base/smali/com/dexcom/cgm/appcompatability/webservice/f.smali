.class abstract Lcom/dexcom/cgm/appcompatability/webservice/f;
.super Ljava/lang/Object;
.source "AppCompatabilityWebserviceComponent.java"

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


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/appcompatability/webservice/b;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/appcompatability/webservice/b;B)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/appcompatability/webservice/f;-><init>(Lcom/dexcom/cgm/appcompatability/webservice/b;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/appcompatability/webservice/f;->call()Ljava/lang/Object;
    :try_end_0
    .catch Lretrofit/RetrofitError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 88
    throw v0

    .line 92
    :catch_1
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
