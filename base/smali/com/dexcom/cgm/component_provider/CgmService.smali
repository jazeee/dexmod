.class public Lcom/dexcom/cgm/component_provider/CgmService;
.super Landroid/app/Service;
.source "CgmService.java"


# static fields
.field private static final HEARTBEAT_INTERVAL_MS:J = 0x493e0L


# instance fields
.field private m_alarmManager:Landroid/app/AlarmManager;

.field private m_binder:Lcom/dexcom/cgm/component_provider/m;

.field private m_handler:Landroid/os/Handler;

.field private m_handlerThread:Landroid/os/HandlerThread;

.field private m_heartbeatTask:Ljava/lang/Runnable;

.field private m_interactionReceiver:Landroid/content/BroadcastReceiver;

.field private m_listener:Lcom/dexcom/cgm/k/b;

.field private m_receiver:Landroid/content/BroadcastReceiver;

.field private m_wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Lcom/dexcom/cgm/component_provider/m;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/component_provider/m;-><init>(Lcom/dexcom/cgm/component_provider/CgmService;)V

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_binder:Lcom/dexcom/cgm/component_provider/m;

    .line 41
    new-instance v0, Lcom/dexcom/cgm/component_provider/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dexcom/cgm/component_provider/k;-><init>(Lcom/dexcom/cgm/component_provider/CgmService;B)V

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_heartbeatTask:Ljava/lang/Runnable;

    .line 42
    new-instance v0, Lcom/dexcom/cgm/component_provider/j;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/component_provider/j;-><init>(Lcom/dexcom/cgm/component_provider/CgmService;)V

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_receiver:Landroid/content/BroadcastReceiver;

    .line 43
    new-instance v0, Lcom/dexcom/cgm/component_provider/l;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/component_provider/l;-><init>(Lcom/dexcom/cgm/component_provider/CgmService;)V

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_interactionReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/component_provider/CgmService;)Lcom/dexcom/cgm/k/b;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_listener:Lcom/dexcom/cgm/k/b;

    return-object v0
.end method

.method static synthetic access$102(Lcom/dexcom/cgm/component_provider/CgmService;Lcom/dexcom/cgm/k/b;)Lcom/dexcom/cgm/k/b;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_listener:Lcom/dexcom/cgm/k/b;

    return-object p1
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/component_provider/CgmService;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_heartbeatTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/component_provider/CgmService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dexcom/cgm/component_provider/CgmService;J)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/component_provider/CgmService;->createNextHeartbeat(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/dexcom/cgm/component_provider/CgmService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private createNextHeartbeat(J)V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 97
    invoke-direct {p0}, Lcom/dexcom/cgm/component_provider/CgmService;->createPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 99
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 101
    iget-object v1, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v3, p1, p2, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_alarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v3, p1, p2, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private createPendingIntent()Landroid/app/PendingIntent;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/component_provider/HeartbeatAlarmReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_binder:Lcom/dexcom/cgm/component_provider/m;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 55
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/component_provider/CgmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 56
    const/4 v1, 0x1

    const-string v2, "CgmServiceWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CgmServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_handlerThread:Landroid/os/HandlerThread;

    .line 58
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_handler:Landroid/os/Handler;

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.dexcom.cgm.action.Heartbeat"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 63
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_interactionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/dexcom/cgm/component_provider/CgmService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/component_provider/CgmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_alarmManager:Landroid/app/AlarmManager;

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/component_provider/CgmService;->createNextHeartbeat(J)V

    .line 70
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 76
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/CgmService;->m_interactionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/component_provider/CgmService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    return-void
.end method
