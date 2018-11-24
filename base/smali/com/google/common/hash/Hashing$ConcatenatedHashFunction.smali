.class final Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
.super Lcom/google/common/hash/AbstractCompositeHashFunction;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final bits:I


# direct methods
.method varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 418
    invoke-direct {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    .line 420
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 421
    invoke-interface {v3}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v3

    add-int/2addr v1, v3

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_0
    iput v1, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    .line 424
    return-void
.end method


# virtual methods
.method public final bits()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 444
    instance-of v0, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    if-eqz v0, :cond_0

    .line 445
    check-cast p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    .line 446
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    iget v2, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v0, v0

    iget-object v2, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v2, v2

    if-eq v0, v2, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 449
    :goto_1
    iget-object v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 450
    iget-object v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 454
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 461
    iget v1, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    .line 462
    iget-object v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 463
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    xor-int/2addr v1, v4

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    :cond_0
    return v1
.end method

.method final makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 428
    iget v1, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    div-int/lit8 v1, v1, 0x8

    new-array v2, v1, [B

    .line 430
    array-length v3, p1

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p1, v0

    .line 431
    invoke-interface {v4}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v4

    .line 432
    invoke-virtual {v4}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    invoke-virtual {v4, v2, v1, v5}, Lcom/google/common/hash/HashCode;->writeBytesTo([BII)I

    move-result v4

    add-int/2addr v1, v4

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_0
    invoke-static {v2}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method
