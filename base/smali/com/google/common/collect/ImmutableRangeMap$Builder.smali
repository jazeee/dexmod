.class public final Lcom/google/common/collect/ImmutableRangeMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable",
        "<*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final keyRanges:Lcom/google/common/collect/RangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RangeSet",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final rangeMap:Lcom/google/common/collect/RangeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RangeMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {}, Lcom/google/common/collect/TreeRangeSet;->create()Lcom/google/common/collect/TreeRangeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$Builder;->keyRanges:Lcom/google/common/collect/RangeSet;

    .line 96
    invoke-static {}, Lcom/google/common/collect/TreeRangeMap;->create()Lcom/google/common/collect/TreeRangeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$Builder;->rangeMap:Lcom/google/common/collect/RangeMap;

    .line 97
    return-void
.end method


# virtual methods
.method public final build()Lcom/google/common/collect/ImmutableRangeMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableRangeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$Builder;->rangeMap:Lcom/google/common/collect/RangeMap;

    invoke-interface {v0}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    .line 143
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 145
    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 146
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 148
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableRangeMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableRangeMap;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method public final put(Lcom/google/common/collect/Range;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableRangeMap$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;)",
            "Lcom/google/common/collect/ImmutableRangeMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Range must not be empty, but was %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$Builder;->keyRanges:Lcom/google/common/collect/RangeSet;

    invoke-interface {v0}, Lcom/google/common/collect/RangeSet;->complement()Lcom/google/common/collect/RangeSet;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/RangeSet;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$Builder;->rangeMap:Lcom/google/common/collect/RangeMap;

    invoke-interface {v0}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 113
    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Overlapping ranges: range "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " overlaps with entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move v0, v2

    .line 108
    goto/16 :goto_0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$Builder;->keyRanges:Lcom/google/common/collect/RangeSet;

    invoke-interface {v0, p1}, Lcom/google/common/collect/RangeSet;->add(Lcom/google/common/collect/Range;)V

    .line 120
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$Builder;->rangeMap:Lcom/google/common/collect/RangeMap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/RangeMap;->put(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    .line 121
    return-object p0
.end method

.method public final putAll(Lcom/google/common/collect/RangeMap;)Lcom/google/common/collect/ImmutableRangeMap$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeMap",
            "<TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableRangeMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-interface {p1}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableRangeMap$Builder;->put(Lcom/google/common/collect/Range;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableRangeMap$Builder;

    goto :goto_0

    .line 134
    :cond_0
    return-object p0
.end method
