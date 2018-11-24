.class public final Lcom/google/common/hash/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# static fields
.field private static final GOOD_FAST_HASH_SEED:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/google/common/hash/Hashing;->checksumHashFunction(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method public static adler32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 270
    sget-object v0, Lcom/google/common/hash/Hashing$Adler32Holder;->ADLER_32:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method static checkPositiveAndMakeMultipleOf32(I)I
    .locals 2

    .prologue
    .line 408
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Number of bits must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 409
    add-int/lit8 v0, p0, 0x1f

    and-int/lit8 v0, v0, -0x20

    return v0

    .line 408
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checksumHashFunction(Lcom/google/common/hash/Hashing$ChecksumType;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;
    .locals 2

    .prologue
    .line 279
    new-instance v0, Lcom/google/common/hash/ChecksumHashFunction;

    invoke-static {p0}, Lcom/google/common/hash/Hashing$ChecksumType;->access$200(Lcom/google/common/hash/Hashing$ChecksumType;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/common/hash/ChecksumHashFunction;-><init>(Lcom/google/common/base/Supplier;ILjava/lang/String;)V

    return-object v0
.end method

.method public static combineOrdered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 364
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 365
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "Must be at least 1 hash code to combine."

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 366
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HashCode;

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v0

    .line 367
    div-int/lit8 v0, v0, 0x8

    new-array v2, v0, [B

    .line 368
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HashCode;

    .line 369
    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v4

    .line 370
    array-length v0, v4

    array-length v5, v2

    if-ne v0, v5, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v5, "All hashcodes must have the same bit length."

    invoke-static {v0, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move v0, v1

    .line 372
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 373
    aget-byte v5, v2, v0

    mul-int/lit8 v5, v5, 0x25

    aget-byte v6, v4, v0

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 370
    goto :goto_0

    .line 376
    :cond_2
    invoke-static {v2}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public static combineUnordered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 390
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 391
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "Must be at least 1 hash code to combine."

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 392
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HashCode;

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v2, v0, [B

    .line 393
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HashCode;

    .line 394
    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v4

    .line 395
    array-length v0, v4

    array-length v5, v2

    if-ne v0, v5, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v5, "All hashcodes must have the same bit length."

    invoke-static {v0, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move v0, v1

    .line 397
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 398
    aget-byte v5, v2, v0

    aget-byte v6, v4, v0

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 395
    goto :goto_0

    .line 401
    :cond_2
    invoke-static {v2}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public static consistentHash(JI)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 337
    if-lez p2, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "buckets must be positive: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 338
    new-instance v1, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;

    invoke-direct {v1, p0, p1}, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;-><init>(J)V

    .line 344
    :goto_1
    add-int/lit8 v0, v2, 0x1

    int-to-double v4, v0

    invoke-virtual {v1}, Lcom/google/common/hash/Hashing$LinearCongruentialGenerator;->nextDouble()D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 345
    if-ltz v0, :cond_1

    if-ge v0, p2, :cond_1

    move v2, v0

    .line 346
    goto :goto_1

    :cond_0
    move v0, v2

    .line 337
    goto :goto_0

    .line 348
    :cond_1
    return v2
.end method

.method public static consistentHash(Lcom/google/common/hash/HashCode;I)I
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->padToLong()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/common/hash/Hashing;->consistentHash(JI)I

    move-result v0

    return v0
.end method

.method public static crc32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/google/common/hash/Hashing$Crc32Holder;->CRC_32:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static crc32c()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 235
    sget-object v0, Lcom/google/common/hash/Hashing$Crc32cHolder;->CRC_32_C:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static goodFastHash(I)Lcom/google/common/hash/HashFunction;
    .locals 5

    .prologue
    .line 61
    invoke-static {p0}, Lcom/google/common/hash/Hashing;->checkPositiveAndMakeMultipleOf32(I)I

    move-result v0

    .line 63
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 64
    sget-object v0, Lcom/google/common/hash/Hashing$Murmur3_32Holder;->GOOD_FAST_HASH_FUNCTION_32:Lcom/google/common/hash/HashFunction;

    .line 79
    :goto_0
    return-object v0

    .line 66
    :cond_0
    const/16 v1, 0x80

    if-gt v0, v1, :cond_1

    .line 67
    sget-object v0, Lcom/google/common/hash/Hashing$Murmur3_128Holder;->GOOD_FAST_HASH_FUNCTION_128:Lcom/google/common/hash/HashFunction;

    goto :goto_0

    .line 71
    :cond_1
    add-int/lit8 v0, v0, 0x7f

    div-int/lit16 v2, v0, 0x80

    .line 72
    new-array v3, v2, [Lcom/google/common/hash/HashFunction;

    .line 73
    const/4 v0, 0x0

    sget-object v1, Lcom/google/common/hash/Hashing$Murmur3_128Holder;->GOOD_FAST_HASH_FUNCTION_128:Lcom/google/common/hash/HashFunction;

    aput-object v1, v3, v0

    .line 74
    sget v1, Lcom/google/common/hash/Hashing;->GOOD_FAST_HASH_SEED:I

    .line 75
    const/4 v0, 0x1

    :goto_1
    if-ge v0, v2, :cond_2

    .line 76
    const v4, 0x596f0ddf

    add-int/2addr v1, v4

    .line 77
    invoke-static {v1}, Lcom/google/common/hash/Hashing;->murmur3_128(I)Lcom/google/common/hash/HashFunction;

    move-result-object v4

    aput-object v4, v3, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_2
    new-instance v0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    invoke-direct {v0, v3}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    goto :goto_0
.end method

.method public static md5()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/google/common/hash/Hashing$Md5Holder;->MD5:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/google/common/hash/Hashing$Murmur3_128Holder;->MURMUR3_128:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128(I)Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    return-object v0
.end method

.method public static murmur3_32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/google/common/hash/Hashing$Murmur3_32Holder;->MURMUR3_32:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_32(I)Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_32HashFunction;-><init>(I)V

    return-object v0
.end method

.method public static sha1()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/google/common/hash/Hashing$Sha1Holder;->SHA_1:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha256()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/google/common/hash/Hashing$Sha256Holder;->SHA_256:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha512()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/google/common/hash/Hashing$Sha512Holder;->SHA_512:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sipHash24()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/google/common/hash/Hashing$SipHash24Holder;->SIP_HASH_24:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sipHash24(JJ)Lcom/google/common/hash/HashFunction;
    .locals 8

    .prologue
    .line 174
    new-instance v1, Lcom/google/common/hash/SipHashFunction;

    const/4 v2, 0x2

    const/4 v3, 0x4

    move-wide v4, p0

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/common/hash/SipHashFunction;-><init>(IIJJ)V

    return-object v1
.end method
