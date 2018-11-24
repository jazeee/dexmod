.class public final Lcom/google/common/primitives/Floats;
.super Ljava/lang/Object;
.source "Floats.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field public static final BYTES:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([FFII)I
    .locals 1

    .prologue
    .line 54
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->indexOf([FFII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([FFII)I
    .locals 1

    .prologue
    .line 54
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Floats;->lastIndexOf([FFII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([F)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    array-length v0, p0

    if-nez v0, :cond_0

    .line 449
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 451
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;-><init>([F)V

    goto :goto_0
.end method

.method public static compare(FF)I
    .locals 1

    .prologue
    .line 92
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public static varargs concat([[F)[F
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 254
    .line 255
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 256
    array-length v4, v4

    add-int/2addr v2, v4

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_0
    new-array v3, v2, [F

    .line 260
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, p0, v2

    .line 261
    array-length v6, v5

    invoke-static {v5, v1, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    array-length v5, v5

    add-int/2addr v0, v5

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 264
    :cond_1
    return-object v3
.end method

.method public static contains([FF)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 117
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 118
    cmpl-float v3, v3, p1

    if-nez v3, :cond_1

    .line 119
    const/4 v0, 0x1

    .line 122
    :cond_0
    return v0

    .line 117
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static copyOf([FI)[F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 330
    new-array v0, p1, [F

    .line 331
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    return-object v0
.end method

.method public static ensureCapacity([FII)[F
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 322
    if-ltz p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 323
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Floats;->copyOf([FI)[F

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 321
    goto :goto_0

    :cond_2
    move v0, v2

    .line 322
    goto :goto_1
.end method

.method public static hashCode(F)I
    .locals 1

    .prologue
    .line 74
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([FF)I
    .locals 2

    .prologue
    .line 136
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Floats;->indexOf([FFII)I

    move-result v0

    return v0
.end method

.method private static indexOf([FFII)I
    .locals 2

    .prologue
    .line 142
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 143
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 147
    :goto_1
    return v0

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf([F[F)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 165
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    array-length v0, p1

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 172
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 173
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 174
    add-int v3, v0, v2

    aget v3, p0, v3

    aget v4, p1, v2

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v1, v0

    .line 178
    goto :goto_0

    .line 172
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 180
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static isFinite(F)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    cmpg-float v2, v2, p0

    if-gez v2, :cond_0

    move v2, v0

    :goto_0
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpg-float v3, p0, v3

    if-gez v3, :cond_1

    :goto_1
    and-int/2addr v0, v2

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static varargs join(Ljava/lang/String;[F)Ljava/lang/String;
    .locals 4

    .prologue
    .line 350
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    array-length v0, p1

    if-nez v0, :cond_0

    .line 352
    const-string v0, ""

    .line 361
    :goto_0
    return-object v0

    .line 356
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0xc

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 357
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 358
    const/4 v0, 0x1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 359
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 361
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lastIndexOf([FF)I
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Floats;->lastIndexOf([FFII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([FFII)I
    .locals 2

    .prologue
    .line 200
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 201
    aget v1, p0, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 205
    :goto_1
    return v0

    .line 200
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 205
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
            "<[F>;"
        }
    .end annotation

    .prologue
    .line 381
    sget-object v0, Lcom/google/common/primitives/Floats$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Floats$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([F)F
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    array-length v0, p0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 237
    aget v0, p0, v2

    .line 238
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 239
    aget v2, p0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 236
    goto :goto_0

    .line 241
    :cond_1
    return v0
.end method

.method public static varargs min([F)F
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 218
    array-length v0, p0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 219
    aget v0, p0, v2

    .line 220
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 221
    aget v2, p0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 218
    goto :goto_0

    .line 223
    :cond_1
    return v0
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
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    sget-object v0, Lcom/google/common/primitives/Floats$FloatConverter;->INSTANCE:Lcom/google/common/primitives/Floats$FloatConverter;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[F"
        }
    .end annotation

    .prologue
    .line 416
    instance-of v0, p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    if-eqz v0, :cond_0

    .line 417
    check-cast p0, Lcom/google/common/primitives/Floats$FloatArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Floats$FloatArrayAsList;->toFloatArray()[F

    move-result-object v0

    .line 427
    :goto_0
    return-object v0

    .line 420
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 421
    array-length v4, v3

    .line 422
    new-array v1, v4, [F

    .line 423
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 425
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    aput v0, v1, v2

    .line 423
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 427
    goto :goto_0
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "regular expressions"
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 600
    sget-object v0, Lcom/google/common/primitives/Doubles;->FLOATING_POINT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 610
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
