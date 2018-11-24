.class public final Lcom/dexcom/c/c;
.super Ljava/lang/Object;
.source "SystemHealthCheckerComponent.java"

# interfaces
.implements Lcom/dexcom/cgm/j/c;


# instance fields
.field private m_diskSpaceProvider:Lcom/dexcom/cgm/j/a;

.field private m_heartBeat:Lcom/dexcom/cgm/k/c;

.field m_heartBeatListener:Lcom/dexcom/cgm/k/b;

.field private m_listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/j/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/dexcom/cgm/k/c;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/c/c;->m_listeners:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Lcom/dexcom/c/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/dexcom/c/e;-><init>(Lcom/dexcom/c/c;B)V

    iput-object v0, p0, Lcom/dexcom/c/c;->m_heartBeatListener:Lcom/dexcom/cgm/k/b;

    .line 41
    iget-object v0, p0, Lcom/dexcom/c/c;->m_heartBeatListener:Lcom/dexcom/cgm/k/b;

    invoke-interface {p1, v0}, Lcom/dexcom/cgm/k/c;->registerIntervalListener(Lcom/dexcom/cgm/k/b;)V

    .line 42
    iput-object p1, p0, Lcom/dexcom/c/c;->m_heartBeat:Lcom/dexcom/cgm/k/c;

    .line 43
    new-instance v0, Lcom/dexcom/c/d;

    invoke-direct {v0, p0}, Lcom/dexcom/c/d;-><init>(Lcom/dexcom/c/c;)V

    iput-object v0, p0, Lcom/dexcom/c/c;->m_diskSpaceProvider:Lcom/dexcom/cgm/j/a;

    .line 52
    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/c/c;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/dexcom/c/c;->checkDiskSpace()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/c/c;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/dexcom/c/c;->dispatchAlerts(Ljava/util/ArrayList;)V

    return-void
.end method

.method private checkDiskSpace()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/dexcom/c/c;->m_diskSpaceProvider:Lcom/dexcom/cgm/j/a;

    invoke-interface {v0}, Lcom/dexcom/cgm/j/a;->getFreeDiskSpaceBytes()J

    move-result-wide v0

    .line 120
    long-to-float v0, v0

    const/high16 v1, 0x49800000    # 1048576.0f

    div-float/2addr v0, v1

    float-to-int v1, v0

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    const/16 v2, 0xfa

    if-lt v1, v2, :cond_0

    .line 125
    new-instance v1, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceAboveFirstLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 127
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :goto_0
    return-object v0

    .line 130
    :cond_0
    const/16 v2, 0x64

    if-lt v1, v2, :cond_1

    .line 132
    new-instance v1, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceAboveSecondLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 134
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v1, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowFirstLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 136
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_1
    const/16 v2, 0x14

    if-lt v1, v2, :cond_2

    .line 141
    new-instance v1, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceAboveSevereLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 143
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logDiskSpaceLow(Z)V

    .line 145
    new-instance v1, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowSecondLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 146
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/dexcom/cgm/tech_support_logger/TechSupportLogger;->logDiskSpaceLow(Z)V

    .line 150
    new-instance v1, Lcom/dexcom/cgm/model/AlertInstanceInformation;

    sget-object v2, Lcom/dexcom/cgm/model/enums/AlertKind;->DiskSpaceBelowSevereLimit:Lcom/dexcom/cgm/model/enums/AlertKind;

    invoke-direct {v1, v2}, Lcom/dexcom/cgm/model/AlertInstanceInformation;-><init>(Lcom/dexcom/cgm/model/enums/AlertKind;)V

    .line 152
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static create(Lcom/dexcom/cgm/k/c;)Lcom/dexcom/c/c;
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/dexcom/c/c;

    invoke-direct {v0, p0}, Lcom/dexcom/c/c;-><init>(Lcom/dexcom/cgm/k/c;)V

    return-object v0
.end method

.method private dispatchAlerts(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dexcom/cgm/model/AlertInstanceInformation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {p1}, Lcom/dexcom/cgm/j/b;->createAlertList(Ljava/lang/Iterable;)Lcom/dexcom/cgm/j/b;

    move-result-object v1

    .line 83
    iget-object v0, p0, Lcom/dexcom/c/c;->m_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/j/d;

    .line 85
    invoke-interface {v0, v1}, Lcom/dexcom/cgm/j/d;->evAlertData(Lcom/dexcom/cgm/j/b;)V

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public final onAppEnteredForeground()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/dexcom/c/c;->checkDiskSpace()Ljava/util/ArrayList;

    move-result-object v0

    .line 63
    invoke-direct {p0, v0}, Lcom/dexcom/c/c;->dispatchAlerts(Ljava/util/ArrayList;)V

    .line 64
    return-void
.end method

.method public final registerAlertUpdateCallback(Lcom/dexcom/cgm/j/d;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dexcom/c/c;->m_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public final setDiskSpaceProvider(Lcom/dexcom/cgm/j/a;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/dexcom/c/c;->m_diskSpaceProvider:Lcom/dexcom/cgm/j/a;

    .line 70
    return-void
.end method

.method public final setHeartBeatSource(Lcom/dexcom/cgm/k/c;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dexcom/c/c;->m_heartBeat:Lcom/dexcom/cgm/k/c;

    iget-object v1, p0, Lcom/dexcom/c/c;->m_heartBeatListener:Lcom/dexcom/cgm/k/b;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/k/c;->unregisterIntervalListener(Lcom/dexcom/cgm/k/b;)V

    .line 76
    iput-object p1, p0, Lcom/dexcom/c/c;->m_heartBeat:Lcom/dexcom/cgm/k/c;

    .line 77
    iget-object v0, p0, Lcom/dexcom/c/c;->m_heartBeat:Lcom/dexcom/cgm/k/c;

    iget-object v1, p0, Lcom/dexcom/c/c;->m_heartBeatListener:Lcom/dexcom/cgm/k/b;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/k/c;->registerIntervalListener(Lcom/dexcom/cgm/k/b;)V

    .line 78
    return-void
.end method

.method public final unregisterAlertUpdateCallback(Lcom/dexcom/cgm/j/d;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dexcom/c/c;->m_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method
