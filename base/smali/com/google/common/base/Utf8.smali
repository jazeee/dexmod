.class public final Lcom/google/common/base/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodedLength(Ljava/lang/CharSequence;)I
    .locals 6

    .prologue
    .line 50
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 52
    const/4 v0, 0x0

    .line 55
    :goto_0
    if-ge v0, v2, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x80

    if-ge v1, v3, :cond_3

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :goto_1
    if-ge v1, v2, :cond_1

    .line 61
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 62
    const/16 v4, 0x800

    if-ge v3, v4, :cond_0

    .line 63
    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v3, v0

    .line 60
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_1

    .line 65
    :cond_0
    invoke-static {p0, v1}, Lcom/google/common/base/Utf8;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_1
    if-ge v0, v2, :cond_2

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    int-to-long v2, v0

    const-wide v4, 0x100000000L

    add-long/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x36

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "UTF-8 length does not fit in int: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_2
    return v0

    :cond_3
    move v1, v0

    move v0, v2

    goto :goto_1
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .locals 5

    .prologue
    .line 79
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 80
    const/4 v0, 0x0

    move v1, p1

    .line 81
    :goto_0
    if-ge v1, v2, :cond_3

    .line 82
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 83
    const/16 v4, 0x800

    if-ge v3, v4, :cond_1

    .line 84
    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v0, v3

    .line 81
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_1
    add-int/lit8 v0, v0, 0x2

    .line 88
    const v4, 0xd800

    if-gt v4, v3, :cond_0

    const v4, 0xdfff

    if-gt v3, v4, :cond_0

    .line 90
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 91
    const/high16 v4, 0x10000

    if-ge v3, v4, :cond_2

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unpaired surrogate at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    :cond_3
    return v0
.end method

.method public static isWellFormed([B)Z
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/base/Utf8;->isWellFormed([BII)Z

    move-result v0

    return v0
.end method

.method public static isWellFormed([BII)Z
    .locals 2

    .prologue
    .line 125
    add-int v0, p1, p2

    .line 126
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 128
    :goto_0
    if-ge p1, v0, :cond_1

    .line 129
    aget-byte v1, p0, p1

    if-gez v1, :cond_0

    .line 130
    invoke-static {p0, p1, v0}, Lcom/google/common/base/Utf8;->isWellFormedSlowPath([BII)Z

    move-result v0

    .line 133
    :goto_1
    return v0

    .line 128
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static isWellFormedSlowPath([BII)Z
    .locals 8

    .prologue
    const/16 v7, -0x20

    const/16 v6, -0x60

    const/4 v1, 0x0

    const/16 v5, -0x41

    .line 137
    .line 143
    :cond_0
    :goto_0
    if-lt p1, p2, :cond_1

    .line 144
    const/4 v0, 0x1

    .line 189
    :goto_1
    return v0

    .line 146
    :cond_1
    add-int/lit8 v2, p1, 0x1

    aget-byte v0, p0, p1

    if-gez v0, :cond_d

    .line 148
    if-ge v0, v7, :cond_4

    .line 150
    if-ne v2, p2, :cond_2

    move v0, v1

    .line 151
    goto :goto_1

    .line 155
    :cond_2
    const/16 v3, -0x3e

    if-lt v0, v3, :cond_3

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    if-le v2, v5, :cond_c

    :cond_3
    move v0, v1

    .line 156
    goto :goto_1

    .line 158
    :cond_4
    const/16 v3, -0x10

    if-ge v0, v3, :cond_9

    .line 160
    add-int/lit8 v3, v2, 0x1

    if-lt v3, p2, :cond_5

    move v0, v1

    .line 161
    goto :goto_1

    .line 163
    :cond_5
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    .line 164
    if-gt v2, v5, :cond_8

    if-ne v0, v7, :cond_6

    if-lt v2, v6, :cond_8

    :cond_6
    const/16 v4, -0x13

    if-ne v0, v4, :cond_7

    if-le v6, v2, :cond_8

    :cond_7
    add-int/lit8 p1, v3, 0x1

    aget-byte v0, p0, v3

    if-le v0, v5, :cond_0

    :cond_8
    move v0, v1

    .line 171
    goto :goto_1

    .line 175
    :cond_9
    add-int/lit8 v3, v2, 0x2

    if-lt v3, p2, :cond_a

    move v0, v1

    .line 176
    goto :goto_1

    .line 178
    :cond_a
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    .line 179
    if-gt v2, v5, :cond_b

    shl-int/lit8 v0, v0, 0x1c

    add-int/lit8 v2, v2, 0x70

    add-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_b

    add-int/lit8 v2, v3, 0x1

    aget-byte v0, p0, v3

    if-gt v0, v5, :cond_b

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    if-le v2, v5, :cond_c

    :cond_b
    move v0, v1

    .line 189
    goto :goto_1

    :cond_c
    move p1, v0

    .line 192
    goto :goto_0

    :cond_d
    move p1, v2

    goto :goto_0
.end method
