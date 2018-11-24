.class public Lcom/dexcom/cgm/activities/share/FollowerInvitationData;
.super Ljava/lang/Object;
.source "FollowerInvitationData.java"


# static fields
.field private static instance:Lcom/dexcom/cgm/activities/share/FollowerInvitationData;


# instance fields
.field private m_emailAddress:Ljava/lang/String;

.field private m_highDelay:I

.field private m_highEnabled:Z

.field private m_highThreshold:I

.field private m_lowDelay:I

.field private m_lowEnabled:Z

.field private m_lowThreshold:I

.field private m_name:Ljava/lang/String;

.field private m_noDataDelay:I

.field private m_noDataEnabled:Z

.field private m_trendGraphAccess:Z

.field private m_urgentLowEnabled:Z

.field private m_urgentLowThreshold:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x3c

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_trendGraphAccess:Z

    .line 43
    iput-boolean v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_urgentLowEnabled:Z

    .line 44
    const/16 v0, 0x37

    iput v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_urgentLowThreshold:I

    .line 46
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_lowEnabled:Z

    .line 47
    const/16 v0, 0x50

    iput v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_lowThreshold:I

    .line 48
    const/16 v0, 0x1e

    iput v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_lowDelay:I

    .line 50
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_highEnabled:Z

    .line 51
    const/16 v0, 0xc8

    iput v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_highThreshold:I

    .line 52
    iput v2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_highDelay:I

    .line 54
    iput-boolean v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_noDataEnabled:Z

    .line 55
    iput v2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_noDataDelay:I

    .line 37
    return-void
.end method

.method public static clearInstance()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->instance:Lcom/dexcom/cgm/activities/share/FollowerInvitationData;

    .line 32
    return-void
.end method

.method public static getInstance()Lcom/dexcom/cgm/activities/share/FollowerInvitationData;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->instance:Lcom/dexcom/cgm/activities/share/FollowerInvitationData;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;

    invoke-direct {v0}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;-><init>()V

    sput-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->instance:Lcom/dexcom/cgm/activities/share/FollowerInvitationData;

    .line 22
    :cond_0
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->instance:Lcom/dexcom/cgm/activities/share/FollowerInvitationData;

    return-object v0
.end method


# virtual methods
.method public createFollower()Lcom/dexcom/cgm/model/Follower;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/dexcom/cgm/model/Follower$Builder;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/Follower$Builder;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/Follower$Builder;->setName(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/Follower$Builder;->setEmail(Ljava/lang/String;)V

    .line 62
    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_trendGraphAccess:Z

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/Follower$Builder;->setHasTrendPermission(Z)V

    .line 64
    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_urgentLowEnabled:Z

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/Follower$Builder;->setUrgentLowEnabled(Z)V

    .line 65
    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_lowEnabled:Z

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/Follower$Builder;->setLowEnabled(Z)V

    .line 66
    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_highEnabled:Z

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/Follower$Builder;->setHighEnabled(Z)V

    .line 67
    iget-boolean v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_noDataEnabled:Z

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/Follower$Builder;->setNoDataEnabled(Z)V

    .line 69
    iget v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_urgentLowThreshold:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/Follower$Builder;->setUrgentLowThreshold(I)V

    .line 70
    iget v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_lowThreshold:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/Follower$Builder;->setLowThreshold(I)V

    .line 71
    iget v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_highThreshold:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/Follower$Builder;->setHighThreshold(I)V

    .line 73
    iget v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_lowDelay:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/Follower$Builder;->setLowDelay(I)V

    .line 74
    iget v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_highDelay:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/Follower$Builder;->setHighDelay(I)V

    .line 75
    iget v1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_noDataDelay:I

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/Follower$Builder;->setNoDataDelay(I)V

    .line 77
    invoke-virtual {v0}, Lcom/dexcom/cgm/model/Follower$Builder;->build()Lcom/dexcom/cgm/model/Follower;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public setAlertDelay(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;I)V
    .locals 3

    .prologue
    .line 150
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$1;->$SwitchMap$com$dexcom$cgm$activities$share$FollowerInvitationData$AlertType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 153
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Developer Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 154
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setAlertDelay() was given an AlertType without a delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 155
    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :pswitch_1
    iput p2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_lowDelay:I

    goto :goto_0

    .line 160
    :pswitch_2
    iput p2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_highDelay:I

    goto :goto_0

    .line 163
    :pswitch_3
    iput p2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_noDataDelay:I

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAlertEnabled(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;Z)V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$1;->$SwitchMap$com$dexcom$cgm$activities$share$FollowerInvitationData$AlertType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iput-boolean p2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_urgentLowEnabled:Z

    goto :goto_0

    .line 117
    :pswitch_1
    iput-boolean p2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_lowEnabled:Z

    goto :goto_0

    .line 120
    :pswitch_2
    iput-boolean p2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_highEnabled:Z

    goto :goto_0

    .line 123
    :pswitch_3
    iput-boolean p2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_noDataEnabled:Z

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAlertThreshold(Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;I)V
    .locals 3

    .prologue
    .line 130
    sget-object v0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$1;->$SwitchMap$com$dexcom$cgm$activities$share$FollowerInvitationData$AlertType:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 133
    :pswitch_0
    iput p2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_urgentLowThreshold:I

    goto :goto_0

    .line 136
    :pswitch_1
    iput p2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_lowThreshold:I

    goto :goto_0

    .line 139
    :pswitch_2
    iput p2, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_highThreshold:I

    goto :goto_0

    .line 142
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Developer Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 143
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".setAlertThreshold() was given an AlertType without a threshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    invoke-virtual {p1}, Lcom/dexcom/cgm/activities/share/FollowerInvitationData$AlertType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_emailAddress:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_name:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setTrendGraphAccess(Z)V
    .locals 0

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/dexcom/cgm/activities/share/FollowerInvitationData;->m_trendGraphAccess:Z

    .line 107
    return-void
.end method
