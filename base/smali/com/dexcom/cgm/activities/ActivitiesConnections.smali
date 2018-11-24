.class public Lcom/dexcom/cgm/activities/ActivitiesConnections;
.super Ljava/lang/Object;
.source "ActivitiesConnections.java"


# static fields
.field private static s_instance:Lcom/dexcom/cgm/activities/ActivitiesConnections;


# instance fields
.field private m_appCompatabilityService$13119d24:Lcom/dexcom/a/a/a;

.field private m_bulkDataService:Lcom/dexcom/cgm/bulkdata/BulkDataService;

.field private m_cgmPresentationExtension:Lcom/dexcom/cgm/i/a;

.field private m_shareService:Lcom/dexcom/cgm/share/ShareService;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static declared-synchronized instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/dexcom/cgm/activities/ActivitiesConnections;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dexcom/cgm/activities/ActivitiesConnections;->s_instance:Lcom/dexcom/cgm/activities/ActivitiesConnections;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/dexcom/cgm/activities/ActivitiesConnections;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/activities/ActivitiesConnections;->s_instance:Lcom/dexcom/cgm/activities/ActivitiesConnections;

    .line 29
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/activities/ActivitiesConnections;->s_instance:Lcom/dexcom/cgm/activities/ActivitiesConnections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static resetAlertsForTest()V
    .locals 0

    .prologue
    .line 87
    invoke-static {}, Lcom/dexcom/cgm/activities/alertdialogs/DialogCreator;->clearAlerts()V

    .line 88
    return-void
.end method

.method public static declared-synchronized teardown()V
    .locals 2

    .prologue
    .line 34
    const-class v0, Lcom/dexcom/cgm/activities/ActivitiesConnections;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/dexcom/cgm/activities/ActivitiesConnections;->s_instance:Lcom/dexcom/cgm/activities/ActivitiesConnections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit v0

    return-void

    .line 34
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getAppCompatabilityService$41724f43()Lcom/dexcom/a/a/a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ActivitiesConnections;->m_appCompatabilityService$13119d24:Lcom/dexcom/a/a/a;

    return-object v0
.end method

.method public getBulkDataService()Lcom/dexcom/cgm/bulkdata/BulkDataService;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ActivitiesConnections;->m_bulkDataService:Lcom/dexcom/cgm/bulkdata/BulkDataService;

    return-object v0
.end method

.method public getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ActivitiesConnections;->m_cgmPresentationExtension:Lcom/dexcom/cgm/i/a;

    return-object v0
.end method

.method public getShareComponent()Lcom/dexcom/cgm/share/ShareService;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dexcom/cgm/activities/ActivitiesConnections;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    return-object v0
.end method

.method public setAppCompatabilityService$7a494fb7(Lcom/dexcom/a/a/a;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ActivitiesConnections;->m_appCompatabilityService$13119d24:Lcom/dexcom/a/a/a;

    .line 74
    return-void
.end method

.method public setBulkDataService(Lcom/dexcom/cgm/bulkdata/BulkDataService;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ActivitiesConnections;->m_bulkDataService:Lcom/dexcom/cgm/bulkdata/BulkDataService;

    .line 79
    return-void
.end method

.method public setCgmPresentationExtension(Lcom/dexcom/cgm/i/a;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ActivitiesConnections;->m_cgmPresentationExtension:Lcom/dexcom/cgm/i/a;

    .line 64
    return-void
.end method

.method public setShareComponent(Lcom/dexcom/cgm/share/ShareService;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/dexcom/cgm/activities/ActivitiesConnections;->m_shareService:Lcom/dexcom/cgm/share/ShareService;

    .line 69
    return-void
.end method
