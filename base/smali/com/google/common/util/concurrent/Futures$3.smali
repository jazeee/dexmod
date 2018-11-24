.class final Lcom/google/common/util/concurrent/Futures$3;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TO;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lcom/google/common/base/Function;

.field final synthetic val$input:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Future;Lcom/google/common/base/Function;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$3;->val$input:Ljava/util/concurrent/Future;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$3;->val$function:Lcom/google/common/base/Function;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyTransformation(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)TO;"
        }
    .end annotation

    .prologue
    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$3;->val$function:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 824
    :catch_0
    move-exception v0

    .line 825
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$3;->val$input:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .prologue
    .line 812
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$3;->val$input:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$3;->applyTransformation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TO;"
        }
    .end annotation

    .prologue
    .line 818
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$3;->val$input:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$3;->applyTransformation(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$3;->val$input:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$3;->val$input:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method
