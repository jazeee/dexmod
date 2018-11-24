.class public Lcom/dexcom/c/a;
.super Ljava/lang/Object;
.source "BatteryLevelMonitor.java"

# interfaces
.implements Lcom/dexcom/cgm/j/c;


# instance fields
.field private final ACTIONS:[Ljava/lang/String;

.field private COUNT:I

.field private LOW_THRESHOLD:I

.field appContext:Landroid/content/Context;

.field private countDown:I

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
.method private constructor <init>(Lcom/dexcom/cgm/k/c;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x14

    iput v0, p0, Lcom/dexcom/c/a;->LOW_THRESHOLD:I

    .line 26
    const/16 v0, 0xc

    iput v0, p0, Lcom/dexcom/c/a;->COUNT:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dexcom/c/a;->m_listeners:Ljava/util/ArrayList;

    .line 29
    iput v3, p0, Lcom/dexcom/c/a;->countDown:I

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BATTERY_CHANGED"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "POWER_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "POWER_DISCONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "POWER_OKAY"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/dexcom/c/a;->ACTIONS:[Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/dexcom/c/a;->appContext:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/dexcom/c/b;

    invoke-direct {v0, p0, v3}, Lcom/dexcom/c/b;-><init>(Lcom/dexcom/c/a;B)V

    iput-object v0, p0, Lcom/dexcom/c/a;->m_heartBeatListener:Lcom/dexcom/cgm/k/b;

    .line 45
    iget-object v0, p0, Lcom/dexcom/c/a;->m_heartBeatListener:Lcom/dexcom/cgm/k/b;

    invoke-interface {p1, v0}, Lcom/dexcom/cgm/k/c;->registerIntervalListener(Lcom/dexcom/cgm/k/b;)V

    .line 46
    iput-object p1, p0, Lcom/dexcom/c/a;->m_heartBeat:Lcom/dexcom/cgm/k/c;

    .line 47
    return-void
.end method

.method static synthetic access$100(Lcom/dexcom/c/a;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/dexcom/c/a;->ACTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dexcom/c/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/dexcom/c/a;->countDown:I

    return v0
.end method

.method static synthetic access$202(Lcom/dexcom/c/a;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/dexcom/c/a;->countDown:I

    return p1
.end method

.method static synthetic access$210(Lcom/dexcom/c/a;)I
    .locals 2

    .prologue
    .line 23
    iget v0, p0, Lcom/dexcom/c/a;->countDown:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/dexcom/c/a;->countDown:I

    return v0
.end method

.method static synthetic access$300(Lcom/dexcom/c/a;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/dexcom/c/a;->COUNT:I

    return v0
.end method

.method public static create(Lcom/dexcom/cgm/k/c;Landroid/content/Context;)Lcom/dexcom/c/a;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/dexcom/c/a;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/c/a;-><init>(Lcom/dexcom/cgm/k/c;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final onAppEnteredForeground()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public final registerAlertUpdateCallback(Lcom/dexcom/cgm/j/d;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dexcom/c/a;->m_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public final setDiskSpaceProvider(Lcom/dexcom/cgm/j/a;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public final setHeartBeatSource(Lcom/dexcom/cgm/k/c;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dexcom/c/a;->m_heartBeat:Lcom/dexcom/cgm/k/c;

    iget-object v1, p0, Lcom/dexcom/c/a;->m_heartBeatListener:Lcom/dexcom/cgm/k/b;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/k/c;->unregisterIntervalListener(Lcom/dexcom/cgm/k/b;)V

    .line 63
    iput-object p1, p0, Lcom/dexcom/c/a;->m_heartBeat:Lcom/dexcom/cgm/k/c;

    .line 64
    iget-object v0, p0, Lcom/dexcom/c/a;->m_heartBeat:Lcom/dexcom/cgm/k/c;

    iget-object v1, p0, Lcom/dexcom/c/a;->m_heartBeatListener:Lcom/dexcom/cgm/k/b;

    invoke-interface {v0, v1}, Lcom/dexcom/cgm/k/c;->registerIntervalListener(Lcom/dexcom/cgm/k/b;)V

    .line 65
    return-void
.end method

.method public final unregisterAlertUpdateCallback(Lcom/dexcom/cgm/j/d;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dexcom/c/a;->m_listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method
