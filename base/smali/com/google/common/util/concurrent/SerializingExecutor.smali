.class final Lcom/google/common/util/concurrent/SerializingExecutor;
.super Ljava/lang/Object;
.source "SerializingExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final internalLock:Ljava/lang/Object;

.field private isThreadScheduled:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "internalLock"
    .end annotation
.end field

.field private final taskRunner:Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;

.field private final waitQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "internalLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/google/common/util/concurrent/SerializingExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/SerializingExecutor;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->waitQueue:Ljava/util/Queue;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z

    .line 69
    new-instance v0, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;-><init>(Lcom/google/common/util/concurrent/SerializingExecutor;Lcom/google/common/util/concurrent/SerializingExecutor$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->taskRunner:Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;

    .line 81
    new-instance v0, Lcom/google/common/util/concurrent/SerializingExecutor$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/SerializingExecutor$1;-><init>(Lcom/google/common/util/concurrent/SerializingExecutor;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;

    .line 77
    const-string v0, "\'executor\' must not be null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/util/concurrent/SerializingExecutor;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/common/util/concurrent/SerializingExecutor;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/util/concurrent/SerializingExecutor;)Ljava/util/Queue;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->waitQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/common/util/concurrent/SerializingExecutor;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    const-string v2, "\'r\' must not be null."

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 96
    :try_start_0
    iget-object v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->waitQueue:Ljava/util/Queue;

    invoke-interface {v3, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 98
    iget-boolean v3, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z

    if-nez v3, :cond_1

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z

    .line 102
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    if-eqz v0, :cond_0

    .line 106
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->taskRunner:Lcom/google/common/util/concurrent/SerializingExecutor$TaskRunner;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    :cond_0
    return-void

    .line 102
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 109
    :catchall_1
    move-exception v0

    .line 110
    iget-object v1, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->internalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/google/common/util/concurrent/SerializingExecutor;->isThreadScheduled:Z

    .line 116
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
