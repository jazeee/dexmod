.class Lcom/google/common/util/concurrent/AbstractScheduledService$3;
.super Lcom/google/common/util/concurrent/Service$Listener;
.source "AbstractScheduledService.java"


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

.field final synthetic val$executor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$3;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$3;->val$executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/Service$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$3;->val$executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 304
    return-void
.end method

.method public terminated(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$3;->val$executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 301
    return-void
.end method
