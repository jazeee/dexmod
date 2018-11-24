.class public Lcom/dexcom/cgm/test/TestService;
.super Landroid/app/Service;
.source "TestService.java"


# instance fields
.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private m_binder:Lcom/dexcom/cgm/test/d;

.field private m_dispatcher:Lcom/dexcom/cgm/test/api/TestDispatcher;

.field private m_socketRunnable:Lcom/dexcom/cgm/test/c;

.field private m_thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    new-instance v0, Lcom/dexcom/cgm/test/d;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/test/d;-><init>(Lcom/dexcom/cgm/test/TestService;)V

    iput-object v0, p0, Lcom/dexcom/cgm/test/TestService;->m_binder:Lcom/dexcom/cgm/test/d;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dexcom/cgm/test/TestService;->m_dispatcher:Lcom/dexcom/cgm/test/api/TestDispatcher;

    .line 41
    new-instance v0, Lcom/dexcom/cgm/test/b;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/test/b;-><init>(Lcom/dexcom/cgm/test/TestService;)V

    iput-object v0, p0, Lcom/dexcom/cgm/test/TestService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/test/TestService;)Lcom/dexcom/cgm/test/c;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dexcom/cgm/test/TestService;->m_socketRunnable:Lcom/dexcom/cgm/test/c;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/test/TestService;)Lcom/dexcom/cgm/test/api/TestDispatcher;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dexcom/cgm/test/TestService;->m_dispatcher:Lcom/dexcom/cgm/test/api/TestDispatcher;

    return-object v0
.end method

.method static synthetic access$102(Lcom/dexcom/cgm/test/TestService;Lcom/dexcom/cgm/test/api/TestDispatcher;)Lcom/dexcom/cgm/test/api/TestDispatcher;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/dexcom/cgm/test/TestService;->m_dispatcher:Lcom/dexcom/cgm/test/api/TestDispatcher;

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dexcom/cgm/test/TestService;->m_binder:Lcom/dexcom/cgm/test/d;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/dexcom/cgm/test/TestService;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/dexcom/cgm/test/TestService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    new-instance v0, Lcom/dexcom/cgm/test/c;

    const/16 v1, 0x10f7

    invoke-direct {v0, p0, v1}, Lcom/dexcom/cgm/test/c;-><init>(Lcom/dexcom/cgm/test/TestService;I)V

    iput-object v0, p0, Lcom/dexcom/cgm/test/TestService;->m_socketRunnable:Lcom/dexcom/cgm/test/c;

    .line 86
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/dexcom/cgm/test/TestService;->m_socketRunnable:Lcom/dexcom/cgm/test/c;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/dexcom/cgm/test/TestService;->m_thread:Ljava/lang/Thread;

    .line 87
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dexcom/cgm/test/TestService;->m_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/dexcom/cgm/test/TestService;->m_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 96
    :cond_0
    const/4 v0, 0x3

    return v0
.end method
