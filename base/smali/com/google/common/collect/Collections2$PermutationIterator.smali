.class Lcom/google/common/collect/Collections2$PermutationIterator;
.super Lcom/google/common/collect/AbstractIterator;
.source "Collections2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Ljava/util/List",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final c:[I

.field j:I

.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field final o:[I


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 602
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    .line 604
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 605
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    .line 606
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    .line 607
    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 608
    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 609
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    .line 610
    return-void
.end method


# virtual methods
.method calculateNextPermutation()V
    .locals 6

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    .line 623
    const/4 v0, 0x0

    .line 627
    iget v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    iget v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    iget v3, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 633
    if-gez v1, :cond_2

    .line 634
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->switchDirection()V

    goto :goto_1

    .line 637
    :cond_2
    iget v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_3

    .line 638
    iget v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    if-eqz v1, :cond_0

    .line 641
    add-int/lit8 v0, v0, 0x1

    .line 642
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->switchDirection()V

    goto :goto_1

    .line 646
    :cond_3
    iget-object v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    iget v3, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    iget-object v4, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    iget v5, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    add-int/2addr v3, v0

    iget v4, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    sub-int/2addr v4, v1

    add-int/2addr v0, v4

    invoke-static {v2, v3, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 647
    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->c:[I

    iget v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aput v1, v0, v2

    goto :goto_0
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->computeNext()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 613
    iget v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    if-gtz v0, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 618
    :goto_0
    return-object v0

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->list:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 617
    invoke-virtual {p0}, Lcom/google/common/collect/Collections2$PermutationIterator;->calculateNextPermutation()V

    goto :goto_0
.end method

.method switchDirection()V
    .locals 4

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    iget v1, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    iget-object v2, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->o:[I

    iget v3, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    aget v2, v2, v3

    neg-int v2, v2

    aput v2, v0, v1

    .line 654
    iget v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/Collections2$PermutationIterator;->j:I

    .line 655
    return-void
.end method
