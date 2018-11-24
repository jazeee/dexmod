.class public Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;
.super Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;
.source "FollowerInvitationAlertSettingsActivity.java"


# instance fields
.field private m_currentSettings:Lcom/dexcom/cgm/model/Follower;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->handleSwitch(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V

    return-void
.end method

.method static synthetic access$200(Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->reloadAlertSettings()V

    return-void
.end method

.method private getDelayNav(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)Lcom/dexcom/cgm/activities/DexListNavView;
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$9;->$SwitchMap$com$dexcom$cgm$activities$share$FollowerInvitationData$AlertType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 220
    const/4 v0, 0x0

    .line 223
    :goto_0
    return-object v0

    .line 210
    :pswitch_0
    sget v0, Lcom/dexcom/cgm/activities/R$id;->low_delay:I

    .line 223
    :goto_1
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    goto :goto_0

    .line 213
    :pswitch_1
    sget v0, Lcom/dexcom/cgm/activities/R$id;->high_delay:I

    goto :goto_1

    .line 216
    :pswitch_2
    sget v0, Lcom/dexcom/cgm/activities/R$id;->no_data_delay:I

    goto :goto_1

    .line 207
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getSwitch(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)Lcom/dexcom/cgm/activities/DexListSwitchView;
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$9;->$SwitchMap$com$dexcom$cgm$activities$share$FollowerInvitationData$AlertType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 176
    const/4 v0, -0x1

    .line 179
    :goto_0
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListSwitchView;

    return-object v0

    .line 159
    :pswitch_0
    sget v0, Lcom/dexcom/cgm/activities/R$id;->urgent_low_alert_switch:I

    goto :goto_0

    .line 162
    :pswitch_1
    sget v0, Lcom/dexcom/cgm/activities/R$id;->low_alert_switch:I

    goto :goto_0

    .line 165
    :pswitch_2
    sget v0, Lcom/dexcom/cgm/activities/R$id;->high_alert_switch:I

    goto :goto_0

    .line 168
    :pswitch_3
    sget v0, Lcom/dexcom/cgm/activities/R$id;->no_data_alert_switch:I

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getThresholdNav(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)Lcom/dexcom/cgm/activities/DexListNavView;
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$9;->$SwitchMap$com$dexcom$cgm$activities$share$FollowerInvitationData$AlertType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 198
    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    .line 188
    :pswitch_0
    sget v0, Lcom/dexcom/cgm/activities/R$id;->urgent_low_threshold:I

    .line 201
    :goto_1
    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/activities/DexListNavView;

    goto :goto_0

    .line 191
    :pswitch_1
    sget v0, Lcom/dexcom/cgm/activities/R$id;->low_threshold:I

    goto :goto_1

    .line 194
    :pswitch_2
    sget v0, Lcom/dexcom/cgm/activities/R$id;->high_threshold:I

    goto :goto_1

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getThresholdStrings([I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 365
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    .line 366
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_0
    return-object v1
.end method

.method private getTimeStrings([I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 433
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 434
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, p1, v0

    .line 436
    invoke-static {p0, v3}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->getDelayString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    :cond_0
    return-object v1
.end method

.method private handleSwitch(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 228
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getSwitch(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)Lcom/dexcom/cgm/activities/DexListSwitchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexListSwitchView;->isSwitchChecked()Z

    move-result v3

    .line 229
    invoke-static {}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->getInstance()Lcom/dexcom/cgm/activities/share/FollowerInvitationData;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->setAlertEnabled(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;Z)V

    .line 233
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getThresholdNav(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)Lcom/dexcom/cgm/activities/DexListNavView;

    move-result-object v4

    .line 234
    if-eqz v4, :cond_0

    .line 235
    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/dexcom/cgm/activities/DexListNavView;->setVisibility(I)V

    .line 237
    :cond_0
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getDelayNav(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)Lcom/dexcom/cgm/activities/DexListNavView;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_1

    .line 239
    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setVisibility(I)V

    .line 241
    :cond_1
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->reloadAlertSettings()V

    .line 242
    return-void

    :cond_2
    move v0, v2

    .line 235
    goto :goto_0

    :cond_3
    move v1, v2

    .line 239
    goto :goto_1
.end method

.method private reloadAlertSettings()V
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->getInstance()Lcom/dexcom/cgm/activities/share/FollowerInvitationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->createFollower()Lcom/dexcom/cgm/model/Follower;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->m_currentSettings:Lcom/dexcom/cgm/model/Follower;

    .line 104
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->UrgentLow:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->m_currentSettings:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->isUrgentLowEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->setEnabled(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;Z)V

    .line 105
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->Low:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->m_currentSettings:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->isLowEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->setEnabled(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;Z)V

    .line 106
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->High:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->m_currentSettings:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->isHighEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->setEnabled(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;Z)V

    .line 107
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->NoData:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->m_currentSettings:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->isNoDataEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->setEnabled(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;Z)V

    .line 109
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->UrgentLow:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->m_currentSettings:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->getUrgentLowThreshold()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->setThreshold(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;I)V

    .line 110
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->Low:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->m_currentSettings:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->getLowThreshold()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->setThreshold(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;I)V

    .line 111
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->High:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->m_currentSettings:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->getHighThreshold()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->setThreshold(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;I)V

    .line 113
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->Low:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->m_currentSettings:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->getLowDelay()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->setDelay(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;I)V

    .line 114
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->High:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->m_currentSettings:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->getHighDelay()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->setDelay(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;I)V

    .line 115
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->NoData:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->m_currentSettings:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->getNoDataDelay()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->setDelay(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;I)V

    .line 116
    return-void
.end method

.method private setDelay(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;I)V
    .locals 3

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getDelayNav(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)Lcom/dexcom/cgm/activities/DexListNavView;

    move-result-object v0

    .line 143
    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Developer Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setDelay() was given an AlertType without a delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    invoke-static {p0, p2}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->getDelayString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method private setEnabled(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;Z)V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getSwitch(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)Lcom/dexcom/cgm/activities/DexListSwitchView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 121
    return-void
.end method

.method private setSwitchCallback(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getSwitch(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)Lcom/dexcom/cgm/activities/DexListSwitchView;

    move-result-object v0

    .line 82
    new-instance v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$2;

    invoke-direct {v1, p0, p2}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$2;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchCallback(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    new-instance v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$3;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;Lcom/dexcom/cgm/activities/DexListSwitchView;)V

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method

.method private setThreshold(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;I)V
    .locals 5

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getThresholdNav(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)Lcom/dexcom/cgm/activities/DexListNavView;

    move-result-object v0

    .line 126
    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Developer Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setThreshold() was given an AlertType without a threshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    sget v1, Lcom/dexcom/cgm/activities/R$string;->share_mgdl:I

    .line 134
    invoke-virtual {p0, v1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 135
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/dexcom/cgm/activities/R$string;->mgdl_unit_of_measurement:I

    .line 136
    invoke-virtual {p0, v4}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 133
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListNavView;->setEndText(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method private setupSwitchCallback(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$1;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V

    invoke-direct {p0, p1, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->setSwitchCallback(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method private setupSwitches()V
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->UrgentLow:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getSwitch(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)Lcom/dexcom/cgm/activities/DexListSwitchView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexListSwitchView;->setSwitchChecked(Z)V

    .line 60
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->UrgentLow:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->setupSwitchCallback(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V

    .line 61
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->Low:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->setupSwitchCallback(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V

    .line 62
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->High:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->setupSwitchCallback(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V

    .line 63
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->NoData:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->setupSwitchCallback(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V

    .line 64
    return-void
.end method

.method private showDelayPicker(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V
    .locals 7

    .prologue
    .line 391
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$9;->$SwitchMap$com$dexcom$cgm$activities$share$FollowerInvitationData$AlertType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 429
    :goto_0
    return-void

    .line 395
    :pswitch_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$array;->share_low_delay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 396
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->m_currentSettings:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Follower;->getLowDelay()I

    move-result v0

    move-object v6, v1

    .line 415
    :goto_1
    invoke-direct {p0, v6}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getTimeStrings([I)Ljava/util/List;

    move-result-object v1

    .line 416
    invoke-static {p0, v0}, Lcom/dexcom/cgm/activities/controls/DexFollowerSettingsList;->getDelayString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_for_more_than:I

    const/4 v4, 0x0

    new-instance v5, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$5;

    invoke-direct {v5, p0, v6, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$5;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;[ILcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V

    move-object v0, p0

    .line 415
    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->showPickerDialog(Ljava/util/List;Ljava/lang/String;IZLcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$OnPickListener;)V

    goto :goto_0

    .line 401
    :pswitch_1
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$array;->share_high_delay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 402
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->m_currentSettings:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Follower;->getHighDelay()I

    move-result v0

    move-object v6, v1

    .line 403
    goto :goto_1

    .line 407
    :pswitch_2
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$array;->share_no_data_delay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 408
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->m_currentSettings:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Follower;->getNoDataDelay()I

    move-result v0

    move-object v6, v1

    .line 409
    goto :goto_1

    .line 391
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showHelp(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 266
    const/4 v0, -0x1

    .line 268
    sget-object v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$9;->$SwitchMap$com$dexcom$cgm$activities$share$FollowerInvitationData$AlertType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 284
    :goto_0
    new-instance v1, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 285
    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentText(I)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 286
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setCancelable(Ljava/lang/Boolean;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 287
    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setDismissButtonVisibility(Z)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 288
    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 290
    return-void

    .line 271
    :pswitch_0
    sget v0, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_54:I

    goto :goto_0

    .line 274
    :pswitch_1
    sget v0, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_56:I

    goto :goto_0

    .line 277
    :pswitch_2
    sget v0, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_57:I

    goto :goto_0

    .line 280
    :pswitch_3
    sget v0, Lcom/dexcom/cgm/activities/R$string;->share_screen_text_55:I

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPickerDialog(Ljava/util/List;Ljava/lang/String;IZLcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$OnPickListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$OnPickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 454
    new-instance v6, Lcom/dexcom/cgm/activities/DexDialogBuilder;

    invoke-direct {v6, p0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;-><init>(Landroid/app/Activity;)V

    .line 456
    sget v7, Lcom/dexcom/cgm/activities/R$layout;->dialog_alerts_notify_me:I

    new-instance v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$6;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$6;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;IZLjava/util/List;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setContentLayout(ILcom/dexcom/cgm/activities/DexDialogBuilder$OnCustomLayout;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 479
    sget v0, Lcom/dexcom/cgm/activities/R$string;->button_text_save:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$7;

    invoke-direct {v1, p0, p5}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$7;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$OnPickListener;)V

    invoke-virtual {v6, v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 492
    sget v0, Lcom/dexcom/cgm/activities/R$string;->button_text_cancel:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$8;

    invoke-direct {v1, p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$8;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;)V

    invoke-virtual {v6, v0, v1}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 501
    invoke-virtual {p0, p3}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->setLoggingText(Ljava/lang/String;)Lcom/dexcom/cgm/activities/DexDialogBuilder;

    .line 502
    invoke-virtual {v6}, Lcom/dexcom/cgm/activities/DexDialogBuilder;->show()Landroid/app/Dialog;

    .line 503
    return-void
.end method

.method private showThresholdPicker(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V
    .locals 6

    .prologue
    .line 319
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$9;->$SwitchMap$com$dexcom$cgm$activities$share$FollowerInvitationData$AlertType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 360
    :goto_0
    return-void

    .line 323
    :pswitch_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$array;->share_urgent_low_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->m_currentSettings:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->getUrgentLowThreshold()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 325
    sget v3, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_notify_me_below:I

    .line 346
    :goto_1
    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getThresholdStrings([I)Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x1

    new-instance v5, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$4;

    invoke-direct {v5, p0, v0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$4;-><init>(Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;[ILcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->showPickerDialog(Ljava/util/List;Ljava/lang/String;IZLcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity$OnPickListener;)V

    goto :goto_0

    .line 330
    :pswitch_1
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$array;->share_low_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->m_currentSettings:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->getLowThreshold()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 332
    sget v3, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_notify_me_below:I

    goto :goto_1

    .line 337
    :pswitch_2
    invoke-virtual {p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/dexcom/cgm/activities/R$array;->share_high_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->m_currentSettings:Lcom/dexcom/cgm/model/Follower;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/Follower;->getHighThreshold()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 339
    sget v3, Lcom/dexcom/cgm/activities/R$string;->dex_alerts_notify_me_above:I

    goto :goto_1

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected getCircleArrayIndex()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x2

    return v0
.end method

.method protected getContentViewID()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/dexcom/cgm/activities/R$layout;->activity_follower_invitation_alert_settings:I

    return v0
.end method

.method public onClickHighHelp(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->High:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->showHelp(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V

    .line 257
    return-void
.end method

.method public onClickHighThreshold(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->High:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->showThresholdPicker(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V

    .line 311
    return-void
.end method

.method public onClickLowHelp(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 251
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->Low:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->showHelp(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V

    .line 252
    return-void
.end method

.method public onClickLowThreshold(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->Low:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->showThresholdPicker(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V

    .line 306
    return-void
.end method

.method public onClickNext(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dexcom/cgm/activities/share/FollowerInvitationReviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 296
    return-void
.end method

.method public onClickNoDataHelp(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->NoData:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->showHelp(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V

    .line 262
    return-void
.end method

.method public onClickUrgentLowHelp(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->UrgentLow:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->showHelp(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V

    .line 247
    return-void
.end method

.method public onClickUrgentLowThreshold(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->UrgentLow:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->showThresholdPicker(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V

    .line 301
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lcom/dexcom/cgm/activities/R$id;->notification_settings:I

    invoke-virtual {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->insertNameForField(I)V

    .line 41
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->setupSwitches()V

    .line 42
    invoke-direct {p0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->reloadAlertSettings()V

    .line 43
    return-void
.end method

.method public showHighDelayPicker(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 378
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->High:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->showDelayPicker(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V

    .line 379
    return-void
.end method

.method public showLowDelayPicker(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 373
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->Low:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->showDelayPicker(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V

    .line 374
    return-void
.end method

.method public showNoDataDelayPicker(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->NoData:Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;

    invoke-direct {p0, v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationAlertSettingsActivity;->showDelayPicker(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;)V

    .line 384
    return-void
.end method
