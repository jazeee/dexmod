.class public final Lcom/google/common/hash/HashingInputStream;
.super Ljava/io/FilterInputStream;
.source "HashingInputStream.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field private final hasher:Lcom/google/common/hash/Hasher;


# direct methods
.method public constructor <init>(Lcom/google/common/hash/HashFunction;Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 42
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 43
    invoke-interface {p1}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/Hasher;

    iput-object v0, p0, Lcom/google/common/hash/HashingInputStream;->hasher:Lcom/google/common/hash/Hasher;

    .line 44
    return-void
.end method


# virtual methods
.method public final hash()Lcom/google/common/hash/HashCode;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/common/hash/HashingInputStream;->hasher:Lcom/google/common/hash/Hasher;

    invoke-interface {v0}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public final mark(I)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/common/hash/HashingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 53
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/google/common/hash/HashingInputStream;->hasher:Lcom/google/common/hash/Hasher;

    int-to-byte v2, v0

    invoke-interface {v1, v2}, Lcom/google/common/hash/Hasher;->putByte(B)Lcom/google/common/hash/Hasher;

    .line 56
    :cond_0
    return v0
.end method

.method public final read([BII)I
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/common/hash/HashingInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 66
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/google/common/hash/HashingInputStream;->hasher:Lcom/google/common/hash/Hasher;

    invoke-interface {v1, p1, p2, v0}, Lcom/google/common/hash/Hasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    .line 69
    :cond_0
    return v0
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
