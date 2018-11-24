.class Lcom/google/common/cache/LocalCache$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field final accessQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field volatile count:I

.field final keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field final map:Lcom/google/common/cache/LocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final maxSegmentWeight:J

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final recencyQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field threshold:I

.field totalWeight:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field final writeQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;IJLcom/google/common/cache/AbstractCache$StatsCounter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache",
            "<TK;TV;>;IJ",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2090
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2070
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2091
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    .line 2092
    iput-wide p3, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    .line 2093
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/AbstractCache$StatsCounter;

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 2094
    invoke-virtual {p0, p2}, Lcom/google/common/cache/LocalCache$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2096
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2099
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_0
    iput-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2102
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesAccessQueue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    .line 2106
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesWriteQueue()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/common/cache/LocalCache$WriteQueue;

    invoke-direct {v0}, Lcom/google/common/cache/LocalCache$WriteQueue;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    .line 2110
    invoke-virtual {p1}, Lcom/google/common/cache/LocalCache;->usesAccessQueue()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/common/cache/LocalCache$AccessQueue;

    invoke-direct {v0}, Lcom/google/common/cache/LocalCache$AccessQueue;-><init>()V

    :goto_3
    iput-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    .line 2113
    return-void

    :cond_1
    move-object v0, v1

    .line 2096
    goto :goto_0

    .line 2102
    :cond_2
    invoke-static {}, Lcom/google/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_1

    .line 2106
    :cond_3
    invoke-static {}, Lcom/google/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_2

    .line 2110
    :cond_4
    invoke-static {}, Lcom/google/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method cleanUp()V
    .locals 2

    .prologue
    .line 3440
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 3441
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->runLockedCleanup(J)V

    .line 3442
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->runUnlockedCleanup()V

    .line 3443
    return-void
.end method

.method clear()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3217
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_4

    .line 3218
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3220
    :try_start_0
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v2, v1

    .line 3221
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 3222
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    :goto_1
    if-eqz v0, :cond_1

    .line 3224
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3225
    sget-object v4, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v4}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/RemovalCause;)V

    .line 3222
    :cond_0
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    goto :goto_1

    .line 3221
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3229
    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3230
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3229
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3232
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearReferenceQueues()V

    .line 3233
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3234
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3235
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3237
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3238
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3240
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3241
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 3244
    :cond_4
    return-void

    .line 3240
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3241
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method clearKeyReferenceQueue()V
    .locals 1

    .prologue
    .line 2524
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2525
    return-void
.end method

.method clearReferenceQueues()V
    .locals 1

    .prologue
    .line 2515
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2516
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearKeyReferenceQueue()V

    .line 2518
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2519
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->clearValueReferenceQueue()V

    .line 2521
    :cond_1
    return-void
.end method

.method clearValueReferenceQueue()V
    .locals 1

    .prologue
    .line 2528
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2529
    return-void
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2778
    :try_start_0
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v1, :cond_2

    .line 2779
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v1}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2780
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2781
    if-nez v1, :cond_0

    .line 2789
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    :goto_0
    return v0

    .line 2784
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2789
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v0
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 9
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2800
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_2

    .line 2801
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v4

    .line 2802
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2803
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    move v2, v1

    .line 2804
    :goto_0
    if-ge v2, v6, :cond_2

    .line 2805
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    :goto_1
    if-eqz v0, :cond_1

    .line 2806
    invoke-virtual {p0, v0, v4, v5}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v7

    .line 2807
    if-eqz v7, :cond_0

    .line 2810
    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v8, v8, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v8, p1, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 2819
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    const/4 v0, 0x1

    :goto_2
    return v0

    .line 2805
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 2804
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2819
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v0
.end method

.method copyEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2139
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2153
    :cond_0
    :goto_0
    return-object v0

    .line 2144
    :cond_1
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    .line 2145
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2146
    if-nez v2, :cond_2

    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2151
    :cond_2
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->entryFactory:Lcom/google/common/cache/LocalCache$EntryFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/common/cache/LocalCache$EntryFactory;->copyEntry(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 2152
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v1, v3, v2, v0}, Lcom/google/common/cache/LocalCache$ValueReference;->copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    goto :goto_0
.end method

