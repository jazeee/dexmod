.class public Lcom/flurry/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Z

.field private final c:Lcom/flurry/sdk/c;

.field private final d:Ljava/io/File;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/flurry/sdk/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/b;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/b;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/flurry/sdk/c;

    invoke-direct {v0}, Lcom/flurry/sdk/c;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/b;->c:Lcom/flurry/sdk/c;

    .line 31
    const-string v0, ".flurryinstallreceiver."

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/b;->d:Ljava/io/File;

    .line 32
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Referrer file name if it exists:  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/b;->d:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/b;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/flurry/sdk/b;->a:Z

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/b;->a:Z

    .line 87
    const/4 v0, 0x4

    sget-object v1, Lcom/flurry/sdk/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading referrer info from file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/flurry/sdk/b;->d:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/fd;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/flurry/sdk/b;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/flurry/sdk/ij;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/flurry/sdk/b;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Referrer file contents: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/fd;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, v0}, Lcom/flurry/sdk/b;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/flurry/sdk/b;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/flurry/sdk/b;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/flurry/sdk/ij;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Z)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/b;->c()V

    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/b;->c:Lcom/flurry/sdk/c;

    iget-object v1, p0, Lcom/flurry/sdk/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/c;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/flurry/sdk/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_0
    monitor-exit p0

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/b;->e:Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 65
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/flurry/sdk/b;->a:Z

    .line 67
    invoke-direct {p0, p1}, Lcom/flurry/sdk/b;->b(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/flurry/sdk/b;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/b;->c()V

    .line 59
    iget-object v0, p0, Lcom/flurry/sdk/b;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
