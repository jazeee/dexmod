.class final Lcom/google/common/collect/RegularImmutableSortedSet;
.super Lcom/google/common/collect/ImmutableSortedSet;
.source "RegularImmutableSortedSet.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient elements:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 55
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    .line 56
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unsafeBinarySearch(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result v0

    .line 209
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 79
    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeBinarySearch(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 81
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    instance-of v2, p1, Lcom/google/common/collect/Multiset;

    if-eqz v2, :cond_0

    .line 91
    check-cast p1, Lcom/google/common/collect/Multiset;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-gt v2, v0, :cond_3

    .line 95
    :cond_1
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableSortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 133
    :cond_2
    :goto_0
    return v0

    .line 102
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v3

    .line 103
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 104
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 108
    :cond_4
    :goto_1
    :try_start_0
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 110
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    .line 112
    if-gez v5, :cond_5

    .line 113
    invoke-interface {v3}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 114
    :cond_5
    if-nez v5, :cond_6

    .line 116
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_1

    .line 123
    :cond_6
    if-lez v5, :cond_4

    move v0, v1

    .line 124
    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v1

    .line 133
    goto :goto_0
.end method

.method final copyIntoArray([Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method final createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Lcom/google/common/collect/ImmutableSortedAsList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ImmutableSortedAsList;-><init>(Lcom/google/common/collect/ImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method final createDescendingSet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 288
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v2}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 150
    if-ne p1, p0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    instance-of v2, p1, Ljava/util/Set;

    if-nez v2, :cond_2

    move v0, v1

    .line 154
    goto :goto_0

    .line 157
    :cond_2
    check-cast p1, Ljava/util/Set;

    .line 158
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 159
    goto :goto_0

    .line 162
    :cond_3
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v2, p1}, Lcom/google/common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 163
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    .line 166
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 168
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 169
    if-eqz v5, :cond_5

    invoke-virtual {p0, v4, v5}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_4

    :cond_5
    move v0, v1

    .line 171
    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 178
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 181
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public final first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 203
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method final getSubSet(II)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 258
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 264
    :goto_0
    return-object p0

    .line 260
    :cond_0
    if-ge p1, p2, :cond_1

    .line 261
    new-instance v0, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableSortedSet;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    goto :goto_0
.end method

.method final headIndex(Ljava/lang/Object;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)I"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v3

    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    :goto_0
    sget-object v4, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    goto :goto_0
.end method

.method final headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->getSubSet(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result v0

    .line 215
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method final indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, -0x1

    .line 269
    if-nez p1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v0

    .line 274
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->unsafeComparator()Ljava/util/Comparator;

    move-result-object v2

    sget-object v3, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->INVERTED_INSERTION_INDEX:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v1, p1, v2, v3, v4}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 279
    if-ltz v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 277
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public final iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 197
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method final subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/common/collect/ImmutableSortedSet;->headSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method final tailIndex(Ljava/lang/Object;Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)I"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->elements:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v3

    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    :goto_0
    sget-object v4, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    goto :goto_0
.end method

.method final tailSetImpl(Ljava/lang/Object;Z)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->getSubSet(II)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method final unsafeComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-object v0
.end method
