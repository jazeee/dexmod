.class final Lcom/google/common/util/concurrent/Futures$CombinerFuture;
.super Lcom/google/common/util/concurrent/ListenableFutureTask;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/ListenableFutureTask",
        "<TV;>;"
    }
.end annotation


# instance fields
.field futures:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 1056
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/ListenableFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1057
    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$CombinerFuture;->futures:Lcom/google/common/collect/ImmutableList;

    .line 1058
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinerFuture;->futures:Lcom/google/common/collect/ImmutableList;

    .line 1062
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/ListenableFutureTask;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1063
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 1064
    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_0

    .line 1066
    :cond_0
    const/4 v0, 0x1

    .line 1068
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected final done()V
    .locals 1

    .prologue
    .line 1072
    invoke-super {p0}, Lcom/google/common/util/concurrent/ListenableFutureTask;->done()V

    .line 1073
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$CombinerFuture;->futures:Lcom/google/common/collect/ImmutableList;

    .line 1074
    return-void
.end method

.method protected final setException(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1077
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/ListenableFutureTask;->setException(Ljava/lang/Throwable;)V

    .line 1078
    return-void
.end method