.method drainKeyReferenceQueue()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2486
    const/4 v0, 0x0

    move v1, v0

    .line 2487
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2489
    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2490
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, v0}, Lcom/google/common/cache/LocalCache;->reclaimKey(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 2491
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    move v1, v0

    .line 2494
    goto :goto_0

    .line 2495
    :cond_0
    return-void
.end method

.method drainRecencyQueue()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2591
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-eqz v0, :cond_1

    .line 2596
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2597
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2600
    :cond_1
    return-void
.end method

.method drainReferenceQueues()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2475
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2476
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainKeyReferenceQueue()V

    .line 2478
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2479
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainValueReferenceQueue()V

    .line 2481
    :cond_1
    return-void
.end method

.method drainValueReferenceQueue()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2500
    const/4 v0, 0x0

    move v1, v0

    .line 2501
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2503
    check-cast v0, Lcom/google/common/cache/LocalCache$ValueReference;

    .line 2504
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, v0}, Lcom/google/common/cache/LocalCache;->reclaimValue(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2505
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    move v1, v0

    .line 2508
    goto :goto_0

    .line 2509
    :cond_0
    return-void
.end method

.method enqueueNotification(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/RemovalCause;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/RemovalCause;",
            ")V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2639
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    .line 2640
    return-void
.end method

.method enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;",
            "Lcom/google/common/cache/RemovalCause;",
            ")V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2645
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    .line 2646
    invoke-virtual {p4}, Lcom/google/common/cache/RemovalCause;->wasEvicted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2647
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v0}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordEviction()V

    .line 2649
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    sget-object v1, Lcom/google/common/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    if-eq v0, v1, :cond_1

    .line 2650
    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2651
    new-instance v1, Lcom/google/common/cache/RemovalNotification;

    invoke-direct {v1, p1, v0, p4}, Lcom/google/common/cache/RemovalNotification;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/RemovalCause;)V

    .line 2652
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2654
    :cond_1
    return-void
.end method

