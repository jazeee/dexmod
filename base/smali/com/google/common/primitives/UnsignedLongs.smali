.class public final Lcom/google/common/primitives/UnsignedLongs;
.super Ljava/lang/Object;
.source "UnsignedLongs.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field public static final MAX_VALUE:J = -0x1L

.field private static final maxSafeDigits:[I

.field private static final maxValueDivs:[J

.field private static final maxValueMods:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/16 v1, 0x25

    .line 384
    new-array v0, v1, [J

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    .line 385
    new-array v0, v1, [I

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs;->maxValueMods:[I

    .line 386
    new-array v0, v1, [I

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs;->maxSafeDigits:[I

    .line 388
    new-instance v1, Ljava/math/BigInteger;

    const-string v0, "10000000000000000"

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 389
    const/4 v0, 0x2

    :goto_0
    const/16 v2, 0x24

    if-gt v0, v2, :cond_0

    .line 390
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    int-to-long v4, v0

    invoke-static {v6, v7, v4, v5}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 391
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueMods:[I

    int-to-long v4, v0

    invoke-static {v6, v7, v4, v5}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    aput v3, v2, v0

    .line 392
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxSafeDigits:[I

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v0

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(JJ)I
    .locals 4

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static decode(Ljava/lang/String;)J
    .locals 5

    .prologue
    .line 270
    invoke-static {p0}, Lcom/google/common/primitives/ParseRequest;->fromString(Ljava/lang/String;)Lcom/google/common/primitives/ParseRequest;

    move-result-object v0

    .line 273
    :try_start_0
    iget-object v1, v0, Lcom/google/common/primitives/ParseRequest;->rawValue:Ljava/lang/String;

    iget v0, v0, Lcom/google/common/primitives/ParseRequest;->radix:I

    invoke-static {v1, v0}, Lcom/google/common/primitives/UnsignedLongs;->parseUnsignedLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 274
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 275
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Error parsing value: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v2, v1}, Ljava/lang/NumberFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 278
    throw v2

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static divide(JJ)J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    .line 183
    cmp-long v1, p2, v2

    if-gez v1, :cond_1

    .line 184
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v0

    if-gez v0, :cond_0

    move-wide v0, v2

    .line 204
    :goto_0
    return-wide v0

    .line 187
    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 192
    :cond_1
    cmp-long v1, p0, v2

    if-ltz v1, :cond_2

    .line 193
    div-long v0, p0, p2

    goto :goto_0

    .line 202
    :cond_2
    ushr-long v2, p0, v0

    div-long/2addr v2, p2

    shl-long/2addr v2, v0

    .line 203
    mul-long v4, v2, p2

    sub-long v4, p0, v4

    .line 204
    invoke-static {v4, v5, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v1

    if-ltz v1, :cond_3

    :goto_1
    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static flip(J)J
    .locals 2

    .prologue
    .line 63
    const-wide/high16 v0, -0x8000000000000000L

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method public static varargs join(Ljava/lang/String;[J)Ljava/lang/String;
    .locals 6

    .prologue
    .line 128
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    array-length v0, p1

    if-nez v0, :cond_0

    .line 130
    const-string v0, ""

    .line 139
    :goto_0
    return-object v0

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x5

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 135
    const/4 v0, 0x0

    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const/4 v0, 0x1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 137
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v4, p1, v0

    invoke-static {v4, v5}, Lcom/google/common/primitives/UnsignedLongs;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 156
    sget-object v0, Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([J)J
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 109
    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v2

    .line 110
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 111
    aget-wide v4, p0, v1

    invoke-static {v4, v5}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v4

    .line 112
    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    move-wide v2, v4

    .line 110
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 108
    goto :goto_0

    .line 116
    :cond_2
    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs min([J)J
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 89
    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v2

    .line 90
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 91
    aget-wide v4, p0, v1

    invoke-static {v4, v5}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v4

    .line 92
    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    move-wide v2, v4

    .line 90
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 88
    goto :goto_0

    .line 96
    :cond_2
    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static overflowInParse(JII)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 325
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-ltz v2, :cond_3

    .line 326
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    aget-wide v2, v2, p3

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    .line 337
    :cond_0
    :goto_0
    return v0

    .line 329
    :cond_1
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    aget-wide v2, v2, p3

    cmp-long v2, p0, v2

    if-lez v2, :cond_2

    move v0, v1

    .line 330
    goto :goto_0

    .line 333
    :cond_2
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueMods:[I

    aget v2, v2, p3

    if-le p2, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 337
    goto :goto_0
.end method

.method public static parseUnsignedLong(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 250
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedLongs;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseUnsignedLong(Ljava/lang/String;I)J
    .locals 8

    .prologue
    .line 294
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "empty string"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    const/16 v0, 0x24

    if-le p1, v0, :cond_2

    .line 299
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "illegal radix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_2
    sget-object v0, Lcom/google/common/primitives/UnsignedLongs;->maxSafeDigits:[I

    aget v0, v0, p1

    add-int/lit8 v1, v0, -0x1

    .line 303
    const-wide/16 v2, 0x0

    .line 304
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 305
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 306
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 307
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_3
    if-le v0, v1, :cond_5

    invoke-static {v2, v3, v4, p1}, Lcom/google/common/primitives/UnsignedLongs;->overflowInParse(JII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 310
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Too large for unsigned long: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 312
    :cond_5
    int-to-long v6, p1

    mul-long/2addr v2, v6

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_6
    return-wide v2
.end method

.method public static remainder(JJ)J
    .locals 6

    .prologue
    const/4 v4, 0x1

    const-wide/16 v0, 0x0

    .line 217
    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    .line 218
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v0

    if-gez v0, :cond_0

    .line 238
    :goto_0
    return-wide p0

    .line 221
    :cond_0
    sub-long/2addr p0, p2

    goto :goto_0

    .line 226
    :cond_1
    cmp-long v2, p0, v0

    if-ltz v2, :cond_2

    .line 227
    rem-long/2addr p0, p2

    goto :goto_0

    .line 236
    :cond_2
    ushr-long v2, p0, v4

    div-long/2addr v2, p2

    shl-long/2addr v2, v4

    .line 237
    mul-long/2addr v2, p2

    sub-long v2, p0, v2

    .line 238
    invoke-static {v2, v3, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v4

    if-ltz v4, :cond_3

    :goto_1
    sub-long p0, v2, p2

    goto :goto_0

    :cond_3
    move-wide p2, v0

    goto :goto_1
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 344
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/google/common/primitives/UnsignedLongs;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(JI)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v4, 0x40

    const/16 v3, 0x3f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    .line 357
    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const/16 v0, 0x24

    if-gt p2, v0, :cond_0

    move v0, v1

    :goto_0
    const-string v5, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v0, v5, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 359
    cmp-long v0, p0, v8

    if-nez v0, :cond_1

    .line 361
    const-string v0, "0"

    .line 379
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 357
    goto :goto_0

    .line 363
    :cond_1
    new-array v2, v4, [C

    .line 365
    cmp-long v0, p0, v8

    if-gez v0, :cond_3

    .line 368
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v0

    .line 369
    int-to-long v4, p2

    mul-long/2addr v4, v0

    sub-long v4, p0, v4

    .line 370
    long-to-int v4, v4

    invoke-static {v4, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    aput-char v4, v2, v3

    move-wide p0, v0

    move v1, v3

    .line 374
    :goto_2
    cmp-long v0, p0, v8

    if-lez v0, :cond_2

    .line 375
    add-int/lit8 v0, v1, -0x1

    int-to-long v4, p2

    rem-long v4, p0, v4

    long-to-int v1, v4

    invoke-static {v1, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    aput-char v1, v2, v0

    .line 376
    int-to-long v4, p2

    div-long/2addr p0, v4

    move v1, v0

    goto :goto_2

    .line 379
    :cond_2
    new-instance v0, Ljava/lang/String;

    rsub-int/lit8 v3, v1, 0x40

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_2
.end method
