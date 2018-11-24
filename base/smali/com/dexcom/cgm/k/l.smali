.class public Lcom/dexcom/cgm/k/l;
.super Ljava/lang/Object;
.source "TimeSyncer.java"


# static fields
.field public static final crop__activity_crop:I = 0x7f040062

.field public static final crop__layout_done_cancel:I = 0x7f040063


# instance fields
.field private m_millisecondsOfDrift:J

.field private final m_millisecondsSinceBoot:J

.field private final m_reallyRealTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1043
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dexcom/cgm/k/l;->m_millisecondsOfDrift:J

    .line 38
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dexcom/cgm/k/l;->m_reallyRealTime:J

    .line 39
    invoke-static {}, Lcom/dexcom/cgm/k/d;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dexcom/cgm/k/l;->m_millisecondsSinceBoot:J

    .line 40
    return-void
.end method


# virtual methods
.method public final driftTime(J)V
    .locals 3

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/dexcom/cgm/k/l;->m_millisecondsOfDrift:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/dexcom/cgm/k/l;->m_millisecondsOfDrift:J

    .line 61
    return-void
.end method

.method public final getElapsedTimeMilliseconds()J
    .locals 6

    .prologue
    .line 54
    invoke-static {}, Lcom/dexcom/cgm/k/d;->elapsedRealtime()J

    move-result-wide v0

    .line 55
    iget-wide v2, p0, Lcom/dexcom/cgm/k/l;->m_millisecondsSinceBoot:J

    iget-wide v4, p0, Lcom/dexcom/cgm/k/l;->m_millisecondsOfDrift:J

    add-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getReallyRealTimeMilliseconds()J
    .locals 4

    .prologue
    .line 47
    invoke-static {}, Lcom/dexcom/cgm/k/d;->elapsedRealtime()J

    move-result-wide v0

    .line 48
    iget-wide v2, p0, Lcom/dexcom/cgm/k/l;->m_millisecondsSinceBoot:J

    sub-long/2addr v0, v2

    .line 49
    iget-wide v2, p0, Lcom/dexcom/cgm/k/l;->m_reallyRealTime:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/dexcom/cgm/k/l;->m_millisecondsOfDrift:J

    add-long/2addr v0, v2

    return-wide v0
.end method
