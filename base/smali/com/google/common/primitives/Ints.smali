.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "Ints.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field public static final BYTES:I = 0x4

.field public static final MAX_POWER_OF_TWO:I = 0x40000000

.field private static final asciiDigits:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 639
    const/16 v1, 0x80

    new-array v1, v1, [B

    .line 642
    sput-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    move v1, v0

    .line 643
    :goto_0
    const/16 v2, 0x9

    if-gt v1, v2, :cond_0

    .line 644
    sget-object v2, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    add-int/lit8 v3, v1, 0x30

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    .line 643
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    :cond_0
    :goto_1
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_1

    .line 647
    sget-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 648
    sget-object v1, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 650
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([IIII)I
    .locals 1

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->indexOf([IIII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([IIII)I
    .locals 1

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->lastIndexOf([IIII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    array-length v0, p0

    if-nez v0, :cond_0

    .line 511
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 513
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;-><init>([I)V

    goto :goto_0
.end method

.method public static checkedCast(J)I
    .locals 4

    .prologue
    .line 88
    long-to-int v0, p0

    .line 89
    int-to-long v2, v0

    cmp-long v1, v2, p0

    if-eqz v1, :cond_0

    .line 91
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

    .line 93
    :cond_0
    return v0
.end method

.method public static compare(II)I
    .locals 1

    .prologue
    .line 127
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs concat([[I)[I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 274
    .line 275
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 276
    array-length v4, v4

    add-int/2addr v2, v4

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    new-array v3, v2, [I

    .line 280
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, p0, v2

    .line 281
    array-length v6, v5

    invoke-static {v5, v1, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    array-length v5, v5

    add-int/2addr v0, v5

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 284
    :cond_1
    return-object v3
.end method

.method public static contains([II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 140
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 141
    if-ne v3, p1, :cond_1

    .line 142
    const/4 v0, 0x1

    .line 145
    :cond_0
    return v0

    .line 140
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static copyOf([II)[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 401
    new-array v0, p1, [I

    .line 402
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    return-object v0
.end method

.method private static digit(C)I
    .locals 1

    .prologue
    .line 653
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/Ints;->asciiDigits:[B

    aget-byte v0, v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static ensureCapacity([III)[I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 392
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 393
    if-ltz p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 394
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Ints;->copyOf([II)[I

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 392
    goto :goto_0

    :cond_2
    move v0, v2

    .line 393
    goto :goto_1
.end method

.method public static fromByteArray([B)I
    .locals 8
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
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

    .line 323
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    aget-byte v2, p0, v6

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 321
    goto :goto_0
.end method

.method public static fromBytes(BBBB)I
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    .line 335
    shl-int/lit8 v0, p0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static hashCode(I)I
    .locals 0

    .prologue
    .line 76
    return p0
.end method

.method public static indexOf([II)I
    .locals 2

    .prologue
    .line 158
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Ints;->indexOf([IIII)I

    move-result v0

    return v0
.end method

.method private static indexOf([IIII)I
    .locals 2

    .prologue
    .line 164
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 165
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 169
    :goto_1
    return v0

    .line 164
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf([I[I)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 184
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    array-length v0, p1

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 191
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 192
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 193
    add-int v3, v0, v2

    aget v3, p0, v3

    aget v4, p1, v2

    if-ne v3, v4, :cond_2

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v1, v0

    .line 197
    goto :goto_0

    .line 191
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 199
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static varargs join(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 416
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    array-length v0, p1

    if-nez v0, :cond_0

    .line 418
    const-string v0, ""

    .line 427
    :goto_0
    return-object v0

    .line 422
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x5

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 423
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    const/4 v0, 0x1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 425
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lastIndexOf([II)I
    .locals 2

    .prologue
    .line 212
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Ints;->lastIndexOf([IIII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([IIII)I
    .locals 2

    .prologue
    .line 218
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 219
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 223
    :goto_1
    return v0

    .line 218
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 223
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
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 446
    sget-object v0, Lcom/google/common/primitives/Ints$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Ints$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([I)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 255
    aget v0, p0, v2

    .line 256
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 257
    aget v2, p0, v1

    if-le v2, v0, :cond_0

    .line 258
    aget v0, p0, v1

    .line 256
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 254
    goto :goto_0

    .line 261
    :cond_2
    return v0
.end method

.method public static varargs min([I)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 236
    aget v0, p0, v2

    .line 237
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 238
    aget v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 239
    aget v0, p0, v1

    .line 237
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 235
    goto :goto_0

    .line 242
    :cond_2
    return v0
.end method

.method public static saturatedCast(J)I
    .locals 2

    .prologue
    .line 105
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 106
    const v0, 0x7fffffff

    .line 111
    :goto_0
    return v0

    .line 108
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 109
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 111
    :cond_1
    long-to-int v0, p0

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    sget-object v0, Lcom/google/common/primitives/Ints$IntConverter;->INSTANCE:Lcom/google/common/primitives/Ints$IntConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 481
    instance-of v0, p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    if-eqz v0, :cond_0

    .line 482
    check-cast p0, Lcom/google/common/primitives/Ints$IntArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$IntArrayAsList;->toIntArray()[I

    move-result-object v0

    .line 492
    :goto_0
    return-object v0

    .line 485
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 486
    array-length v4, v3

    .line 487
    new-array v1, v4, [I

    .line 488
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 490
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    aput v0, v1, v2

    .line 488
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 492
    goto :goto_0
.end method

.method public static toByteArray(I)[B
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    .line 300
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .prologue
    .line 679
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/Ints;->tryParse(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static tryParse(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 8
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v7, -0x80000000

    const/4 v3, 0x0

    .line 706
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v3

    .line 743
    :goto_0
    return-object v0

    .line 709
    :cond_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    const/16 v0, 0x24

    if-le p1, v0, :cond_2

    .line 710
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x41

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "radix must be between MIN_RADIX and MAX_RADIX but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_3

    move v4, v1

    .line 714
    :goto_1
    if-eqz v4, :cond_4

    move v0, v1

    .line 715
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_5

    move-object v0, v3

    .line 716
    goto :goto_0

    :cond_3
    move v4, v2

    .line 713
    goto :goto_1

    :cond_4
    move v0, v2

    .line 714
    goto :goto_2

    .line 718
    :cond_5
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->digit(C)I

    move-result v0

    .line 719
    if-ltz v0, :cond_6

    if-lt v0, p1, :cond_7

    :cond_6
    move-object v0, v3

    .line 720
    goto :goto_0

    .line 722
    :cond_7
    neg-int v0, v0

    .line 724
    div-int v5, v7, p1

    .line 726
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 727
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/google/common/primitives/Ints;->digit(C)I

    move-result v1

    .line 728
    if-ltz v1, :cond_8

    if-ge v1, p1, :cond_8

    if-ge v0, v5, :cond_9

    :cond_8
    move-object v0, v3

    .line 729
    goto :goto_0

    .line 731
    :cond_9
    mul-int/2addr v0, p1

    .line 732
    add-int v6, v7, v1

    if-ge v0, v6, :cond_a

    move-object v0, v3

    .line 733
    goto :goto_0

    .line 735
    :cond_a
    sub-int/2addr v0, v1

    move v1, v2

    goto :goto_3

    .line 738
    :cond_b
    if-eqz v4, :cond_c

    .line 739
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 740
    :cond_c
    if-ne v0, v7, :cond_d

    move-object v0, v3

    .line 741
    goto :goto_0

    .line 743
    :cond_d
    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method
