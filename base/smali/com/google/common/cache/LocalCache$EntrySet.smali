.class final Lcom/google/common/cache/LocalCache$EntrySet;
.super Lcom/google/common/cache/LocalCache$AbstractCacheSet;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/LocalCache",
        "<TK;TV;>.AbstractCacheSet<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 4514
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    .line 4515
    invoke-direct {p0, p1, p2}, Lcom/google/common/cache/LocalCache$AbstractCacheSet;-><init>(Lcom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    .line 4516
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4525
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 4535
    :cond_0
    :goto_0
    return v0

    .line 4528
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 4529
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4530
    if-eqz v1, :cond_0

    .line 4533
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, v1}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4535
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 4520
    new-instance v0, Lcom/google/common/cache/LocalCache$EntryIterator;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lcom/google/common/cache/LocalCache$EntryIterator;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4540
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 4545
    :cond_0
    :goto_0
    return v0

    .line 4543
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 4544
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4545
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
