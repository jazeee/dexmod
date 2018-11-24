.class Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;
.super Landroid/os/Handler;
.source "TrendActivity.java"


# instance fields
.field hasTask:Z

.field runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/dexcom/cgm/activities/TrendActivity;


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/activities/TrendActivity;)V
    .locals 1

    .prologue
    .line 667
    iput-object p1, p0, Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;->this$0:Lcom/dexcom/cgm/activities/TrendActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 669
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;->hasTask:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/dexcom/cgm/activities/TrendActivity;Lcom/dexcom/cgm/activities/TrendActivity$1;)V
    .locals 0

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;-><init>(Lcom/dexcom/cgm/activities/TrendActivity;)V

    return-void
.end method


# virtual methods
.method public hasTask()Z
    .locals 1

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;->hasTask:Z

    return v0
.end method

.method public repeatWithInterval(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;->hasTask:Z

    .line 675
    new-instance v0, Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask$1;-><init>(Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;Ljava/lang/Runnable;J)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;->runnable:Ljava/lang/Runnable;

    .line 684
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p2, p3}, Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 685
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 689
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/TrendActivity$HandlerIntervalTask;->hasTask:Z

    .line 690
    return-void
.end method
