.class public Lcom/flurry/sdk/ew;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/flurry/sdk/ip;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/flurry/sdk/en;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/en",
            "<",
            "Ljava/lang/Object;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/flurry/sdk/ew;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ew;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/flurry/sdk/en;

    invoke-direct {v0}, Lcom/flurry/sdk/en;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ew;->b:Lcom/flurry/sdk/en;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ew;->c:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ew;->d:Ljava/util/HashMap;

    .line 49
    new-instance v0, Lcom/flurry/sdk/ex;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/flurry/sdk/ex;-><init>(Lcom/flurry/sdk/ew;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/flurry/sdk/ew;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 108
    iget-object v0, p0, Lcom/flurry/sdk/ew;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/flurry/sdk/fa;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/fa;-><init>(Lcom/flurry/sdk/ew;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 132
    new-instance v0, Lcom/flurry/sdk/id;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/flurry/sdk/id;-><init>(Ljava/lang/String;I)V

    .line 133
    iget-object v1, p0, Lcom/flurry/sdk/ew;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 134
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ew;Ljava/lang/Runnable;)Lcom/flurry/sdk/ip;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ew;->a(Ljava/lang/Runnable;)Lcom/flurry/sdk/ip;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Runnable;)Lcom/flurry/sdk/ip;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 238
    instance-of v1, p1, Lcom/flurry/sdk/ev;

    if-eqz v1, :cond_0

    .line 239
    check-cast p1, Lcom/flurry/sdk/ev;

    .line 240
    invoke-virtual {p1}, Lcom/flurry/sdk/ev;->a()Ljava/lang/Runnable;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ip;

    .line 247
    :goto_0
    return-object v0

    .line 241
    :cond_0
    instance-of v1, p1, Lcom/flurry/sdk/ip;

    if-eqz v1, :cond_1

    .line 242
    check-cast p1, Lcom/flurry/sdk/ip;

    move-object v0, p1

    goto :goto_0

    .line 244
    :cond_1
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/ew;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown runnable class: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/flurry/sdk/ew;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/flurry/sdk/ew;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ew;Lcom/flurry/sdk/ip;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ew;->b(Lcom/flurry/sdk/ip;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/flurry/sdk/ip;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ew;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/flurry/sdk/ew;->c(Ljava/lang/Object;Lcom/flurry/sdk/ip;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit p0

    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/Object;Lcom/flurry/sdk/ip;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ew;->b:Lcom/flurry/sdk/en;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/en;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/flurry/sdk/ew;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/Object;Lcom/flurry/sdk/ip;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ew;->b:Lcom/flurry/sdk/en;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/en;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/flurry/sdk/ew;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/flurry/sdk/ip;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 158
    monitor-enter p0

    if-nez p1, :cond_0

    .line 178
    :goto_0
    monitor-exit p0

    return-void

    .line 163
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/flurry/sdk/ew;->d:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/ew;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 165
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 166
    :try_start_2
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ew;->b(Lcom/flurry/sdk/ip;)V

    .line 168
    if-eqz v0, :cond_1

    .line 169
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 172
    :cond_1
    new-instance v0, Lcom/flurry/sdk/fc;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/fc;-><init>(Lcom/flurry/sdk/ew;Lcom/flurry/sdk/ip;)V

    .line 177
    invoke-virtual {v0}, Lcom/flurry/sdk/fc;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 165
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 146
    monitor-enter p0

    if-nez p1, :cond_1

    .line 155
    :cond_0
    monitor-exit p0

    return-void

    .line 150
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 151
    iget-object v1, p0, Lcom/flurry/sdk/ew;->b:Lcom/flurry/sdk/en;

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/en;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 152
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ip;

    .line 153
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ew;->a(Lcom/flurry/sdk/ip;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;Lcom/flurry/sdk/ip;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 137
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 143
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 141
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/ew;->b(Ljava/lang/Object;Lcom/flurry/sdk/ip;)V

    .line 142
    iget-object v0, p0, Lcom/flurry/sdk/ew;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 205
    monitor-enter p0

    if-nez p1, :cond_0

    .line 206
    const-wide/16 v0, 0x0

    .line 209
    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ew;->b:Lcom/flurry/sdk/en;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/en;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 182
    iget-object v1, p0, Lcom/flurry/sdk/ew;->b:Lcom/flurry/sdk/en;

    invoke-virtual {v1}, Lcom/flurry/sdk/en;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 184
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 185
    invoke-virtual {p0, v1}, Lcom/flurry/sdk/ew;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 187
    :cond_0
    monitor-exit p0

    return-void
.end method
