.class public final Lcom/dexcom/cgm/component_provider/h;
.super Lcom/dexcom/cgm/component_provider/e;
.source "CgmPresentationExtensionComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/i/a;


# instance fields
.field m_alertSettingsUpdateHandler:Lcom/dexcom/cgm/b/g;

.field m_cgmAlertSettingsUpdateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private final m_cgmProvider:Lcom/dexcom/cgm/b/f;


# direct methods
.method public constructor <init>(Lcom/dexcom/cgm/b/f;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/component_provider/e;-><init>(Lcom/dexcom/cgm/b/f;)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/h;->m_cgmAlertSettingsUpdateCallbacks:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Lcom/dexcom/cgm/component_provider/i;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/component_provider/i;-><init>(Lcom/dexcom/cgm/component_provider/h;)V

    iput-object v0, p0, Lcom/dexcom/cgm/component_provider/h;->m_alertSettingsUpdateHandler:Lcom/dexcom/cgm/b/g;

    .line 35
    iput-object p1, p0, Lcom/dexcom/cgm/component_provider/h;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    .line 36
    return-void
.end method


# virtual methods
.method public final getActiveAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/h;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/b/f;->getActiveAlertSchedule()Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    return-object v0
.end method

.method public final getActiveAlertSettings()Lcom/dexcom/cgm/i/a/a;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/h;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/b/f;->getActiveAlertSettings()Lcom/dexcom/cgm/model/AlertSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/i/a/a;->fromInternal(Lcom/dexcom/cgm/model/AlertSettings;)Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final getAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/h;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/b/f;->getAlertSchedule(I)Lcom/dexcom/cgm/model/DexAlertSchedule;

    move-result-object v0

    return-object v0
.end method

.method public final getAlertSettings(I)Lcom/dexcom/cgm/i/a/a;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/h;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/b/f;->getAlertSettings(I)Lcom/dexcom/cgm/model/AlertSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/dexcom/cgm/i/a/a;->fromInternal(Lcom/dexcom/cgm/model/AlertSettings;)Lcom/dexcom/cgm/i/a/a;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyValues()Lcom/dexcom/cgm/d/e;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/h;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/b/f;->getKeyValues()Lcom/dexcom/cgm/d/e;

    move-result-object v0

    return-object v0
.end method

.method public final getMetersFromCurrentSession()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/h/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/h;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/b/f;->getMetersFromCurrentSession()Ljava/util/List;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/Meter;

    .line 111
    invoke-static {v0}, Lcom/dexcom/cgm/h/a/d;->fromInternal(Lcom/dexcom/cgm/model/Meter;)Lcom/dexcom/cgm/h/a/d;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_0
    return-object v1
.end method

.method public final getUserEvents(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dexcom/cgm/k/j;",
            "Lcom/dexcom/cgm/k/j;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/i/a/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/h;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    .line 88
    invoke-interface {v0, p1, p2}, Lcom/dexcom/cgm/b/f;->getUserEvents(Lcom/dexcom/cgm/k/j;Lcom/dexcom/cgm/k/j;)Ljava/util/List;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/UserEvent;

    .line 92
    invoke-static {v0}, Lcom/dexcom/cgm/i/a/d;->fromInternal(Lcom/dexcom/cgm/model/UserEvent;)Lcom/dexcom/cgm/i/a/d;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_0
    return-object v1
.end method

.method public final hasCompletedSensorWarmUpAtLeastOnce()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/h;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/b/f;->hasCompletedSensorWarmUpAtLeastOnce()Z

    move-result v0

    return v0
.end method

.method public final registerAlertSettingsUpdateCallback$1d73d766(Lcom/dexcom/cgm/h/b;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/h;->m_cgmAlertSettingsUpdateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public final resetAlertSettings()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/h;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v0}, Lcom/dexcom/cgm/b/f;->resetAlertSettings()V

    .line 132
    return-void
.end method

.method public final setUserEvent(Lcom/dexcom/cgm/i/a/d;)V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/dexcom/cgm/i/a/d;->toInternal()Lcom/dexcom/cgm/model/UserEvent;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/dexcom/cgm/component_provider/h;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v1, v0}, Lcom/dexcom/cgm/b/f;->setUserEvent(Lcom/dexcom/cgm/model/UserEvent;)V

    .line 102
    return-void
.end method

.method public final unregisterAlertSettingsUpdateCallback$1d73d766(Lcom/dexcom/cgm/h/b;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/h;->m_cgmAlertSettingsUpdateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public final updateAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/h;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-interface {v0, p1}, Lcom/dexcom/cgm/b/f;->updateAlertSchedule(Lcom/dexcom/cgm/model/DexAlertSchedule;)V

    .line 60
    return-void
.end method

.method public final updateAlertSettings(Lcom/dexcom/cgm/i/a/b;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dexcom/cgm/component_provider/h;->m_cgmProvider:Lcom/dexcom/cgm/b/f;

    invoke-static {p1}, Lcom/dexcom/cgm/i/a/b;->toInternal(Lcom/dexcom/cgm/i/a/b;)Lcom/dexcom/cgm/model/UserAlertProperties;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/b/f;->updateAlertSettings(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 81
    return-void
.end method
