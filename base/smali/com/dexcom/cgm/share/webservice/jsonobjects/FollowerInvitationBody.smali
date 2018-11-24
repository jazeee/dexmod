.class public Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;
.super Ljava/lang/Object;
.source "FollowerInvitationBody.java"


# instance fields
.field private AlertSettings:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;

.field private DisplayName:Ljava/lang/String;

.field private Permissions:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static alertSettingsFromFollower(Lcom/dexcom/cgm/model/Follower;)Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;
    .locals 7

    .prologue
    const/16 v5, 0x78

    const/4 v6, 0x0

    .line 41
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;-><init>()V

    .line 43
    new-instance v1, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;

    invoke-direct {v1}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;-><init>()V

    .line 44
    sget-object v2, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->UrgentLow:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setAlertType(Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;)V

    .line 45
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/Follower;->isUrgentLowEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setEnabled(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/Follower;->getUrgentLowThreshold()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setMaxValue(I)V

    .line 47
    invoke-virtual {v1, v6}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setAlarmDelay(I)V

    .line 48
    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setRealarmDelay(I)V

    .line 49
    sget-object v2, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;->UrgentLow:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    invoke-virtual {v1, v2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setSound(Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;)V

    .line 51
    new-instance v2, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;

    invoke-direct {v2}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;-><init>()V

    .line 52
    sget-object v3, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->Low:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setAlertType(Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;)V

    .line 53
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/Follower;->isLowEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setEnabled(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/Follower;->getLowThreshold()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setMaxValue(I)V

    .line 55
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/Follower;->getLowDelay()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setAlarmDelay(I)V

    .line 56
    invoke-virtual {v2, v5}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setRealarmDelay(I)V

    .line 57
    sget-object v3, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;->Low:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    invoke-virtual {v2, v3}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setSound(Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;)V

    .line 59
    new-instance v3, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;

    invoke-direct {v3}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;-><init>()V

    .line 60
    sget-object v4, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->High:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    invoke-virtual {v3, v4}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setAlertType(Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;)V

    .line 61
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/Follower;->isHighEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/Follower;->getHighThreshold()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setMinValue(I)V

    .line 63
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/Follower;->getHighDelay()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setAlarmDelay(I)V

    .line 64
    invoke-virtual {v3, v5}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setRealarmDelay(I)V

    .line 65
    sget-object v4, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;->High:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    invoke-virtual {v3, v4}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setSound(Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;)V

    .line 67
    new-instance v4, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;

    invoke-direct {v4}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;-><init>()V

    .line 68
    sget-object v5, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;->NoData:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;

    invoke-virtual {v4, v5}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setAlertType(Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertType;)V

    .line 69
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/Follower;->isNoDataEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setEnabled(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/Follower;->getNoDataDelay()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setAlarmDelay(I)V

    .line 71
    invoke-virtual {v4, v6}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setRealarmDelay(I)V

    .line 72
    sget-object v5, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;->NoData:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;

    invoke-virtual {v4, v5}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;->setSound(Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting$ServerAlertSound;)V

    .line 74
    iput-object v1, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;->FixedLowAlert:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;

    .line 75
    iput-object v2, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;->LowAlert:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;

    .line 76
    iput-object v3, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;->HighAlert:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;

    .line 77
    iput-object v4, v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;->NoDataAlert:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSetting;

    .line 79
    return-object v0
.end method

.method public static fromFollower(Lcom/dexcom/cgm/model/Follower;Ljava/lang/String;)Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;

    invoke-direct {v0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/dexcom/cgm/model/Follower;->hasTrendPermission()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;->setTrendGraphPermission(Z)V

    .line 25
    invoke-static {p0}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;->alertSettingsFromFollower(Lcom/dexcom/cgm/model/Follower;)Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;->setAlertSettings(Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;)V

    .line 26
    invoke-direct {v0, p1}, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;->setSharerDisplayName(Ljava/lang/String;)V

    .line 28
    return-object v0
.end method

.method private setAlertSettings(Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;->AlertSettings:Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerAlertSettings;

    .line 85
    return-void
.end method

.method private setSharerDisplayName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;->DisplayName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method private setTrendGraphPermission(Z)V
    .locals 1

    .prologue
    .line 94
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/dexcom/cgm/share/webservice/jsonobjects/FollowerInvitationBody;->Permissions:I

    .line 95
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
