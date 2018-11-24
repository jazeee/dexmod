.class abstract Lcom/google/common/collect/Multisets$EntrySet;
.super Lcom/google/common/collect/Sets$ImprovedAbstractSet;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$ImprovedAbstractSet",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 964
    invoke-direct {p0}, Lcom/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$EntrySet;->multiset()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->clear()V

    .line 1003
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 968
    instance-of v1, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v1, :cond_0

    .line 973
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .line 974
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 981
    :cond_0
    :goto_0
    return v0

    .line 977
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$EntrySet;->multiset()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 978
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method abstract multiset()Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 987
    instance-of v1, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v1, :cond_0

    .line 988
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .line 989
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    .line 990
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    .line 991
    if-eqz v2, :cond_0

    .line 994
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$EntrySet;->multiset()Lcom/google/common/collect/Multiset;

    move-result-object v3

    .line 995
    invoke-interface {v3, v1, v2, v0}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    .line 998
    :cond_0
    return v0
.end method
