.class final Lcom/google/common/math/DoubleMath$MeanAccumulator;
.super Ljava/lang/Object;
.source "DoubleMath.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "com.google.common.math.DoubleUtils"
.end annotation


# instance fields
.field private count:J

.field private mean:D


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->count:J

    .line 390
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/math/DoubleMath$1;)V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/google/common/math/DoubleMath$MeanAccumulator;-><init>()V

    return-void
.end method


# virtual methods
.method final add(D)V
    .locals 7

    .prologue
    .line 393
    invoke-static {p1, p2}, Lcom/google/common/math/DoubleUtils;->isFinite(D)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 394
    iget-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->count:J

    .line 396
    iget-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean:D

    iget-wide v2, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean:D

    sub-double v2, p1, v2

    iget-wide v4, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->count:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean:D

    .line 397
    return-void
.end method

.method final mean()D
    .locals 4

    .prologue
    .line 400
    iget-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->count:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot take mean of 0 values"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 401
    iget-wide v0, p0, Lcom/google/common/math/DoubleMath$MeanAccumulator;->mean:D

    return-wide v0

    .line 400
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
