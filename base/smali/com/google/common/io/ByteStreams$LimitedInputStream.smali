.class final Lcom/google/common/io/ByteStreams$LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "ByteStreams.java"


# instance fields
.field private left:J

.field private mark:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;J)V
    .locals 2

    .prologue
    .line 549
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 546
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->mark:J

    .line 550
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "limit must be non-negative"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 552
    iput-wide p2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    .line 553
    return-void

    .line 551
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final available()I
    .locals 4

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final declared-synchronized mark(I)V
    .locals 2

    .prologue
    .line 561
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 562
    iget-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    iput-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->mark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    monitor-exit p0

    return-void

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final read()I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 566
    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 574
    :goto_0
    return v0

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 571
    if-eq v1, v0, :cond_1

    .line 572
    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    :cond_1
    move v0, v1

    .line 574
    goto :goto_0
.end method

.method public final read([BII)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 578
    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 587
    :goto_0
    return v0

    .line 582
    :cond_0
    int-to-long v2, p3

    iget-wide v4, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 583
    iget-object v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 584
    if-eq v1, v0, :cond_1

    .line 585
    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    :cond_1
    move v0, v1

    .line 587
    goto :goto_0
.end method

.method public final declared-synchronized reset()V
    .locals 4

    .prologue
    .line 591
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 594
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->mark:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 595
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 599
    iget-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->mark:J

    iput-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 600
    monitor-exit p0

    return-void
.end method

.method public final skip(J)J
    .locals 5

    .prologue
    .line 603
    iget-wide v0, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 604
    iget-object v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 605
    iget-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/io/ByteStreams$LimitedInputStream;->left:J

    .line 606
    return-wide v0
.end method
