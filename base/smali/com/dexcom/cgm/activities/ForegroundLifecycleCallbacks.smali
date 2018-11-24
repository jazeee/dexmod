.class public Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;
.super Ljava/lang/Object;
.source "ForegroundLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private m_actions:Ljava/lang/Runnable;

.field private final m_bulkDataService:Lcom/dexcom/cgm/bulkdata/BulkDataService;

.field private m_foregroundedActivity:Landroid/app/Activity;

.field private m_handler:Landroid/os/Handler;

.field private final m_shareService:Lcom/dexcom/cgm/share/ShareService;

.field private final m_systemHealthChecker:Lcom/dexcom/cgm/j/c;

.field private m_thread:Landroid/os/HandlerThread;

.field private m_visibleActivities:I


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/share/ShareService;Lcom/dexcom/cgm/bulkdata/BulkDataService;Lcom/dexcom/cgm/j/c;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ForegroundProcessingThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_thread:Landroid/os/HandlerThread;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_visibleActivities:I

    .line 34
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    .line 35
    iput-object p2, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_bulkDataService:Lcom/dexcom/cgm/bulkdata/BulkDataService;

    .line 36
    iput-object p3, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_systemHealthChecker:Lcom/dexcom/cgm/j/c;

    .line 37
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_handler:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks$1;-><init>(Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_actions:Ljava/lang/Runnable;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;)Lcom/dexcom/cgm/share/ShareService;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;)Lcom/dexcom/cgm/bulkdata/BulkDataService;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_bulkDataService:Lcom/dexcom/cgm/bulkdata/BulkDataService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;)Lcom/dexcom/cgm/j/c;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_systemHealthChecker:Lcom/dexcom/cgm/j/c;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_foregroundedActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$302(Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_foregroundedActivity:Landroid/app/Activity;

    return-object p1
.end method

.method private performForegroundActions()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_actions:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_visibleActivities:I

    if-nez v0, :cond_0

    .line 62
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_foregroundedActivity:Landroid/app/Activity;

    .line 63
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->performForegroundActions()V

    .line 66
    :cond_0
    iget v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_visibleActivities:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_visibleActivities:I

    .line 67
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_visibleActivities:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dexcom/cgm/activities/ForegroundLifecycleCallbacks;->m_visibleActivities:I

    .line 73
    return-void
.end method
