.class public Lcom/flurry/sdk/ig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:J

.field private c:Z

.field private d:Z

.field private e:Lcom/flurry/sdk/io;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/flurry/sdk/ig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ig;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/flurry/sdk/ig;->b:J

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/ig;->c:Z

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/ig;->d:Z

    .line 18
    new-instance v0, Lcom/flurry/sdk/ih;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ih;-><init>(Lcom/flurry/sdk/ig;)V

    iput-object v0, p0, Lcom/flurry/sdk/ig;->e:Lcom/flurry/sdk/io;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ig;)Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/flurry/sdk/ig;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/flurry/sdk/ig;)Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/flurry/sdk/ig;->d:Z

    return v0
.end method

.method static synthetic c(Lcom/flurry/sdk/ig;)Lcom/flurry/sdk/io;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/flurry/sdk/ig;->e:Lcom/flurry/sdk/io;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/ig;)J
    .locals 2

    .prologue
    .line 11
    iget-wide v0, p0, Lcom/flurry/sdk/ig;->b:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ig;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 48
    :goto_0
    monitor-exit p0

    return-void

    .line 46
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ig;->e:Lcom/flurry/sdk/io;

    iget-wide v2, p0, Lcom/flurry/sdk/ig;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/flurry/sdk/eg;->b(Ljava/lang/Runnable;J)V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/ig;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/flurry/sdk/ig;->b:J

    .line 35
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/flurry/sdk/ig;->c:Z

    .line 39
    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ig;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 57
    :goto_0
    monitor-exit p0

    return-void

    .line 55
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/ig;->e:Lcom/flurry/sdk/io;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/eg;->c(Ljava/lang/Runnable;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/ig;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
