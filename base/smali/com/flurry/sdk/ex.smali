.class final Lcom/flurry/sdk/ex;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/flurry/sdk/ew;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ew;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 8

    .prologue
    .line 50
    iput-object p1, p0, Lcom/flurry/sdk/ex;->a:Lcom/flurry/sdk/ew;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method


# virtual methods
.method protected final afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 73
    iget-object v0, p0, Lcom/flurry/sdk/ex;->a:Lcom/flurry/sdk/ew;

    invoke-static {v0, p1}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew;Ljava/lang/Runnable;)Lcom/flurry/sdk/ip;

    move-result-object v0

    .line 74
    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/flurry/sdk/ex;->a:Lcom/flurry/sdk/ew;

    invoke-static {v1}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/flurry/sdk/ex;->a:Lcom/flurry/sdk/ew;

    invoke-static {v2}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget-object v1, p0, Lcom/flurry/sdk/ex;->a:Lcom/flurry/sdk/ew;

    invoke-static {v1, v0}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew;Lcom/flurry/sdk/ip;)V

    .line 83
    new-instance v1, Lcom/flurry/sdk/ez;

    invoke-direct {v1, p0, v0}, Lcom/flurry/sdk/ez;-><init>(Lcom/flurry/sdk/ex;Lcom/flurry/sdk/ip;)V

    .line 88
    invoke-virtual {v1}, Lcom/flurry/sdk/ez;->run()V

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 56
    iget-object v0, p0, Lcom/flurry/sdk/ex;->a:Lcom/flurry/sdk/ew;

    invoke-static {v0, p2}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew;Ljava/lang/Runnable;)Lcom/flurry/sdk/ip;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v1, Lcom/flurry/sdk/ey;

    invoke-direct {v1, p0, v0}, Lcom/flurry/sdk/ey;-><init>(Lcom/flurry/sdk/ex;Lcom/flurry/sdk/ip;)V

    .line 66
    invoke-virtual {v1}, Lcom/flurry/sdk/ey;->run()V

    goto :goto_0
.end method

.method protected final newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/flurry/sdk/ev;

    invoke-direct {v0, p1, p2}, Lcom/flurry/sdk/ev;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 100
    iget-object v1, p0, Lcom/flurry/sdk/ex;->a:Lcom/flurry/sdk/ew;

    invoke-static {v1}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/flurry/sdk/ex;->a:Lcom/flurry/sdk/ew;

    invoke-static {v2}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ew;)Ljava/util/HashMap;

    move-result-object v2

    check-cast p1, Lcom/flurry/sdk/ip;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    monitor-exit v1

    .line 104
    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Callable not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
