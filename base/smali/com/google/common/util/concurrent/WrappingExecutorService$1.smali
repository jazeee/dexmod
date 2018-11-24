.class Lcom/google/common/util/concurrent/WrappingExecutorService$1;
.super Ljava/lang/Object;
.source "WrappingExecutorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/WrappingExecutorService;

.field final synthetic val$wrapped:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/WrappingExecutorService;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/common/util/concurrent/WrappingExecutorService$1;->this$0:Lcom/google/common/util/concurrent/WrappingExecutorService;

    iput-object p2, p0, Lcom/google/common/util/concurrent/WrappingExecutorService$1;->val$wrapped:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/WrappingExecutorService$1;->val$wrapped:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_0
.end method
