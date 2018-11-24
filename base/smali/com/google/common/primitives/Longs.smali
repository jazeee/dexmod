.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field public static final MAX_POWER_OF_TWO:J = 0x4000000000000000L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([JJII)I
    .locals 1

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([JJII)I
    .locals 1

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    array-length v0, p0

    if-nez v0, :cond_0

    .line 544
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 546
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;-><init>([J)V

    goto :goto_0
.end method

.method public static compare(JJ)I
    .locals 2

    .prologue
    .line 94
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs concat([[J)[J
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 241
    .line 242
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 243
    array-length v4, v4

    add-int/2addr v2, v4

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    new-array v3, v2, [J

    .line 247
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, p0, v2

    .line 248
    array-length v6, v5

    invoke-static {v5, v1, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    array-length v5, v5

    add-int/2addr v0, v5

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 251
    :cond_1
    return-object v3
.end method

.method public static contains([JJ)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 107
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v4, p0, v1

    .line 108
    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    .line 109
    const/4 v0, 0x1

    .line 112
    :cond_0
    return v0

    .line 107
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static copyOf([JI)[J
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 433
    new-array v0, p1, [J

    .line 434
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    return-object v0
.end method

.method public static ensureCapacity([JII)[J
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 424
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 425
    if-ltz p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 426
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Longs;->copyOf([JI)[J

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 424
    goto :goto_0

    :cond_2
    move v0, v2

    .line 425
    goto :goto_1
.end method

.method public static fromByteArray([B)J
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 290
    array-length v0, p0

    if-lt v0, v7, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "array too small: %s < %s"

    new-array v4, v6, [Ljava/lang/Object;

    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 292
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    aget-byte v2, p0, v6

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    const/4 v4, 0x4

    aget-byte v4, p0, v4

    const/4 v5, 0x5

    aget-byte v5, p0, v5

    const/4 v6, 0x6

    aget-byte v6, p0, v6

    const/4 v7, 0x7

    aget-byte v7, p0, v7

    invoke-static/range {v0 .. v7}, Lcom/google/common/primitives/Longs;->fromBytes(BBBBBBBB)J

    move-result-wide v0

    return-wide v0

    :cond_0
    move v0, v2

    .line 290
    goto :goto_0
.end method

.method public static fromBytes(BBBBBBBB)J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 305
    int-to-long v0, p0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    int-to-long v2, p1

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p3

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p4

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p5

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p6

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p7

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static hashCode(J)I
    .locals 2

    .prologue
    .line 78
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static indexOf([JJ)I
    .locals 3

    .prologue
    .line 125
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Longs;->indexOf([JJII)I

    move-result v0

    return v0
.end method

.method private static indexOf([JJII)I
    .locals 5

    .prologue
    .line 131
    move v0, p3

    :goto_0
    if-ge v0, p4, :cond_1

    .line 132
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 136
    :goto_1
    return v0

    .line 131
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf([J[J)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 151
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    array-length v0, p1

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 158
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 159
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 160
    add-int v3, v0, v2

    aget-wide v4, p0, v3

    aget-wide v6, p1, v2

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v1, v0

    .line 164
    goto :goto_0

    .line 158
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static varargs join(Ljava/lang/String;[J)Ljava/lang/String;
    .locals 6

    .prologue
    .line 448
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    array-length v0, p1

    if-nez v0, :cond_0

    .line 450
    const-string v0, ""

    .line 459
    :goto_0
    return-object v0

    .line 454
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0xa

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 455
    const/4 v0, 0x0

    aget-wide v2, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 456
    const/4 v0, 0x1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 457
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v4, p1, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 459
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lastIndexOf([JJ)I
    .locals 3

    .prologue
    .line 179
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Longs;->lastIndexOf([JJII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([JJII)I
    .locals 5

    .prologue
    .line 185
    add-int/lit8 v0, p4, -0x1

    :goto_0
    if-lt v0, p3, :cond_1

    .line 186
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 190
    :goto_1
    return v0

    .line 185
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 190
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[J>;"
        }
    .end annotation

    .prologue
    .line 479
    sget-object v0, Lcom/google/common/primitives/Longs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Longs$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([J)J
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 221
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 222
    aget-wide v2, p0, v2

    .line 223
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 224
    aget-wide v4, p0, v1

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    .line 225
    aget-wide v2, p0, v1

    .line 223
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 221
    goto :goto_0

    .line 228
    :cond_2
    return-wide v2
.end method

.method public static varargs min([J)J
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 203
    aget-wide v2, p0, v2

    .line 204
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 205
    aget-wide v4, p0, v1

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    .line 206
    aget-wide v2, p0, v1

    .line 204
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 202
    goto :goto_0

    .line 209
    :cond_2
    return-wide v2
.end method

.method public static stringConverter()Lcom/google/common/base/Converter;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 403
    sget-object v0, Lcom/google/common/primitives/Longs$LongConverter;->INSTANCE:Lcom/google/common/primitives/Longs$LongConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 514
    instance-of v0, p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    if-eqz v0, :cond_0

    .line 515
    check-cast p0, Lcom/google/common/primitives/Longs$LongArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$LongArrayAsList;->toLongArray()[J

    move-result-object v0

    .line 525
    :goto_0
    return-object v0

    .line 518
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 519
    array-length v4, v3

    .line 520
    new-array v1, v4, [J

    .line 521
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 523
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    aput-wide v6, v1, v2

    .line 521
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 525
    goto :goto_0
.end method

.method public static toByteArray(J)[B
    .locals 6

    .prologue
    const/16 v4, 0x8

    .line 268
    new-array v1, v4, [B

    .line 269
    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_0

    .line 270
    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 271
    shr-long/2addr p0, v4

    .line 269
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 273
    :cond_0
    return-object v1
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Long;
    .locals 12
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    const-wide/high16 v10, -0x8000000000000000L

    const/16 v8, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 337
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v4

    .line 367
    :goto_0
    return-object v0

    .line 340
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_1

    move v5, v1

    .line 341
    :goto_1
    if-eqz v5, :cond_2

    move v0, v1

    .line 342
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    move-object v0, v4

    .line 343
    goto :goto_0

    :cond_1
    move v5, v2

    .line 340
    goto :goto_1

    :cond_2
    move v0, v2

    .line 341
    goto :goto_2

    .line 345
    :cond_3
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 346
    if-ltz v0, :cond_4

    if-le v0, v8, :cond_5

    :cond_4
    move-object v0, v4

    .line 347
    goto :goto_0

    .line 349
    :cond_5
    neg-int v0, v0

    int-to-long v0, v0

    .line 350
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 351
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 352
    if-ltz v2, :cond_6

    if-gt v2, v8, :cond_6

    const-wide v6, -0xcccccccccccccccL

    cmp-long v6, v0, v6

    if-gez v6, :cond_7

    :cond_6
    move-object v0, v4

    .line 353
    goto :goto_0

    .line 355
    :cond_7
    const-wide/16 v6, 0xa

    mul-long/2addr v0, v6

    .line 356
    int-to-long v6, v2

    add-long/2addr v6, v10

    cmp-long v6, v0, v6

    if-gez v6, :cond_8

    move-object v0, v4

    .line 357
    goto :goto_0

    .line 359
    :cond_8
    int-to-long v6, v2

    sub-long/2addr v0, v6

    move v2, v3

    goto :goto_3

    .line 362
    :cond_9
    if-eqz v5, :cond_a

    .line 363
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_a
    cmp-long v2, v0, v10

    if-nez v2, :cond_b

    move-object v0, v4

    .line 365
    goto :goto_0

    .line 367
    :cond_b
    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method
