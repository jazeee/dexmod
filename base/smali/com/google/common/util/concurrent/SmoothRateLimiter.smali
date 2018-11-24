.class abstract Lcom/google/common/util/concurrent/SmoothRateLimiter;
.super Lcom/google/common/util/concurrent/RateLimiter;
.source "SmoothRateLimiter.java"


# instance fields
.field maxPermits:D

.field private nextFreeTicketMicros:J

.field stableIntervalMicros:D

.field storedPermits:D


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)V
    .locals 2

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/RateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)V

    .line 330
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    .line 334
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;Lcom/google/common/util/concurrent/SmoothRateLimiter$1;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/SmoothRateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)V

    return-void
.end method

.method private resync(J)V
    .locals 9

    .prologue
    .line 383
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 384
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->maxPermits:D

    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    iget-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    iget-wide v6, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->stableIntervalMicros:D

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    .line 386
    iput-wide p1, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    .line 388
    :cond_0
    return-void
.end method


# virtual methods
.method final doGetRate()D
    .locals 4

    .prologue
    .line 348
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->stableIntervalMicros:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method abstract doSetRate(DD)V
.end method

.method final doSetRate(DJ)V
    .locals 5

    .prologue
    .line 338
    invoke-direct {p0, p3, p4}, Lcom/google/common/util/concurrent/SmoothRateLimiter;->resync(J)V

    .line 339
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, p1

    .line 340
    iput-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->stableIntervalMicros:D

    .line 341
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/util/concurrent/SmoothRateLimiter;->doSetRate(DD)V

    .line 342
    return-void
.end method

.method final queryEarliestAvailable(J)J
    .locals 2

    .prologue
    .line 353
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    return-wide v0
.end method

.method final reserveEarliestAvailable(IJ)J
    .locals 10

    .prologue
    .line 358
    invoke-direct {p0, p2, p3}, Lcom/google/common/util/concurrent/SmoothRateLimiter;->resync(J)V

    .line 359
    iget-wide v0, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    .line 360
    int-to-double v2, p1

    iget-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 361
    int-to-double v4, p1

    sub-double/2addr v4, v2

    .line 363
    iget-wide v6, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    invoke-virtual {p0, v6, v7, v2, v3}, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermitsToWaitTime(DD)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->stableIntervalMicros:D

    mul-double/2addr v4, v8

    double-to-long v4, v4

    add-long/2addr v4, v6

    .line 366
    iget-wide v6, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->nextFreeTicketMicros:J

    .line 367
    iget-wide v4, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    sub-double v2, v4, v2

    iput-wide v2, p0, Lcom/google/common/util/concurrent/SmoothRateLimiter;->storedPermits:D

    .line 368
    return-wide v0
.end method

.method abstract storedPermitsToWaitTime(DD)J
.end method
