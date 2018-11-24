.class final Lcom/google/common/util/concurrent/Futures$5;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$delegates:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field final synthetic val$future:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .prologue
    .line 1197
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$5;->val$delegates:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$5;->val$delegates:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/AsyncSettableFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$5;->val$future:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AsyncSettableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 1200
    return-void
.end method
