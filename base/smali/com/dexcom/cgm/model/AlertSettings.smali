.class public Lcom/dexcom/cgm/model/AlertSettings;
.super Ljava/lang/Object;
.source "AlertSettings.java"


# static fields
.field public static final FixedLowAlarmLevel:I = 0x37

.field public static final Rate2MgPerDlPerMin:I = 0x2


# instance fields
.field private m_fallRate:Lcom/dexcom/cgm/model/UserAlertProperties;

.field private m_noData:Lcom/dexcom/cgm/model/UserAlertProperties;

.field private m_riseRate:Lcom/dexcom/cgm/model/UserAlertProperties;

.field private m_urgentLow:Lcom/dexcom/cgm/model/UserAlertProperties;

.field private m_userHigh:Lcom/dexcom/cgm/model/UserAlertProperties;

.field private m_userLow:Lcom/dexcom/cgm/model/UserAlertProperties;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultAlertSettings()Lcom/dexcom/cgm/model/AlertSettings;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/dexcom/cgm/model/AlertSettings;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/AlertSettings;-><init>()V

    .line 122
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/AlertSettings;->updateAlertProperties(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 124
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/AlertSettings;->updateAlertProperties(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 126
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/AlertSettings;->updateAlertProperties(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 128
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/AlertSettings;->updateAlertProperties(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 130
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/AlertSettings;->updateAlertProperties(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 132
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/AlertSettings;->updateAlertProperties(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 135
    return-object v0
.end method

.method public static getDefaultScheduleAlertSettings()Lcom/dexcom/cgm/model/AlertSettings;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lcom/dexcom/cgm/model/AlertSettings;

    invoke-direct {v0}, Lcom/dexcom/cgm/model/AlertSettings;-><init>()V

    .line 141
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UrgentLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-static {v1}, Lcom/dexcom/cgm/model/AlertSettings;->setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/AlertSettings;->updateAlertProperties(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 142
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectLowGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-static {v1}, Lcom/dexcom/cgm/model/AlertSettings;->setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/AlertSettings;->updateAlertProperties(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 143
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->UserSelectHighGlucose:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-static {v1}, Lcom/dexcom/cgm/model/AlertSettings;->setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/AlertSettings;->updateAlertProperties(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 144
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->RateUpAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-static {v1}, Lcom/dexcom/cgm/model/AlertSettings;->setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/AlertSettings;->updateAlertProperties(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 145
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->RateDownAlarm:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-static {v1}, Lcom/dexcom/cgm/model/AlertSettings;->setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/AlertSettings;->updateAlertProperties(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 146
    sget-object v1, Lcom/dexcom/cgm/model/enums/AlertKind;->OutOfRange:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-static {v1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getDefaultUserAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-static {v1}, Lcom/dexcom/cgm/model/AlertSettings;->setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/AlertSettings;->updateAlertProperties(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 147
    return-object v0
.end method

.method private static setAlertScheduleIndex(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;-><init>(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->setAlertScheduleIndex(I)Lcom/dexcom/cgm/model/UserAlertProperties$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/UserAlertProperties$Builder;->build()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlertProperties(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/dexcom/cgm/model/AlertSettings$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 102
    :pswitch_0
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_urgentLow:Lcom/dexcom/cgm/model/UserAlertProperties;

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_userLow:Lcom/dexcom/cgm/model/UserAlertProperties;

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_userHigh:Lcom/dexcom/cgm/model/UserAlertProperties;

    goto :goto_0

    .line 108
    :pswitch_3
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_riseRate:Lcom/dexcom/cgm/model/UserAlertProperties;

    goto :goto_0

    .line 110
    :pswitch_4
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_fallRate:Lcom/dexcom/cgm/model/UserAlertProperties;

    goto :goto_0

    .line 112
    :pswitch_5
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_noData:Lcom/dexcom/cgm/model/UserAlertProperties;

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getAllUserAlertProperties()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/model/UserAlertProperties;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_userLow:Lcom/dexcom/cgm/model/UserAlertProperties;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_userHigh:Lcom/dexcom/cgm/model/UserAlertProperties;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_urgentLow:Lcom/dexcom/cgm/model/UserAlertProperties;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_riseRate:Lcom/dexcom/cgm/model/UserAlertProperties;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_fallRate:Lcom/dexcom/cgm/model/UserAlertProperties;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v1, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_noData:Lcom/dexcom/cgm/model/UserAlertProperties;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    return-object v0
.end method

.method public getFallRate()Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_fallRate:Lcom/dexcom/cgm/model/UserAlertProperties;

    return-object v0
.end method

.method public getNoData()Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_noData:Lcom/dexcom/cgm/model/UserAlertProperties;

    return-object v0
.end method

.method public getRiseRate()Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_riseRate:Lcom/dexcom/cgm/model/UserAlertProperties;

    return-object v0
.end method

.method public getUrgentLow()Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_urgentLow:Lcom/dexcom/cgm/model/UserAlertProperties;

    return-object v0
.end method

.method public getUserHigh()Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_userHigh:Lcom/dexcom/cgm/model/UserAlertProperties;

    return-object v0
.end method

.method public getUserLow()Lcom/dexcom/cgm/model/UserAlertProperties;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_userLow:Lcom/dexcom/cgm/model/UserAlertProperties;

    return-object v0
.end method

.method public isAlertSilent(Lcom/dexcom/cgm/model/enums/AlertKind;)Z
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->FingerStickRequest:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationFirst:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->PreSensorExpirationSecond:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowFirstLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowSecondLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    if-ne p1, v0, :cond_1

    .line 171
    :cond_0
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateAlertProperties(Lcom/dexcom/cgm/model/UserAlertProperties;)V
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/dexcom/cgm/model/AlertSettings$1;->$SwitchMap$com$dexcom$cgm$model$enums$AlertKind:[I

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/enums/AlertKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 75
    :pswitch_0
    iput-object p1, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_urgentLow:Lcom/dexcom/cgm/model/UserAlertProperties;

    goto :goto_0

    .line 78
    :pswitch_1
    iput-object p1, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_userLow:Lcom/dexcom/cgm/model/UserAlertProperties;

    goto :goto_0

    .line 81
    :pswitch_2
    iput-object p1, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_userHigh:Lcom/dexcom/cgm/model/UserAlertProperties;

    goto :goto_0

    .line 84
    :pswitch_3
    iput-object p1, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_riseRate:Lcom/dexcom/cgm/model/UserAlertProperties;

    goto :goto_0

    .line 87
    :pswitch_4
    iput-object p1, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_fallRate:Lcom/dexcom/cgm/model/UserAlertProperties;

    goto :goto_0

    .line 90
    :pswitch_5
    iput-object p1, p0, Lcom/dexcom/cgm/model/AlertSettings;->m_noData:Lcom/dexcom/cgm/model/UserAlertProperties;

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
