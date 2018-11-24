.class public final Lcom/dexcom/cgm/a/h;
.super Ljava/lang/Object;
.source "AlertSystemComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/a/f;


# static fields
.field private static TimeDelayForRealert:Lcom/dexcom/cgm/k/k;


# instance fields
.field private m_alertCollection:Lcom/dexcom/cgm/a/a;

.field private final m_alertSettingsUpdateCallback:Lcom/dexcom/cgm/b/g;

.field private m_alertStateMachine:Lcom/dexcom/cgm/a/e;

.field private final m_callback:Lcom/dexcom/cgm/b/h;

.field private final m_cgmp:Lcom/dexcom/cgm/b/f;

.field private m_listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private final m_systemHealthCheckCallback:Lcom/dexcom/cgm/j/d;

.field private final m_systemHealthChecker:Lcom/dexcom/cgm/j/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lcom/dexcom/cgm/k/k;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/dexcom/cgm/k/k;-><init>(III)V

    sput-object v0, Lcom/dexcom/cgm/a/h;->TimeDelayForRealert:Lcom/dexcom/cgm/k/k;

    return-void
.end method

.method private constructor <init>(Lcom/dexcom/cgm/b/f;Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/j/c;)V
    .locals 2

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/dexcom/cgm/a/i;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/a/i;-><init>(Lcom/dexcom/cgm/a/h;)V

    iput-object v0, p0, Lcom/dexcom/cgm/a/h;->m_alertSettingsUpdateCallback:Lcom/dexcom/cgm/b/g;

    .line 41
    new-instance v0, Lcom/dexcom/cgm/a/j;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/a/j;-><init>(Lcom/dexcom/cgm/a/h;)V

    iput-object v0, p0, Lcom/dexcom/cgm/a/h;->m_systemHealthCheckCallback:Lcom/dexcom/cgm/j/d;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/cgm/a/h;->m_listeners:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Lcom/dexcom/cgm/a/k;

    invoke-direct {v0, p0}, Lcom/dexcom/cgm/a/k;-><init>(Lcom/dexcom/cgm/a/h;)V

    iput-object v0, p0, Lcom/dexcom/cgm/a/h;->m_callback:Lcom/dexcom/cgm/b/h;

    .line 156
    iput-object p1, p0, Lcom/dexcom/cgm/a/h;->m_cgmp:Lcom/dexcom/cgm/b/f;

    .line 157
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_callback:Lcom/dexcom/cgm/b/h;

    invoke-interface {p1, v0}, Lcom/dexcom/cgm/b/f;->registerCgmAlertUpdateCallback(Lcom/dexcom/cgm/b/h;)V

    .line 158
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_alertSettingsUpdateCallback:Lcom/dexcom/cgm/b/g;

    invoke-interface {p1, v0}, Lcom/dexcom/cgm/b/f;->registerAlertSettingsUpdateCallback(Lcom/dexcom/cgm/b/g;)V

    .line 159
    iput-object p3, p0, Lcom/dexcom/cgm/a/h;->m_systemHealthChecker:Lcom/dexcom/cgm/j/c;

    .line 160
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_systemHealthCheckCallback:Lcom/dexcom/cgm/j/d;

    invoke-interface {p3, v0}, Lcom/dexcom/cgm/j/c;->registerAlertUpdateCallback(Lcom/dexcom/cgm/j/d;)V

    .line 161
    new-instance v0, Lcom/dexcom/cgm/a/a;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/dexcom/cgm/b/f;->getAlertSettings(I)Lcom/dexcom/cgm/model/AlertSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dexcom/cgm/a/a;-><init>(Lcom/dexcom/cgm/model/AlertSettings;)V

    iput-object v0, p0, Lcom/dexcom/cgm/a/h;->m_alertCollection:Lcom/dexcom/cgm/a/a;

    .line 162
    new-instance v0, Lcom/dexcom/cgm/a/e;

    iget-object v1, p0, Lcom/dexcom/cgm/a/h;->m_alertCollection:Lcom/dexcom/cgm/a/a;

    invoke-direct {v0, v1, p2}, Lcom/dexcom/cgm/a/e;-><init>(Lcom/dexcom/cgm/a/a;Lcom/dexcom/cgm/d/a;)V

    iput-object v0, p0, Lcom/dexcom/cgm/a/h;->m_alertStateMachine:Lcom/dexcom/cgm/a/e;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/dexcom/cgm/a/h;Lcom/dexcom/cgm/model/UserAlertProperties;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/dexcom/cgm/a/h;->updateAlertProperties(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/cgm/a/h;Ljava/lang/Iterable;Z)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/dexcom/cgm/a/h;->processAndDispatchAlerts(Ljava/lang/Iterable;Z)V

    return-void
