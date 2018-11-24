.class public Lcom/flurry/sdk/jl;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static c:Lcom/flurry/sdk/jl;


# instance fields
.field a:Z

.field b:Z

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/flurry/sdk/jl;->d:Z

    .line 68
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v1

    .line 69
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/flurry/sdk/jl;->d:Z

    .line 71
    invoke-direct {p0, v1}, Lcom/flurry/sdk/jl;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/jl;->b:Z

    .line 73
    iget-boolean v0, p0, Lcom/flurry/sdk/jl;->d:Z

    if-eqz v0, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/flurry/sdk/jl;->e()V

    .line 76
    :cond_1
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/jl;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/flurry/sdk/jl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/jl;->c:Lcom/flurry/sdk/jl;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/flurry/sdk/jl;

    invoke-direct {v0}, Lcom/flurry/sdk/jl;-><init>()V

    sput-object v0, Lcom/flurry/sdk/jl;->c:Lcom/flurry/sdk/jl;

    .line 25
    :cond_0
    sget-object v0, Lcom/flurry/sdk/jl;->c:Lcom/flurry/sdk/jl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 120
    iget-boolean v1, p0, Lcom/flurry/sdk/jl;->d:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/flurry/sdk/jl;->g()Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized b()V
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/flurry/sdk/jl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/jl;->c:Lcom/flurry/sdk/jl;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/flurry/sdk/jl;->c:Lcom/flurry/sdk/jl;

    invoke-direct {v0}, Lcom/flurry/sdk/jl;->f()V

    .line 33
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/flurry/sdk/jl;->c:Lcom/flurry/sdk/jl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit v1

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized e()V
    .locals 3

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/jl;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v0

    .line 88
    invoke-direct {p0, v0}, Lcom/flurry/sdk/jl;->a(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/sdk/jl;->b:Z

    .line 89
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/jl;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/jl;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 103
    :goto_0
    monitor-exit p0

    return-void

    .line 99
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/jl;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/eg;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method


# virtual methods
.method public c()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/flurry/sdk/jl;->b:Z

    return v0
.end method

.method public d()Lcom/flurry/sdk/dv;
    .locals 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/flurry/sdk/jl;->d:Z

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Lcom/flurry/sdk/dv;->a:Lcom/flurry/sdk/dv;

    .line 166
    :goto_0
    return-object v0

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/flurry/sdk/jl;->g()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    :cond_1
    sget-object v0, Lcom/flurry/sdk/dv;->a:Lcom/flurry/sdk/dv;

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 163
    :pswitch_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    sget-object v0, Lcom/flurry/sdk/dv;->b:Lcom/flurry/sdk/dv;

    goto :goto_0

    .line 150
    :pswitch_1
    sget-object v0, Lcom/flurry/sdk/dv;->c:Lcom/flurry/sdk/dv;

    goto :goto_0

    .line 157
    :pswitch_2
    sget-object v0, Lcom/flurry/sdk/dv;->d:Lcom/flurry/sdk/dv;

    goto :goto_0

    .line 160
    :pswitch_3
    sget-object v0, Lcom/flurry/sdk/dv;->a:Lcom/flurry/sdk/dv;

    goto :goto_0

    .line 166
    :cond_3
    sget-object v0, Lcom/flurry/sdk/dv;->a:Lcom/flurry/sdk/dv;

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/flurry/sdk/jl;->a(Landroid/content/Context;)Z

    move-result v0

    .line 109
    iget-boolean v1, p0, Lcom/flurry/sdk/jl;->b:Z

    if-eq v1, v0, :cond_0

    .line 110
    iput-boolean v0, p0, Lcom/flurry/sdk/jl;->b:Z

    .line 112
    new-instance v1, Lcom/flurry/sdk/du;

    invoke-direct {v1}, Lcom/flurry/sdk/du;-><init>()V

    .line 113
    iput-boolean v0, v1, Lcom/flurry/sdk/du;->a:Z

    .line 114
    invoke-virtual {p0}, Lcom/flurry/sdk/jl;->d()Lcom/flurry/sdk/dv;

    move-result-object v0

    iput-object v0, v1, Lcom/flurry/sdk/du;->b:Lcom/flurry/sdk/dv;

    .line 115
    invoke-virtual {v1}, Lcom/flurry/sdk/du;->b()V

    .line 117
    :cond_0
    return-void
.end method
