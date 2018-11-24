.class public final Lcom/google/common/primitives/SignedBytes;
.super Ljava/lang/Object;
.source "SignedBytes.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field public static final MAX_POWER_OF_TWO:B = 0x40t


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkedCast(J)B
    .locals 4

    .prologue
    .line 61
    long-to-int v0, p0

    int-to-byte v0, v0

    .line 62
    int-to-long v2, v0

    cmp-long v1, v2, p0

    if-eqz v1, :cond_0

    .line 64
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

    .line 66
    :cond_0
    return v0
.end method

.method public static compare(BB)I
    .locals 1

    .prologue
    .line 102
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 153
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    array-length v0, p1

    if-nez v0, :cond_0

    .line 155
    const-string v0, ""

    .line 164
    :goto_0
    return-object v0

    .line 159
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x5

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 160
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    const/4 v0, 0x1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 162
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 164
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
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 184
    sget-object v0, Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/SignedBytes$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([B)B
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 134
    aget-byte v0, p0, v2

    .line 135
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 136
    aget-byte v2, p0, v1

    if-le v2, v0, :cond_0

    .line 137
    aget-byte v0, p0, v1

    .line 135
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 133
    goto :goto_0

    .line 140
    :cond_2
    return v0
.end method

.method public static varargs min([B)B
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 115
    aget-byte v0, p0, v2

    .line 116
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 117
    aget-byte v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 118
    aget-byte v0, p0, v1

    .line 116
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 114
    goto :goto_0

    .line 121
    :cond_2
    return v0
.end method

.method public static saturatedCast(J)B
    .locals 2

    .prologue
    .line 78
    const-wide/16 v0, 0x7f

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 79
    const/16 v0, 0x7f

    .line 84
    :goto_0
    return v0

    .line 81
    :cond_0
    const-wide/16 v0, -0x80

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 82
    const/16 v0, -0x80

    goto :goto_0

    .line 84
    :cond_1
    long-to-int v0, p0

    int-to-byte v0, v0

    goto :goto_0
.end method
