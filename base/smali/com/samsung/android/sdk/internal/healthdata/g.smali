.class public Lcom/samsung/android/sdk/internal/healthdata/g;
.super Ljava/lang/Object;
.source "HealthResultHolderImpl.java"

# interfaces
.implements Lcom/samsung/android/sdk/healthdata/HealthResultHolder;
.implements Lcom/samsung/android/sdk/internal/healthdata/x;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sdk/healthdata/HealthResultHolder",
        "<TT;>;",
        "Lcom/samsung/android/sdk/internal/healthdata/x",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/samsung/android/sdk/internal/healthdata/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/internal/healthdata/h",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/CountDownLatch;

.field private d:Lcom/samsung/android/sdk/healthdata/aj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sdk/healthdata/aj",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile e:Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile f:Z

.field private g:Z

.field private h:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->a:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->c:Ljava/util/concurrent/CountDownLatch;

    .line 48
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/h;

    invoke-direct {v0}, Lcom/samsung/android/sdk/internal/healthdata/h;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->b:Lcom/samsung/android/sdk/internal/healthdata/h;

    .line 49
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->a:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->c:Ljava/util/concurrent/CountDownLatch;

    .line 52
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/h;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/internal/healthdata/h;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->b:Lcom/samsung/android/sdk/internal/healthdata/h;

    .line 53
    return-void
.end method

.method private a()Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/g;->c()V

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/g;->b()V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->e:Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/healthdata/g;->clearStatus()V

    .line 75
    monitor-exit v1

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->f:Z

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Result has already been processed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/healthdata/g;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Result is not ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    return-void
.end method

.method public static createAndSetResult(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;Landroid/os/Looper;)Lcom/samsung/android/sdk/internal/healthdata/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;",
            ">(TT;",
            "Landroid/os/Looper;",
            ")",
            "Lcom/samsung/android/sdk/internal/healthdata/g",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/samsung/android/sdk/internal/healthdata/g;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/internal/healthdata/g;-><init>(Landroid/os/Looper;)V

    .line 57
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/internal/healthdata/g;->setResult(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    .line 58
    return-object v0
.end method


# virtual methods
.method public final await()Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "await() must not be called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/g;->b()V

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/g;->c()V

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/g;->a()Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    move-result-object v0

    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 1146
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1147
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/healthdata/g;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->h:Z

    .line 1150
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final cancel()V
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->f:Z

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    return-void

    .line 129
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/healthdata/g;->cancelResult()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->d:Lcom/samsung/android/sdk/healthdata/aj;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->g:Z

    .line 136
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    :try_start_3
    const-string v2, "Health.ResultHolder"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method protected cancelResult()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method protected clearStatus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->f:Z

    .line 141
    iput-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->e:Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    .line 142
    iput-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->d:Lcom/samsung/android/sdk/healthdata/aj;

    .line 143
    return-void
.end method

.method public final isCanceled()Z
    .locals 2

    .prologue
    .line 116
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->g:Z

    monitor-exit v1

    return v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isReady()Z
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceiveHealthResult(ILcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/internal/healthdata/g;->setResult(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    .line 156
    return-void
.end method

.method public final setResult(Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 160
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->g:Z

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    monitor-exit v1

    .line 171
    :goto_0
    return-void

    .line 164
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/healthdata/g;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Result have been set already"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 168
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/g;->b()V

    .line 1175
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->e:Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    .line 1176
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1177
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->d:Lcom/samsung/android/sdk/healthdata/aj;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->g:Z

    if-nez v0, :cond_3

    .line 1178
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->b:Lcom/samsung/android/sdk/internal/healthdata/h;

    iget-object v2, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->d:Lcom/samsung/android/sdk/healthdata/aj;

    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/g;->a()Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/internal/healthdata/h;->a(Lcom/samsung/android/sdk/healthdata/aj;Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    .line 171
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final setResultListener(Lcom/samsung/android/sdk/healthdata/aj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/healthdata/aj",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/g;->b()V

    .line 102
    iget-object v1, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/healthdata/g;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    monitor-exit v1

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/internal/healthdata/g;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->b:Lcom/samsung/android/sdk/internal/healthdata/h;

    invoke-direct {p0}, Lcom/samsung/android/sdk/internal/healthdata/g;->a()Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/sdk/internal/healthdata/h;->a(Lcom/samsung/android/sdk/healthdata/aj;Lcom/samsung/android/sdk/healthdata/HealthResultHolder$BaseResult;)V

    .line 112
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 110
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/sdk/internal/healthdata/g;->d:Lcom/samsung/android/sdk/healthdata/aj;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
