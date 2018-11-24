.class public Lcom/dexcom/cgm/i/a/e;
.super Ljava/lang/Object;
.source "DexWatchData.java"


# static fields
.field public static final cropImageStyle:I = 0x7f010000

.field public static final highlightColor:I = 0x7f0100d6

.field public static final showCircle:I = 0x7f0100d8

.field public static final showHandles:I = 0x7f0100d9

.field public static final showThirds:I = 0x7f0100d7


# instance fields
.field private m_displayEGV:Lcom/dexcom/cgm/i/a/f;

.field private m_highAlertEnabled:Z

.field private m_highAlertLevel:I

.field private m_lowAlertLevel:I

.field private m_showInvalidMessage:Z

.field private m_time:J

.field private m_trendGraphHeight:I

.field private m_watchEGVs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/i/a/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/dexcom/cgm/i/a/f;IIIZJZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/i/a/f;",
            ">;",
            "Lcom/dexcom/cgm/i/a/f;",
            "IIIZJZ)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    :cond_0
    invoke-static {p1}, Lcom/dexcom/cgm/i/a/e;->cleanseInvalidEGVs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dexcom/cgm/i/a/e;->m_watchEGVs:Ljava/util/List;

    .line 54
    iput-object p2, p0, Lcom/dexcom/cgm/i/a/e;->m_displayEGV:Lcom/dexcom/cgm/i/a/f;

    .line 55
    iput p3, p0, Lcom/dexcom/cgm/i/a/e;->m_trendGraphHeight:I

    .line 56
    iput p4, p0, Lcom/dexcom/cgm/i/a/e;->m_lowAlertLevel:I

    .line 57
    iput p5, p0, Lcom/dexcom/cgm/i/a/e;->m_highAlertLevel:I

    .line 58
    iput-boolean p6, p0, Lcom/dexcom/cgm/i/a/e;->m_highAlertEnabled:Z

    .line 59
    iput-wide p7, p0, Lcom/dexcom/cgm/i/a/e;->m_time:J

    .line 60
    iput-boolean p9, p0, Lcom/dexcom/cgm/i/a/e;->m_showInvalidMessage:Z

    .line 61
    return-void
.end method

.method private static cleanseInvalidEGVs(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/i/a/f;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/i/a/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 69
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/i/a/f;

    .line 71
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/f;->getGlucoseValue()I

    move-result v3

    .line 73
    const/16 v4, 0x27

    if-lt v3, v4, :cond_0

    .line 76
    const/16 v4, 0x191

    if-gt v3, v4, :cond_0

    .line 79
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 82
    :cond_1
    return-object v2
.end method


# virtual methods
.method public final getDisplayGlucose()Lcom/dexcom/cgm/i/a/f;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/e;->m_displayEGV:Lcom/dexcom/cgm/i/a/f;

    return-object v0
.end method

.method public final getEgvs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dexcom/cgm/i/a/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/dexcom/cgm/i/a/e;->m_watchEGVs:Ljava/util/List;

    return-object v0
.end method

.method public final getHighAlertLevel()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/dexcom/cgm/i/a/e;->m_highAlertLevel:I

    return v0
.end method

.method public final getLowAlertLevel()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/dexcom/cgm/i/a/e;->m_lowAlertLevel:I

    return v0
.end method

.method public final getTimeOffsetSeconds()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/dexcom/cgm/i/a/e;->m_time:J

    return-wide v0
.end method

.method public final getTrendArrow()Lcom/dexcom/cgm/h/a/a/e;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/dexcom/cgm/i/a/e;->getDisplayGlucose()Lcom/dexcom/cgm/i/a/f;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lcom/dexcom/cgm/h/a/a/e;->None:Lcom/dexcom/cgm/h/a/a/e;

    .line 120
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/f;->getTrendArrow()Lcom/dexcom/cgm/h/a/a/e;

    move-result-object v0

    goto :goto_0
.end method

.method public final getTrendGraphHeight()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/dexcom/cgm/i/a/e;->m_trendGraphHeight:I

    return v0
.end method

.method public final isCurrentEGVInFuture()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/dexcom/cgm/i/a/e;->getEgvs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 156
    :goto_0
    return v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/dexcom/cgm/i/a/e;->getEgvs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dexcom/cgm/i/a/e;->getEgvs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dexcom/cgm/i/a/f;

    .line 147
    if-nez v0, :cond_1

    move v0, v1

    .line 149
    goto :goto_0

    .line 152
    :cond_1
    invoke-static {}, Lcom/dexcom/cgm/k/j;->getCurrentSystemTime()Lcom/dexcom/cgm/k/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dexcom/cgm/k/j;->getTimeInSeconds()J

    move-result-wide v2

    .line 153
    invoke-virtual {v0}, Lcom/dexcom/cgm/i/a/f;->getUnixTimestamp()J

    move-result-wide v4

    .line 156
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    add-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final isHighAlertEnabled()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/dexcom/cgm/i/a/e;->m_highAlertEnabled:Z

    return v0
.end method

.method public final shouldShowInvalidMessage()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/dexcom/cgm/i/a/e;->m_showInvalidMessage:Z

    return v0
.end method
