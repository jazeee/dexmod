.class Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

.field final synthetic val$delegate:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;->val$delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;->val$delegate:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->cancel(Z)Z

    .line 1114
    :goto_0
    return-void

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture$1;->this$0:Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->set(Ljava/lang/Object;)Z

    .line 1105
    return-void
.end method
