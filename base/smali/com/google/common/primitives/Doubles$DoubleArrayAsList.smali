.class Lcom/google/common/primitives/Doubles$DoubleArrayAsList;
.super Ljava/util/AbstractList;
.source "Doubles.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[D

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([D)V
    .locals 2

    .prologue
    .line 466
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;-><init>([DII)V

    .line 467
    return-void
.end method

.method constructor <init>([DII)V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 470
    iput-object p1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    .line 471
    iput p2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    .line 472
    iput p3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    .line 473
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 490
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    invoke-static {v0, v2, v3, v1, v4}, Lcom/google/common/primitives/Doubles;->access$000([DDII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 534
    if-ne p1, p0, :cond_1

    .line 550
    :cond_0
    :goto_0
    return v0

    .line 537
    :cond_1
    instance-of v2, p1, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    if-eqz v2, :cond_4

    .line 538
    check-cast p1, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    .line 539
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v3

    .line 540
    invoke-virtual {p1}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v2

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 541
    goto :goto_0

    :cond_2
    move v2, v1

    .line 543
    :goto_1
    if-ge v2, v3, :cond_0

    .line 544
    iget-object v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v5, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v5, v2

    aget-wide v4, v4, v5

    iget-object v6, p1, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v7, p1, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v7, v2

    aget-wide v6, v6, v7

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_3

    move v0, v1

    .line 545
    goto :goto_0

    .line 543
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 550
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Double;
    .locals 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 485
    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->get(I)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 554
    const/4 v1, 0x1

    .line 555
    iget v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    if-ge v0, v2, :cond_0

    .line 556
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Lcom/google/common/primitives/Doubles;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 496
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    invoke-static {v0, v2, v3, v1, v4}, Lcom/google/common/primitives/Doubles;->access$000([DDII)I

    move-result v0

    .line 498
    if-ltz v0, :cond_0

    .line 499
    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    sub-int/2addr v0, v1

    .line 502
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 5

    .prologue
    .line 507
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    iget v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    invoke-static {v0, v2, v3, v1, v4}, Lcom/google/common/primitives/Doubles;->access$100([DDII)I

    move-result v0

    .line 509
    if-ltz v0, :cond_0

    .line 510
    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    sub-int/2addr v0, v1

    .line 513
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public set(ILjava/lang/Double;)Ljava/lang/Double;
    .locals 8

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 518
    iget-object v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-wide v2, v0, v1

    .line 520
    iget-object v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int v4, v0, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v1, v4

    .line 521
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 458
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->set(ILjava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 476
    iget v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    .line 526
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 527
    if-ne p1, p2, :cond_0

    .line 528
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 530
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    iget-object v1, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;-><init>([DII)V

    goto :goto_0
.end method

.method toDoubleArray()[D
    .locals 5

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    .line 573
    new-array v1, v0, [D

    .line 574
    iget-object v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 563
    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    iget v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    aget-wide v2, v2, v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 564
    iget v0, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->start:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->end:I

    if-ge v0, v2, :cond_0

    .line 565
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->array:[D

    aget-wide v4, v3, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 564
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    :cond_0
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
