.class public final Lcom/google/common/collect/MapConstraints;
.super Ljava/lang/Object;
.source "MapConstraints.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->constrainedEntrySet(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Map;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->checkMap(Ljava/util/Map;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->constrainedAsMapEntries(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/util/Collection;Lcom/google/common/collect/MapConstraint;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->constrainedEntries(Ljava/util/Collection;Lcom/google/common/collect/MapConstraint;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/collect/MapConstraint;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1, p2}, Lcom/google/common/collect/MapConstraints;->checkValues(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/collect/MapConstraint;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->constrainedEntry(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->constrainedAsMapEntry(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method private static checkMap(Ljava/util/Map;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 778
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 779
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 780
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lcom/google/common/collect/MapConstraint;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 782
    :cond_0
    return-object v1
.end method

.method private static checkValues(Ljava/lang/Object;Ljava/lang/Iterable;Lcom/google/common/collect/MapConstraint;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 769
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 770
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 771
    invoke-interface {p2, p0, v2}, Lcom/google/common/collect/MapConstraint;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 773
    :cond_0
    return-object v0
.end method

.method private static constrainedAsMapEntries(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedAsMapEntries;-><init>(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method

.method private static constrainedAsMapEntry(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v0, Lcom/google/common/collect/MapConstraints$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapConstraints$2;-><init>(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method

.method public static constrainedBiMap(Lcom/google/common/collect/BiMap;Lcom/google/common/collect/MapConstraint;)Lcom/google/common/collect/BiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedBiMap;-><init>(Lcom/google/common/collect/BiMap;Lcom/google/common/collect/BiMap;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method

.method private static constrainedEntries(Ljava/util/Collection;Lcom/google/common/collect/MapConstraint;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 264
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 265
    check-cast p0, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/google/common/collect/MapConstraints;->constrainedEntrySet(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedEntries;-><init>(Ljava/util/Collection;Lcom/google/common/collect/MapConstraint;)V

    goto :goto_0
.end method

.method private static constrainedEntry(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v0, Lcom/google/common/collect/MapConstraints$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapConstraints$1;-><init>(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method

.method private static constrainedEntrySet(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Lcom/google/common/collect/MapConstraints$ConstrainedEntrySet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedEntrySet;-><init>(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method

.method public static constrainedListMultimap(Lcom/google/common/collect/ListMultimap;Lcom/google/common/collect/MapConstraint;)Lcom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lcom/google/common/collect/MapConstraints$ConstrainedListMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedListMultimap;-><init>(Lcom/google/common/collect/ListMultimap;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method

.method public static constrainedMap(Ljava/util/Map;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lcom/google/common/collect/MapConstraints$ConstrainedMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedMap;-><init>(Ljava/util/Map;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method

.method public static constrainedMultimap(Lcom/google/common/collect/Multimap;Lcom/google/common/collect/MapConstraint;)Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedMultimap;-><init>(Lcom/google/common/collect/Multimap;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method

.method public static constrainedSetMultimap(Lcom/google/common/collect/SetMultimap;Lcom/google/common/collect/MapConstraint;)Lcom/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSetMultimap;-><init>(Lcom/google/common/collect/SetMultimap;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method

.method public static constrainedSortedSetMultimap(Lcom/google/common/collect/SortedSetMultimap;Lcom/google/common/collect/MapConstraint;)Lcom/google/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/SortedSetMultimap",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)",
            "Lcom/google/common/collect/SortedSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapConstraints$ConstrainedSortedSetMultimap;-><init>(Lcom/google/common/collect/SortedSetMultimap;Lcom/google/common/collect/MapConstraint;)V

    return-object v0
.end method

.method public static notNull()Lcom/google/common/collect/MapConstraint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapConstraint",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;->INSTANCE:Lcom/google/common/collect/MapConstraints$NotNullMapConstraint;

    return-object v0
.end method
