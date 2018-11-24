.class Lcom/dexcom/cgm/component_provider/j;
.super Landroid/content/BroadcastReceiver;
.source "CgmService.java"


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/component_provider/CgmService;


# direct methods
.method constructor <init>(Lcom/dexcom/cgm/component_provider/CgmService;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/dexcom/cgm/component_provider/j;->a:Lcom/dexcom/cgm/component_provider/CgmService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 127
    const-string v0, "CgmService"

    const-string v1, "Heartbeat onReceive"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr v2, v0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/j;->a:Lcom/dexcom/cgm/component_provider/CgmService;

    invoke-static {v0}, Lcom/dexcom/cgm/component_provider/CgmService;->access$300(Lcom/dexcom/cgm/component_provider/CgmService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dexcom/cgm/component_provider/j;->a:Lcom/dexcom/cgm/component_provider/CgmService;

    invoke-static {v1}, Lcom/dexcom/cgm/component_provider/CgmService;->access$200(Lcom/dexcom/cgm/component_provider/CgmService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/j;->a:Lcom/dexcom/cgm/component_provider/CgmService;

    invoke-static {v0, v2, v3}, Lcom/dexcom/cgm/component_provider/CgmService;->access$400(Lcom/dexcom/cgm/component_provider/CgmService;J)V

    .line 136
    return-void

    .line 135
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/dexcom/cgm/component_provider/j;->a:Lcom/dexcom/cgm/component_provider/CgmService;

    invoke-static {v1, v2, v3}, Lcom/dexcom/cgm/component_provider/CgmService;->access$400(Lcom/dexcom/cgm/component_provider/CgmService;J)V

    throw v0
.end method
