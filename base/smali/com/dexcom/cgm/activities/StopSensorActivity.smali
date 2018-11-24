.class public Lcom/dexcom/cgm/activities/StopSensorActivity;
.super Landroid/app/Activity;
.source "StopSensorActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private callLinkForSensorInsertionVideo()V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/StopSensorActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/VideoViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    const-string v1, "VIDEO_URL"

    const-string v2, "https://www.dexcom.com/g5mobile/links/sensor-insertion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/StopSensorActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_0
.end method

.method private stopSensorSession()V
    .locals 4

    .prologue
    .line 85
    invoke-static {}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->instance()Lcom/dexcom/cgm/activities/ActivitiesConnections;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/ActivitiesConnections;->getCgmPresentationExtension()Lcom/dexcom/cgm/i/a;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/dexcom/cgm/k/j;

    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeSeconds()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/dexcom/cgm/k/j;-><init>(J)V

    .line 87
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/i/a;->stopSensor(Lcom/dexcom/cgm/k/j;)V

    .line 88
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/StopSensorActivity;->finish()V

    .line 89
    return-void
.end method


# virtual methods
.method public isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 56
    const-string v0, "connectivity"

    .line 57
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/StopSensorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 58
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/StopSensorActivity;->finish()V

    .line 69
    return-void
.end method

.method public onClickCancel(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/StopSensorActivity;->finish()V

    .line 75
    return-void
.end method

.method public onClickHelpTipInsertion(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/StopSensorActivity;->callLinkForSensorInsertionVideo()V

    .line 39
    return-void
.end method

.method public onClickHelpTipRemoval(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0}, Lcom/dexcom/cgm/activities/alertdialogs/FixedAlertDialogCreator;->showSensorRemovalHelp(Landroid/app/Activity;)V

    .line 34
    return-void
.end method

.method public onClickStopSession(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/StopSensorActivity;->stopSensorSession()V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_stop_sensor:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/StopSensorActivity;->setContentView(I)V

    .line 29
    return-void
.end method
