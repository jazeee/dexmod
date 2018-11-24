.class Lcom/google/common/collect/MapMakerInternalMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "MapMakerInternalMap.java"


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
.field volatile count:I

.field final evictionQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final expirationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field final keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field final map:Lcom/google/common/collect/MapMakerInternalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final maxSegmentSize:I

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final recencyQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field threshold:I

.field final valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;>;II)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2090
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2074
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2091
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    .line 2092
    iput p3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    .line 2093
    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2095
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2098
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_0
    iput-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 2101
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->evictsBySize()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recencyQueue:Ljava/util/Queue;

    .line 2105
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->evictsBySize()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    .line 2109
    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->expires()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$ExpirationQueue;-><init>()V

    :goto_3
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    .line 2112
    return-void

    :cond_2
    move-object v0, v1

    .line 2095
    goto :goto_0

    .line 2101
    :cond_3
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_1

    .line 2105
    :cond_4
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_2

    .line 2109
    :cond_5
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->discardingQueue()Ljava/util/Queue;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method clear()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2819
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_4

    .line 2820
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2822
    :try_start_0
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2823
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    sget-object v2, Lcom/google/common/collect/MapMakerInternalMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    if-eq v0, v2, :cond_2

    move v2, v1

    .line 2824
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 2825
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    :goto_1
    if-eqz v0, :cond_1

    .line 2827
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->isComputingReference()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2828
    sget-object v4, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v0, v4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2825
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    goto :goto_1

    .line 2824
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2833
    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2834
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2833
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2836
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->clearReferenceQueues()V

    .line 2837
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2838
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2839
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2841
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2842
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2844
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2845
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    .line 2848
    :cond_4
    return-void

    .line 2844
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2845
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v0
.end method

.method clearKeyReferenceQueue()V
    .locals 1

    .prologue
    .line 2235
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2236
    return-void
.end method

.method clearReferenceQueues()V
    .locals 1

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2227
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->clearKeyReferenceQueue()V

    .line 2229
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2230
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->clearValueReferenceQueue()V

    .line 2232
    :cond_1
    return-void
.end method

.method clearValue(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2961
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2963
    :try_start_0
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2964
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2965
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v2, v0

    .line 2967
    :goto_0
    if-eqz v2, :cond_2

    .line 2968
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2969
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_1

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2971
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v5

    .line 2972
    if-ne v5, p3, :cond_0

    .line 2973
    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2974
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2983
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2984
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2983
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2984
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move v0, v1

    goto :goto_1

    .line 2967
    :cond_1
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 2983
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2984
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move v0, v1

    goto :goto_1

    .line 2983
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2984
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v0
.end method

.method clearValueReferenceQueue()V
    .locals 1

    .prologue
    .line 2239
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2240
    return-void
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2454
    :try_start_0
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v1, :cond_2

    .line 2455
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2456
    if-nez v1, :cond_0

    .line 2464
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    :goto_0
    return v0

    .line 2459
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2464
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v0
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2475
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_2

    .line 2476
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2477
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    move v2, v1

    .line 2478
    :goto_0
    if-ge v2, v4, :cond_2

    .line 2479
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    :goto_1
    if-eqz v0, :cond_1

    .line 2480
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v5

    .line 2481
    if-eqz v5, :cond_0

    .line 2484
    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 2493
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 v0, 0x1

    :goto_2
    return v0

    .line 2479
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 2478
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2493
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v0
.end method

.method copyEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2138
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2152
    :cond_0
    :goto_0
    return-object v0

    .line 2143
    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v1

    .line 2144
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2145
    if-nez v2, :cond_2

    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->isComputingReference()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2150
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->entryFactory:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->copyEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2151
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v1, v3, v2, v0}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V

    goto :goto_0
.end method

