.class public Lcom/google/common/collect/ImmutableMultiset$Builder;
.super Lcom/google/common/collect/ImmutableCollection$Builder;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection$Builder",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final contents:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 495
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultiset;->create()Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMultiset$Builder;-><init>(Lcom/google/common/collect/Multiset;)V

    .line 496
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/Multiset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$Builder;-><init>()V

    .line 499
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/Multiset;

    .line 500
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 510
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/Multiset;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;)Z

    .line 511
    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 556
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 557
    return-object p0
.end method

.method public bridge synthetic addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 570
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 571
    invoke-static {p1}, Lcom/google/common/collect/Multisets;->cast(Ljava/lang/Iterable;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    .line 572
    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 573
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/ImmutableMultiset$Builder;->addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;

    goto :goto_0

    .line 576
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 578
    :cond_1
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 590
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 591
    return-object p0
.end method

.method public addCopies(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/Multiset;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    .line 529
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultiset$Builder;->build()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/common/collect/ImmutableMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/Multiset;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public setCount(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/ImmutableMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$Builder;->contents:Lcom/google/common/collect/Multiset;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    .line 544
    return-object p0
.end method
