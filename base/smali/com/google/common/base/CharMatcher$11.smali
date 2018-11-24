.class final Lcom/google/common/base/CharMatcher$11;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# instance fields
.field final synthetic val$chars:[C


# direct methods
.method constructor <init>(Ljava/lang/String;[C)V
    .locals 0

    .prologue
    .line 501
    iput-object p2, p0, Lcom/google/common/base/CharMatcher$11;->val$chars:[C

    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 501
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public final matches(C)Z
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$11;->val$chars:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final setBits(Ljava/util/BitSet;)V
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    .line 509
    iget-object v1, p0, Lcom/google/common/base/CharMatcher$11;->val$chars:[C

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-char v3, v1, v0

    .line 510
    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 512
    :cond_0
    return-void
.end method
