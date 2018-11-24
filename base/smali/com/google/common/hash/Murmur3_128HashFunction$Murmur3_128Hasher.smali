.class final Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;
.super Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;
.source "Murmur3_128HashFunction.java"


# static fields
.field private static final C1:J = -0x783c846eeebdac2bL

.field private static final C2:J = 0x4cf5ad432745937fL

.field private static final CHUNK_SIZE:I = 0x10


# instance fields
.field private h1:J

.field private h2:J

.field private length:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    .prologue
    .line 87
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;-><init>(I)V

    .line 88
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 89
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    .line 91
    return-void
.end method

.method private bmix64(JJ)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x5

    .line 101
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    invoke-static {p1, p2}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->mixK1(J)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 103
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    const/16 v2, 0x1b

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 104
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    iget-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 105
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    mul-long/2addr v0, v4

    const-wide/32 v2, 0x52dce729

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 107
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    invoke-static {p3, p4}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->mixK2(J)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 109
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 110
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    iget-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 111
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    mul-long/2addr v0, v4

    const-wide/32 v2, 0x38495ab5

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 112
    return-void
.end method

.method private static fmix64(J)J
    .locals 6

    .prologue
    const/16 v4, 0x21

    .line 180
    ushr-long v0, p0, v4

    xor-long/2addr v0, p0

    .line 181
    const-wide v2, -0xae502812aa7333L

    mul-long/2addr v0, v2

    .line 182
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    .line 183
    const-wide v2, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr v0, v2

    .line 184
    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    .line 185
    return-wide v0
.end method

.method private static mixK1(J)J
    .locals 4

    .prologue
    .line 189
    const-wide v0, -0x783c846eeebdac2bL

    mul-long/2addr v0, p0

    .line 190
    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    .line 191
    const-wide v2, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr v0, v2

    .line 192
    return-wide v0
.end method

.method private static mixK2(J)J
    .locals 4

    .prologue
    .line 196
    const-wide v0, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr v0, p0

    .line 197
    const/16 v2, 0x21

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    .line 198
    const-wide v2, -0x783c846eeebdac2bL

    mul-long/2addr v0, v2

    .line 199
    return-wide v0
.end method


# virtual methods
.method public final makeHash()Lcom/google/common/hash/HashCode;
    .locals 4

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    iget v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    int-to-long v2, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 160
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    iget v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    int-to-long v2, v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 162
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    iget-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 163
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    iget-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 165
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->fmix64(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 166
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->fmix64(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 168
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    iget-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 169
    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    iget-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 171
    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method protected final process(Ljava/nio/ByteBuffer;)V
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 95
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 96
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->bmix64(JJ)V

    .line 97
    iget v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    .line 98
    return-void
.end method

.method protected final processRemaining(Ljava/nio/ByteBuffer;)V
    .locals 13

    .prologue
    const/16 v10, 0x20

    const/16 v9, 0x18

    const/16 v8, 0x10

    const/16 v7, 0x8

    const-wide/16 v2, 0x0

    .line 115
    .line 117
    iget v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    .line 118
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 152
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should never get here."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 120
    :pswitch_0
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v0, v0

    const/16 v4, 0x30

    shl-long/2addr v0, v4

    xor-long/2addr v0, v2

    .line 122
    :goto_0
    const/16 v4, 0xd

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    xor-long/2addr v0, v4

    .line 124
    :goto_1
    const/16 v4, 0xc

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    .line 126
    :goto_2
    const/16 v4, 0xb

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v9

    xor-long/2addr v0, v4

    .line 128
    :goto_3
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v8

    xor-long/2addr v0, v4

    .line 130
    :goto_4
    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v7

    xor-long/2addr v0, v4

    .line 132
    :goto_5
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v4

    int-to-long v4, v4

    xor-long/2addr v0, v4

    .line 134
    :goto_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    xor-long/2addr v2, v4

    .line 154
    :goto_7
    iget-wide v4, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    invoke-static {v2, v3}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->mixK1(J)J

    move-result-wide v2

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 155
    iget-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->mixK2(J)J

    move-result-wide v0

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 156
    return-void

    .line 137
    :pswitch_1
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v0, v0

    const/16 v4, 0x30

    shl-long/2addr v0, v4

    xor-long/2addr v0, v2

    .line 139
    :goto_8
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    xor-long/2addr v0, v4

    .line 141
    :goto_9
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    .line 143
    :goto_a
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v9

    xor-long/2addr v0, v4

    .line 145
    :goto_b
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v8

    xor-long/2addr v0, v4

    .line 147
    :goto_c
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v4

    int-to-long v4, v4

    shl-long/2addr v4, v7

    xor-long/2addr v0, v4

    .line 149
    :goto_d
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v4

    int-to-long v4, v4

    xor-long/2addr v0, v4

    move-wide v11, v2

    move-wide v2, v0

    move-wide v0, v11

    .line 150
    goto :goto_7

    :pswitch_2
    move-wide v0, v2

    goto/16 :goto_0

    :pswitch_3
    move-wide v0, v2

    goto/16 :goto_1

    :pswitch_4
    move-wide v0, v2

    goto/16 :goto_2

    :pswitch_5
    move-wide v0, v2

    goto/16 :goto_3

    :pswitch_6
    move-wide v0, v2

    goto/16 :goto_4

    :pswitch_7
    move-wide v0, v2

    goto/16 :goto_5

    :pswitch_8
    move-wide v0, v2

    goto/16 :goto_6

    :pswitch_9
    move-wide v0, v2

    goto :goto_8

    :pswitch_a
    move-wide v0, v2

    goto :goto_9

    :pswitch_b
    move-wide v0, v2

    goto :goto_a

    :pswitch_c
    move-wide v0, v2

    goto :goto_b

    :pswitch_d
    move-wide v0, v2

    goto :goto_c

    :pswitch_e
    move-wide v0, v2

    goto :goto_d

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
