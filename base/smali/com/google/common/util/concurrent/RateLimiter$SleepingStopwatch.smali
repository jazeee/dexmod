.class abstract Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final createFromSystemTimer()Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;
    .locals 1

    .prologue
    .line 413
    new-instance v0, Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch$1;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method abstract readMicros()J
.end method

.method abstract sleepMicrosUninterruptibly(J)V
.end method