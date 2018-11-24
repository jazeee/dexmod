.class final Lcom/google/common/hash/Murmur3_32HashFunction;
.super Lcom/google/common/hash/AbstractStreamingHashFunction;
.source "Murmur3_32HashFunction.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final C1:I = -0x3361d2af

.field private static final C2:I = 0x1b873593

.field private static final serialVersionUID:J


# instance fields
.field private final seed:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction;-><init>()V

    .line 54
    iput p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    .line 55
    return-void
.end method

.method static synthetic access$000(I)I
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(II)I
    .locals 1

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(II)Lcom/google/common/hash/HashCode;
    .locals 1

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method private static fmix(II)Lcom/google/common/hash/HashCode;
    .locals 2

    .prologue
    .line 141
    xor-int v0, p0, p1

    .line 142
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 143
    const v1, -0x7a143595

    mul-int/2addr v0, v1

    .line 144
    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    .line 145
    const v1, -0x3d4d51cb

    mul-int/2addr v0, v1

    .line 146
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 147
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromInt(I)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method private static mixH1(II)I
    .locals 2

    .prologue
    .line 133
    xor-int v0, p0, p1

    .line 134
    const/16 v1, 0xd

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    .line 135
    mul-int/lit8 v0, v0, 0x5

    const v1, -0x19ab949c

    add-int/2addr v0, v1

    .line 136
    return v0
.end method

.method private static mixK1(I)I
    .locals 2

    .prologue
    .line 126
    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v0, p0

    .line 127
    const/16 v1, 0xf

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    .line 128
    const v1, 0x1b873593

    mul-int/2addr v0, v1

    .line 129
    return v0
.end method


# virtual methods
.method public final bits()I
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x20

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 72
    instance-of v1, p1, Lcom/google/common/hash/Murmur3_32HashFunction;

    if-eqz v1, :cond_0

    .line 73
    check-cast p1, Lcom/google/common/hash/Murmur3_32HashFunction;

    .line 74
    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    iget v2, p1, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 76
    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final hashInt(I)Lcom/google/common/hash/HashCode;
    .locals 2

    .prologue
    .line 85
    invoke-static {p1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v0

    .line 86
    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-static {v1, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    .line 88
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public final hashLong(J)Lcom/google/common/hash/HashCode;
    .locals 5

    .prologue
    .line 92
    long-to-int v0, p1

    .line 93
    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    .line 95
    invoke-static {v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v0

    .line 96
    iget v2, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-static {v2, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    .line 98
    invoke-static {v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v1

    .line 99
    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v0

    .line 101
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public final hashUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/HashCode;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 106
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    move v2, v0

    move v0, v1

    .line 109
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 110
    add-int/lit8 v3, v0, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    .line 111
    invoke-static {v3}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v3

    .line 112
    invoke-static {v2, v3}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixH1(II)I

    move-result v2

    .line 109
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_1

    .line 117
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 118
    invoke-static {v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->mixK1(I)I

    move-result v0

    .line 119
    xor-int/2addr v2, v0

    .line 122
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->fmix(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public final newHasher()Lcom/google/common/hash/Hasher;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;

    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    invoke-direct {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;-><init>(I)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction;->seed:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Hashing.murmur3_32("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
