.class Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<TO;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private function:Lcom/google/common/util/concurrent/AsyncFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/AsyncFunction",
            "<-TI;+TO;>;"
        }
    .end annotation
.end field

.field private inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TI;>;"
        }
    .end annotation
.end field

.field private volatile outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TO;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/AsyncFunction;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AsyncFunction",
            "<-TI;+TO;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TI;>;)V"
        }
    .end annotation

    .prologue
    .line 860
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 861
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/AsyncFunction;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 862
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 863
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AsyncFunction;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/Futures$1;)V
    .locals 0

    .prologue
    .line 851
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;-><init>(Lcom/google/common/util/concurrent/AsyncFunction;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method static synthetic access$302(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    .prologue
    .line 851
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p1
.end method

.method private cancel(Ljava/util/concurrent/Future;Z)V
    .locals 0
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 883
    if-eqz p1, :cond_0

    .line 884
    invoke-interface {p1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 886
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1

    .prologue
    .line 871
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, v0, p1}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->cancel(Ljava/util/concurrent/Future;Z)V

    .line 875
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0, v0, p1}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->cancel(Ljava/util/concurrent/Future;Z)V

    .line 876
    const/4 v0, 0x1

    .line 878
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 893
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 906
    :try_start_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/util/concurrent/AsyncFunction;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/AsyncFunction;->apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    const-string v1, "AsyncFunction may not return null."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 909
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->wasInterrupted()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->outputFuture:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 943
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 944
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 945
    :goto_0
    return-void

    .line 898
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->cancel(Z)Z
    :try_end_2
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 943
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 944
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    .line 900
    :catch_1
    move-exception v0

    .line 902
    :try_start_3
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_3
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 943
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 944
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    .line 914
    :cond_0
    :try_start_4
    new-instance v1, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture$1;-><init>(Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_4
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 943
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 944
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    .line 934
    :catch_2
    move-exception v0

    .line 936
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/reflect/UndeclaredThrowableException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 943
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 944
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    .line 937
    :catch_3
    move-exception v0

    .line 940
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 943
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 944
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    .line 943
    :catchall_0
    move-exception v0

    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->function:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 944
    iput-object v3, p0, Lcom/google/common/util/concurrent/Futures$ChainingListenableFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    throw v0
.end method
