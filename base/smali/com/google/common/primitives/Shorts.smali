.class public final Lcom/google/common/primitives/Shorts;
.super Ljava/lang/Object;
.source "Shorts.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field public static final BYTES:I = 0x2

.field public static final MAX_POWER_OF_TWO:S = 0x4000s


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([SSII)I
    .locals 1

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->indexOf([SSII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([SSII)I
    .locals 1

    .prologue
    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->lastIndexOf([SSII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([S)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    array-length v0, p0

    if-nez v0, :cond_0

    .line 510
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 512
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;-><init>([S)V

    goto :goto_0
.end method

.method public static checkedCast(J)S
    .locals 4

    .prologue
    .line 87
    long-to-int v0, p0

    int-to-short v0, v0

    .line 88
    int-to-long v2, v0

    cmp-long v1, v2, p0

    if-eqz v1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    return v0
.end method

.method public static compare(SS)I
    .locals 1

    .prologue
    .line 126
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs concat([[S)[S
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 273
    .line 274
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 275
    array-length v4, v4

    add-int/2addr v2, v4

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    new-array v3, v2, [S

    .line 279
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, p0, v2

    .line 280
    array-length v6, v5

    invoke-static {v5, v1, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    array-length v5, v5

    add-int/2addr v0, v5

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 283
    :cond_1
    return-object v3
.end method

.method public static contains([SS)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 139
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-short v3, p0, v1

    .line 140
    if-ne v3, p1, :cond_1

    .line 141
    const/4 v0, 0x1

    .line 144
    :cond_0
    return v0

    .line 139
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static copyOf([SI)[S
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 399
    new-array v0, p1, [S

    .line 400
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    return-object v0
.end method

.method public static ensureCapacity([SII)[S
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 390
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 391
    if-ltz p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 392
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Shorts;->copyOf([SI)[S

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 390
    goto :goto_0

    :cond_2
    move v0, v2

    .line 391
    goto :goto_1
.end method

.method public static fromByteArray([B)S
    .locals 7
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 319
    array-length v0, p0

    if-lt v0, v6, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "array too small: %s < %s"

    new-array v4, v6, [Ljava/lang/Object;

    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 321
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Shorts;->fromBytes(BB)S

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 319
    goto :goto_0
.end method

.method public static fromBytes(BB)S
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    .line 333
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static hashCode(S)I
    .locals 0

    .prologue
    .line 74
    return p0
.end method

.method public static indexOf([SS)I
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Shorts;->indexOf([SSII)I

    move-result v0

    return v0
.end method

.method private static indexOf([SSII)I
    .locals 2

    .prologue
    .line 163
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 164
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 168
    :goto_1
    return v0

    .line 163
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf([S[S)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 183
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    array-length v0, p1

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 190
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 191
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 192
    add-int v3, v0, v2

    aget-short v3, p0, v3

    aget-short v4, p1, v2

    if-ne v3, v4, :cond_2

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v1, v0

    .line 196
    goto :goto_0

    .line 190
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static varargs join(Ljava/lang/String;[S)Ljava/lang/String;
    .locals 4

    .prologue
    .line 414
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    array-length v0, p1

    if-nez v0, :cond_0

    .line 416
    const-string v0, ""

    .line 425
    :goto_0
    return-object v0

    .line 420
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x6

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 421
    const/4 v0, 0x0

    aget-short v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    const/4 v0, 0x1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 423
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-short v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 425
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lastIndexOf([SS)I
    .locals 2

    .prologue
    .line 211
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Shorts;->lastIndexOf([SSII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([SSII)I
    .locals 2

    .prologue
    .line 217
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 218
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 222
    :goto_1
    return v0

    .line 217
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 222
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
            "<[S>;"
        }
    .end annotation

    .prologue
    .line 445
    sget-object v0, Lcom/google/common/primitives/Shorts$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Shorts$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([S)S
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 253
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 254
    aget-short v0, p0, v2

    .line 255
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 256
    aget-short v2, p0, v1

    if-le v2, v0, :cond_0

    .line 257
    aget-short v0, p0, v1

    .line 255
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 253
    goto :goto_0

    .line 260
    :cond_2
    return v0
.end method

.method public static varargs min([S)S
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 234
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 235
    aget-short v0, p0, v2

    .line 236
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 237
    aget-short v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 238
    aget-short v0, p0, v1

    .line 236
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 234
    goto :goto_0

    .line 241
    :cond_2
    return v0
.end method

.method public static saturatedCast(J)S
    .locals 2

    .prologue
    .line 104
    const-wide/16 v0, 0x7fff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 105
    const/16 v0, 0x7fff

    .line 110
    :goto_0
    return v0

    .line 107
    :cond_0
    const-wide/16 v0, -0x8000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 108
    const/16 v0, -0x8000

    goto :goto_0

    .line 110
    :cond_1
    long-to-int v0, p0

    int-to-short v0, v0

    goto :goto_0
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
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    sget-object v0, Lcom/google/common/primitives/Shorts$ShortConverter;->INSTANCE:Lcom/google/common/primitives/Shorts$ShortConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[S
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[S"
        }
    .end annotation

    .prologue
    .line 480
    instance-of v0, p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    if-eqz v0, :cond_0

    .line 481
    check-cast p0, Lcom/google/common/primitives/Shorts$ShortArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$ShortArrayAsList;->toShortArray()[S

    move-result-object v0

    .line 491
    :goto_0
    return-object v0

    .line 484
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 485
    array-length v4, v3

    .line 486
    new-array v1, v4, [S

    .line 487
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 489
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    aput-short v0, v1, v2

    .line 487
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 491
    goto :goto_0
.end method

.method public static toByteArray(S)[B
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    .line 300
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method
