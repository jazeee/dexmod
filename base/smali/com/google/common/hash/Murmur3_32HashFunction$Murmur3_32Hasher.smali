.class final Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;
.super Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;
.source "Murmur3_32HashFunction.java"


# static fields
.field private static final CHUNK_SIZE:I = 0x4


# instance fields
.field private h1:I

.field private length:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;-><init>(I)V

    .line 157
    iput p1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    .line 159
    return-void
.end method


# virtual methods
.method public final makeHash()Lcom/google/common/hash/HashCode;
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$200(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method protected final process(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$000(I)I

    move-result v0

    .line 163
    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    invoke-static {v1, v0}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$100(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    .line 164
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    .line 165
    return-void
.end method

.method protected final processRemaining(Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 168
    iget v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->length:I

    move v1, v0

    .line 170
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    shl-int/2addr v2, v0

    xor-int/2addr v1, v2

    .line 170
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 173
    :cond_0
    iget v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    invoke-static {v1}, Lcom/google/common/hash/Murmur3_32HashFunction;->access$000(I)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/Murmur3_32HashFunction$Murmur3_32Hasher;->h1:I

    .line 174
    return-void
.end method