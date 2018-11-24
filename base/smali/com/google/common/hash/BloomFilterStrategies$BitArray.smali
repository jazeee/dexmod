.class final Lcom/google/common/hash/BloomFilterStrategies$BitArray;
.super Ljava/lang/Object;
.source "BloomFilterStrategies.java"


# instance fields
.field bitCount:J

.field final data:[J


# direct methods
.method constructor <init>(J)V
    .locals 3

    .prologue
    .line 145
    const-wide/16 v0, 0x40

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    new-array v0, v0, [J

    invoke-direct {p0, v0}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;-><init>([J)V

    .line 146
    return-void
.end method

.method constructor <init>([J)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "data length is zero!"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 151
    iput-object p1, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    .line 152
    const-wide/16 v2, 0x0

    .line 153
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-wide v4, p1, v1

    .line 154
    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 150
    goto :goto_0

    .line 156
    :cond_1
    iput-wide v2, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    .line 157
    return-void
.end method


# virtual methods
.method final bitCount()J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    return-wide v0
.end method

.method final bitSize()J
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0x40

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method final copy()Lcom/google/common/hash/BloomFilterStrategies$BitArray;
    .locals 2

    .prologue
    .line 184
    new-instance v1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-direct {v1, v0}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;-><init>([J)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 199
    instance-of v0, p1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    if-eqz v0, :cond_0

    .line 200
    check-cast p1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;

    .line 201
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    iget-object v1, p1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final get(J)Z
    .locals 5

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    const/4 v1, 0x6

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x1

    long-to-int v4, p1

    shl-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0
.end method

.method final putAll(Lcom/google/common/hash/BloomFilterStrategies$BitArray;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v0, v0

    iget-object v3, p1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v3, v3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "BitArrays must be of equal length (%s != %s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 191
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    .line 192
    :goto_1
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    array-length v0, v0

    if-ge v2, v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    aget-wide v4, v0, v2

    iget-object v1, p1, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    aget-wide v6, v1, v2

    or-long/2addr v4, v6

    aput-wide v4, v0, v2

    .line 194
    iget-wide v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    iget-object v3, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    aget-wide v4, v3, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v3

    int-to-long v4, v3

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 189
    goto :goto_0

    .line 196
    :cond_1
    return-void
.end method

.method final set(J)Z
    .locals 9

    .prologue
    const-wide/16 v6, 0x1

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->get(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->data:[J

    const/4 v1, 0x6

    ushr-long v2, p1, v1

    long-to-int v1, v2

    aget-wide v2, v0, v1

    long-to-int v4, p1

    shl-long v4, v6, v4

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    .line 163
    iget-wide v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitCount:J

    .line 164
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
