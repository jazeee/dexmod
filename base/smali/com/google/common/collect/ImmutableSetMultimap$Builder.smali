.class public final Lcom/google/common/collect/ImmutableSetMultimap$Builder;
.super Lcom/google/common/collect/ImmutableMultimap$Builder;
.source "ImmutableSetMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultimap$Builder",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultimap$Builder;-><init>()V

    .line 190
    new-instance v0, Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->builderMultimap:Lcom/google/common/collect/Multimap;

    .line 191
    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/common/collect/ImmutableMultimap;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->build()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/google/common/collect/ImmutableSetMultimap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    if-eqz v0, :cond_1

    .line 268
    new-instance v1, Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;-><init>()V

    .line 269
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->builderMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 271
    iget-object v2, p0, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    invoke-static {v2}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/Ordering;->onKeys()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 274
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 275
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v1, v3, v0}, Lcom/google/common/collect/Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 277
    :cond_0
    iput-object v1, p0, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->builderMultimap:Lcom/google/common/collect/Multimap;

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->builderMultimap:Lcom/google/common/collect/Multimap;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->valueComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSetMultimap;->access$000(Lcom/google/common/collect/Multimap;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic orderKeysBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->orderKeysBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final orderKeysBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 241
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->keyComparator:Ljava/util/Comparator;

    .line 242
    return-object p0
.end method

.method public final bridge synthetic orderValuesBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final orderValuesBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TV;>;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableMultimap$Builder;->orderValuesBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMultimap$Builder;

    .line 260
    return-object p0
.end method

.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->builderMultimap:Lcom/google/common/collect/Multimap;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    return-object p0
.end method

.method public final put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->builderMultimap:Lcom/google/common/collect/Multimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 210
    return-object p0
.end method

.method public final bridge synthetic putAll(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$Builder;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final putAll(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 228
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    goto :goto_0

    .line 231
    :cond_0
    return-object p0
.end method

.method public final putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->builderMultimap:Lcom/google/common/collect/Multimap;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 215
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 216
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_0
    return-object p0
.end method

.method public final varargs putAll(Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)",
            "Lcom/google/common/collect/ImmutableSetMultimap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    return-object v0
.end method
