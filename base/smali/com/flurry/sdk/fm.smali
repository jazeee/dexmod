.class public Lcom/flurry/sdk/fm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Timer;

.field private c:Lcom/flurry/sdk/fn;

.field private d:Lcom/flurry/sdk/fo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/flurry/sdk/fm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/fm;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/fo;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/flurry/sdk/fm;->d:Lcom/flurry/sdk/fo;

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/fm;)Lcom/flurry/sdk/fo;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/flurry/sdk/fm;->d:Lcom/flurry/sdk/fo;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/flurry/sdk/fm;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/fm;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/flurry/sdk/fm;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/fm;->b:Ljava/util/Timer;

    .line 38
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/fm;->a:Ljava/lang/String;

    const-string v2, "HttpRequestTimeoutTimer stopped."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/fm;->c:Lcom/flurry/sdk/fn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(J)V
    .locals 5

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/flurry/sdk/fm;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/flurry/sdk/fm;->a()V

    .line 27
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const-string v1, "HttpRequestTimeoutTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/sdk/fm;->b:Ljava/util/Timer;

    .line 28
    new-instance v0, Lcom/flurry/sdk/fn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/fn;-><init>(Lcom/flurry/sdk/fm;B)V

    iput-object v0, p0, Lcom/flurry/sdk/fm;->c:Lcom/flurry/sdk/fn;

    .line 29
    iget-object v0, p0, Lcom/flurry/sdk/fm;->b:Ljava/util/Timer;

    iget-object v1, p0, Lcom/flurry/sdk/fm;->c:Lcom/flurry/sdk/fn;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 31
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/fm;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HttpRequestTimeoutTimer started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/fm;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
