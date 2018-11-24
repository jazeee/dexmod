.class public Lcom/dexcom/cgm/i/a/a;
.super Ljava/lang/Object;
.source "DexAlertSettings.java"


# static fields
.field public static final FixedLowAlarmLevel:I = 0x37

.field public static final Rate2MgPerDlPerMin:I = 0x2


# instance fields
.field private m_internalSettings:Lcom/dexcom/cgm/model/AlertSettings;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromInternal(Lcom/dexcom/cgm/model/AlertSettings;)Lcom/dexcom/cgm/i/a/a;
    .locals 1

    .prologue
    .line 98
    new-instance v0, Lcom/dexcom/cgm/i/a/a;

    invoke-direct {v0}, Lcom/dexcom/cgm/i/a/a;-><init>()V

    .line 99
    iput-object p0, v0, Lcom/dexcom/cgm/i/a/a;->m_internalSettings:Lcom/dexcom/cgm/model/AlertSettings;

    .line 100
    return-object v0
.end method

.method public static getDefaultAlertSettings()Lcom/dexcom/cgm/i/a/a;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lcom/dexcom/cgm/i/a/a;

    invoke-direct {v0}, Lcom/dexcom/cgm/i/a/a;-><init>()V

    .line 80
    sget-object v1, Lcom/dexcom/cgm/h/a/a/a;->UrgentLowGlucose:Lcom/dexcom/cgm/h/a/a/a;

    invoke-static {v1}, Lcom/dexcom/cgm/i/a/b;->getDefaultUserAlert(Lcom/dexcom/cgm/h/a/a/a;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/i/a/a;->updateAlertProperties(Lcom/dexcom/cgm/i/a/b;)V

    .line 82
    sget-object v1, Lcom/dexcom/cgm/h/a/a/a;->UserSelectLowGlucose:Lcom/dexcom/cgm/h/a/a/a;

    invoke-static {v1}, Lcom/dexcom/cgm/i/a/b;->getDefaultUserAlert(Lcom/dexcom/cgm/h/a/a/a;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/i/a/a;->updateAlertProperties(Lcom/dexcom/cgm/i/a/b;)V

    .line 84
    sget-object v1, Lcom/dexcom/cgm/h/a/a/a;->UserSelectHighGlucose:Lcom/dexcom/cgm/h/a/a/a;

    invoke-static {v1}, Lcom/dexcom/cgm/i/a/b;->getDefaultUserAlert(Lcom/dexcom/cgm/h/a/a/a;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/i/a/a;->updateAlertProperties(Lcom/dexcom/cgm/i/a/b;)V

    .line 86
    sget-object v1, Lcom/dexcom/cgm/h/a/a/a;->RateUpAlarm:Lcom/dexcom/cgm/h/a/a/a;

    invoke-static {v1}, Lcom/dexcom/cgm/i/a/b;->getDefaultUserAlert(Lcom/dexcom/cgm/h/a/a/a;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/i/a/a;->updateAlertProperties(Lcom/dexcom/cgm/i/a/b;)V

    .line 88
    sget-object v1, Lcom/dexcom/cgm/h/a/a/a;->RateDownAlarm:Lcom/dexcom/cgm/h/a/a/a;

    invoke-static {v1}, Lcom/dexcom/cgm/i/a/b;->getDefaultUserAlert(Lcom/dexcom/cgm/h/a/a/a;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/i/a/a;->updateAlertProperties(Lcom/dexcom/cgm/i/a/b;)V

    .line 90
    sget-object v1, Lcom/dexcom/cgm/h/a/a/a;->OutOfRange:Lcom/dexcom/cgm/h/a/a/a;

    invoke-static {v1}, Lcom/dexcom/cgm/i/a/b;->getDefaultUserAlert(Lcom/dexcom/cgm/h/a/a/a;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/i/a/a;->updateAlertProperties(Lcom/dexcom/cgm/i/a/b;)V

    .line 93
    return-object v0
.end method


# virtual methods
.method public final getAlertProperties(Lcom/dexcom/cgm/h/a/a/a;)Lcom/dexcom/cgm/i/a/b;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/a;->m_internalSettings:Lcom/dexcom/cgm/model/AlertSettings;

    .line 72
    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/a/a;->toInternal()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/AlertSettings;->getAlertProperties(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/dexcom/cgm/i/a/b;->fromInternal(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final getAllUserAlertProperties()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/i/a/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v1, p0, Lcom/dexcom/cgm/i/a/a;->m_internalSettings:Lcom/dexcom/cgm/model/AlertSettings;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AlertSettings;->getUserLow()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-static {v1}, Lcom/dexcom/cgm/i/a/b;->fromInternal(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v1, p0, Lcom/dexcom/cgm/i/a/a;->m_internalSettings:Lcom/dexcom/cgm/model/AlertSettings;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AlertSettings;->getUserHigh()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-static {v1}, Lcom/dexcom/cgm/i/a/b;->fromInternal(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v1, p0, Lcom/dexcom/cgm/i/a/a;->m_internalSettings:Lcom/dexcom/cgm/model/AlertSettings;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AlertSettings;->getUrgentLow()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-static {v1}, Lcom/dexcom/cgm/i/a/b;->fromInternal(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v1, p0, Lcom/dexcom/cgm/i/a/a;->m_internalSettings:Lcom/dexcom/cgm/model/AlertSettings;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AlertSettings;->getRiseRate()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-static {v1}, Lcom/dexcom/cgm/i/a/b;->fromInternal(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v1, p0, Lcom/dexcom/cgm/i/a/a;->m_internalSettings:Lcom/dexcom/cgm/model/AlertSettings;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AlertSettings;->getFallRate()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-static {v1}, Lcom/dexcom/cgm/i/a/b;->fromInternal(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v1, p0, Lcom/dexcom/cgm/i/a/a;->m_internalSettings:Lcom/dexcom/cgm/model/AlertSettings;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AlertSettings;->getNoData()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-static {v1}, Lcom/dexcom/cgm/i/a/b;->fromInternal(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    return-object v0
.end method

.method public final getFallRate()Lcom/dexcom/cgm/i/a/b;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/a;->m_internalSettings:Lcom/dexcom/cgm/model/AlertSettings;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertSettings;->getFallRate()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/i/a/b;->fromInternal(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final getNoData()Lcom/dexcom/cgm/i/a/b;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/a;->m_internalSettings:Lcom/dexcom/cgm/model/AlertSettings;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertSettings;->getNoData()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/i/a/b;->fromInternal(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final getRiseRate()Lcom/dexcom/cgm/i/a/b;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/a;->m_internalSettings:Lcom/dexcom/cgm/model/AlertSettings;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertSettings;->getRiseRate()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/i/a/b;->fromInternal(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final getUrgentLow()Lcom/dexcom/cgm/i/a/b;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/a;->m_internalSettings:Lcom/dexcom/cgm/model/AlertSettings;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertSettings;->getUrgentLow()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/i/a/b;->fromInternal(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final getUserHigh()Lcom/dexcom/cgm/i/a/b;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/a;->m_internalSettings:Lcom/dexcom/cgm/model/AlertSettings;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertSettings;->getUserHigh()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/i/a/b;->fromInternal(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final getUserLow()Lcom/dexcom/cgm/i/a/b;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/a;->m_internalSettings:Lcom/dexcom/cgm/model/AlertSettings;

    invoke-virtual {v0}, Lcom/dexcom/cgm/model/AlertSettings;->getUserLow()Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/i/a/b;->fromInternal(Lcom/dexcom/cgm/model/UserAlertProperties;)Lcom/dexcom/cgm/i/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final isAlertSilent(Lcom/dexcom/cgm/h/a/a/a;)Z
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/a;->m_internalSettings:Lcom/dexcom/cgm/model/AlertSettings;

    invoke-virtual {p1}, Lcom/dexcom/cgm/h/a/a/a;->toInternal()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/model/AlertSettings;->isAlertSilent(Lcom/dexcom/cgm/model/enums/AlertKind;)Z

    move-result v0

    return v0
.end method

.method public final updateAlertProperties(Lcom/dexcom/cgm/i/a/b;)V
    .locals 2

    .prologue
    .line 64
    .line 65
    invoke-static {p1}, Lcom/dexcom/cgm/i/a/b;->toInternal(Lcom/dexcom/cgm/i/a/b;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/dexcom/cgm/i/a/a;->m_internalSettings:Lcom/dexcom/cgm/model/AlertSettings;

    invoke-virtual {v1, v0}, Lcom/dexcom/cgm/model/AlertSettings;->updateAlertProperties(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 67
    return-void
.end method
