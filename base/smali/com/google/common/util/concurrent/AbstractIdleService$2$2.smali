.class Lcom/google/common/util/concurrent/AbstractIdleService$2$2;
.super Ljava/lang/Object;
.source "AbstractIdleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/google/common/util/concurrent/AbstractIdleService$2;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractIdleService$2;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$2$2;->this$1:Lcom/google/common/util/concurrent/AbstractIdleService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$2$2;->this$1:Lcom/google/common/util/concurrent/AbstractIdleService$2;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractIdleService$2;->this$0:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractIdleService;->shutDown()V

    .line 70
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$2$2;->this$1:Lcom/google/common/util/concurrent/AbstractIdleService$2;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractIdleService$2;->notifyStopped()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$2$2;->this$1:Lcom/google/common/util/concurrent/AbstractIdleService$2;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractIdleService$2;->notifyFailed(Ljava/lang/Throwable;)V

    .line 73
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
