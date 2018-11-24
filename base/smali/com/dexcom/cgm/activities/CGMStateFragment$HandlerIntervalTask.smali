.class Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;
.super Landroid/os/Handler;
.source "CGMStateFragment.java"


# instance fields
.field hasTask:Z

.field runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/activities/CGMStateFragment;)V
    .locals 1

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;->this$0:Lcom/dexcom/cgm/activities/CGMStateFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;->hasTask:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/activities/CGMStateFragment;Lcom/dexcom/cgm/activities/CGMStateFragment$1;)V
    .locals 0

    .prologue
    .line 1350
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment;)V

    return-void
.end method


# virtual methods
.method public hasTask()Z
    .locals 1

    .prologue
    .line 1354
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;->hasTask:Z

    return v0
.end method

.method public repeatWithInterval(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 1357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;->hasTask:Z

    .line 1358
    new-instance v0, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask$1;-><init>(Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;Ljava/lang/Runnable;J)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;->runnable:Ljava/lang/Runnable;

    .line 1367
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p2, p3}, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1368
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/CGMStateFragment$HandlerIntervalTask;->hasTask:Z

    .line 1373
    return-void
.end method
