.class final Lcom/google/common/util/concurrent/Futures$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$delegateExecutor:Ljava/util/concurrent/Executor;

.field final synthetic val$delegateTask:Ljava/lang/Runnable;

.field final synthetic val$outputFuture:Lcom/google/common/util/concurrent/AbstractFuture;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;Lcom/google/common/util/concurrent/AbstractFuture;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$1;->val$delegateExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$1;->val$delegateTask:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/google/common/util/concurrent/Futures$1;->val$outputFuture:Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 630
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 632
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$1;->val$delegateExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/common/util/concurrent/Futures$1$1;

    invoke-direct {v2, p0, v1}, Lcom/google/common/util/concurrent/Futures$1$1;-><init>(Lcom/google/common/util/concurrent/Futures$1;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 638
    :catch_0
    move-exception v0

    .line 639
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$1;->val$outputFuture:Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
