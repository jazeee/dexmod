.class final Lcom/google/common/base/CharMatcher$12;
.super Lcom/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# instance fields
.field final synthetic val$match1:C

.field final synthetic val$match2:C


# direct methods
.method constructor <init>(Ljava/lang/String;CC)V
    .locals 0

    .prologue
    .line 521
    iput-char p2, p0, Lcom/google/common/base/CharMatcher$12;->val$match1:C

    iput-char p3, p0, Lcom/google/common/base/CharMatcher$12;->val$match2:C

    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final matches(C)Z
    .locals 1

    .prologue
    .line 523
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$match1:C

    if-eq p1, v0, :cond_0

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$match2:C

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final setBits(Ljava/util/BitSet;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.util.BitSet"
    .end annotation

    .prologue
    .line 528
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$match1:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 529
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$match2:C

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 530
    return-void
.end method