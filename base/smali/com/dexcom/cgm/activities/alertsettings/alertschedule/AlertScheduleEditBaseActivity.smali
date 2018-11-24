.class public Lcom/dexcom/cgm/activities/alertsettings/alertschedule/AlertScheduleEditBaseActivity;
.super Landroid/app/Activity;
.source "AlertScheduleEditBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;
    .locals 2

    .prologue
    .line 18
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->getAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    return-object v0
.end method

.method protected saveAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/i/a;->updateAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 24
    return-void
.end method
