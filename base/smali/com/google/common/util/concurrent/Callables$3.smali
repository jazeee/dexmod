.class final Lcom/google/common/util/concurrent/Callables$3;
.super Ljava/lang/Object;
.source "Callables.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$nameSupplier:Lcom/google/common/base/Supplier;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/common/base/Supplier;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/common/util/concurrent/Callables$3;->val$nameSupplier:Lcom/google/common/base/Supplier;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Callables$3;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 93
    iget-object v0, p0, Lcom/google/common/util/concurrent/Callables$3;->val$nameSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    move-result v3

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Callables$3;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    if-eqz v3, :cond_0

    .line 98
    invoke-static {v2, v1}, Lcom/google/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    .line 101
    :cond_0
    return-void

    .line 97
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_1

    .line 98
    invoke-static {v2, v1}, Lcom/google/common/util/concurrent/Callables;->access$000(Ljava/lang/String;Ljava/lang/Thread;)Z

    :cond_1
    throw v0
.end method
