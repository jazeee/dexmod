.class final Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;
.super Lcom/google/common/hash/AbstractByteHasher;
.source "MessageDigestHashFunction.java"


# instance fields
.field private final bytes:I

.field private final digest:Ljava/security/MessageDigest;

.field private done:Z


# direct methods
.method private constructor <init>(Ljava/security/MessageDigest;I)V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/google/common/hash/AbstractByteHasher;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    .line 125
    iput p2, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->bytes:I

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Ljava/security/MessageDigest;ILcom/google/common/hash/MessageDigestHashFunction$1;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;-><init>(Ljava/security/MessageDigest;I)V

    return-void
.end method

.method private checkNotDone()V
    .locals 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->done:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot re-use a Hasher after calling hash() on it"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 148
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final hash()Lcom/google/common/hash/HashCode;
    .locals 2

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->checkNotDone()V

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->done:Z

    .line 154
    iget v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->bytes:I

    iget-object v1, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    iget v1, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->bytes:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    goto :goto_0
.end method

.method protected final update(B)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->checkNotDone()V

    .line 131
    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 132
    return-void
.end method

.method protected final update([B)V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->checkNotDone()V

    .line 137
    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 138
    return-void
.end method

.method protected final update([BII)V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->checkNotDone()V

    .line 143
    iget-object v0, p0, Lcom/google/common/hash/MessageDigestHashFunction$MessageDigestHasher;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 144
    return-void
.end method