.end method

.method public static create(Lcom/dexcom/cgm/b/f;Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/j/c;)Lcom/dexcom/cgm/a/f;
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/dexcom/cgm/a/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/dexcom/cgm/a/h;-><init>(Lcom/dexcom/cgm/b/f;Lcom/dexcom/cgm/d/a;Lcom/dexcom/cgm/j/c;)V

    return-object v0
.end method

.method private dispatchAlerts()V
    .locals 8

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_alertStateMachine:Lcom/dexcom/cgm/a/e;

    invoke-virtual {v0}, Lcom/dexcom/cgm/a/e;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/AlertStateRecord;

    .line 92
    iget-object v1, p0, Lcom/dexcom/cgm/a/h;->m_listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dexcom/cgm/a/g;

    .line 94
    new-instance v4, Lcom/dexcom/cgm/a/l;

    const/4 v5, 0x0

    sget-object v6, Lcom/dexcom/cgm/model/enums/AlertSound;->None:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct {v4, v0, v5, v6}, Lcom/dexcom/cgm/a/l;-><init>(Lcom/dexcom/cgm/model/AlertStateRecord;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    invoke-interface {v1, v4}, Lcom/dexcom/cgm/a/g;->evAlert(Lcom/dexcom/cgm/a/l;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_alertStateMachine:Lcom/dexcom/cgm/a/e;

    invoke-virtual {v0}, Lcom/dexcom/cgm/a/e;->b()Lcom/dexcom/cgm/model/AlertStateRecord;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_2

    .line 100
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_alertCollection:Lcom/dexcom/cgm/a/a;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AlertStateRecord;->getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/dexcom/cgm/a/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/a/c;->getSound()Lcom/dexcom/cgm/model/enums/AlertSound;

    move-result-object v2

    .line 101
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_alertCollection:Lcom/dexcom/cgm/a/a;

    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AlertStateRecord;->getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/a/a;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)Lcom/dexcom/cgm/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dexcom/cgm/a/c;->getMaxRealerts()I

    move-result v0

    .line 102
    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AlertStateRecord;->getDisplayedCount()I

    move-result v3

    if-le v3, v0, :cond_3

    .line 120
    :cond_2
    :goto_1
    return-void

    .line 106
    :cond_3
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v0

    .line 107
    invoke-virtual {v1}, Lcom/dexcom/cgm/model/AlertStateRecord;->getLastDisplayTime()Lcom/dexcom/cgm/k/j;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/dexcom/cgm/k/j;->subtract(Lcom/dexcom/cgm/k/j;)Lcom/dexcom/cgm/k/k;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v4

    sget-object v0, Lcom/dexcom/cgm/a/h;->TimeDelayForRealert:Lcom/dexcom/cgm/k/k;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/k;->getSeconds()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/a/g;

    .line 114
    new-instance v4, Lcom/dexcom/cgm/a/l;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5, v2}, Lcom/dexcom/cgm/a/l;-><init>(Lcom/dexcom/cgm/model/AlertStateRecord;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    invoke-interface {v0, v4}, Lcom/dexcom/cgm/a/g;->evAlert(Lcom/dexcom/cgm/a/l;)V

    goto :goto_2

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_alertStateMachine:Lcom/dexcom/cgm/a/e;

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/a/e;->a(Lcom/dexcom/cgm/model/AlertStateRecord;)V

    goto :goto_1
.end method

.method private declared-synchronized processAndDispatchAlerts(Ljava/lang/Iterable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 65
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 67
    :try_start_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/a/h;->inactivateAllAlerts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_0
    monitor-exit p0

    return-void

    .line 70
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_alertStateMachine:Lcom/dexcom/cgm/a/e;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/a/e;->a(Ljava/lang/Iterable;)V

    .line 71
    invoke-direct {p0}, Lcom/dexcom/cgm/a/h;->dispatchAlerts()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateAlertProperties(Lcom/dexcom/cgm/model/UserAlertProperties;)V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_alertCollection:Lcom/dexcom/cgm/a/a;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/a/a;->a(Lcom/dexcom/cgm/model/UserAlertProperties;)V

    .line 132
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_alertStateMachine:Lcom/dexcom/cgm/a/e;

    invoke-virtual {p1}, Lcom/dexcom/cgm/model/UserAlertProperties;->getAlertType()Lcom/dexcom/cgm/model/enums/AlertKind;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dexcom/cgm/a/e;->b(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 133
    invoke-direct {p0}, Lcom/dexcom/cgm/a/h;->dispatchAlerts()V

    .line 134
    return-void
.end method


# virtual methods
.method public final declared-synchronized acknowledgeAlert(Lcom/dexcom/cgm/model/enums/AlertKind;)V
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_alertStateMachine:Lcom/dexcom/cgm/a/e;

    invoke-virtual {v0, p1}, Lcom/dexcom/cgm/a/e;->a(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 126
    invoke-direct {p0}, Lcom/dexcom/cgm/a/h;->dispatchAlerts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final getAlertCollection()Lcom/dexcom/cgm/a/a;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_alertCollection:Lcom/dexcom/cgm/a/a;

    return-object v0
.end method

.method public final declared-synchronized getAlertsCurrentlyOnDisplay()Ljava/lang/Iterable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/dexcom/cgm/a/l;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_alertStateMachine:Lcom/dexcom/cgm/a/e;

    invoke-virtual {v0}, Lcom/dexcom/cgm/a/e;->c()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/model/AlertStateRecord;

    .line 83
    new-instance v3, Lcom/dexcom/cgm/a/l;

    const/4 v4, 0x1

    sget-object v5, Lcom/dexcom/cgm/model/enums/AlertSound;->None:Lcom/dexcom/cgm/model/enums/AlertSound;

    invoke-direct {v3, v0, v4, v5}, Lcom/dexcom/cgm/a/l;-><init>(Lcom/dexcom/cgm/model/AlertStateRecord;ZLcom/dexcom/cgm/model/enums/AlertSound;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 85
    :cond_0
    monitor-exit p0

    return-object v1
.end method

.method public final declared-synchronized inactivateAllAlerts()V
    .locals 1

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_alertStateMachine:Lcom/dexcom/cgm/a/e;

    invoke-virtual {v0}, Lcom/dexcom/cgm/a/e;->d()V

    .line 140
    invoke-direct {p0}, Lcom/dexcom/cgm/a/h;->dispatchAlerts()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized registerAlertCallback(Lcom/dexcom/cgm/a/g;)V
    .locals 1

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final teardown()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_cgmp:Lcom/dexcom/cgm/b/f;

    iget-object v1, p0, Lcom/dexcom/cgm/a/h;->m_callback:Lcom/dexcom/cgm/b/h;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/b/f;->unregisterCgmAlertUpdateCallback(Lcom/dexcom/cgm/b/h;)V

    .line 168
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_cgmp:Lcom/dexcom/cgm/b/f;

    iget-object v1, p0, Lcom/dexcom/cgm/a/h;->m_alertSettingsUpdateCallback:Lcom/dexcom/cgm/b/g;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/b/f;->unregisterAlertSettingsUpdateCallback(Lcom/dexcom/cgm/b/g;)V

    .line 169
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_systemHealthChecker:Lcom/dexcom/cgm/j/c;

    iget-object v1, p0, Lcom/dexcom/cgm/a/h;->m_systemHealthCheckCallback:Lcom/dexcom/cgm/j/d;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/j/c;->unregisterAlertUpdateCallback(Lcom/dexcom/cgm/j/d;)V

    .line 170
    return-void
.end method

.method public final declared-synchronized unregisterAlertCallback(Lcom/dexcom/cgm/a/g;)V
    .locals 1

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dexcom/cgm/a/h;->m_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
