.class Lcom/google/common/util/concurrent/AbstractScheduledService$2;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$2;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$2;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->serviceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/MoreExecutors;->newThread(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method
