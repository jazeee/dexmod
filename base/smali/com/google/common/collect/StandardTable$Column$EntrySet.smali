.class Lcom/google/common/collect/StandardTable$Column$EntrySet;
.super Lcom/google/common/collect/Sets$ImprovedAbstractSet;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$ImprovedAbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/StandardTable$Column;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/StandardTable$Column;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/StandardTable$Column;Lcom/google/common/collect/StandardTable$1;)V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/google/common/collect/StandardTable$Column$EntrySet;-><init>(Lcom/google/common/collect/StandardTable$Column;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    invoke-static {}, Lcom/google/common/base/Predicates;->alwaysTrue()Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/StandardTable$Column;->removeFromColumnIf(Lcom/google/common/base/Predicate;)Z

    .line 468
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 471
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 472
    check-cast p1, Ljava/util/Map$Entry;

    .line 473
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v2, v2, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/StandardTable;->access$400(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 475
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;

    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/StandardTable$Column$EntrySetIterator;-><init>(Lcom/google/common/collect/StandardTable$Column;Lcom/google/common/collect/StandardTable$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 479
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 480
    check-cast p1, Ljava/util/Map$Entry;

    .line 481
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v0, v0, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v2, v2, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/collect/StandardTable;->access$500(Lcom/google/common/collect/StandardTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 483
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/StandardTable$Column;->removeFromColumnIf(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 453
    const/4 v0, 0x0

    .line 454
    iget-object v1, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable$Column;->this$0:Lcom/google/common/collect/StandardTable;

    iget-object v1, v1, Lcom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 455
    iget-object v3, p0, Lcom/google/common/collect/StandardTable$Column$EntrySet;->this$1:Lcom/google/common/collect/StandardTable$Column;

    iget-object v3, v3, Lcom/google/common/collect/StandardTable$Column;->columnKey:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 458
    goto :goto_0

    .line 459
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method
