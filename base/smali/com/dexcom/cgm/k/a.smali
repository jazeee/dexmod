.class public final Lcom/dexcom/cgm/k/a;
.super Ljava/lang/Object;
.source "AppClock.java"


# static fields
.field private static m_fixedTimeMilliseconds:Ljava/lang/Long;

.field private static m_offsetMilliseconds:J

.field private static m_resetTime:Z

.field private static m_timeSyncer:Lcom/dexcom/cgm/k/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/dexcom/cgm/k/a;->m_offsetMilliseconds:J

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/dexcom/cgm/k/a;->m_fixedTimeMilliseconds:Ljava/lang/Long;

    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dexcom/cgm/k/a;->m_resetTime:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOffsetToRTCTime(J)V
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/dexcom/cgm/k/a;->m_timeSyncer:Lcom/dexcom/cgm/k/l;

    invoke-virtual {v0, p0, p1}, Lcom/dexcom/cgm/k/l;->driftTime(J)V

    .line 165
    return-void
.end method

.method public static addTimeOffsetSeconds(J)V
    .locals 4

    .prologue
    .line 96
    sget-wide v0, Lcom/dexcom/cgm/k/a;->m_offsetMilliseconds:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    sput-wide v0, Lcom/dexcom/cgm/k/a;->m_offsetMilliseconds:J

    .line 97
    sget-object v0, Lcom/dexcom/cgm/k/a;->m_fixedTimeMilliseconds:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/dexcom/cgm/k/a;->m_fixedTimeMilliseconds:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/k/a;->m_fixedTimeMilliseconds:Ljava/lang/Long;

    .line 101
    :cond_0
    return-void
.end method

.method public static currentTimeMilliseconds()J
    .locals 4

    .prologue
    .line 128
    sget-object v0, Lcom/dexcom/cgm/k/a;->m_fixedTimeMilliseconds:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lcom/dexcom/cgm/k/a;->m_fixedTimeMilliseconds:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 131
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/dexcom/cgm/k/a;->realTimeMilliseconds()J

    move-result-wide v0

    sget-wide v2, Lcom/dexcom/cgm/k/a;->m_offsetMilliseconds:J

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public static currentTimeSeconds()J
    .locals 4

    .prologue
    .line 118
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/dexcom/cgm/k/a;->currentTimeMilliseconds()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimeOffsetSeconds()J
    .locals 4

    .prologue
    .line 108
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v2, Lcom/dexcom/cgm/k/a;->m_offsetMilliseconds:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUserDisplayTimeSeconds()J
    .locals 6

    .prologue
    .line 155
    sget-object v0, Lcom/dexcom/cgm/k/a;->m_fixedTimeMilliseconds:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Lcom/dexcom/cgm/k/a;->m_fixedTimeMilliseconds:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 158
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/dexcom/cgm/k/a;->m_offsetMilliseconds:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static initializeTimeBase(J)V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/dexcom/cgm/k/l;

    invoke-direct {v0, p0, p1}, Lcom/dexcom/cgm/k/l;-><init>(J)V

    sput-object v0, Lcom/dexcom/cgm/k/a;->m_timeSyncer:Lcom/dexcom/cgm/k/l;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/dexcom/cgm/k/a;->m_resetTime:Z

    .line 32
    return-void
.end method

.method private static isServerTimeStale()Z
    .locals 6

    .prologue
    .line 41
    sget-object v0, Lcom/dexcom/cgm/k/a;->m_timeSyncer:Lcom/dexcom/cgm/k/l;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/l;->getElapsedTimeMilliseconds()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static needToInitializeTimeBase()Z
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/dexcom/cgm/k/a;->m_timeSyncer:Lcom/dexcom/cgm/k/l;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needToRefreshTimeBase()Z
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/dexcom/cgm/k/a;->needToInitializeTimeBase()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dexcom/cgm/k/a;->isServerTimeStale()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/dexcom/cgm/k/a;->m_resetTime:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static realTimeMilliseconds()J
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/dexcom/cgm/k/a;->m_timeSyncer:Lcom/dexcom/cgm/k/l;

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 146
    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/dexcom/cgm/k/a;->m_timeSyncer:Lcom/dexcom/cgm/k/l;

    invoke-virtual {v0}, Lcom/dexcom/cgm/k/l;->getReallyRealTimeMilliseconds()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static removeFixedTime()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/dexcom/cgm/k/a;->m_fixedTimeMilliseconds:Ljava/lang/Long;

    .line 75
    return-void
.end method

.method public static reset()V
    .locals 2

    .prologue
    .line 57
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/dexcom/cgm/k/a;->m_offsetMilliseconds:J

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/dexcom/cgm/k/a;->m_fixedTimeMilliseconds:Ljava/lang/Long;

    .line 59
    return-void
.end method

.method public static setFixedTimeSeconds(J)V
    .locals 2

    .prologue
    .line 66
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/dexcom/cgm/k/a;->m_fixedTimeMilliseconds:Ljava/lang/Long;

    .line 67
    return-void
.end method

.method public static setResetTimeFlag(Z)V
    .locals 0

    .prologue
    .line 169
    sput-boolean p0, Lcom/dexcom/cgm/k/a;->m_resetTime:Z

    .line 170
    return-void
.end method

.method public static setTimeOffsetSeconds(J)V
    .locals 2

    .prologue
    .line 85
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/dexcom/cgm/k/a;->m_offsetMilliseconds:J

    .line 86
    return-void
.end method
