.class final Lcom/dexcom/cgm/component_provider/k;
.super Ljava/lang/Object;
.source "CgmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/dexcom/cgm/component_provider/CgmService;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/component_provider/CgmService;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/dexcom/cgm/component_provider/k;->a:Lcom/dexcom/cgm/component_provider/CgmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/component_provider/CgmService;B)V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/component_provider/k;-><init>(Lcom/dexcom/cgm/component_provider/CgmService;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/k;->a:Lcom/dexcom/cgm/component_provider/CgmService;

    invoke-static {v0}, Lcom/dexcom/cgm/component_provider/CgmService;->access$100(Lcom/dexcom/cgm/component_provider/CgmService;)Lcom/dexcom/cgm/k/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/k;->a:Lcom/dexcom/cgm/component_provider/CgmService;

    invoke-static {v0}, Lcom/dexcom/cgm/component_provider/CgmService;->access$500(Lcom/dexcom/cgm/component_provider/CgmService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 151
    :try_start_0
    const-string v0, "CgmService"

    const-string v1, "heartbeat"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/k;->a:Lcom/dexcom/cgm/component_provider/CgmService;

    invoke-static {v0}, Lcom/dexcom/cgm/component_provider/CgmService;->access$100(Lcom/dexcom/cgm/component_provider/CgmService;)Lcom/dexcom/cgm/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/k/b;->evInterval()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/k;->a:Lcom/dexcom/cgm/component_provider/CgmService;

    invoke-static {v0}, Lcom/dexcom/cgm/component_provider/CgmService;->access$500(Lcom/dexcom/cgm/component_provider/CgmService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 159
    :cond_0
    return-void

    .line 156
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/dexcom/cgm/component_provider/k;->a:Lcom/dexcom/cgm/component_provider/CgmService;

    invoke-static {v1}, Lcom/dexcom/cgm/component_provider/CgmService;->access$500(Lcom/dexcom/cgm/component_provider/CgmService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
