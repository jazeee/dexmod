.class public Lcom/dexcom/cgm/activities/HelpVideosActivity;
.super Landroid/app/Activity;
.source "HelpVideosActivity.java"


# static fields
.field static final SENSOR_INSERTION_START_OFFSET_SECONDS:I = 0xc9


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 69
    const-string v0, "connectivity"

    .line 70
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/HelpVideosActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 71
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClickStartVideo(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v1, 0xc9

    .line 31
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/HelpVideosActivity;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 34
    const/4 v0, 0x0

    .line 35
    new-instance v3, Landroid/content/Intent;

    const-class v2, Lcom/dexcom/cgm/activities/VideoViewActivity;

    invoke-direct {v3, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v4, Lcom/dexcom/cgm/activities/R$id;->videos_transmitter_attachment:I

    if-ne v2, v4, :cond_1

    .line 40
    const-string v0, "https://www.dexcom.com/g5mobile/links/sensor-insertion"

    move-object v2, v0

    move v0, v1

    .line 57
    :goto_0
    const-string v4, "VIDEO_URL"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    if-eqz v0, :cond_0

    .line 59
    const-string v0, "START_OFFSET_IN_SECONDS"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    :cond_0
    invoke-virtual {p0, v3}, Lcom/dexcom/cgm/activities/HelpVideosActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    :goto_1
    return-void

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v4, Lcom/dexcom/cgm/activities/R$id;->videos_sensor_insertion:I

    if-ne v2, v4, :cond_2

    .line 45
    const-string v2, "https://www.dexcom.com/g5mobile/links/sensor-insertion"

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sget v4, Lcom/dexcom/cgm/activities/R$id;->videos_treatment_decisions:I

    if-ne v2, v4, :cond_3

    .line 49
    const-string v2, "https://www.dexcom.com/links/g5-NA/treatment-decisions"

    goto :goto_0

    .line 53
    :cond_3
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_invalid_value:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_1

    .line 64
    :cond_4
    new-instance v0, Lcom/dexcom/cgm/activities/ToastHelper;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/activities/ToastHelper;-><init>(Landroid/app/Activity;)V

    sget v1, Lcom/dexcom/cgm/activities/R$string;->toast_no_internet:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/ToastHelper;->showRedXToast(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_help_videos:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/HelpVideosActivity;->setContentView(I)V

    .line 26
    return-void
.end method
