.class public final Lcom/google/common/collect/TreeRangeMap;
.super Ljava/lang/Object;
.source "TreeRangeMap.java"

# interfaces
.implements Lcom/google/common/collect/RangeMap;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "NavigableMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/RangeMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_SUB_RANGE_MAP:Lcom/google/common/collect/RangeMap;


# instance fields
.field private final entriesByLowerBound:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TK;>;",
            "Lcom/google/common/collect/TreeRangeMap$RangeMapEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 262
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$1;

    invoke-direct {v0}, Lcom/google/common/collect/TreeRangeMap$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/TreeRangeMap;->EMPTY_SUB_RANGE_MAP:Lcom/google/common/collect/RangeMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/google/common/collect/Maps;->newTreeMap()Ljava/util/TreeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    .line 66
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/TreeRangeMap;)Lcom/google/common/collect/RangeMap;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/common/collect/TreeRangeMap;->emptySubRangeMap()Lcom/google/common/collect/RangeMap;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lcom/google/common/collect/TreeRangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/TreeRangeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/google/common/collect/TreeRangeMap;

    invoke-direct {v0}, Lcom/google/common/collect/TreeRangeMap;-><init>()V

    return-object v0
.end method

.method private emptySubRangeMap()Lcom/google/common/collect/RangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/RangeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 259
    sget-object v0, Lcom/google/common/collect/TreeRangeMap;->EMPTY_SUB_RANGE_MAP:Lcom/google/common/collect/RangeMap;

    return-object v0
.end method

.method private putRangeMapEntry(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut",
            "<TK;>;",
            "Lcom/google/common/collect/Cut",
            "<TK;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    new-instance v1, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;-><init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void
.end method


# virtual methods
.method public final asMapOfRanges()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TreeRangeMap$AsMapOfRanges;-><init>(Lcom/google/common/collect/TreeRangeMap;Lcom/google/common/collect/TreeRangeMap$1;)V

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->clear()V

    .line 143
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 591
    instance-of v0, p1, Lcom/google/common/collect/RangeMap;

    if-eqz v0, :cond_0

    .line 592
    check-cast p1, Lcom/google/common/collect/RangeMap;

    .line 593
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 595
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap;->getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 109
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    invoke-static {p1}, Lcom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public final put(Lcom/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap;->remove(Lcom/google/common/collect/Range;)V

    .line 129
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    new-instance v2, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-direct {v2, p1, p2}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;-><init>(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    return-void
.end method

.method public final putAll(Lcom/google/common/collect/RangeMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 135
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

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/TreeRangeMap;->put(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method public final remove(Lcom/google/common/collect/Range;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 173
    if-eqz v2, :cond_2

    .line 175
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    .line 176
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getUpperBound()Lcom/google/common/collect/Cut;

    move-result-object v1

    iget-object v3, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v1, v3}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v1

    if-lez v1, :cond_2

    .line 178
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getUpperBound()Lcom/google/common/collect/Cut;

    move-result-object v1

    iget-object v3, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v1, v3}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v1

    if-lez v1, :cond_1

    .line 181
    iget-object v3, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getUpperBound()Lcom/google/common/collect/Cut;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v1}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v3, v4, v1}, Lcom/google/common/collect/TreeRangeMap;->putRangeMapEntry(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;Ljava/lang/Object;)V

    .line 185
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getLowerBound()Lcom/google/common/collect/Cut;

    move-result-object v1

    iget-object v3, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v1, v3, v0}, Lcom/google/common/collect/TreeRangeMap;->putRangeMapEntry(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;Ljava/lang/Object;)V

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_3

    .line 194
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    .line 195
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getUpperBound()Lcom/google/common/collect/Cut;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v2

    if-lez v2, :cond_3

    .line 198
    iget-object v2, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getUpperBound()Lcom/google/common/collect/Cut;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0}, Lcom/google/common/collect/TreeRangeMap;->putRangeMapEntry(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v2, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    goto/16 :goto_0
.end method

.method public final span()Lcom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 149
    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 152
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lcom/google/common/collect/Range;

    move-result-object v0

    iget-object v2, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lcom/google/common/collect/Range;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-static {v2, v0}, Lcom/google/common/collect/Range;->create(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public final subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;)",
            "Lcom/google/common/collect/RangeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 250
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/TreeRangeMap$SubRangeMap;-><init>(Lcom/google/common/collect/TreeRangeMap;Lcom/google/common/collect/Range;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
