.class final Lcom/google/common/base/CharMatcher$10;
.super Lcom/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# instance fields
.field final synthetic val$match:C


# direct methods
.method constructor <init>(Ljava/lang/String;C)V
    .locals 0

    .prologue
    .line 452
    iput-char p2, p0, Lcom/google/common/base/CharMatcher$10;->val$match:C

    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 458
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$10;->val$match:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher$FastMatcher;->and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final matches(C)Z
    .locals 1

    .prologue
    .line 454
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$10;->val$match:C

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final negate()Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 473
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$10;->val$match:C

    invoke-static {v0}, Lcom/google/common/base/CharMatcher$10;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public final or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 462
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$10;->val$match:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/common/base/CharMatcher$10;->ANY:Lcom/google/common/base/CharMatcher;

    :cond_0
    return-object p0
.end method

.method final setBits(Ljava/util/BitSet;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    .line 468
    const/4 v0, 0x0

    iget-char v1, p0, Lcom/google/common/base/CharMatcher$10;->val$match:C

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(II)V

    .line 469
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$10;->val$match:C

    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(II)V

    .line 470
    return-void
.end method