.method drainKeyReferenceQueue()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2197
    const/4 v0, 0x0

    move v1, v0

    .line 2198
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2200
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2201
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->reclaimKey(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 2202
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    move v1, v0

    .line 2205
    goto :goto_0

    .line 2206
    :cond_0
    return-void
.end method

.method drainRecencyQueue()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2303
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    if-eqz v0, :cond_2

    .line 2308
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2309
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2311
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2312
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2315
    :cond_2
    return-void
.end method

.method drainReferenceQueues()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2187
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainKeyReferenceQueue()V

    .line 2189
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2190
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainValueReferenceQueue()V

    .line 2192
    :cond_1
    return-void
.end method

.method drainValueReferenceQueue()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2211
    const/4 v0, 0x0

    move v1, v0

    .line 2212
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2214
    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    .line 2215
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/MapMakerInternalMap;->reclaimValue(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V

    .line 2216
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    move v1, v0

    .line 2219
    goto :goto_0

    .line 2220
    :cond_0
    return-void
.end method

.method enqueueNotification(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMaker$RemovalCause;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMaker$RemovalCause;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2359
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v1

    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2360
    return-void
.end method

.method enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;",
            "Lcom/google/common/collect/MapMaker$RemovalCause;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2363
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    if-eq v0, v1, :cond_0

    .line 2364
    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalNotification;

    invoke-direct {v0, p1, p3, p4}, Lcom/google/common/collect/MapMaker$RemovalNotification;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2365
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, v1, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2367
    :cond_0
    return-void
.end method

.method evictEntries()Z
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2377
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->evictsBySize()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    if-lt v0, v1, :cond_1

    .line 2378
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainRecencyQueue()V

    .line 2380
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2381
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->SIZE:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;ILcom/google/common/collect/MapMaker$RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2382
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2384
    :cond_0
    const/4 v0, 0x1

    .line 2386
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method expand()V
    .locals 11
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2570
    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2571
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    .line 2572
    const/high16 v0, 0x40000000    # 2.0f

    if-lt v8, v0, :cond_0

    .line 2635
    :goto_0
    return-void

    .line 2586
    :cond_0
    iget v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2587
    shl-int/lit8 v0, v8, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    .line 2588
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 2589
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 2590
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_5

    .line 2593
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2595
    if-eqz v0, :cond_7

    .line 2596
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v2

    .line 2597
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v1

    and-int v4, v1, v10

    .line 2600
    if-nez v2, :cond_2

    .line 2601
    invoke-virtual {v9, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v2, v5

    .line 2590
    :cond_1
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v2

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 2608
    :goto_3
    if-eqz v2, :cond_3

    .line 2609
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v3

    and-int/2addr v3, v10

    .line 2610
    if-eq v3, v4, :cond_6

    move-object v1, v2

    .line 2608
    :goto_4
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v2

    move v4, v3

    goto :goto_3

    .line 2616
    :cond_3
    invoke-virtual {v9, v4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v3, v0

    move v2, v5

    .line 2619
    :goto_5
    if-eq v3, v1, :cond_1

    .line 2620
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v0

    and-int v4, v0, v10

    .line 2621
    invoke-virtual {v9, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2622
    invoke-virtual {p0, v3, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->copyEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2623
    if-eqz v0, :cond_4

    .line 2624
    invoke-virtual {v9, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v2

    .line 2619
    :goto_6
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v2

    move-object v3, v2

    move v2, v0

    goto :goto_5

    .line 2626
    :cond_4
    invoke-virtual {p0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeCollectedEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 2627
    add-int/lit8 v0, v2, -0x1

    goto :goto_6

    .line 2633
    :cond_5
    iput-object v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2634
    iput v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_4

    :cond_7
    move v2, v5

    goto :goto_2
.end method

.method expireEntries()V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2340
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainRecencyQueue()V

    .line 2342
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2354
    :cond_0
    return-void

    .line 2347
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2349
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/common/collect/MapMakerInternalMap;->isExpired(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2350
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v4, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v0, v1, v4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;ILcom/google/common/collect/MapMaker$RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2351
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 2435
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2436
    if-nez v1, :cond_0

    .line 2448
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2440
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2441
    if-eqz v0, :cond_1

    .line 2442
    invoke-virtual {p0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordRead(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2448
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_0

    .line 2444
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2448
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v0
.end method

.method getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2401
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_2

    .line 2402
    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getFirst(I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 2403
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 2407
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2408
    if-nez v1, :cond_1

    .line 2409
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    .line 2402
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2413
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2419
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getFirst(I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2395
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method getLiveEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2423
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    .line 2424
    if-nez v1, :cond_0

    .line 2430
    :goto_0
    return-object v0

    .line 2426
    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap;->expires()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/MapMakerInternalMap;->isExpired(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2427
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryExpireEntries()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2430
    goto :goto_0
.end method

.method getLiveValue(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3026
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3027
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    .line 3040
    :goto_0
    return-object v0

    .line 3030
    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    .line 3031
    if-nez v1, :cond_1

    .line 3032
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    goto :goto_0

    .line 3036
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap;->expires()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, p1}, Lcom/google/common/collect/MapMakerInternalMap;->isExpired(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3037
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryExpireEntries()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 3040
    goto :goto_0
.end method

.method initTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2119
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 2120
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    if-ne v0, v1, :cond_0

    .line 2122
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 2124
    :cond_0
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2125
    return-void
.end method

.method isCollected(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3015
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->isComputingReference()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3018
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method newEntry(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1
    .param p3    # Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->entryFactory:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

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
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method postReadCleanup()V
    .locals 1

    .prologue
    .line 3049
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 3050
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runCleanup()V

    .line 3052
    :cond_0
    return-void
.end method

.method postWriteCleanup()V
    .locals 0

    .prologue
    .line 3069
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 3070
    return-void
.end method

.method preWriteCleanup()V
    .locals 0
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 3062
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 3063
    return-void
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2498
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2500
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 2502
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v0, 0x1

    .line 2503
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    if-le v2, v0, :cond_0

    .line 2504
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expand()V

    .line 2505
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v0, 0x1

    .line 2508
    :cond_0
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2509
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2510
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v3, v0

    .line 2513
    :goto_0
    if-eqz v3, :cond_6

    .line 2514
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2515
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v7

    if-ne v7, p2, :cond_5

    if-eqz v6, :cond_5

    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v7, v7, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2519
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v4

    .line 2520
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2522
    if-nez v0, :cond_3

    .line 2523
    iget v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2524
    invoke-virtual {p0, v3, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V

    .line 2525
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->isComputingReference()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2526
    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2527
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2531
    :cond_1
    :goto_1
    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2560
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2561
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v0, v1

    :goto_2
    return-object v0

    .line 2528
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictEntries()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2529
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    .line 2533
    :cond_3
    if-eqz p4, :cond_4

    .line 2537
    invoke-virtual {p0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordLockedRead(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2560
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2561
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_2

    .line 2541
    :cond_4
    :try_start_2
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2542
    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->REPLACED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2543
    invoke-virtual {p0, v3, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2560
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2561
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_2

    .line 2513
    :cond_5
    :try_start_3
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v3

    goto :goto_0

    .line 2550
    :cond_6
    iget v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2551
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2552
    invoke-virtual {p0, v0, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V

    .line 2553
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2554
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictEntries()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2555
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 2557
    :goto_3
    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2560
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2561
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v0, v1

    goto :goto_2

    .line 2560
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2561
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v0

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method reclaimKey(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .prologue
    .line 2892
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2894
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2895
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2896
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 2897
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v1, v0

    .line 2899
    :goto_0
    if-eqz v1, :cond_1

    .line 2900
    if-ne v1, p1, :cond_0

    .line 2901
    iget v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2902
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v4, p2, v5, v6}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2904
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2905
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 2906
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2907
    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2914
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2915
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2899
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 2914
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2915
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    const/4 v0, 0x0

    goto :goto_1

    .line 2914
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2915
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v0
.end method

.method reclaimValue(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$ValueReference",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2923
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2925
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2926
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2927
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2928
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v2, v0

    .line 2930
    :goto_0
    if-eqz v2, :cond_4

    .line 2931
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2932
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2934
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v5

    .line 2935
    if-ne v5, p3, :cond_1

    .line 2936
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2937
    invoke-interface {p3}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v1, v5}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2938
    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2939
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 2940
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2941
    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2950
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2951
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2952
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2950
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2951
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2952
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    :cond_2
    move v0, v1

    goto :goto_1

    .line 2930
    :cond_3
    :try_start_1
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 2950
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2951
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2952
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    :cond_5
    move v0, v1

    goto :goto_1

    .line 2950
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2951
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2952
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    :cond_6
    throw v0
.end method

.method recordExpirationTime(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setExpirationTime(J)V

    .line 2322
    return-void
.end method

.method recordLockedRead(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2268
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2269
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordExpirationTime(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;J)V

    .line 2270
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2272
    :cond_0
    return-void
.end method

.method recordRead(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2253
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordExpirationTime(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;J)V

    .line 2255
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2256
    return-void
.end method

.method recordWrite(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2281
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainRecencyQueue()V

    .line 2282
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2283
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->expires()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2286
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    .line 2289
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordExpirationTime(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;J)V

    .line 2290
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2292
    :cond_0
    return-void

    .line 2286
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    goto :goto_0
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2733
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2735
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 2737
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2738
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2739
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2740
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v3, v0

    .line 2742
    :goto_0
    if-eqz v3, :cond_3

    .line 2743
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2744
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2746
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v7

    .line 2747
    invoke-interface {v7}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2750
    if-eqz v2, :cond_0

    .line 2751
    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 2758
    :goto_1
    iget v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2759
    invoke-virtual {p0, v6, p2, v2, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2760
    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2761
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 2762
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2763
    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2770
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2771
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v0, v2

    :goto_2
    return-object v0

    .line 2752
    :cond_0
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2753
    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2770
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2771
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v0, v1

    goto :goto_2

    .line 2742
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2770
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2771
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v0, v1

    goto :goto_2

    .line 2770
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2771
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v0
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 2776
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2778
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 2780
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2781
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2782
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2783
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v3, v0

    .line 2785
    :goto_0
    if-eqz v3, :cond_4

    .line 2786
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2787
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_3

    if-eqz v6, :cond_3

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2789
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v2

    .line 2790
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2793
    iget-object v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v8, v8, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v8, p3, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2794
    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 2801
    :goto_1
    iget v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2802
    invoke-virtual {p0, v6, p2, v7, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2803
    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2804
    iget v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v3, v3, -0x1

    .line 2805
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2806
    iput v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2807
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/google/common/collect/MapMaker$RemovalCause;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    .line 2813
    :goto_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2814
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move v1, v0

    :goto_3
    return v1

    .line 2795
    :cond_0
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2796
    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2813
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2814
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_3

    :cond_2
    move v0, v1

    .line 2807
    goto :goto_2

    .line 2785
    :cond_3
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2813
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2814
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    goto :goto_3

    .line 2813
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2814
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v0
.end method

.method removeCollectedEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2883
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2884
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2885
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2886
    return-void
.end method

.method removeEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;ILcom/google/common/collect/MapMaker$RemovalCause;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;I",
            "Lcom/google/common/collect/MapMaker$RemovalCause;",
            ")Z"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2990
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2991
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2992
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 2993
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v1, v0

    .line 2995
    :goto_0
    if-eqz v1, :cond_1

    .line 2996
    if-ne v1, p1, :cond_0

    .line 2997
    iget v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2998
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, p2, v5, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2999
    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 3000
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3001
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3002
    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 3003
    const/4 v0, 0x1

    .line 3007
    :goto_1
    return v0

    .line 2995
    :cond_0
    invoke-interface {v1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    goto :goto_0

    .line 3007
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2864
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2865
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2867
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2868
    invoke-interface {p2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    .line 2869
    :goto_0
    if-eq p1, p2, :cond_1

    .line 2870
    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->copyEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2871
    if-eqz v0, :cond_0

    move v1, v2

    .line 2869
    :goto_1
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 2874
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeCollectedEntry(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 2875
    add-int/lit8 v0, v2, -0x1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_1

    .line 2878
    :cond_1
    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2879
    return-object v1
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2689
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2691
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 2693
    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2694
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2695
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v3, v0

    .line 2697
    :goto_0
    if-eqz v3, :cond_3

    .line 2698
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2699
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2703
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v7

    .line 2704
    invoke-interface {v7}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2705
    if-nez v2, :cond_1

    .line 2706
    invoke-virtual {p0, v7}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2707
    iget v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2708
    iget v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2709
    sget-object v7, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v6, p2, v2, v7}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2710
    invoke-virtual {p0, v0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2711
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v2, -0x1

    .line 2712
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2713
    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2727
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2728
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v0, v1

    :goto_1
    return-object v0

    .line 2718
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2719
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->REPLACED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2720
    invoke-virtual {p0, v3, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2727
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2728
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v0, v2

    goto :goto_1

    .line 2697
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2727
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2728
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move-object v0, v1

    goto :goto_1

    .line 2727
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2728
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v0
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2638
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2640
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->preWriteCleanup()V

    .line 2642
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2643
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2644
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v2, v0

    .line 2646
    :goto_0
    if-eqz v2, :cond_4

    .line 2647
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2648
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2652
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v6

    .line 2653
    invoke-interface {v6}, Lcom/google/common/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2654
    if-nez v7, :cond_1

    .line 2655
    invoke-virtual {p0, v6}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2656
    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    .line 2657
    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2658
    sget-object v6, Lcom/google/common/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, v5, p2, v7, v6}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2659
    invoke-virtual {p0, v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2660
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v2, -0x1

    .line 2661
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2662
    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2683
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2684
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move v0, v1

    :goto_1
    return v0

    .line 2667
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p3, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2668
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2669
    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->REPLACED:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, p2, v7, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->enqueueNotification(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    .line 2670
    invoke-virtual {p0, v2, p4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->setValue(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2683
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2684
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    const/4 v0, 0x1

    goto :goto_1

    .line 2675
    :cond_2
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordLockedRead(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2683
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2684
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move v0, v1

    goto :goto_1

    .line 2646
    :cond_3
    :try_start_3
    invoke-interface {v2}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 2683
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2684
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    move v0, v1

    goto :goto_1

    .line 2683
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2684
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->postWriteCleanup()V

    throw v0
.end method

.method runCleanup()V
    .locals 0

    .prologue
    .line 3073
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 3074
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 3075
    return-void
.end method

.method runLockedCleanup()V
    .locals 2

    .prologue
    .line 3078
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3080
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainReferenceQueues()V

    .line 3081
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expireEntries()V

    .line 3082
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3084
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 3087
    :cond_0
    return-void

    .line 3084
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method

.method runUnlockedCleanup()V
    .locals 1

    .prologue
    .line 3091
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3092
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->processPendingNotifications()V

    .line 3094
    :cond_0
    return-void
.end method

.method setValue(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->referenceValue(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/collect/MapMakerInternalMap$ValueReference;

    move-result-object v0

    .line 2161
    invoke-interface {p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->setValueReference(Lcom/google/common/collect/MapMakerInternalMap$ValueReference;)V

    .line 2162
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recordWrite(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 2163
    return-void
.end method

.method tryDrainReferenceQueues()V
    .locals 1

    .prologue
    .line 2171
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2173
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->drainReferenceQueues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2175
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2178
    :cond_0
    return-void

    .line 2175
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method

.method tryExpireEntries()V
    .locals 1

    .prologue
    .line 2328
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2330
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expireEntries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2332
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2336
    :cond_0
    return-void

    .line 2332
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method
