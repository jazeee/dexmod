.class Lcom/google/common/primitives/Booleans$BooleanArrayAsList;
.super Ljava/util/AbstractList;
.source "Booleans.java"

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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final array:[Z

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([Z)V
    .locals 2

    .prologue
    .line 361
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;-><init>([ZII)V

    .line 362
    return-void
.end method

.method constructor <init>([ZII)V
    .locals 0

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 365
    iput-object p1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    .line 366
    iput p2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    .line 367
    iput p3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    .line 368
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 385
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Booleans;->access$000([ZZII)I

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
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 429
    if-ne p1, p0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return v0

    .line 432
    :cond_1
    instance-of v2, p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    if-eqz v2, :cond_4

    .line 433
    check-cast p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    .line 434
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v3

    .line 435
    invoke-virtual {p1}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v2

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 436
    goto :goto_0

    :cond_2
    move v2, v1

    .line 438
    :goto_1
    if-ge v2, v3, :cond_0

    .line 439
    iget-object v4, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v5, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v5, v2

    aget-boolean v4, v4, v5

    iget-object v5, p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v6, p1, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v6, v2

    aget-boolean v5, v5, v6

    if-eq v4, v5, :cond_3

    move v0, v1

    .line 440
    goto :goto_0

    .line 438
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 445
    :cond_4
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 380
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-boolean v0, v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->get(I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 449
    const/4 v1, 0x1

    .line 450
    iget v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    if-ge v0, v2, :cond_0

    .line 451
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    aget-boolean v2, v2, v0

    invoke-static {v2}, Lcom/google/common/primitives/Booleans;->hashCode(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 391
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Booleans;->access$000([ZZII)I

    move-result v0

    .line 393
    if-ltz v0, :cond_0

    .line 394
    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    sub-int/2addr v0, v1

    .line 397
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 402
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Booleans;->access$100([ZZII)I

    move-result v0

    .line 404
    if-ltz v0, :cond_0

    .line 405
    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    sub-int/2addr v0, v1

    .line 408
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public set(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 413
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v1, p1

    aget-boolean v1, v0, v1

    .line 415
    iget-object v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int v3, v0, p1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    aput-boolean v0, v2, v3

    .line 416
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 353
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->set(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 371
    iget v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    .line 421
    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 422
    if-ne p1, p2, :cond_0

    .line 423
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 425
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;

    iget-object v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/2addr v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;-><init>([ZII)V

    goto :goto_0
.end method

.method toBooleanArray()[Z
    .locals 5

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    .line 468
    new-array v1, v0, [Z

    .line 469
    iget-object v2, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v3, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 458
    iget-object v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const-string v0, "[true"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    iget v0, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->start:I

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->end:I

    if-ge v0, v1, :cond_2

    .line 460
    iget-object v1, p0, Lcom/google/common/primitives/Booleans$BooleanArrayAsList;->array:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    const-string v1, ", true"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 458
    :cond_0
    const-string v0, "[false"

    goto :goto_0

    .line 460
    :cond_1
    const-string v1, ", false"

    goto :goto_2

    .line 462
    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
