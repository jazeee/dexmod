.class final enum Lcom/google/common/hash/BloomFilterStrategies$1;
.super Lcom/google/common/hash/BloomFilterStrategies;
.source "BloomFilterStrategies.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/BloomFilterStrategies;-><init>(Ljava/lang/String;ILcom/google/common/hash/BloomFilterStrategies$1;)V

    return-void
.end method


# virtual methods
.method public final mightContain(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$BitArray;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;I",
            "Lcom/google/common/hash/BloomFilterStrategies$BitArray;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-virtual {p4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitSize()J

    move-result-wide v4

    .line 67
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v2

    .line 68
    long-to-int v6, v2

    .line 69
    const/16 v0, 0x20

    ushr-long/2addr v2, v0

    long-to-int v3, v2

    move v2, v1

    .line 71
    :goto_0
    if-gt v2, p3, :cond_2

    .line 72
    mul-int v0, v2, v3

    add-int/2addr v0, v6

    .line 74
    if-gez v0, :cond_0

    .line 75
    xor-int/lit8 v0, v0, -0x1

    .line 77
    :cond_0
    int-to-long v8, v0

    rem-long/2addr v8, v4

    invoke-virtual {p4, v8, v9}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->get(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    const/4 v0, 0x0

    .line 81
    :goto_1
    return v0

    .line 71
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 81
    goto :goto_1
.end method

.method public final put(Ljava/lang/Object;Lcom/google/common/hash/Funnel;ILcom/google/common/hash/BloomFilterStrategies$BitArray;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;I",
            "Lcom/google/common/hash/BloomFilterStrategies$BitArray;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p4}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->bitSize()J

    move-result-wide v4

    .line 48
    invoke-static {}, Lcom/google/common/hash/Hashing;->murmur3_128()Lcom/google/common/hash/HashFunction;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/HashFunction;->hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v0

    .line 49
    long-to-int v3, v0

    .line 50
    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v6, v0

    .line 52
    const/4 v1, 0x0

    .line 53
    const/4 v0, 0x1

    move v2, v1

    move v1, v0

    :goto_0
    if-gt v1, p3, :cond_1

    .line 54
    mul-int v0, v1, v6

    add-int/2addr v0, v3

    .line 56
    if-gez v0, :cond_0

    .line 57
    xor-int/lit8 v0, v0, -0x1

    .line 59
    :cond_0
    int-to-long v8, v0

    rem-long/2addr v8, v4

    invoke-virtual {p4, v8, v9}, Lcom/google/common/hash/BloomFilterStrategies$BitArray;->set(J)Z

    move-result v0

    or-int/2addr v2, v0

    .line 53
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 61
    :cond_1
    return v2
.end method
