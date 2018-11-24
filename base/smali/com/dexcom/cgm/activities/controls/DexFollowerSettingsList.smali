.class public Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;
.super Landroid/widget/LinearLayout;
.source "DexFollowerSettingsList.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->inflate()V

    .line 30
    return-void
.end method

.method private findNavViewByID(I)Lcom/dexcom/cgm/activities/DexListNavView;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    return-object v0
.end method

.method public static getDelayString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 106
    div-int/lit8 v0, p1, 0x3c

    .line 107
    rem-int/lit8 v1, p1, 0x3c

    .line 109
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 111
    if-eq v0, v2, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Developer Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;

    .line 115
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".getDelayString() was given an invalid number of minutes. The value was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_share_1_hour_and_minutes:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    .line 121
    :cond_1
    if-eqz v0, :cond_3

    .line 123
    if-ne v0, v2, :cond_2

    .line 124
    sget v0, Lcom/dexcom/cgm/activities/R$string;->time_60:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_2
    sget v1, Lcom/dexcom/cgm/activities/R$string;->dex_share_hours:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_3
    sget v0, Lcom/dexcom/cgm/activities/R$string;->dex_share_minutes:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMGDLString(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$string;->share_mgdl:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 101
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 98
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private inflate()V
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 37
    sget v1, Lcom/dexcom/cgm/activities/R$layout;->dex_follower_settings_list:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    return-void
.end method

.method private setupDelayCell(IIZ)V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->findNavViewByID(I)Lcom/dexcom/cgm/activities/DexListNavView;

    move-result-object v1

    .line 92
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->getDelayString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 93
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/DexListNavView;->setVisibility(I)V

    .line 94
    return-void

    .line 93
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setupEnabledCell(IZ)V
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->findNavViewByID(I)Lcom/dexcom/cgm/activities/DexListNavView;

    move-result-object v1

    .line 77
    if-eqz p2, :cond_0

    sget v0, Lcom/dexcom/cgm/activities/R$string;->alert_text_on:I

    .line 78
    :goto_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 80
    return-void

    .line 77
    :cond_0
    sget v0, Lcom/dexcom/cgm/activities/R$string;->alert_text_off:I

    goto :goto_0
.end method

.method private setupThresholdCell(IIZ)V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->findNavViewByID(I)Lcom/dexcom/cgm/activities/DexListNavView;

    move-result-object v1

    .line 85
    invoke-direct {p0, p2}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->getMGDLString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 86
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/DexListNavView;->setVisibility(I)V

    .line 87
    return-void

    .line 86
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public setFollower(Lcom/dexcom/cgm/model/Follower;)V
    .locals 3

    .prologue
    .line 51
    sget v0, Lcom/dexcom/cgm/activities/R$id;->review_allow_trend_graph_view:I

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Follower;->hasTrendPermission()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->setupEnabledCell(IZ)V

    .line 53
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Follower;->isUrgentLowEnabled()Z

    move-result v0

    .line 54
    sget v1, Lcom/dexcom/cgm/activities/R$id;->review_urgent_low:I

    invoke-direct {p0, v1, v0}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->setupEnabledCell(IZ)V

    .line 55
    sget v1, Lcom/dexcom/cgm/activities/R$id;->review_urgent_low_threshold:I

    .line 56
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Follower;->getUrgentLowThreshold()I

    move-result v2

    .line 55
    invoke-direct {p0, v1, v2, v0}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->setupThresholdCell(IIZ)V

    .line 59
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Follower;->isLowEnabled()Z

    move-result v0

    .line 60
    sget v1, Lcom/dexcom/cgm/activities/R$id;->review_low:I

    invoke-direct {p0, v1, v0}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->setupEnabledCell(IZ)V

    .line 61
    sget v1, Lcom/dexcom/cgm/activities/R$id;->review_low_threshold:I

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Follower;->getLowThreshold()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->setupThresholdCell(IIZ)V

    .line 62
    sget v1, Lcom/dexcom/cgm/activities/R$id;->review_low_delay:I

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Follower;->getLowDelay()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->setupDelayCell(IIZ)V

    .line 64
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Follower;->isHighEnabled()Z

    move-result v0

    .line 65
    sget v1, Lcom/dexcom/cgm/activities/R$id;->review_high:I

    invoke-direct {p0, v1, v0}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->setupEnabledCell(IZ)V

    .line 66
    sget v1, Lcom/dexcom/cgm/activities/R$id;->review_high_threshold:I

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Follower;->getHighThreshold()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->setupThresholdCell(IIZ)V

    .line 67
    sget v1, Lcom/dexcom/cgm/activities/R$id;->review_high_delay:I

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Follower;->getHighDelay()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->setupDelayCell(IIZ)V

    .line 69
    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Follower;->isNoDataEnabled()Z

    move-result v0

    .line 70
    sget v1, Lcom/dexcom/cgm/activities/R$id;->review_no_data:I

    invoke-direct {p0, v1, v0}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->setupEnabledCell(IZ)V

    .line 71
    sget v1, Lcom/dexcom/cgm/activities/R$id;->review_no_data_delay:I

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/Follower;->getNoDataDelay()I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->setupDelayCell(IIZ)V

    .line 72
    return-void
.end method

.method public setTrendAccessViewVisible(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 42
    sget v0, Lcom/dexcom/cgm/activities/R$id;->review_allow_trend_graph_view:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 43
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 45
    sget v0, Lcom/dexcom/cgm/activities/R$id;->review_allow_trend_graph_view_border:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 46
    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    return-void

    :cond_0
    move v0, v2

    .line 43
    goto :goto_0

    :cond_1
    move v1, v2

    .line 46
    goto :goto_1
.end method
