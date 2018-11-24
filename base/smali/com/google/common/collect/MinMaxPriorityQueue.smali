.class public final Lcom/google/common/collect/MinMaxPriorityQueue;
.super Ljava/util/AbstractQueue;
.source "MinMaxPriorityQueue.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0xb

.field private static final EVEN_POWERS_OF_TWO:I = 0x55555555

.field private static final ODD_POWERS_OF_TWO:I = -0x55555556


# instance fields
.field private final maxHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>.Heap;"
        }
    .end annotation
.end field

.field final maximumSize:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final minHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>.Heap;"
        }
    .end annotation
.end field

.field private modCount:I

.field private queue:[Ljava/lang/Object;

.field private size:I


# direct methods
.method private constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MinMaxPriorityQueue$Builder",
            "<-TE;>;I)V"
        }
    .end annotation

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 228
    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->access$200(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/Ordering;)V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->minHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    .line 230
    new-instance v1, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/Ordering;)V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->maxHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    .line 231
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->minHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->maxHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    iput-object v1, v0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->otherHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    .line 232
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->maxHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->minHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    iput-object v1, v0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->otherHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    .line 234
    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->access$300(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->maximumSize:I

    .line 236
    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    .line 237
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;ILcom/google/common/collect/MinMaxPriorityQueue$1;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue$Builder;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/common/collect/MinMaxPriorityQueue;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->modCount:I

    return v0
.end method

.method private calculateNewCapacity()I
    .locals 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    array-length v0, v0

    .line 929
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    .line 932
    :goto_0
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->maximumSize:I

    invoke-static {v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->capAtMaximumSize(II)I

    move-result v0

    return v0

    .line 929
    :cond_0
    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v0

    goto :goto_0
.end method

.method private static capAtMaximumSize(II)I
    .locals 1

    .prologue
    .line 937
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static create()Lcom/google/common/collect/MinMaxPriorityQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<TE;>;>()",
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V

    invoke-virtual {v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->create()Lcom/google/common/collect/MinMaxPriorityQueue;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/MinMaxPriorityQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<TE;>;>(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->create(Ljava/lang/Iterable;)Lcom/google/common/collect/MinMaxPriorityQueue;

    move-result-object v0

    return-object v0
.end method

.method public static expectedSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$Builder",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->expectedSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    move-result-object v0

    return-object v0
.end method

.method private fillHole(ILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->heapForIndex(I)Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    move-result-object v0

    .line 419
    invoke-virtual {v0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->fillHoleAt(I)I

    move-result v1

    .line 421
    invoke-virtual {v0, v1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->bubbleUpAlternatingLevels(ILjava/lang/Object;)I

    move-result v2

    .line 422
    if-ne v2, v1, :cond_0

    .line 426
    invoke-virtual {v0, p1, v1, p2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->tryCrossOverAndBubbleUp(IILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    :cond_0
    if-ge v2, p1, :cond_1

    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMaxElementIndex()I
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 301
    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    packed-switch v2, :pswitch_data_0

    .line 309
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->maxHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->compareElements(II)I

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    :pswitch_0
    return v0

    .line 303
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 309
    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private growIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 918
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 919
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->calculateNewCapacity()I

    move-result v0

    .line 920
    new-array v0, v0, [Ljava/lang/Object;

    .line 921
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 922
    iput-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    .line 924
    :cond_0
    return-void
.end method

.method private heapForIndex(I)Lcom/google/common/collect/MinMaxPriorityQueue$Heap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue",
            "<TE;>.Heap;"
        }
    .end annotation

    .prologue
    .line 455
    invoke-static {p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEvenLevel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->minHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->maxHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    goto :goto_0
.end method

.method static initialQueueSize(IILjava/lang/Iterable;)I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Iterable",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 903
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0xb

    .line 908
    :cond_0
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 909
    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 910
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 914
    :cond_1
    invoke-static {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->capAtMaximumSize(II)I

    move-result v0

    return v0
.end method

.method static isEvenLevel(I)Z
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 462
    add-int/lit8 v3, p0, 0x1

    .line 463
    if-lez v3, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "negative index"

    invoke-static {v0, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 464
    const v0, 0x55555555

    and-int/2addr v0, v3

    const v4, -0x55555556

    and-int/2addr v3, v4

    if-le v0, v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 463
    goto :goto_0

    :cond_1
    move v1, v2

    .line 464
    goto :goto_1
.end method

.method public static maximumSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$Builder",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;->maximumSize(I)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lcom/google/common/collect/MinMaxPriorityQueue$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TB;>;)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$Builder",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$Builder;-><init>(Ljava/util/Comparator;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V

    return-object v0
.end method

.method private removeAndGet(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 449
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    .line 450
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->removeAt(I)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    .line 451
    return-object v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 259
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 260
    const/4 v0, 0x1

    .line 261
    goto :goto_0

    .line 262
    :cond_0
    return v0
.end method

.method final capacity()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 893
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public final clear()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 871
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    if-ge v0, v2, :cond_0

    .line 872
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 871
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 874
    :cond_0
    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    .line 875
    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 889
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->minHeap:Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    iget-object v0, v0, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->ordering:Lcom/google/common/collect/Ordering;

    return-object v0
.end method

.method final elementData(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method final isIntact()Z
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 474
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    if-ge v0, v2, :cond_0

    .line 475
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->heapForIndex(I)Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->access$400(Lcom/google/common/collect/MinMaxPriorityQueue$Heap;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 476
    const/4 v1, 0x0

    .line 479
    :cond_0
    return v1

    .line 474
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 867
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V

    return-object v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 272
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->modCount:I

    .line 274
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    .line 276
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->growIfNeeded()V

    .line 280
    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->heapForIndex(I)Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->bubbleUp(ILjava/lang/Object;)V

    .line 281
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->maximumSize:I

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->pollLast()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final peekFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final peekLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->getMaxElementIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->removeAndGet(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->getMaxElementIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->removeAndGet(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method final removeAt(I)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 382
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 383
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->modCount:I

    .line 384
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    .line 385
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    if-ne v1, p1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    aput-object v0, v1, v2

    .line 407
    :goto_0
    return-object v0

    .line 389
    :cond_0
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    invoke-virtual {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v2

    .line 390
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    invoke-direct {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->heapForIndex(I)Lcom/google/common/collect/MinMaxPriorityQueue$Heap;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue$Heap;->getCorrectLastElement(Ljava/lang/Object;)I

    move-result v3

    .line 392
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    invoke-virtual {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v4

    .line 393
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    iget v5, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    aput-object v0, v1, v5

    .line 394
    invoke-direct {p0, p1, v4}, Lcom/google/common/collect/MinMaxPriorityQueue;->fillHole(ILjava/lang/Object;)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    move-result-object v1

    .line 395
    if-ge v3, p1, :cond_2

    .line 397
    if-nez v1, :cond_1

    .line 399
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    invoke-direct {v0, v2, v4}, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 403
    :cond_1
    new-instance v0, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    iget-object v1, v1, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;->replaced:Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 407
    goto :goto_0
.end method

.method public final removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/MinMaxPriorityQueue;->getMaxElementIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->removeAndGet(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 878
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 879
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->queue:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 880
    return-object v0
.end method