.method evictEntries()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2673
    :cond_0
    return-void

    .line 2666
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2667
    :cond_2
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    iget-wide v2, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2668
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->getNextEvictable()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 2669
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2670
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method expand()V
    .locals 11
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2900
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2901
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    .line 2902
    const/high16 v0, 0x40000000    # 2.0f

    if-lt v8, v0, :cond_0

    .line 2965
    :goto_0
    return-void

    .line 2916
    :cond_0
    iget v5, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2917
    shl-int/lit8 v0, v8, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    .line 2918
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 2919
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 2920
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_5

    .line 2923
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2925
    if-eqz v0, :cond_7

    .line 2926
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    .line 2927
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    and-int v4, v1, v10

    .line 2930
    if-nez v2, :cond_2

    .line 2931
    invoke-virtual {v9, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v2, v5

    .line 2920
    :cond_1
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v2

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 2938
    :goto_3
    if-eqz v2, :cond_3

    .line 2939
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v3

    and-int/2addr v3, v10

    .line 2940
    if-eq v3, v4, :cond_6

    move-object v1, v2

    .line 2938
    :goto_4
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    move v4, v3

    goto :goto_3

    .line 2946
    :cond_3
    invoke-virtual {v9, v4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v3, v0

    move v2, v5

    .line 2949
    :goto_5
    if-eq v3, v1, :cond_1

    .line 2950
    invoke-interface {v3}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    and-int v4, v0, v10

    .line 2951
    invoke-virtual {v9, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2952
    invoke-virtual {p0, v3, v0}, Lcom/google/common/cache/LocalCache$Segment;->copyEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 2953
    if-eqz v0, :cond_4

    .line 2954
    invoke-virtual {v9, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v2

    .line 2949
    :goto_6
    invoke-interface {v3}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    move-object v3, v2

    move v2, v0

    goto :goto_5

    .line 2956
    :cond_4
    invoke-virtual {p0, v3}, Lcom/google/common/cache/LocalCache$Segment;->removeCollectedEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 2957
    add-int/lit8 v0, v2, -0x1

    goto :goto_6

    .line 2963
    :cond_5
    iput-object v9, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2964
    iput v5, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_4

    :cond_7
    move v2, v5

    goto :goto_2
.end method

.method expireEntries(J)V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2620
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2623
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2624
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2625
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2628
    :cond_1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2629
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2630
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2633
    :cond_2
    return-void
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2756
    :try_start_0
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v1, :cond_2

    .line 2757
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v1}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v6

    .line 2758
    invoke-virtual {p0, p1, p2, v6, v7}, Lcom/google/common/cache/LocalCache$Segment;->getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2759
    if-nez v2, :cond_0

    .line 2772
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    :goto_0
    return-object v0

    .line 2763
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    .line 2764
    if-eqz v5, :cond_1

    .line 2765
    invoke-virtual {p0, v2, v6, v7}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V

    .line 2766
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v8, v0, Lcom/google/common/cache/LocalCache;->defaultLoader:Lcom/google/common/cache/CacheLoader;

    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/LocalCache$Segment;->scheduleRefresh(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2772
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_0

    .line 2768
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2772
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v0
.end method

.method get(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2175
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2176
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2178
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v0, :cond_1

    .line 2180
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    .line 2181
    if-eqz v2, :cond_1

    .line 2182
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v6

    .line 2183
    invoke-virtual {p0, v2, v6, v7}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v5

    .line 2184
    if-eqz v5, :cond_0

    .line 2185
    invoke-virtual {p0, v2, v6, v7}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V

    .line 2186
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v8, p3

    .line 2187
    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/LocalCache$Segment;->scheduleRefresh(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2207
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    :goto_0
    return-object v0

    .line 2189
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    .line 2190
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2191
    invoke-virtual {p0, v2, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->waitForLoadingValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2207
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_0

    .line 2197
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->lockedGetOrLoad(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 2207
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    goto :goto_0

    .line 2198
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2199
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 2200
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_2

    .line 2201
    new-instance v1, Lcom/google/common/util/concurrent/ExecutionError;

    check-cast v0, Ljava/lang/Error;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2207
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postReadCleanup()V

    throw v0

    .line 2202
    :cond_2
    :try_start_4
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_3

    .line 2203
    new-instance v1, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2205
    :cond_3
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method getAndRecordStats(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2346
    const/4 v1, 0x0

    .line 2348
    :try_start_0
    invoke-static {p4}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    .line 2349
    if-nez v1, :cond_1

    .line 2350
    new-instance v0, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "CacheLoader returned null for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2356
    :catchall_0
    move-exception v0

    if-nez v1, :cond_0

    .line 2357
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 2358
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;)Z

    :cond_0
    throw v0

    .line 2352
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadSuccess(J)V

    .line 2353
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/google/common/cache/LocalCache$Segment;->storeLoadedValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2356
    if-nez v1, :cond_2

    .line 2357
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->elapsedNanos()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 2358
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;)Z

    :cond_2
    return-object v1
.end method

.method getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2700
    invoke-virtual {p0, p2}, Lcom/google/common/cache/LocalCache$Segment;->getFirst(I)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2701
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 2705
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2706
    if-nez v1, :cond_1

    .line 2707
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    .line 2700
    :cond_0
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2711
    :cond_1
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2716
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getFirst(I)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2693
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method getLiveEntry(Ljava/lang/Object;IJ)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "IJ)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2721
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .line 2722
    if-nez v1, :cond_0

    .line 2728
    :goto_0
    return-object v0

    .line 2724
    :cond_0
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, v1, p3, p4}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2725
    invoke-virtual {p0, p3, p4}, Lcom/google/common/cache/LocalCache$Segment;->tryExpireEntries(J)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2728
    goto :goto_0
.end method

.method getLiveValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;J)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2736
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2737
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    .line 2750
    :goto_0
    return-object v0

    .line 2740
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2741
    if-nez v1, :cond_1

    .line 2742
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryDrainReferenceQueues()V

    goto :goto_0

    .line 2746
    :cond_1
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2747
    invoke-virtual {p0, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->tryExpireEntries(J)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2750
    goto :goto_0
.end method

.method getNextEvictable()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2678
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    .line 2679
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v2

    .line 2680
    if-lez v2, :cond_0

    .line 2681
    return-object v0

    .line 2684
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2120
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 2121
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->customWeigher()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/cache/LocalCache$Segment;->maxSegmentWeight:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2123
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    .line 2125
    :cond_0
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2126
    return-void
.end method

.method insertLoadingValueReference(Ljava/lang/Object;IZ)Lcom/google/common/cache/LocalCache$LoadingValueReference;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;IZ)",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2408
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2410
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2411
    invoke-virtual {p0, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2413
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2414
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2415
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v1, v0

    .line 2418
    :goto_0
    if-eqz v1, :cond_3

    .line 2419
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2420
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v7, v7, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2424
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v4

    .line 2425
    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getWriteTime()J

    move-result-wide v6

    sub-long/2addr v2, v6

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-wide v6, v0, Lcom/google/common/cache/LocalCache;->refreshNanos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v2, v6

    if-gez v0, :cond_1

    .line 2449
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2450
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 2434
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2435
    new-instance v0, Lcom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {v0, v4}, Lcom/google/common/cache/LocalCache$LoadingValueReference;-><init>(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2437
    invoke-interface {v1, v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2449
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2450
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 2418
    :cond_2
    :try_start_2
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    goto :goto_0

    .line 2442
    :cond_3
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2443
    new-instance v1, Lcom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {v1}, Lcom/google/common/cache/LocalCache$LoadingValueReference;-><init>()V

    .line 2444
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 2445
    invoke-interface {v0, v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2446
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2449
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2450
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v1

    goto :goto_1

    .line 2449
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2450
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method loadAsync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2325
    invoke-virtual {p3, p1, p4}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->loadFuture(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    .line 2326
    new-instance v0, Lcom/google/common/cache/LocalCache$Segment$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment$1;-><init>(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2338
    return-object v5
.end method

.method loadSync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2319
    invoke-virtual {p3, p1, p4}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->loadFuture(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 2320
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/cache/LocalCache$Segment;->getAndRecordStats(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method lockedGetOrLoad(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2214
    const/4 v7, 0x0

    .line 2215
    const/4 v5, 0x0

    .line 2216
    const/4 v8, 0x1

    .line 2218
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2221
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v4}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v10

    .line 2222
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2224
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v12, v4, -0x1

    .line 2225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2226
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int v14, p2, v4

    .line 2227
    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v6, v4

    .line 2229
    :goto_0
    if-eqz v6, :cond_7

    .line 2230
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v15

    .line 2231
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v9

    move/from16 v0, p2

    if-ne v9, v0, :cond_3

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v9, v9, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v15}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2233
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v9

    .line 2234
    invoke-interface {v9}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2235
    const/4 v7, 0x0

    move-object v8, v9

    .line 2260
    :goto_1
    if-eqz v7, :cond_6

    .line 2261
    new-instance v5, Lcom/google/common/cache/LocalCache$LoadingValueReference;

    invoke-direct {v5}, Lcom/google/common/cache/LocalCache$LoadingValueReference;-><init>()V

    .line 2263
    if-nez v6, :cond_4

    .line 2264
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v4

    .line 2265
    invoke-interface {v4, v5}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2266
    invoke-virtual {v13, v14, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v17, v5

    move-object v5, v4

    move-object/from16 v4, v17

    .line 2272
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2273
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    .line 2276
    if-eqz v7, :cond_5

    .line 2281
    :try_start_1
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2282
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/google/common/cache/LocalCache$Segment;->loadSync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2285
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 2289
    :goto_3
    return-object v4

    .line 2237
    :cond_0
    :try_start_3
    invoke-interface {v9}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2238
    if-nez v7, :cond_1

    .line 2239
    sget-object v7, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1, v9, v7}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    .line 2252
    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2253
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2254
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    move v7, v8

    move-object v8, v9

    .line 2256
    goto :goto_1

    .line 2240
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v10, v11}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 2243
    sget-object v7, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1, v9, v7}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 2272
    :catchall_0
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2273
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v4

    .line 2245
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v11}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V

    .line 2246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2272
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2273
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v4, v7

    goto :goto_3

    .line 2229
    :cond_3
    :try_start_5
    invoke-interface {v6}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v6

    goto/16 :goto_0

    .line 2268
    :cond_4
    invoke-interface {v6, v5}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_2

    .line 2283
    :catchall_1
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2285
    :catchall_2
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    throw v4

    .line 2289
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1, v8}, Lcom/google/common/cache/LocalCache$Segment;->waitForLoadingValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    :cond_6
    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_2

    :cond_7
    move/from16 v17, v8

    move-object v8, v7

    move/from16 v7, v17

    goto/16 :goto_1
.end method

.method newEntry(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 2
    .param p3    # Lcom/google/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2130
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->entryFactory:Lcom/google/common/cache/LocalCache$EntryFactory;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2, p3}, Lcom/google/common/cache/LocalCache$EntryFactory;->newEntry(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method postReadCleanup()V
    .locals 1

    .prologue
    .line 3416
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 3417
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->cleanUp()V

    .line 3419
    :cond_0
    return-void
.end method

.method postWriteCleanup()V
    .locals 0

    .prologue
    .line 3436
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->runUnlockedCleanup()V

    .line 3437
    return-void
.end method

.method preWriteCleanup(J)V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 3429
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->runLockedCleanup(J)V

    .line 3430
    return-void
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2825
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2827
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v4

    .line 2828
    invoke-virtual {p0, v4, v5}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2830
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 2831
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    if-le v0, v1, :cond_0

    .line 2832
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->expand()V

    .line 2833
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2836
    :cond_0
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2837
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 2838
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v1, v0

    .line 2841
    :goto_0
    if-eqz v1, :cond_5

    .line 2842
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 2843
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v3

    if-ne v3, p2, :cond_4

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v3, p1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2847
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    .line 2848
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2850
    if-nez v7, :cond_2

    .line 2851
    iget v2, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2852
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2853
    sget-object v2, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2854
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2855
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2860
    :goto_1
    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2861
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2890
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2891
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v6

    :goto_2
    return-object v0

    :cond_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2857
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2858
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2863
    :cond_2
    if-eqz p4, :cond_3

    .line 2867
    invoke-virtual {p0, v1, v4, v5}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2890
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2891
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v7

    goto :goto_2

    .line 2871
    :cond_3
    :try_start_2
    iget v2, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2872
    sget-object v2, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2873
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2874
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2890
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2891
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v7

    goto :goto_2

    .line 2841
    :cond_4
    :try_start_3
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    goto :goto_0

    .line 2881
    :cond_5
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2882
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2883
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2884
    invoke-virtual {v7, v8, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2885
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 2886
    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2887
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2890
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2891
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v6

    goto :goto_2

    .line 2890
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2891
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method reclaimKey(Lcom/google/common/cache/LocalCache$ReferenceEntry;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .prologue
    .line 3293
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3295
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3296
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3297
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 3298
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v1

    .line 3300
    :goto_0
    if-eqz v2, :cond_1

    .line 3301
    if-ne v2, p1, :cond_0

    .line 3302
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3303
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v5

    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3305
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3306
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3307
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3314
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3315
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 3300
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3314
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3315
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    const/4 v0, 0x0

    goto :goto_1

    .line 3314
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3315
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method reclaimValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3323
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3325
    :try_start_0
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3326
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3327
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v8, p2, v1

    .line 3328
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v1

    .line 3330
    :goto_0
    if-eqz v2, :cond_4

    .line 3331
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3332
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v4, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3334
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v4

    .line 3335
    if-ne v4, p3, :cond_2

    .line 3336
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3337
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3339
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3340
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3341
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3350
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3351
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3352
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    .line 3350
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3351
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3352
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 3330
    :cond_3
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3350
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3351
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3352
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 3350
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3351
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3352
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    :cond_5
    throw v0
.end method

.method recordLockedRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2556
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2557
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setAccessTime(J)V

    .line 2559
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2560
    return-void
.end method

.method recordRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2541
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2542
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setAccessTime(J)V

    .line 2544
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2545
    return-void
.end method

.method recordWrite(Lcom/google/common/cache/LocalCache$ReferenceEntry;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;IJ)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2569
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainRecencyQueue()V

    .line 2570
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/cache/LocalCache$Segment;->totalWeight:J

    .line 2572
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2573
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setAccessTime(J)V

    .line 2575
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->recordsWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2576
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setWriteTime(J)V

    .line 2578
    :cond_1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2579
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2580
    return-void
.end method

.method refresh(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;Z)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2383
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/cache/LocalCache$Segment;->insertLoadingValueReference(Ljava/lang/Object;IZ)Lcom/google/common/cache/LocalCache$LoadingValueReference;

    move-result-object v1

    .line 2385
    if-nez v1, :cond_1

    .line 2397
    :cond_0
    :goto_0
    return-object v0

    .line 2389
    :cond_1
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/google/common/cache/LocalCache$Segment;->loadAsync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 2390
    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2392
    :try_start_0
    invoke-static {v1}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3067
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3069
    :try_start_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v1}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 3070
    invoke-virtual {p0, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3072
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3073
    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3074
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v9, p2, v1

    .line 3075
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v1

    .line 3077
    :goto_0
    if-eqz v2, :cond_3

    .line 3078
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3079
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v4

    if-ne v4, p2, :cond_2

    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v4, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3081
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v5

    .line 3082
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 3085
    if-eqz v7, :cond_0

    .line 3086
    sget-object v6, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 3094
    :goto_1
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    move-object v0, p0

    move v4, p2

    .line 3095
    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3097
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3098
    invoke-virtual {v8, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3099
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3106
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3107
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v7

    :goto_2
    return-object v0

    .line 3087
    :cond_0
    :try_start_1
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3088
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3106
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3107
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_2

    .line 3077
    :cond_2
    :try_start_2
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3106
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3107
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_2

    .line 3106
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3107
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 3172
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3174
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 3175
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3177
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3178
    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3179
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v9, p2, v0

    .line 3180
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v1

    .line 3182
    :goto_0
    if-eqz v2, :cond_4

    .line 3183
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3184
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    if-ne v0, p2, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3186
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v5

    .line 3187
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3190
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v4, p3, v0}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3191
    sget-object v6, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 3199
    :goto_1
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    move-object v0, p0

    move v4, p2

    .line 3200
    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3202
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3203
    invoke-virtual {v8, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3204
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3205
    sget-object v0, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v0, :cond_2

    const/4 v0, 0x1

    .line 3211
    :goto_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3212
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v7, v0

    :goto_3
    return v7

    .line 3192
    :cond_0
    if-nez v0, :cond_1

    :try_start_1
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3193
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3211
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3212
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_3

    :cond_2
    move v0, v7

    .line 3205
    goto :goto_2

    .line 3182
    :cond_3
    :try_start_2
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3211
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3212
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_3

    .line 3211
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3212
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method removeCollectedEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 3284
    sget-object v0, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/RemovalCause;)V

    .line 3285
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3286
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3287
    return-void
.end method

.method removeEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;ILcom/google/common/cache/RemovalCause;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;I",
            "Lcom/google/common/cache/RemovalCause;",
            ")Z"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 3391
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3392
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3393
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 3394
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v1

    .line 3396
    :goto_0
    if-eqz v2, :cond_1

    .line 3397
    if-ne v2, p1, :cond_0

    .line 3398
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3399
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v5

    move-object v0, p0

    move v4, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3401
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3402
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3403
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3404
    const/4 v0, 0x1

    .line 3408
    :goto_1
    return v0

    .line 3396
    :cond_0
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v2

    goto :goto_0

    .line 3408
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method removeEntryFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 3267
    iget v2, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3268
    invoke-interface {p2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    .line 3269
    :goto_0
    if-eq p1, p2, :cond_1

    .line 3270
    invoke-virtual {p0, p1, v1}, Lcom/google/common/cache/LocalCache$Segment;->copyEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3271
    if-eqz v0, :cond_0

    move v1, v2

    .line 3269
    :goto_1
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 3274
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$Segment;->removeCollectedEntry(Lcom/google/common/cache/LocalCache$ReferenceEntry;)V

    .line 3275
    add-int/lit8 v0, v2, -0x1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_1

    .line 3278
    :cond_1
    iput v2, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3279
    return-object v1
.end method

.method removeLoadingValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3358
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3360
    :try_start_0
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3361
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 3362
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v0

    .line 3364
    :goto_0
    if-eqz v2, :cond_3

    .line 3365
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 3366
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v6, v6, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3368
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v5

    .line 3369
    if-ne v5, p3, :cond_1

    .line 3370
    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3371
    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->getOldValue()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3384
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3385
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    const/4 v0, 0x1

    :goto_2
    return v0

    .line 3373
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0, v2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntryFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3374
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3384
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3385
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0

    .line 3384
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3385
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v0, v1

    goto :goto_2

    .line 3364
    :cond_2
    :try_start_2
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3384
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3385
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v0, v1

    goto :goto_2
.end method

.method removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;TK;I",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;",
            "Lcom/google/common/cache/RemovalCause;",
            ")",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 3251
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    .line 3252
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->writeQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3253
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->accessQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3255
    invoke-interface {p5}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3256
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Lcom/google/common/cache/LocalCache$ValueReference;->notifyNewValue(Ljava/lang/Object;)V

    .line 3259
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->removeEntryFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object p1

    goto :goto_0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3021
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3023
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v8

    .line 3024
    invoke-virtual {p0, v8, v9}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3026
    iget-object v10, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3027
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v11, p2, v0

    .line 3028
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v1

    .line 3030
    :goto_0
    if-eqz v2, :cond_3

    .line 3031
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3032
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    if-ne v0, p2, :cond_2

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3034
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v5

    .line 3035
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3036
    if-nez v0, :cond_1

    .line 3037
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3039
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3040
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3041
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 3043
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3044
    invoke-virtual {v10, v11, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3045
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3060
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3061
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v7

    :goto_1
    return-object v0

    .line 3050
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3051
    sget-object v1, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v5, v1}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-wide v5, v8

    .line 3052
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3053
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3060
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3061
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    goto :goto_1

    .line 3030
    :cond_2
    :try_start_2
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3060
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3061
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move-object v0, v7

    goto :goto_1

    .line 3060
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3061
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 2968
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 2970
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v8

    .line 2971
    invoke-virtual {p0, v8, v9}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 2973
    iget-object v7, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2974
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v10, p2, v0

    .line 2975
    invoke-virtual {v7, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v2, v1

    .line 2977
    :goto_0
    if-eqz v2, :cond_4

    .line 2978
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 2979
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v0

    if-ne v0, p2, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2981
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v5

    .line 2982
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2983
    if-nez v0, :cond_1

    .line 2984
    invoke-interface {v5}, Lcom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2986
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 2987
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2988
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->removeValueFromChain(Lcom/google/common/cache/LocalCache$ReferenceEntry;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    .line 2990
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 2991
    invoke-virtual {v7, v10, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2992
    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3014
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3015
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    const/4 v0, 0x0

    :goto_1
    return v0

    .line 2997
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v1, p3, v0}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2998
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 2999
    sget-object v0, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v5, v0}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-wide v5, v8

    .line 3000
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3001
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3014
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3015
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    const/4 v0, 0x1

    goto :goto_1

    .line 3006
    :cond_2
    :try_start_2
    invoke-virtual {p0, v2, v8, v9}, Lcom/google/common/cache/LocalCache$Segment;->recordLockedRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3014
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3015
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    const/4 v0, 0x0

    goto :goto_1

    .line 2977
    :cond_3
    :try_start_3
    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3014
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3015
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    const/4 v0, 0x0

    goto :goto_1

    .line 3014
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3015
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method runLockedCleanup(J)V
    .locals 3

    .prologue
    .line 3446
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3448
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainReferenceQueues()V

    .line 3449
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->expireEntries(J)V

    .line 3450
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3452
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3455
    :cond_0
    return-void

    .line 3452
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    throw v0
.end method

.method runUnlockedCleanup()V
    .locals 1

    .prologue
    .line 3459
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3460
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->processPendingNotifications()V

    .line 3462
    :cond_0
    return-void
.end method

.method scheduleRefresh(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;TK;ITV;J",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->refreshes()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getWriteTime()J

    move-result-wide v0

    sub-long v0, p5, v0

    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-wide v2, v2, Lcom/google/common/cache/LocalCache;->refreshNanos:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2367
    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, p7, v0}, Lcom/google/common/cache/LocalCache$Segment;->refresh(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;

    move-result-object v0

    .line 2368
    if-eqz v0, :cond_0

    move-object p4, v0

    .line 2372
    :cond_0
    return-object p4
.end method

.method setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;TK;TV;J)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2161
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    .line 2162
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->weigher:Lcom/google/common/cache/Weigher;

    invoke-interface {v0, p2, p3}, Lcom/google/common/cache/Weigher;->weigh(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 2163
    if-ltz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v3, "Weights must be non-negative"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2165
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {v0, p0, p1, p3, v2}, Lcom/google/common/cache/LocalCache$Strength;->referenceValue(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    .line 2167
    invoke-interface {p1, v0}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->setValueReference(Lcom/google/common/cache/LocalCache$ValueReference;)V

    .line 2168
    invoke-virtual {p0, p1, v2, p4, p5}, Lcom/google/common/cache/LocalCache$Segment;->recordWrite(Lcom/google/common/cache/LocalCache$ReferenceEntry;IJ)V

    .line 2169
    invoke-interface {v1, p3}, Lcom/google/common/cache/LocalCache$ValueReference;->notifyNewValue(Ljava/lang/Object;)V

    .line 2170
    return-void

    .line 2163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method storeLoadedValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Ljava/lang/Object;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$LoadingValueReference",
            "<TK;TV;>;TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 3113
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 3115
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v4

    .line 3116
    invoke-virtual {p0, v4, v5}, Lcom/google/common/cache/LocalCache$Segment;->preWriteCleanup(J)V

    .line 3118
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v7, v0, 0x1

    .line 3119
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->threshold:I

    if-le v7, v0, :cond_0

    .line 3120
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->expand()V

    .line 3121
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    add-int/lit8 v7, v0, 0x1

    .line 3124
    :cond_0
    iget-object v8, p0, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3125
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v9, p2, v0

    .line 3126
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-object v1, v0

    .line 3128
    :goto_0
    if-eqz v1, :cond_6

    .line 3129
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3130
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getHash()I

    move-result v10

    if-ne v10, p2, :cond_5

    if-eqz v3, :cond_5

    iget-object v10, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v10, v10, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v10, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3132
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    .line 3133
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v3

    .line 3136
    if-eq p3, v0, :cond_1

    if-nez v3, :cond_4

    sget-object v8, Lcom/google/common/cache/LocalCache;->UNSET:Lcom/google/common/cache/LocalCache$ValueReference;

    if-eq v0, v8, :cond_4

    .line 3138
    :cond_1
    iget v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3139
    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$LoadingValueReference;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3140
    if-nez v3, :cond_3

    sget-object v0, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 3142
    :goto_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V

    .line 3143
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    :cond_2
    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    .line 3145
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3146
    iput v7, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3147
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3166
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3167
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v0, v6

    :goto_2
    return v0

    .line 3140
    :cond_3
    :try_start_1
    sget-object v0, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    goto :goto_1

    .line 3152
    :cond_4
    new-instance v0, Lcom/google/common/cache/LocalCache$WeightedStrongValueReference;

    const/4 v1, 0x0

    invoke-direct {v0, p4, v1}, Lcom/google/common/cache/LocalCache$WeightedStrongValueReference;-><init>(Ljava/lang/Object;I)V

    .line 3153
    sget-object v1, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/cache/LocalCache$Segment;->enqueueNotification(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;Lcom/google/common/cache/RemovalCause;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3166
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3167
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v0, v2

    goto :goto_2

    .line 3128
    :cond_5
    :try_start_2
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$ReferenceEntry;->getNext()Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    goto :goto_0

    .line 3158
    :cond_6
    iget v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    .line 3159
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ReferenceEntry;)Lcom/google/common/cache/LocalCache$ReferenceEntry;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    .line 3160
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;->setValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3161
    invoke-virtual {v8, v9, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3162
    iput v7, p0, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 3163
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->evictEntries()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3166
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3167
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    move v0, v6

    goto :goto_2

    .line 3166
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 3167
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->postWriteCleanup()V

    throw v0
.end method

.method tryDrainReferenceQueues()V
    .locals 1

    .prologue
    .line 2460
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2462
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->drainReferenceQueues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2464
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2467
    :cond_0
    return-void

    .line 2464
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    throw v0
.end method

.method tryExpireEntries(J)V
    .locals 1

    .prologue
    .line 2608
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2610
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->expireEntries(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2612
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 2616
    :cond_0
    return-void

    .line 2612
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    throw v0
.end method

.method waitForLoadingValue(Lcom/google/common/cache/LocalCache$ReferenceEntry;Ljava/lang/Object;Lcom/google/common/cache/LocalCache$ValueReference;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;TK;",
            "Lcom/google/common/cache/LocalCache$ValueReference",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2295
    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$ValueReference;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2296
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2299
    :cond_0
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Recursive load of: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2302
    :try_start_0
    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$ValueReference;->waitForValue()Ljava/lang/Object;

    move-result-object v0

    .line 2303
    if-nez v0, :cond_2

    .line 2304
    new-instance v0, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "CacheLoader returned null for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2311
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v2, v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    throw v0

    :cond_1
    move v0, v2

    .line 2299
    goto :goto_0

    .line 2307
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->map:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v2}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2308
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->recordRead(Lcom/google/common/cache/LocalCache$ReferenceEntry;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2311
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$Segment;->statsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v2, v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    return-object v0
.end method
