.class public Lcom/dexcom/cgm/activities/wear/DataService;
.super Landroid/app/Service;
.source "DataService.java"

# interfaces
.implements Lcom/dexcom/cgm/activities/wear/WearableDataUpdateListener;


# instance fields
.field private m_wearable:Lcom/dexcom/cgm/activities/wear/WearableUtilities;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/wear/DataService;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/wear/DataService;->sendDataToWearable()V

    return-void
.end method

.method private getDisplayEGV()Lcom/dexcom/cgm/i/a/f;
    .locals 5

    .prologue
    .line 153
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getCurrentCgmStateInformation()Lcom/dexcom/cgm/h/a/b;

    move-result-object v0

    .line 158
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 159
    new-instance v1, Lcom/dexcom/cgm/i/a/f;

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/b;->getTrendArrow()Lcom/dexcom/cgm/h/a/a/e;

    move-result-object v4

    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/b;->getEgv()I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/dexcom/cgm/i/a/f;-><init>(JLcom/dexcom/cgm/h/a/a/e;I)V

    return-object v1
.end method

.method private static getWatchEGV(Lcom/dexcom/cgm/h/a/c;)Lcom/dexcom/cgm/i/a/f;
    .locals 5

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/dexcom/cgm/h/a/c;->getGlucoseValue()I

    move-result v0

    .line 171
    invoke-virtual {p0}, Lcom/dexcom/cgm/h/a/c;->getTrendArrow()Lcom/dexcom/cgm/h/a/a/e;

    move-result-object v1

    .line 172
    invoke-virtual {p0}, Lcom/dexcom/cgm/h/a/c;->getSystemTimeStamp()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 173
    new-instance v4, Lcom/dexcom/cgm/i/a/f;

    invoke-direct {v4, v2, v3, v1, v0}, Lcom/dexcom/cgm/i/a/f;-><init>(JLcom/dexcom/cgm/h/a/a/e;I)V

    return-object v4
.end method

.method private getWatchEGVs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/i/a/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v0

    .line 136
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 137
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/dexcom/cgm/activities/wear/DataService;->readEGVs(JJ)Ljava/util/List;

    move-result-object v0

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/h/a/c;

    .line 142
    invoke-virtual {v0}, Lcom/dexcom/cgm/h/a/c;->isDisplayOnly()Z

    move-result v3

    if-nez v3, :cond_0

    .line 144
    invoke-static {v0}, Lcom/dexcom/cgm/activities/wear/DataService;->getWatchEGV(Lcom/dexcom/cgm/h/a/c;)Lcom/dexcom/cgm/i/a/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_1
    return-object v1
.end method

.method private readEGVs(JJ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/h/a/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/k/j;

    invoke-direct {v1, p1, p2}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    new-instance v2, Lcom/dexcom/cgm/k/j;

    invoke-direct {v2, p3, p4}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    .line 130
    invoke-interface {v0, v1, v2}, Lcom/dexcom/cgm/i/a;->getCgmDataInInterval(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private sendDataToWearable()V
    .locals 11

    .prologue
    .line 95
    const-string v0, "Wear"

    const-string v1, "Sending Data to Wearable"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Lcom/dexcom/cgm/i/a;->getActiveAlertSettings()Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    .line 99
    const/16 v5, 0x37

    .line 100
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUserLow()Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v5

    .line 105
    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    .line 107
    invoke-interface {v1}, Lcom/dexcom/cgm/i/a;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/dexcom/cgm/d/e;->getGraphHeight()I

    move-result v4

    .line 113
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getAppCompatabilityService$41724f43()Lcom/dexcom/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/a/a/a;->isAppInvalid()Z

    move-result v10

    .line 115
    new-instance v1, Lcom/dexcom/cgm/i/a/e;

    invoke-direct {p0}, Lcom/dexcom/cgm/activities/wear/DataService;->getWatchEGVs()Ljava/util/List;

    move-result-object v2

    .line 116
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/wear/DataService;->getDisplayEGV()Lcom/dexcom/cgm/i/a/f;

    move-result-object v3

    .line 119
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUserHigh()Lcom/dexcom/cgm/i/a/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dexcom/cgm/i/a/b;->getThreshold()I

    move-result v6

    .line 120
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/a;->getUserHigh()Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/b;->isEnabled()Z

    move-result v7

    .line 121
    invoke-static {}, Lcom/dexcom/cgm/k/a;->getTimeOffsetSeconds()J

    move-result-wide v8

    invoke-direct/range {v1 .. v10}, Lcom/dexcom/cgm/i/a/e;-><init>(Ljava/util/List;Lcom/dexcom/cgm/i/a/f;IIIZJZ)V

    .line 123
    iget-object v0, p0, Lcom/dexcom/cgm/activities/wear/DataService;->m_wearable:Lcom/dexcom/cgm/activities/wear/WearableUtilities;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/wear/WearableUtilities;->sendDataToWearable(Lcom/dexcom/cgm/i/a/e;)V

    .line 124
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 42
    new-instance v0, Lcom/dexcom/cgm/activities/wear/WearableUtilities;

    invoke-direct {v0, p0, p0}, Lcom/dexcom/cgm/activities/wear/WearableUtilities;-><init>(Landroid/content/Context;Lcom/dexcom/cgm/activities/wear/WearableDataUpdateListener;)V

    iput-object v0, p0, Lcom/dexcom/cgm/activities/wear/DataService;->m_wearable:Lcom/dexcom/cgm/activities/wear/WearableUtilities;

    .line 45
    new-instance v0, Lcom/dexcom/cgm/activities/wear/DataService$1;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/wear/DataService$1;-><init>(Lcom/dexcom/cgm/activities/wear/DataService;)V

    invoke-static {v0}, Lcom/dexcom/cgm/activities/SettingsUpdatedEventHandler;->addReceiver(Landroid/content/BroadcastReceiver;)V

    .line 53
    return-void
.end method

.method public onDataRefresh()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/wear/DataService;->sendDataToWearable()V

    .line 91
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .prologue
    .line 58
    const-string v0, "Wear"

    const-string v1, "OnStartCommand"

    invoke-static {v0, v1}, Lcom/dexcom/cgm/f/b;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Lcom/dexcom/cgm/activities/wear/DataService$2;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/wear/DataService$2;-><init>(Lcom/dexcom/cgm/activities/wear/DataService;)V

    .line 73
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v1

    .line 75
    invoke-interface {v1, v0}, Lcom/dexcom/cgm/i/a;->registerCgmDataUpdateCallback(Lcom/dexcom/cgm/h/c;)V

    .line 77
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dexcom/cgm/activities/wear/DataService$3;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/wear/DataService$3;-><init>(Lcom/dexcom/cgm/activities/wear/DataService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 85
    const/4 v0, 0x1

    return v0
.end method
