.class public final Lcom/google/common/primitives/Bytes;
.super Ljava/lang/Object;
.source "Bytes.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([BBII)I
    .locals 1

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->indexOf([BBII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([BBII)I
    .locals 1

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->lastIndexOf([BBII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    array-length v0, p0

    if-nez v0, :cond_0

    .line 262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;-><init>([B)V

    goto :goto_0
.end method

.method public static varargs concat([[B)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 171
    .line 172
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 173
    array-length v4, v4

    add-int/2addr v2, v4

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    new-array v3, v2, [B

    .line 177
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v5, p0, v2

    .line 178
    array-length v6, v5

    invoke-static {v5, v1, v3, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    array-length v5, v5

    add-int/2addr v0, v5

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 181
    :cond_1
    return-object v3
.end method

.method public static contains([BB)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 75
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-byte v3, p0, v1

    .line 76
    if-ne v3, p1, :cond_1

    .line 77
    const/4 v0, 0x1

    .line 80
    :cond_0
    return v0

    .line 75
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static copyOf([BI)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    new-array v0, p1, [B

    .line 212
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    return-object v0
.end method

.method public static ensureCapacity([BII)[B
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 203
    if-ltz p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 204
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Bytes;->copyOf([BI)[B

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 202
    goto :goto_0

    :cond_2
    move v0, v2

    .line 203
    goto :goto_1
.end method

.method public static hashCode(B)I
    .locals 0

    .prologue
    .line 62
    return p0
.end method

.method public static indexOf([BB)I
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Bytes;->indexOf([BBII)I

    move-result v0

    return v0
.end method

.method private static indexOf([BBII)I
    .locals 2

    .prologue
    .line 99
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 100
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 104
    :goto_1
    return v0

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf([B[B)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 119
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    array-length v0, p1

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 126
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 127
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 128
    add-int v3, v0, v2

    aget-byte v3, p0, v3

    aget-byte v4, p1, v2

    if-ne v3, v4, :cond_2

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v1, v0

    .line 132
    goto :goto_0

    .line 126
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 134
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static lastIndexOf([BB)I
    .locals 2

    .prologue
    .line 147
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Bytes;->lastIndexOf([BBII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([BBII)I
    .locals 2

    .prologue
    .line 153
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 154
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 158
    :goto_1
    return v0

    .line 153
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 158
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static toArray(Ljava/util/Collection;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 232
    instance-of v0, p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    if-eqz v0, :cond_0

    .line 233
    check-cast p0, Lcom/google/common/primitives/Bytes$ByteArrayAsList;

    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$ByteArrayAsList;->toByteArray()[B

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    .line 236
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 237
    array-length v4, v3

    .line 238
    new-array v1, v4, [B

    .line 239
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 241
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    aput-byte v0, v1, v2

    .line 239
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 243
    goto :goto_0
.end method
